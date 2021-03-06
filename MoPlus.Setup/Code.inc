[Code]
var
  __NET_FRAMEWORK_INSTALLED,
  __NET_FRAMEWORK2_INSTALLED,
  __NET_FRAMEWORK3_INSTALLED,
  __NET_FRAMEWORK4_INSTALLED,
  __NET_FRAMEWORK_SDK_INSTALLED,
  __NET_FRAMEWORK_64BIT_INSTALLED,
  __VSNET2010,
  __VSNET2012,
  __VSNET2013,
  __VSNET2015,
  __PathsInitialized: Boolean;
  __FRAMEWORK_INSTALL_ROOT,
  __FRAMEWORK64_INSTALL_ROOT,
  __SDK_INSTALL_ROOT,
  __SDK2_INSTALL_ROOT,
  __REGASM,
  __REGASM64,
  __VSNET2010_PATH,
  __VSNET2010_BASE_PATH,
	__CSharpExpress2010ProjectTemplatePath,
	__VBExpress2010ProjectTemplatePath: string;
  __VSNET2012_PATH,
  __VSNET2012_BASE_PATH,
	__CSharpExpress2012ProjectTemplatePath,
	__VBExpress2012ProjectTemplatePath: string;
  __VSNET2013_PATH,
  __VSNET2013_BASE_PATH,
	__CSharpExpress2013ProjectTemplatePath,
	__VBExpress2013ProjectTemplatePath: string;
  __VSNET2015_PATH,
  __VSNET2015_BASE_PATH,
	__CSharpExpress2015ProjectTemplatePath,
	__VBExpress2015ProjectTemplatePath: string;
  
