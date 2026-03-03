/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36EDA4F2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "BumpCount"
BumpCount += 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 34197237
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, 30 + alarm_get(0));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56D277DF
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "2.5"
if(Speed > 2.5){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 645C72FE
	/// @DnDParent : 56D277DF
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 17338700
direction = (direction + 180) % 360;