/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 717F02F1
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "60"
Tick = floor(random_range(1, 60 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 747D6227
/// @DnDArgument : "steps" "Tick"
alarm_set(0, Tick);