procedure InitializePaths;
var __VisualStudioLocation : string;
begin
  if __PathsInitialized then exit;
  __PathsInitialized := true;
  __NET_FRAMEWORK_SDK_INSTALLED := true;

  __FRAMEWORK_INSTALL_ROOT := ExpandConstant('{reg:HKLM\SOFTWARE\Microsoft\.NETFramework,InstallRoot|}');
  __NET_FRAMEWORK_INSTALLED := __FRAMEWORK_INSTALL_ROOT <> '';
  if __NET_FRAMEWORK_INSTALLED then begin
    __FRAMEWORK64_INSTALL_ROOT := ExpandFileName(AddBackslash(__FRAMEWORK_INSTALL_ROOT)+'..\Framework64');
    if not DirExists(__FRAMEWORK64_INSTALL_ROOT) then __FRAMEWORK64_INSTALL_ROOT := '';
  end;
  __NET_FRAMEWORK2_INSTALLED := ExpandConstant('{reg:HKLM\SOFTWARE\Microsoft\.NETFramework\policy\v2.0,50727|}') <> '';
  if __NET_FRAMEWORK2_INSTALLED then begin
    __REGASM64 := AddBackslash(__FRAMEWORK64_INSTALL_ROOT)+'v2.0.50727\regasm.exe';
    if not FileExists(__REGASM64) then __REGASM64 := '';
    __REGASM := AddBackslash(__FRAMEWORK_INSTALL_ROOT)+'v2.0.50727\regasm.exe';
  end;
  __NET_FRAMEWORK3_INSTALLED := ExpandConstant('{reg:HKLM\SOFTWARE\Microsoft\.NETFramework\AssemblyFolders\v3.5,All Assemblies In|}') <> '';
  __SDK_INSTALL_ROOT := ExpandConstant('{reg:HKLM\SOFTWARE\Microsoft\.NETFramework,sdkInstallRootv1.1|}');
  __SDK2_INSTALL_ROOT := ExpandConstant('{reg:HKLM\SOFTWARE\Microsoft\.NETFramework,sdkInstallRootv2.0|}');
  
  __NET_FRAMEWORK4_INSTALLED := ExpandConstant('{reg:HKLM\SOFTWARE\Microsoft\.NETFramework\policy\v4.0,30128|}') <> '';

  __NET_FRAMEWORK_SDK_INSTALLED := (__SDK2_INSTALL_ROOT <> '') or (__SDK_INSTALL_ROOT <> '');
  if __SDK2_INSTALL_ROOT<> '' then
    __SDK_INSTALL_ROOT := __SDK2_INSTALL_ROOT;

  __NET_FRAMEWORK_64BIT_INSTALLED := ExpandConstant('{reg:HKLM\SOFTWARE\Microsoft\.NETFramework,Enable64Bit|0}') = '1';
  __NET_FRAMEWORK_64BIT_INSTALLED := __NET_FRAMEWORK_64BIT_INSTALLED or ((__RegAsm64<> '') and FileExists(__RegAsm64));

  __VSNET2010_PATH := ExpandConstant('{reg:HKLM\Software\Microsoft\VisualStudio\10.0,InstallDir|}');
  __VSNET2010 := __VSNET2010_PATH <> '';
  if __VSNET2010 then
    __VSNET2010_BASE_PATH := ExpandFilename(AddBackslash(__VSNET2010_PATH)+'..\..');

  __VSNET2012_PATH := ExpandConstant('{reg:HKLM\Software\Microsoft\VisualStudio\11.0,InstallDir|}');
  __VSNET2012 := __VSNET2012_PATH <> '';
  if __VSNET2012 then
    __VSNET2012_BASE_PATH := ExpandFilename(AddBackslash(__VSNET2012_PATH)+'..\..');

  __VSNET2013_PATH := ExpandConstant('{reg:HKLM\Software\Microsoft\VisualStudio\12.0,InstallDir|}');
  __VSNET2013 := __VSNET2013_PATH <> '';
  if __VSNET2013 then
    __VSNET2013_BASE_PATH := ExpandFilename(AddBackslash(__VSNET2013_PATH)+'..\..');

  __VSNET2015_PATH := ExpandConstant('{reg:HKLM\Software\Microsoft\VisualStudio\14.0,InstallDir|}');
  __VSNET2015 := __VSNET2015_PATH <> '';
  if __VSNET2015 then
    __VSNET2015_BASE_PATH := ExpandFilename(AddBackslash(__VSNET2015_PATH)+'..\..');
 
  if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\10.0', 'UserProjectTemplatesLocation', __CSharpExpress2010ProjectTemplatePath) then
  begin
    StringChangeEx(__CSharpExpress2010ProjectTemplatePath, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
  end
  else
  begin
    if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\10.0', 'VisualStudioLocation', __VisualStudioLocation) then
    begin
      StringChangeEx(__VisualStudioLocation, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
	  __CSharpExpress2010ProjectTemplatePath := __VisualStudioLocation + '\Templates\ProjectTemplates';
    end
    else
    begin
      __CSharpExpress2010ProjectTemplatePath := ExpandConstant('{userdocs}\Visual Studio 2010\Templates\ProjectTemplates');
    end;
  end;
  if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\11.0', 'UserProjectTemplatesLocation', __CSharpExpress2012ProjectTemplatePath) then
  begin
    StringChangeEx(__CSharpExpress2012ProjectTemplatePath, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
  end
  else
  begin
    if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\11.0', 'VisualStudioLocation', __VisualStudioLocation) then
    begin
      StringChangeEx(__VisualStudioLocation, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
	  __CSharpExpress2012ProjectTemplatePath := __VisualStudioLocation + '\Templates\ProjectTemplates';
    end
    else
    begin
      __CSharpExpress2012ProjectTemplatePath := ExpandConstant('{userdocs}\Visual Studio 2012\Templates\ProjectTemplates');
    end;
  end;
  if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\12.0', 'UserProjectTemplatesLocation', __CSharpExpress2013ProjectTemplatePath) then
  begin
    StringChangeEx(__CSharpExpress2013ProjectTemplatePath, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
  end
  else
  begin
    if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\12.0', 'VisualStudioLocation', __VisualStudioLocation) then
    begin
      StringChangeEx(__VisualStudioLocation, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
	  __CSharpExpress2013ProjectTemplatePath := __VisualStudioLocation + '\Templates\ProjectTemplates';
    end
    else
    begin
      __CSharpExpress2013ProjectTemplatePath := ExpandConstant('{userdocs}\Visual Studio 2013\Templates\ProjectTemplates');
    end;
  end;
  if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\14.0', 'UserProjectTemplatesLocation', __CSharpExpress2015ProjectTemplatePath) then
  begin
    StringChangeEx(__CSharpExpress2015ProjectTemplatePath, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
  end
  else
  begin
    if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\14.0', 'VisualStudioLocation', __VisualStudioLocation) then
    begin
      StringChangeEx(__VisualStudioLocation, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
	  __CSharpExpress2015ProjectTemplatePath := __VisualStudioLocation + '\Templates\ProjectTemplates';
    end
    else
    begin
      __CSharpExpress2015ProjectTemplatePath := ExpandConstant('{userdocs}\Visual Studio 2015\Templates\ProjectTemplates');
    end;
  end;

  if RegQueryStringValue(HKCU, 'Software\Microsoft\VBExpress\10.0', 'UserProjectTemplatesLocation', __VBExpress2010ProjectTemplatePath) then
  begin
    StringChangeEx(__VBExpress2010ProjectTemplatePath, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
  end
  else
  begin
    if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\10.0', 'VisualStudioLocation', __VisualStudioLocation) then
    begin
      StringChangeEx(__VisualStudioLocation, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
	  __VBExpress2010ProjectTemplatePath := __VisualStudioLocation + '\Templates\ProjectTemplates';
    end
    else
    begin
      __VBExpress2010ProjectTemplatePath := ExpandConstant('{userdocs}\Visual Studio 2010\Templates\ProjectTemplates');
    end;
  end;
  if RegQueryStringValue(HKCU, 'Software\Microsoft\VBExpress\11.0', 'UserProjectTemplatesLocation', __VBExpress2012ProjectTemplatePath) then
  begin
    StringChangeEx(__VBExpress2012ProjectTemplatePath, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
  end
  else
  begin
    if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\11.0', 'VisualStudioLocation', __VisualStudioLocation) then
    begin
      StringChangeEx(__VisualStudioLocation, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
	  __VBExpress2012ProjectTemplatePath := __VisualStudioLocation + '\Templates\ProjectTemplates';
    end
    else
    begin
      __VBExpress2012ProjectTemplatePath := ExpandConstant('{userdocs}\Visual Studio 2012\Templates\ProjectTemplates');
    end;
  end;
  if RegQueryStringValue(HKCU, 'Software\Microsoft\VBExpress\12.0', 'UserProjectTemplatesLocation', __VBExpress2013ProjectTemplatePath) then
  begin
    StringChangeEx(__VBExpress2013ProjectTemplatePath, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
  end
  else
  begin
    if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\12.0', 'VisualStudioLocation', __VisualStudioLocation) then
    begin
      StringChangeEx(__VisualStudioLocation, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
	  __VBExpress2013ProjectTemplatePath := __VisualStudioLocation + '\Templates\ProjectTemplates';
    end
    else
    begin
      __VBExpress2013ProjectTemplatePath := ExpandConstant('{userdocs}\Visual Studio 2013\Templates\ProjectTemplates');
    end;
  end;
  if RegQueryStringValue(HKCU, 'Software\Microsoft\VBExpress\14.0', 'UserProjectTemplatesLocation', __VBExpress2015ProjectTemplatePath) then
  begin
    StringChangeEx(__VBExpress2015ProjectTemplatePath, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
  end
  else
  begin
    if RegQueryStringValue(HKCU, 'Software\Microsoft\VCSExpress\14.0', 'VisualStudioLocation', __VisualStudioLocation) then
    begin
      StringChangeEx(__VisualStudioLocation, '%USERPROFILE%',  GetEnv('USERPROFILE'), False);
	  __VBExpress2015ProjectTemplatePath := __VisualStudioLocation + '\Templates\ProjectTemplates';
    end
    else
    begin
      __VBExpress2015ProjectTemplatePath := ExpandConstant('{userdocs}\Visual Studio 2015\Templates\ProjectTemplates');
    end;
  end;
end;

procedure DeInitializePaths;
begin
  __PathsInitialized := False;
end;

function VSNET2010: Boolean;
begin
  InitializePaths;
  Result := __VSNET2010;
end;
function VSNET2012: Boolean;
begin
  InitializePaths;
  Result := __VSNET2012;
end;
function VSNET2013: Boolean;
begin
  InitializePaths;
  Result := __VSNET2013;
end;
function VSNET2015: Boolean;
begin
  InitializePaths;
  Result := __VSNET2015;
end;

function VSNET2010UP: Boolean;
begin
  Result := VSNET2010;
end;
function VSNET2012UP: Boolean;
begin
  Result := VSNET2012;
end;
function VSNET2013UP: Boolean;
begin
  Result := VSNET2013;
end;
function VSNET2015UP: Boolean;
begin
  Result := VSNET2015;
end;

function VSNET2010_PATH(dummy: string): string;
begin
  InitializePaths;
  Result := __VSNET2010_PATH;
end;
function VSNET2012_PATH(dummy: string): string;
begin
  InitializePaths;
  Result := __VSNET2012_PATH;
end;
function VSNET2013_PATH(dummy: string): string;
begin
  InitializePaths;
  Result := __VSNET2013_PATH;
end;
function VSNET2015_PATH(dummy: string): string;
begin
  InitializePaths;
  Result := __VSNET2015_PATH;
end;

function FRAMEWORK_INSTALL_ROOT(dummy: string): string;
begin
  InitializePaths;
  Result := __FRAMEWORK_INSTALL_ROOT;
end;

function FRAMEWORK64_INSTALL_ROOT(dummy: string): string;
begin
  InitializePaths;
  Result := __FRAMEWORK64_INSTALL_ROOT;
end;

function booltostr(value: Boolean) : string;
begin
	if value then
		Result := 'true'
	else
		Result := 'false';
end;

function Csharp2010_Installed(dummy: string): Boolean;
begin
  Result := RegValueExists(HKLM,'SOFTWARE\Microsoft\VisualStudio\10.0\Projects\{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}','Package');
end;

function Fsharp2010_Installed(dummy: string): Boolean;
begin
  Result := RegValueExists(HKLM,'SOFTWARE\Microsoft\VisualStudio\10.0\Projects\{f2a71f9b-5d33-465a-a702-920d77279786}','Package');
end;

function Vb2010_Installed(dummy: string): Boolean;
begin
  Result := RegValueExists(HKLM,'SOFTWARE\Microsoft\VisualStudio\10.0\Projects\{F184B08F-C81C-45f6-A57F-5ABD9991F28F}','Package');
end;

function VS2010_REGISTRY_HIVE(dummy: string): string;
begin
  Result := '10.0';
end;

function VSNET2010_BASE_PATH(dummy: string): string;
begin
  InitializePaths;
  Result := __VSNET2010_BASE_PATH;
end;

function VS10_BASE_PATH(dummy: string): string;
begin
  InitializePaths;
  Result := __VSNET2010_BASE_PATH;
end;


function Get_SDK_INSTALL_ROOT(dummy: string): string;
begin
  InitializePaths;
  Result := __SDK_INSTALL_ROOT;
end;

function Get_SDK2_INSTALL_ROOT(dummy: string): string;
begin
  InitializePaths;
  Result := __SDK2_INSTALL_ROOT;
end;

function GET_NET_FRAMEWORK3_INSTALLED:Boolean;
begin
  Result := __NET_FRAMEWORK3_INSTALLED;
end;

function GET_NET_FRAMEWORK2_INSTALLED:Boolean;
begin
  Result := __NET_FRAMEWORK2_INSTALLED;
end;

function GET_NET_FRAMEWORK_INSTALLED:Boolean;
begin
  Result := __NET_FRAMEWORK_INSTALLED;
end;

function GET_NET_FRAMEWORK4_INSTALLED:Boolean;
begin
  Result := __NET_FRAMEWORK4_INSTALLED;
end;

function IsCSharpExpress2010Installed(dummy: string): Boolean;
begin
	Result := RegValueExists(HKLM,'SOFTWARE\Microsoft\VCSExpress\10.0','InstallDir')
		or RegValueExists(HKLM,'SOFTWARE\Wow6432Node\Microsoft\VCSExpress\10.0','InstallDir');
end;

function GetCSharpExpress2010ProjectTemplatePath(dummy: string): string;
begin
	InitializePaths;
	Result := __CSharpExpress2010ProjectTemplatePath;
end;

function IsVBExpress2010Installed(dummy: string) : Boolean;
begin
	Result := RegValueExists(HKLM,'SOFTWARE\Microsoft\VBExpress\10.0','InstallDir')
		or RegValueExists(HKLM,'SOFTWARE\Wow6432Node\Microsoft\VBExpress\10.0','InstallDir');
end;

function GetVBExpress2010ProjectTemplatePath(dummy: string) : string;
begin
	InitializePaths;
	Result := __VBExpress2010ProjectTEmplatePath;
end;

function InitializeSetup: Boolean;
begin
  Result := true;
end;