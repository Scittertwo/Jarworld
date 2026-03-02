/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1F52284E
/// @DnDArgument : "var" "STemp"
/// @DnDArgument : "alarm" "6"
STemp = alarm_get(6);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54BF4BD6
/// @DnDArgument : "var" "STemp"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(!(STemp > 1)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2CC30E72
	/// @DnDParent : 54BF4BD6
	speed = 0;}