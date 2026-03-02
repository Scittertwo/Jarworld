/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BAE8332
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "Rev"
Rev = 1;

/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 31344D19
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1DADF1BC
/// @DnDArgument : "steps" "2"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 2);