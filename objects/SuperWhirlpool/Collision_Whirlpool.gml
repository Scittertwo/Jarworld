/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 75148D4B
/// @DnDArgument : "var" "Life"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "300"
Life = (random_range(60, 300));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 59BDC82E
/// @DnDArgument : "var" "SpeedTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "3"
SpeedTemp = floor(random_range(1, 3 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 424B4F58
/// @DnDArgument : "var" "PowerTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "3"
PowerTemp = floor(random_range(1, 3 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 114C21FD
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "BubbleCount"
BubbleCount += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5965A985
/// @DnDArgument : "expr" "SpeedTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Speed"
Speed += SpeedTemp;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 670F39A6
/// @DnDArgument : "expr" "PowerTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Power"
Power += PowerTemp;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 77E3FC8C
/// @DnDArgument : "expr" "0.01"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Size"
Size += 0.01;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 50BCAAF4
/// @DnDArgument : "value" "Power"
/// @DnDArgument : "var" "WhirlPower"
global.WhirlPower = Power;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4BE3B223
/// @DnDInput : 2
/// @DnDArgument : "steps" "Life"
/// @DnDArgument : "steps_relative" "1"
/// @DnDArgument : "alarm" "11"
/// @DnDArgument : "alarm_1" "2"
alarm_set(11, Life + alarm_get(11));
alarm_set(2, 30);