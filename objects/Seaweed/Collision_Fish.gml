/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 14B8F672
/// @DnDArgument : "var" "BitCount"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "5"
BitCount = floor(random_range(1, 5 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 71976AEC
/// @DnDArgument : "times" "BitCount"
repeat(BitCount){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 63765F5B
	/// @DnDParent : 71976AEC
	/// @DnDArgument : "var" "bx"
	/// @DnDArgument : "min" "-45"
	/// @DnDArgument : "max" "45"
	bx = (random_range(-45, 45));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7DBDE0D5
	/// @DnDParent : 71976AEC
	/// @DnDArgument : "var" "by"
	/// @DnDArgument : "min" "-35"
	/// @DnDArgument : "max" "-10"
	by = (random_range(-35, -10));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2FE2D09F
	/// @DnDParent : 71976AEC
	/// @DnDArgument : "xpos" "bx"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "by"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "KelpBit"
	/// @DnDSaveInfo : "objectid" "KelpBit"
	instance_create_layer(x + bx, y + by, "Instances", KelpBit);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 369A90A2
instance_destroy();