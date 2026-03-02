/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 02C1F575
speed = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6A7C6F95
/// @DnDArgument : "var" "EnergyTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "10"
/// @DnDArgument : "max" "25"
EnergyTemp = floor(random_range(10, 25 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 341C292A
/// @DnDArgument : "expr" "EnergyTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += EnergyTemp;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36F02A9B
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "MaxSize"
if(Size < MaxSize){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22C371E3
	/// @DnDParent : 36F02A9B
	/// @DnDArgument : "expr" "0.04"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Size"
	Size += 0.04;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 74DC7F17
	/// @DnDParent : 36F02A9B
	/// @DnDArgument : "xscale" "Size"
	/// @DnDArgument : "yscale" "Size"
	image_xscale = Size;image_yscale = Size;}