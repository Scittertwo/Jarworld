/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 08388CE0
/// @DnDArgument : "var" "CosmeticBubbleN"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "MaxCosmeticBubbles"
if(CosmeticBubbleN < MaxCosmeticBubbles){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 07D3FEAC
	/// @DnDParent : 08388CE0
	/// @DnDArgument : "var" "BubSpawn"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "5"
	BubSpawn = floor(random_range(1, 5 + 1));

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 3E92E790
	/// @DnDParent : 08388CE0
	/// @DnDArgument : "times" "BubSpawn"
	repeat(BubSpawn){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 0D8BF98D
		/// @DnDParent : 3E92E790
		/// @DnDArgument : "var" "Across"
		/// @DnDArgument : "max" "1350"
		Across = (random_range(0, 1350));
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 089C1DB5
		/// @DnDParent : 3E92E790
		/// @DnDArgument : "var" "Down"
		/// @DnDArgument : "min" "1000"
		/// @DnDArgument : "max" "1500"
		Down = (random_range(1000, 1500));
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 11683E6D
		/// @DnDParent : 3E92E790
		/// @DnDArgument : "xpos" "Across"
		/// @DnDArgument : "ypos" "Down"
		/// @DnDArgument : "objectid" "CosmeticBubbleSpawn"
		/// @DnDSaveInfo : "objectid" "CosmeticBubbleSpawn"
		instance_create_layer(Across, Down, "Instances", CosmeticBubbleSpawn);}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2D82291D
else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 6D92B43C
	/// @DnDParent : 2D82291D
	/// @DnDArgument : "msg" ""Max Cosbubs Reached""
	show_debug_message(string("Max Cosbubs Reached"));}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 652D56B0
/// @DnDArgument : "steps" "CosBubSpawnTime*60"
/// @DnDArgument : "alarm" "4"
alarm_set(4, CosBubSpawnTime*60);