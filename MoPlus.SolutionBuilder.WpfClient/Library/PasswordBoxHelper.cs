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
using System.Windows;
using System.Windows.Controls;

namespace MoPlus.SolutionBuilder.WpfClient.Library
{
	///--------------------------------------------------------------------------------
	/// <summary>This class provides the ability to bind to a PasswordBox.</summary>
	/// 
	/// <remarks>Pulled From Samuel Jack's blog (blog.functionalfun.net).</remarks>
	///--------------------------------------------------------------------------------
	public static class PasswordBoxHelper
	{
		public static readonly DependencyProperty BoundPassword =
			DependencyProperty.RegisterAttached("BoundPassword", typeof(string), typeof(PasswordBoxHelper), new PropertyMetadata(string.Empty, OnBoundPasswordChanged));

		public static readonly DependencyProperty BindPassword = DependencyProperty.RegisterAttached(
			"BindPassword", typeof(bool), typeof(PasswordBoxHelper), new PropertyMetadata(false, OnBindPasswordChanged));

		private static readonly DependencyProperty UpdatingPassword =
			DependencyProperty.RegisterAttached("UpdatingPassword", typeof(bool), typeof(PasswordBoxHelper), new PropertyMetadata(false));

		private static void OnBoundPasswordChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
		{
			PasswordBox box = d as PasswordBox;

			// only handle this event when the property is attached to a PasswordBox
			// and when the BindPassword attached property has been set to true
			if (d == null || !GetBindPassword(d))
			{
				return;
			}

			// avoid recursive updating by ignoring the box's changed event
			box.PasswordChanged -= HandlePasswordChanged;

			string newPassword = (string)e.NewValue;

			if (!GetUpdatingPassword(box))
			{
				box.Password = newPassword;
			}

			box.PasswordChanged += HandlePasswordChanged;
		}

		private static void OnBindPasswordChanged(DependencyObject dp, DependencyPropertyChangedEventArgs e)
		{
			// when the BindPassword attached property is set on a PasswordBox,
			// start listening to its PasswordChanged event

			PasswordBox box = dp as PasswordBox;

			if (box == null)
			{
				return;
			}

			bool wasBound = (bool)(e.OldValue);
			bool needToBind = (bool)(e.NewValue);

			if (wasBound)
			{
				box.PasswordChanged -= HandlePasswordChanged;
			}

			if (needToBind)
			{
				box.PasswordChanged += HandlePasswordChanged;
			}
		}

		private static void HandlePasswordChanged(object sender, RoutedEventArgs e)
		{
			PasswordBox box = sender as PasswordBox;

			// set a flag to indicate that we're updating the password
			SetUpdatingPassword(box, true);
			// push the new password into the BoundPassword property
			SetBoundPassword(box, box.Password);
			SetUpdatingPassword(box, false);
		}

		public static void SetBindPassword(DependencyObject dp, bool value)
		{
			dp.SetValue(BindPassword, value);
		}

		public static bool GetBindPassword(DependencyObject dp)
		{
			return (bool)dp.GetValue(BindPassword);
		}

		public static string GetBoundPassword(DependencyObject dp)
		{
			return (string)dp.GetValue(BoundPassword);
		}

		public static void SetBoundPassword(DependencyObject dp, string value)
		{
			dp.SetValue(BoundPassword, value);
		}

		private static bool GetUpdatingPassword(DependencyObject dp)
		{
			return (bool)dp.GetValue(UpdatingPassword);
		}

		private static void SetUpdatingPassword(DependencyObject dp, bool value)
		{
			dp.SetValue(UpdatingPassword, value);
		}
	}
}
