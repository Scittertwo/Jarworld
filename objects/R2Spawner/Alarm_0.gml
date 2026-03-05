/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 3DE92C0D
/// @DnDArgument : "var" "SeaweedN"
/// @DnDArgument : "object" "Seaweed"
/// @DnDSaveInfo : "object" "Seaweed"
SeaweedN = instance_number(Seaweed);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 04D47E5D
/// @DnDArgument : "var" "SporeN"
/// @DnDArgument : "object" "SeaSpore"
/// @DnDSaveInfo : "object" "SeaSpore"
SporeN = instance_number(SeaSpore);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 3B7E7CAF
/// @DnDArgument : "var" "FishN"
/// @DnDArgument : "object" "Fish"
/// @DnDSaveInfo : "object" "Fish"
FishN = instance_number(Fish);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 65F93BAC
/// @DnDArgument : "var" "FishEggN"
/// @DnDArgument : "object" "FishEgg"
/// @DnDSaveInfo : "object" "FishEgg"
FishEggN = instance_number(FishEgg);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 3F0F93F2
/// @DnDArgument : "var" "CosmeticBubbleN"
/// @DnDArgument : "object" "CosmeticBubble"
/// @DnDSaveInfo : "object" "CosmeticBubble"
CosmeticBubbleN = instance_number(CosmeticBubble);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 03BF5829
/// @DnDArgument : "var" "CrabN"
/// @DnDArgument : "object" "Crab"
/// @DnDSaveInfo : "object" "Crab"
CrabN = instance_number(Crab);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 46C6D941
/// @DnDArgument : "var" "CrabEggN"
/// @DnDArgument : "object" "CrabEgg"
/// @DnDSaveInfo : "object" "CrabEgg"
CrabEggN = instance_number(CrabEgg);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5531C563
/// @DnDArgument : "var" "Cooldown"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(Cooldown < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 213E644D
	/// @DnDParent : 5531C563
	/// @DnDArgument : "var" "SeaweedN"
	/// @DnDArgument : "op" "3"
	if(SeaweedN <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 66F3C778
		/// @DnDParent : 213E644D
		/// @DnDArgument : "var" "SporeN"
		/// @DnDArgument : "op" "3"
		if(SporeN <= 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 40DF0010
			/// @DnDParent : 66F3C778
			/// @DnDArgument : "var" "SporeCount"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "1"
			/// @DnDArgument : "max" "10"
			SporeCount = floor(random_range(1, 10 + 1));
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 5305A9E0
			/// @DnDParent : 66F3C778
			/// @DnDArgument : "times" "SporeCount"
			repeat(SporeCount){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0255795F
				/// @DnDParent : 5305A9E0
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "SeaSpore"
				/// @DnDSaveInfo : "objectid" "SeaSpore"
				instance_create_layer(x + 0, y + 0, "Instances", SeaSpore);}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1FA48A9C
			/// @DnDParent : 66F3C778
			/// @DnDArgument : "expr" "30"
			/// @DnDArgument : "var" "Cooldown"
			Cooldown = 30;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53621BAA
	/// @DnDParent : 5531C563
	/// @DnDArgument : "var" "FishN"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "2"
	if(FishN < 2){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60DC2B3B
		/// @DnDParent : 53621BAA
		/// @DnDArgument : "var" "FishEggN"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(FishEggN < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C5BEA04
			/// @DnDParent : 60DC2B3B
			/// @DnDArgument : "var" "SeaweedN"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "7"
			if(SeaweedN > 7){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
				/// @DnDVersion : 1
				/// @DnDHash : 702BEC16
				/// @DnDParent : 3C5BEA04
				/// @DnDArgument : "var" "EggCount"
				/// @DnDArgument : "type" "1"
				/// @DnDArgument : "min" "3"
				/// @DnDArgument : "max" "6"
				EggCount = floor(random_range(3, 6 + 1));
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 073E7C75
				/// @DnDParent : 3C5BEA04
				/// @DnDArgument : "times" "EggCount"
				repeat(EggCount){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 6DC62937
					/// @DnDParent : 073E7C75
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "FishEgg"
					/// @DnDSaveInfo : "objectid" "FishEgg"
					instance_create_layer(x + 0, y + 0, "Instances", FishEgg);}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 77144AFE
				/// @DnDParent : 3C5BEA04
				/// @DnDArgument : "expr" "60"
				/// @DnDArgument : "var" "Cooldown"
				Cooldown = 60;}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5179C3EA
/// @DnDArgument : "var" "CrabN"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(CrabN < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 398E9F5B
	/// @DnDParent : 5179C3EA
	/// @DnDArgument : "var" "CrabEggN"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(CrabEggN < 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C910038
		/// @DnDParent : 398E9F5B
		/// @DnDArgument : "var" "FishN"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "4"
		if(FishN >= 4){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 34897592
			/// @DnDParent : 1C910038
			/// @DnDArgument : "var" "FishEggN"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "4"
			if(FishEggN >= 4){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
				/// @DnDVersion : 1
				/// @DnDHash : 7E9A3D58
				/// @DnDParent : 34897592
				/// @DnDArgument : "var" "CrabSpawn"
				/// @DnDArgument : "type" "1"
				/// @DnDArgument : "min" "2"
				/// @DnDArgument : "max" "4"
				CrabSpawn = floor(random_range(2, 4 + 1));
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 3BBC844A
				/// @DnDParent : 34897592
				/// @DnDArgument : "times" "CrabSpawn"
				repeat(CrabSpawn){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 79A2D470
					/// @DnDParent : 3BBC844A
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "CrabEgg"
					/// @DnDSaveInfo : "objectid" "CrabEgg"
					instance_create_layer(x + 0, y + 0, "Instances", CrabEgg);}}}}}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 74A83594
/// @DnDArgument : "var" "WhirlSpawn"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "200"
WhirlSpawn = floor(random_range(1, 200 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7388209C
/// @DnDArgument : "var" "WhirlSpawn"
/// @DnDArgument : "value" "1"
if(WhirlSpawn == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4122910F
	/// @DnDParent : 7388209C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Whirlpool"
	/// @DnDSaveInfo : "objectid" "Whirlpool"
	instance_create_layer(x + 0, y + 0, "Instances", Whirlpool);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F95C283
/// @DnDArgument : "var" "Cooldown"
/// @DnDArgument : "op" "2"
if(Cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 474D11A5
	/// @DnDParent : 6F95C283
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Cooldown"
	Cooldown += -1;}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 28430BB4
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);