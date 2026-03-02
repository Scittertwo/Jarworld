/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 09CEA741
/// @DnDArgument : "var" "Cloud"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "5"
Cloud = floor(random_range(1, 5 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 31BED363
/// @DnDArgument : "times" "Cloud"
repeat(Cloud){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0AC9BD0A
	/// @DnDParent : 31BED363
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "CosmeticBubbleSpawn"
	/// @DnDSaveInfo : "objectid" "CosmeticBubbleSpawn"
	instance_create_layer(x + 0, y + 0, "Instances", CosmeticBubbleSpawn);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 778B9E3A
instance_destroy();