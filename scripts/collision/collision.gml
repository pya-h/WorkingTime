/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 70F02370
/// @DnDArgument : "funcName" "CheckCharacterIsOnGround"
function CheckCharacterIsOnGround() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6351FB33
	/// @DnDParent : 70F02370
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "global.gravity_coef"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_solid"
	/// @DnDSaveInfo : "object" "obj_solid"
	var l6351FB33_0 = instance_place(x + 0, y + global.gravity_coef, obj_solid);
	if ((l6351FB33_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05C39453
		/// @DnDParent : 6351FB33
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_on_ground"
		is_on_ground = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 35430E9D
	/// @DnDParent : 70F02370
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53D2DDA9
		/// @DnDParent : 35430E9D
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_on_ground"
		is_on_ground = false;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0098CCDA
/// @DnDArgument : "funcName" "ManageCollisions"
function ManageCollisions() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 39DB82C2
	/// @DnDParent : 0098CCDA
	/// @DnDArgument : "x" "v_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_solid"
	/// @DnDSaveInfo : "object" "obj_solid"
	var l39DB82C2_0 = instance_place(x + v_x, y + 0, obj_solid);
	if ((l39DB82C2_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D719E59
		/// @DnDParent : 39DB82C2
		/// @DnDArgument : "var" "has_collided"
		/// @DnDArgument : "value" "false"
		var has_collided = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 2F0140B4
		/// @DnDParent : 39DB82C2
		/// @DnDArgument : "var" "has_collided"
		/// @DnDArgument : "value" "false"
		while ((has_collided == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 7D9B8651
			/// @DnDParent : 2F0140B4
			/// @DnDArgument : "x" "sign(v_x)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_solid"
			var l7D9B8651_0 = instance_place(x + sign(v_x), y + 0, obj_solid);
			if (!(l7D9B8651_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 733B96A3
				/// @DnDParent : 7D9B8651
				/// @DnDArgument : "expr" "sign(v_x)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(v_x);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 342E4A63
			/// @DnDParent : 2F0140B4
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 372CD659
				/// @DnDParent : 342E4A63
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "has_collided"
				has_collided = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3367D583
				/// @DnDParent : 342E4A63
				/// @DnDArgument : "var" "v_x"
				v_x = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03CD3864
	/// @DnDParent : 0098CCDA
	/// @DnDArgument : "expr" "v_x"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += v_x;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 63801D63
	/// @DnDParent : 0098CCDA
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "v_y"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_solid"
	/// @DnDSaveInfo : "object" "obj_solid"
	var l63801D63_0 = instance_place(x + 0, y + v_y, obj_solid);
	if ((l63801D63_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7EA86AB3
		/// @DnDParent : 63801D63
		/// @DnDArgument : "var" "has_collided"
		/// @DnDArgument : "value" "false"
		var has_collided = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 6663A37A
		/// @DnDParent : 63801D63
		/// @DnDArgument : "var" "has_collided"
		/// @DnDArgument : "value" "false"
		while ((has_collided == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 2F869F35
			/// @DnDParent : 6663A37A
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(v_y)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_solid"
			var l2F869F35_0 = instance_place(x + 0, y + sign(v_y), obj_solid);
			if (!(l2F869F35_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2E5F7AE0
				/// @DnDParent : 2F869F35
				/// @DnDArgument : "expr" "sign(v_y)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "y"
				y += sign(v_y);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3EF97507
			/// @DnDParent : 6663A37A
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 60B7C558
				/// @DnDParent : 3EF97507
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "has_collided"
				has_collided = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6AE88157
				/// @DnDParent : 3EF97507
				/// @DnDArgument : "var" "v_y"
				v_y = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2083E0F3
	/// @DnDParent : 0098CCDA
	/// @DnDArgument : "expr" "v_y"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += v_y;
}