/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4267A78A
/// @DnDArgument : "var" "Cloud"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
Cloud = floor(random_range(1, 1 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 3FF3791C
/// @DnDArgument : "times" "Cloud"
repeat(Cloud){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0792BC13
	/// @DnDParent : 3FF3791C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "CosmeticBubbleSpawn"
	/// @DnDSaveInfo : "objectid" "CosmeticBubbleSpawn"
	instance_create_layer(x + 0, y + 0, "Instances", CosmeticBubbleSpawn);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3B7D1788
instance_destroy();