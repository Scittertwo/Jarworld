/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6BAA2050
/// @DnDArgument : "var" "Cloud"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "2"
/// @DnDArgument : "max" "3"
Cloud = floor(random_range(2, 3 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 2ACB2AA7
/// @DnDArgument : "times" "Cloud"
repeat(Cloud){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3DCD7570
	/// @DnDParent : 2ACB2AA7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "BubbleSpawn"
	/// @DnDSaveInfo : "objectid" "BubbleSpawn"
	instance_create_layer(x + 0, y + 0, "Instances", BubbleSpawn);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3B8EAEF9
	/// @DnDParent : 2ACB2AA7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "CosmeticBubbleSpawn"
	/// @DnDSaveInfo : "objectid" "CosmeticBubbleSpawn"
	instance_create_layer(x + 0, y + 0, "Instances", CosmeticBubbleSpawn);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2143061C
instance_destroy();