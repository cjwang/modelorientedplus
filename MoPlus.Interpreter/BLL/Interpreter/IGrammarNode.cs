﻿/*<copyright>
Mo+ Solution Builder is a model oriented programming language and IDE, used for building models and generating code and other documents in a model driven development process.

Copyright (C) 2013 Dave Clemmer, Intelligent Coding Solutions, LLC

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
</copyright>*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MoPlus.Interpreter.BLL.Solutions;

namespace MoPlus.Interpreter.BLL.Interpreter
{
	///--------------------------------------------------------------------------------
	/// <summary>This interface defines required members for grammar interpretation.</summary>
	///
	/// <CreatedByUserName>DAVE\JavaDave</CreatedByUserName>
	/// <CreatedDate>9/29/2011</CreatedDate>
	/// <Status>Customized</Status>
	///--------------------------------------------------------------------------------
	public interface IGrammarNode
	{
		///--------------------------------------------------------------------------------
		/// <summary>This property gets the LineNumber where the template node originates.</summary>
		///--------------------------------------------------------------------------------
		int LineNumber { get; set; }

		///--------------------------------------------------------------------------------
		/// <summary>This property gets the DisplayName, for display purposes, etc.</summary>
		///--------------------------------------------------------------------------------
		string DisplayName { get; }

		///--------------------------------------------------------------------------------
		/// <summary>This property gets/sets ChildNodes.</summary>
		///--------------------------------------------------------------------------------
		List<IGrammarNode> ChildNodes { get; set; }

		///--------------------------------------------------------------------------------
		/// <summary>This method is used to perform begin and end actions for a visitor.</summary>
		///--------------------------------------------------------------------------------
		void ExecuteVisitor(IGrammarNodeVisitor visitor);
	}
}
