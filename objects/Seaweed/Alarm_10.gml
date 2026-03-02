/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BA4F4A2
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "not" "1"
if(!(Rotation == 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00163CC5
	/// @DnDParent : 3BA4F4A2
	/// @DnDArgument : "var" "Rotation"
	/// @DnDArgument : "op" "2"
	if(Rotation > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 466F9B6B
		/// @DnDParent : 00163CC5
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Rotation"
		Rotation += -1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 1099AAE0
		/// @DnDParent : 00163CC5
		/// @DnDArgument : "angle" "Rotation"
		image_angle = Rotation;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BA3891F
	/// @DnDParent : 3BA4F4A2
	/// @DnDArgument : "var" "Rotation"
	/// @DnDArgument : "op" "1"
	if(Rotation < 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E2FA523
		/// @DnDParent : 4BA3891F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Rotation"
		Rotation += 1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 76B377B8
		/// @DnDParent : 4BA3891F
		/// @DnDArgument : "angle" "Rotation"
		image_angle = Rotation;}}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7C6AE44E
/// @DnDArgument : "steps" "3"
/// @DnDArgument : "alarm" "10"
alarm_set(10, 3);