/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 31DBB7A1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "OnFloor"
OnFloor = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06590EA1
/// @DnDArgument : "var" "OnFloor"
if(OnFloor == 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2AE0BE36
	/// @DnDParent : 06590EA1
	speed = 0;}