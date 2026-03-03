/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 542986F4
/// @DnDArgument : "var" "EnergyTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "5"
/// @DnDArgument : "max" "20"
EnergyTemp = floor(random_range(5, 20 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3141C274
/// @DnDArgument : "expr" "EnergyTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += EnergyTemp;