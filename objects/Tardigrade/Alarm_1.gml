/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 006736BC
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "TargetSize"
if(Size < TargetSize){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2400DD00
	/// @DnDParent : 006736BC
	/// @DnDArgument : "expr" "0.05"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Size"
	Size += 0.05;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 349DC23B
	/// @DnDParent : 006736BC
	/// @DnDArgument : "xscale" "0.05"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "0.05"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += 0.05;image_yscale += 0.05;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 222B19CF
/// @DnDArgument : "var" "Stasis"
if(Stasis == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 26D0AC49
	/// @DnDParent : 222B19CF
	/// @DnDArgument : "var" "EnergyTemp"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "5"
	/// @DnDArgument : "max" "20"
	EnergyTemp = floor(random_range(5, 20 + 1));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45411F99
/// @DnDArgument : "var" "Stasis"
/// @DnDArgument : "value" "1"
if(Stasis == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 698EB645
	/// @DnDParent : 45411F99
	/// @DnDArgument : "var" "EnergyTemp"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "10"
	/// @DnDArgument : "max" "25"
	EnergyTemp = floor(random_range(10, 25 + 1));}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16FE36AE
/// @DnDArgument : "expr" "EnergyTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += EnergyTemp;