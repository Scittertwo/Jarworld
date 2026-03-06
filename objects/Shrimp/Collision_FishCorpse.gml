/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2B801191
/// @DnDArgument : "var" "EnergyTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "5"
/// @DnDArgument : "max" "10"
EnergyTemp = floor(random_range(5, 10 + 1));

/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 52B91DE2
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 427018AC
/// @DnDArgument : "expr" "EnergyTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += EnergyTemp;