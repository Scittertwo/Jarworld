/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 3A54D4D1
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 643EE4CC
/// @DnDArgument : "var" "walltick"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "10"
/// @DnDArgument : "max" "45"
walltick = floor(random_range(10, 45 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3F3B9AAC
/// @DnDArgument : "steps" "walltick"
/// @DnDArgument : "alarm" "2"
alarm_set(2, walltick);