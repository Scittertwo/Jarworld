/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0CD11C5E
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10F326E5
/// @DnDArgument : "var" "TardSpawn"
/// @DnDArgument : "value" "1"
if(TardSpawn == 1){	/// @DnDAction : YoYo Games.Rooms.If_First_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4B3EED35
	/// @DnDParent : 10F326E5
	if(room == room_first){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 71E20B24
		/// @DnDParent : 4B3EED35
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "TardigradeEgg"
		/// @DnDSaveInfo : "objectid" "TardigradeEgg"
		instance_create_layer(x + 0, y + 0, "Instances", TardigradeEgg);}}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7DE084D7
/// @DnDArgument : "var" "Cloud"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "3"
/// @DnDArgument : "max" "5"
Cloud = floor(random_range(3, 5 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 30BD5F4B
/// @DnDArgument : "times" "Cloud"
repeat(Cloud){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3AE2A3A6
	/// @DnDParent : 30BD5F4B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "CosmeticBubbleSpawn"
	/// @DnDSaveInfo : "objectid" "CosmeticBubbleSpawn"
	instance_create_layer(x + 0, y + 0, "Instances", CosmeticBubbleSpawn);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 105F9350
instance_destroy();