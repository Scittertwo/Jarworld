/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B5CC11A
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Health"
Health += -1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 73281F03
/// @DnDArgument : "var" "EnergyTemp"
/// @DnDArgument : "type" "1"
EnergyTemp = floor(random_range(0, 1 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C965DA9
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A6179C8
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "op" "2"
if(Health > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4195AE5C
	/// @DnDParent : 4A6179C8
	/// @DnDArgument : "var" "Energy"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "TargetEnergy"
	if(Energy >= TargetEnergy){	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
		/// @DnDVersion : 1
		/// @DnDHash : 03F0AD7D
		/// @DnDParent : 4195AE5C
		/// @DnDArgument : "var" "SPOP"
		/// @DnDArgument : "object" "Spore"
		/// @DnDSaveInfo : "object" "Spore"
		SPOP = instance_number(Spore);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0921342C
		/// @DnDParent : 4195AE5C
		/// @DnDArgument : "var" "SPOP"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "100"
		if(SPOP < 100){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 0CCE2FA5
			/// @DnDParent : 0921342C
			/// @DnDArgument : "var" "SporeN"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "2"
			/// @DnDArgument : "max" "7"
			SporeN = floor(random_range(2, 7 + 1));
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 0A70C539
			/// @DnDParent : 0921342C
			/// @DnDArgument : "times" "SporeN"
			repeat(SporeN){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 36968CB5
				/// @DnDParent : 0A70C539
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "Spore"
				/// @DnDSaveInfo : "objectid" "Spore"
				instance_create_layer(x + 0, y + 0, "Instances", Spore);}}
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 456EA620
		/// @DnDParent : 4195AE5C
		/// @DnDArgument : "var" "TargetEnergy"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "20"
		/// @DnDArgument : "max" "40"
		TargetEnergy = floor(random_range(20, 40 + 1));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 501F7557
		/// @DnDParent : 4195AE5C
		/// @DnDArgument : "var" "Energy"
		Energy = 0;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AB5E0D8
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(Health <= 10){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0D6BE4C2
	/// @DnDParent : 6AB5E0D8
	/// @DnDArgument : "colour" "$FF123960"
	image_blend = $FF123960 & $ffffff;
	image_alpha = ($FF123960 >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 603411B7
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "op" "3"
if(Health <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1A8E3B84
	/// @DnDParent : 603411B7
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 15);}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 44FD7402
/// @DnDArgument : "var" "RotationTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
RotationTemp = floor(random_range(-5, 5 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 61D1917F
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "120"
Tick = (random_range(60, 120));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3161AC44
/// @DnDArgument : "angle" "RotationTemp"
/// @DnDArgument : "angle_relative" "1"
image_angle += RotationTemp;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6F411AED
/// @DnDArgument : "steps" "Tick"
alarm_set(0, Tick);