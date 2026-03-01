/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 3DE92C0D
/// @DnDArgument : "var" "AlgaeN"
/// @DnDArgument : "object" "Algae"
/// @DnDSaveInfo : "object" "Algae"
AlgaeN = instance_number(Algae);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 74B1BBBF
/// @DnDArgument : "var" "ProtozoaN"
/// @DnDArgument : "object" "Protozoa"
/// @DnDSaveInfo : "object" "Protozoa"
ProtozoaN = instance_number(Protozoa);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 04D47E5D
/// @DnDArgument : "var" "SporeN"
/// @DnDArgument : "object" "Spore"
/// @DnDSaveInfo : "object" "Spore"
SporeN = instance_number(Spore);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 09028487
/// @DnDArgument : "var" "PhageN"
/// @DnDArgument : "object" "Phage"
/// @DnDSaveInfo : "object" "Phage"
PhageN = instance_number(Phage);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 29C61D2C
/// @DnDArgument : "var" "AmoebaN"
/// @DnDArgument : "object" "Amoeba"
/// @DnDSaveInfo : "object" "Amoeba"
AmoebaN = instance_number(Amoeba);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 3F0F93F2
/// @DnDArgument : "var" "CosmeticBubbleN"
/// @DnDArgument : "object" "CosmeticBubble"
/// @DnDSaveInfo : "object" "CosmeticBubble"
CosmeticBubbleN = instance_number(CosmeticBubble);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 213E644D
/// @DnDArgument : "var" "AlgaeN"
/// @DnDArgument : "op" "3"
if(AlgaeN <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66F3C778
	/// @DnDParent : 213E644D
	/// @DnDArgument : "var" "SporeN"
	/// @DnDArgument : "op" "3"
	if(SporeN <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0255795F
		/// @DnDParent : 66F3C778
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "Algae"
		/// @DnDSaveInfo : "objectid" "Algae"
		instance_create_layer(x + 0, y + 0, "Instances", Algae);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1FA48A9C
		/// @DnDParent : 66F3C778
		/// @DnDArgument : "expr" "30"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown = 30;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66B47CB8
/// @DnDArgument : "var" "AlgaeN"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "7"
if(AlgaeN >= 7){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D68C18A
	/// @DnDParent : 66B47CB8
	/// @DnDArgument : "var" "ProtozoaN"
	/// @DnDArgument : "op" "3"
	if(ProtozoaN <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1969776E
		/// @DnDParent : 7D68C18A
		/// @DnDArgument : "var" "Cooldown"
		/// @DnDArgument : "op" "3"
		if(Cooldown <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 41F10C90
			/// @DnDParent : 1969776E
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "Protozoa"
			/// @DnDSaveInfo : "objectid" "Protozoa"
			instance_create_layer(x + 0, y + 0, "Instances", Protozoa);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7C4449F3
			/// @DnDParent : 1969776E
			/// @DnDArgument : "expr" "30"
			/// @DnDArgument : "var" "Cooldown"
			Cooldown = 30;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C3D56C6
/// @DnDArgument : "var" "ProtozoaN"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "5"
if(ProtozoaN >= 5){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5365BC93
	/// @DnDParent : 1C3D56C6
	/// @DnDArgument : "var" "PhageN"
	/// @DnDArgument : "op" "3"
	if(PhageN <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C8FCE09
		/// @DnDParent : 5365BC93
		/// @DnDArgument : "var" "Cooldown"
		/// @DnDArgument : "op" "3"
		if(Cooldown <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 47DE8525
			/// @DnDParent : 4C8FCE09
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "PhageSpawn"
			/// @DnDSaveInfo : "objectid" "PhageSpawn"
			instance_create_layer(x + 0, y + 0, "Instances", PhageSpawn);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1FA457AD
			/// @DnDParent : 4C8FCE09
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "PhageSpawn"
			/// @DnDSaveInfo : "objectid" "PhageSpawn"
			instance_create_layer(x + 0, y + 0, "Instances", PhageSpawn);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7EA1B53C
			/// @DnDParent : 4C8FCE09
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "PhageSpawn"
			/// @DnDSaveInfo : "objectid" "PhageSpawn"
			instance_create_layer(x + 0, y + 0, "Instances", PhageSpawn);}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44CA68EF
		/// @DnDParent : 5365BC93
		/// @DnDArgument : "expr" "60"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown = 60;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10BFAF28
/// @DnDArgument : "var" "PhageN"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "25"
if(PhageN >= 25){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36E01BF4
	/// @DnDParent : 10BFAF28
	/// @DnDArgument : "var" "AmoebaN"
	/// @DnDArgument : "op" "3"
	if(AmoebaN <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FC2241D
		/// @DnDParent : 36E01BF4
		/// @DnDArgument : "var" "Cooldown"
		/// @DnDArgument : "op" "3"
		if(Cooldown <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6CCBF8E6
			/// @DnDParent : 2FC2241D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "Amoeba"
			/// @DnDSaveInfo : "objectid" "Amoeba"
			instance_create_layer(x + 0, y + 0, "Instances", Amoeba);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2025586A
			/// @DnDParent : 2FC2241D
			/// @DnDArgument : "expr" "30"
			/// @DnDArgument : "var" "Cooldown"
			Cooldown = 30;}}}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 74A83594
/// @DnDArgument : "var" "WhirlSpawn"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "100"
WhirlSpawn = floor(random_range(1, 100 + 1));

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

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 429A8B99
/// @DnDArgument : "var" "TardigradeN"
/// @DnDArgument : "object" "Tardigrade"
/// @DnDSaveInfo : "object" "Tardigrade"
TardigradeN = instance_number(Tardigrade);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F95C283
/// @DnDArgument : "var" "Cooldown"
/// @DnDArgument : "op" "2"
if(Cooldown > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DFBB571
	/// @DnDParent : 6F95C283
	/// @DnDArgument : "var" "TardigradeN"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "7"
	if(TardigradeN <= 7){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 474D11A5
		/// @DnDParent : 2DFBB571
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown += -1;}}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 28430BB4
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);