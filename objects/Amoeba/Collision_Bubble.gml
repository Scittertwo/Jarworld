/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 766F35DF
/// @DnDArgument : "var" "Cloud"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "2"
/// @DnDArgument : "max" "5"
Cloud = floor(random_range(2, 5 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 57F435B0
/// @DnDArgument : "times" "Cloud"
repeat(Cloud){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BFE7C8A
	/// @DnDParent : 57F435B0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "BubbleSpawn"
	/// @DnDSaveInfo : "objectid" "BubbleSpawn"
	instance_create_layer(x + 0, y + 0, "Instances", BubbleSpawn);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 40995014
	/// @DnDParent : 57F435B0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "CosmeticBubbleSpawn"
	/// @DnDSaveInfo : "objectid" "CosmeticBubbleSpawn"
	instance_create_layer(x + 0, y + 0, "Instances", CosmeticBubbleSpawn);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2143061C
instance_destroy();