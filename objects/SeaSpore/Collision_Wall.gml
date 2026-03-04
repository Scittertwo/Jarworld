/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 0138AFCE
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3F3B9AAC
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 1);