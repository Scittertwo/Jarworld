/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 036B05A1
/// @DnDArgument : "var" "Mature"
if(Mature == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E7D769C
	/// @DnDParent : 036B05A1
	/// @DnDArgument : "expr" "-10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Health"
	Health += -10;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F651EFA
/// @DnDArgument : "var" "Mature"
/// @DnDArgument : "value" "1"
if(Mature == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2876B73B
	/// @DnDParent : 6F651EFA
	/// @DnDArgument : "var" "EnergyTemp"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "5"
	/// @DnDArgument : "max" "15"
	EnergyTemp = floor(random_range(5, 15 + 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75AC2E89
	/// @DnDParent : 6F651EFA
	/// @DnDArgument : "expr" "EnergyTemp"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Energy"
	Energy += EnergyTemp;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E73CA0D
	/// @DnDParent : 6F651EFA
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
		image_xscale = Size;image_yscale = Size;}}