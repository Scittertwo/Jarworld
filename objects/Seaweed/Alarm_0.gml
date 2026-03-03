/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 046BCDA1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "25"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Floor"
/// @DnDSaveInfo : "object" "Floor"
var l046BCDA1_0 = instance_place(x + 0, y + 25, [Floor]);if ((l046BCDA1_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77B36303
	/// @DnDParent : 046BCDA1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Planted"
	Planted = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0A47819F
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EF35236
	/// @DnDParent : 0A47819F
	/// @DnDArgument : "var" "Planted"
	Planted = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C1DAB55
/// @DnDArgument : "var" "Planted"
if(Planted == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4DA70ED7
	/// @DnDParent : 7C1DAB55
	/// @DnDArgument : "var" "tx"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "-70"
	/// @DnDArgument : "max" "70"
	tx = floor(random_range(-70, 70 + 1));

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 56918942
	/// @DnDParent : 7C1DAB55
	/// @DnDArgument : "x" "tx"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "20"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + tx, y + 20);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6FC9CAAF
	/// @DnDParent : 7C1DAB55
	/// @DnDArgument : "speed" "Speed"
	speed = Speed;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3737FABE
/// @DnDArgument : "var" "Planted"
/// @DnDArgument : "value" "1"
if(Planted == 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1C17ED3A
	/// @DnDParent : 3737FABE
	speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DA21557
	/// @DnDParent : 3737FABE
	/// @DnDArgument : "var" "Size"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "TargetSize"
	if(Size < TargetSize){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 517DC9AC
		/// @DnDParent : 1DA21557
		/// @DnDArgument : "expr" "0.02"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Size"
		Size += 0.02;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 50EC6840
		/// @DnDParent : 1DA21557
		/// @DnDArgument : "xscale" "0.02"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "0.02"
		/// @DnDArgument : "yscale_relative" "1"
		image_xscale += 0.02;image_yscale += 0.02;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 448328C9
	/// @DnDParent : 3737FABE
	else{	/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 73D51256
		/// @DnDParent : 448328C9
		/// @DnDArgument : "var" "EnergyTemp"
		/// @DnDArgument : "type" "1"
		EnergyTemp = floor(random_range(0, 1 + 1));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 738B96A1
		/// @DnDParent : 448328C9
		/// @DnDArgument : "var" "Energy"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "TargetEnergy"
		if(Energy < TargetEnergy){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 335F5D2C
			/// @DnDParent : 738B96A1
			/// @DnDArgument : "expr" "EnergyTemp"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "Energy"
			Energy += EnergyTemp;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 535ABE1C
		/// @DnDParent : 448328C9
		else{	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
			/// @DnDVersion : 1
			/// @DnDHash : 52C26526
			/// @DnDParent : 535ABE1C
			/// @DnDArgument : "var" "SeaweedN"
			/// @DnDArgument : "object" "Seaweed"
			/// @DnDSaveInfo : "object" "Seaweed"
			SeaweedN = instance_number(Seaweed);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0424559A
			/// @DnDParent : 535ABE1C
			/// @DnDArgument : "var" "SeaweedN"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "40"
			if(SeaweedN < 40){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
				/// @DnDVersion : 1
				/// @DnDHash : 5813A1F4
				/// @DnDParent : 0424559A
				/// @DnDArgument : "var" "SporeCount"
				/// @DnDArgument : "type" "1"
				/// @DnDArgument : "min" "1"
				/// @DnDArgument : "max" "3"
				SporeCount = floor(random_range(1, 3 + 1));
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 6026F3F8
				/// @DnDParent : 0424559A
				/// @DnDArgument : "times" "SporeCount"
				repeat(SporeCount){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 4C2A7511
					/// @DnDParent : 6026F3F8
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-70"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "SeaSpore"
					/// @DnDSaveInfo : "objectid" "SeaSpore"
					instance_create_layer(x + 0, y + -70, "Instances", SeaSpore);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4FC2BE50
					/// @DnDParent : 6026F3F8
					/// @DnDArgument : "var" "Energy"
					Energy = 0;
				
					/// @DnDAction : YoYo Games.Random.Get_Random_Number
					/// @DnDVersion : 1
					/// @DnDHash : 0EF85058
					/// @DnDParent : 6026F3F8
					/// @DnDArgument : "var" "TargetEnergy"
					/// @DnDArgument : "type" "1"
					/// @DnDArgument : "min" "15"
					/// @DnDArgument : "max" "25"
					TargetEnergy = floor(random_range(15, 25 + 1));}}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C7DAAE5
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "op" "2"
if(Health > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D499F4F
	/// @DnDParent : 4C7DAAE5
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Health"
	Health += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2544A24B
	/// @DnDParent : 4C7DAAE5
	/// @DnDArgument : "var" "Health"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(Health < 10){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5E9EC1D6
		/// @DnDParent : 2544A24B
		/// @DnDArgument : "colour" "$FF123960"
		image_blend = $FF123960 & $ffffff;
		image_alpha = ($FF123960 >> 24) / $ff;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 49B99AE7
else{	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0E7C14AA
	/// @DnDParent : 49B99AE7
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 28863CFF
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "1.5"
Tick = (random_range(0.5, 1.5));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5F885B20
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);