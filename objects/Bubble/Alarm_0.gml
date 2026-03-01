/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 455B4C8B
/// @DnDArgument : "speed" "global.BubbleSpeed"
speed = global.BubbleSpeed;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 21DED5BD
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-100"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + -100);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 391DA01D
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);