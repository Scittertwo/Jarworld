/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E73CA0D
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "MaxSize"
if(Size < MaxSize){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C95765E
	/// @DnDParent : 0E73CA0D
	/// @DnDArgument : "expr" "0.02"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Size"
	Size += 0.02;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3EA461DA
	/// @DnDParent : 0E73CA0D
	/// @DnDArgument : "xscale" "Size"
	/// @DnDArgument : "yscale" "Size"
	image_xscale = Size;image_yscale = Size;}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2876B73B
/// @DnDArgument : "var" "EnergyTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "3"
/// @DnDArgument : "max" "10"
EnergyTemp = floor(random_range(3, 10 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75AC2E89
/// @DnDArgument : "expr" "EnergyTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += EnergyTemp;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6BA28BB6
speed = 0;