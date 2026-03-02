/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 17338700
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 34197237
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, 30 + alarm_get(0));