/*<copyright>
Mo+ Solution Builder is a model oriented programming language and IDE, used for building models and generating code and other documents in a model driven development process.

Copyright (C) 2013 Dave Clemmer, Intelligent Coding Solutions, LLC

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
</copyright>*/
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Xml.Serialization;
using System.Runtime.Serialization;
using System.Text;
using MoPlus.Common;
using MoPlus.Data;
using BLL = MoPlus.Interpreter.BLL;
using System.IO;

namespace MoPlus.Interpreter.BLL.Solutions
{
	///--------------------------------------------------------------------------------
	/// <summary></summary>
	///
	/// This file is for adding customizations to the SpecificationSource class
	/// (change the Status below to something other than Generated).
	///
	/// <CreatedByUserName>INCODE-1\Dave</CreatedByUserName>
	/// <CreatedDate>9/4/2013</CreatedDate>
	/// <Status>Customized</Status>
	///--------------------------------------------------------------------------------
	public partial class SpecificationSource : BusinessObjectBase
	{
		#region "Constants"
		#endregion "Constants"
		
		#region "Fields and Properties"
		///--------------------------------------------------------------------------------
		/// <summary>This property gets the primary source db.</summary>
		///--------------------------------------------------------------------------------
		[XmlIgnore]
		public string TemplateAbsolutePath
		{
			get
			{
				if (!String.IsNullOrEmpty(TemplatePath))
				{
					if (File.Exists(TemplatePath))
					{
						return TemplatePath;
					}
					if (Solution != null && !String.IsNullOrEmpty(Solution.SolutionDirectory))
					{
						Uri uri = new Uri(Path.Combine(Solution.SolutionDirectory, TemplatePath));
						string path = Path.GetFullPath(uri.AbsolutePath).ToString();
						return path;
					}
					return TemplatePath;
				}
				return null;
			}
		}

		#endregion "Fields and Properties"
		
		#region "Methods"
		#endregion "Methods"
		
		#region "Constructors"
		#endregion "Constructors"
	}
}