/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4FD05C8B
/// @DnDArgument : "funcName" "GetInput"
function GetInput() 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 67F1A982
	/// @DnDParent : 4FD05C8B
	/// @DnDArgument : "key" "vk_right"
	var l67F1A982_0;
	l67F1A982_0 = keyboard_check(vk_right);
	if (l67F1A982_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 76C4E789
		/// @DnDParent : 67F1A982
		/// @DnDArgument : "expr" "walk_speed"
		/// @DnDArgument : "var" "v_x"
		v_x = walk_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 072DDA90
	/// @DnDParent : 4FD05C8B
	/// @DnDArgument : "key" "vk_left"
	var l072DDA90_0;
	l072DDA90_0 = keyboard_check(vk_left);
	if (l072DDA90_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CB267F5
		/// @DnDParent : 072DDA90
		/// @DnDArgument : "expr" "-walk_speed"
		/// @DnDArgument : "var" "v_x"
		v_x = -walk_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 235C44A2
	/// @DnDParent : 4FD05C8B
	var l235C44A2_0;
	l235C44A2_0 = keyboard_check_pressed(vk_space);
	if (l235C44A2_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53EA419B
		/// @DnDParent : 235C44A2
		/// @DnDArgument : "var" "is_on_ground"
		/// @DnDArgument : "value" "true"
		if(is_on_ground == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2946DBAD
			/// @DnDParent : 53EA419B
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_jumping"
			is_jumping = true;
		}
	}
}