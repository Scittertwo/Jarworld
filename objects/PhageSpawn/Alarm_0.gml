/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 64FA7FAC
/// @DnDArgument : "var" "PhageS"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "10"
PhageS = floor(random_range(1, 10 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 1D3A2689
/// @DnDArgument : "times" "PhageS"
repeat(PhageS){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 03BDCD5D
	/// @DnDParent : 1D3A2689
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Phage"
	/// @DnDSaveInfo : "objectid" "Phage"
	instance_create_layer(x + 0, y + 0, "Instances", Phage);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0435A3EA
instance_destroy();