/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 030D3CC4
/// @DnDArgument : "var" "Cooldown"
/// @DnDArgument : "op" "2"
if(Cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EF14B78
	/// @DnDParent : 030D3CC4
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Cooldown"
	Cooldown += -1;}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6743F118
/// @DnDArgument : "var" "Idle"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "5"
Idle = floor(random_range(1, 5 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1C981512
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.25"
/// @DnDArgument : "max" "0.75"
Tick = (random_range(0.25, 0.75));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6208017C
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-90"
/// @DnDArgument : "max" "90"
tx = (random_range(-90, 90));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 07557E64
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-90"
/// @DnDArgument : "max" "90"
ty = (random_range(-90, 90));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D730D4C
/// @DnDArgument : "var" "Idle"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(Idle == 1)){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6504764C
	/// @DnDParent : 6D730D4C
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "3"
	Speed = (random_range(1, 3));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BDB5C6E
/// @DnDArgument : "var" "Idle"
/// @DnDArgument : "value" "1"
if(Idle == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3BDD0F4A
	/// @DnDParent : 5BDB5C6E
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "max" "0.2"
	Speed = (random_range(0, 0.2));}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 59057792
/// @DnDArgument : "var" "RotationTemp"
/// @DnDArgument : "min" "-15"
/// @DnDArgument : "max" "15"
RotationTemp = (random_range(-15, 15));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72C95711
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "100"
if(Energy > 100){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BE274EA
	/// @DnDParent : 72C95711
	/// @DnDArgument : "var" "Cooldown"
	/// @DnDArgument : "op" "3"
	if(Cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 301196F9
		/// @DnDInput : 2
		/// @DnDParent : 5BE274EA
		/// @DnDArgument : "expr" "30"
		/// @DnDArgument : "expr_1" "5"
		/// @DnDArgument : "var" "Energy"
		/// @DnDArgument : "var_1" "Cooldown"
		Energy = 30;
		Cooldown = 5;
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 24000A7E
		/// @DnDParent : 5BE274EA
		/// @DnDArgument : "var" "EggCount"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "1"
		/// @DnDArgument : "max" "3"
		EggCount = floor(random_range(1, 3 + 1));
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 38D6DAA8
		/// @DnDParent : 5BE274EA
		/// @DnDArgument : "times" "EggCount"
		repeat(EggCount){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0502C26C
			/// @DnDParent : 38D6DAA8
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "Shrimp"
			/// @DnDSaveInfo : "objectid" "Shrimp"
			instance_create_layer(x + 0, y + 0, "Instances", Shrimp);}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A8CF945
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "3"
if(Energy <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 49E9AA35
	/// @DnDParent : 0A8CF945
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20D93FF8
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "15"
if(Energy < 15){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4E80752B
	/// @DnDParent : 20D93FF8
	/// @DnDArgument : "colour" "$FF123960"
	image_blend = $FF123960 & $ffffff;
	image_alpha = ($FF123960 >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E9E60C4
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "15"
if(Energy >= 15){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 63DD0F8B
	/// @DnDParent : 5E9E60C4
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 42304032
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43FAFDA1
/// @DnDArgument : "expr" "RotationTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Rotation"
Rotation += RotationTemp;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 251C9086
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 253C8C53
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 699132B9
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 124086C4
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);