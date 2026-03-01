/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F084A2A
/// @DnDArgument : "var" "Control"
if(Control == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 49A48C3A
	/// @DnDParent : 0F084A2A
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "0.05"
	Speed = (random_range(0.05, 1));}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7E1D824B
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 79435617
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "120"
/// @DnDArgument : "max" "380"
Tick = (random_range(120, 380));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 13906774
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3258AE50
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17772D68
/// @DnDArgument : "var" "Control"
if(Control == 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 33398040
	/// @DnDParent : 17772D68
	/// @DnDArgument : "x" "tx"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "ty"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + tx, y + ty);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0A5B941A
	/// @DnDParent : 17772D68
	/// @DnDArgument : "speed" "Speed"
	speed = Speed;}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2ED646D8
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B9E59D5
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06F23FBB
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
if(Energy >= 100){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E2A90BB
	/// @DnDParent : 06F23FBB
	/// @DnDArgument : "expr" "-70"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Energy"
	Energy += -70;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3AEC4CD0
	/// @DnDParent : 06F23FBB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Amoeba"
	/// @DnDSaveInfo : "objectid" "Amoeba"
	instance_create_layer(x + 0, y + 0, "Instances", Amoeba);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 627E3370
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(Energy <= 10){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7BF495EF
	/// @DnDParent : 627E3370
	/// @DnDArgument : "colour" "$FF123960"
	image_blend = $FF123960 & $ffffff;
	image_alpha = ($FF123960 >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 102D346D
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "10"
if(Energy > 10){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 38B5CBDB
	/// @DnDParent : 102D346D
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5108CCC6
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "3"
if(Energy <= 0){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 06297F64
	/// @DnDParent : 5108CCC6
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5AD0EA23
	/// @DnDParent : 5108CCC6
	/// @DnDArgument : "steps" "3"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 3);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CA10ED2
/// @DnDArgument : "var" "Infected"
/// @DnDArgument : "value" "1"
if(Infected == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61CAE76E
	/// @DnDParent : 7CA10ED2
	/// @DnDArgument : "var" "InfectionLevel"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(InfectionLevel < 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 08721ABB
		/// @DnDParent : 61CAE76E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "InfectionLevel"
		InfectionLevel = 1;}

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6033EBBA
	/// @DnDParent : 7CA10ED2
	/// @DnDArgument : "colour" "$FF00FF00"
	image_blend = $FF00FF00 & $ffffff;
	image_alpha = ($FF00FF00 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2454E644
	/// @DnDParent : 7CA10ED2
	/// @DnDArgument : "var" "InfectionLevelTemp"
	/// @DnDArgument : "type" "1"
	InfectionLevelTemp = floor(random_range(0, 1 + 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23B9C4F9
	/// @DnDParent : 7CA10ED2
	/// @DnDArgument : "expr" "InfectionLevelTemp"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "InfectionLevel"
	InfectionLevel += InfectionLevelTemp;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73835960
	/// @DnDParent : 7CA10ED2
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Health"
	Health += -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0ADB77BF
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "op" "3"
if(Health <= 0){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2A91A2A5
	/// @DnDParent : 0ADB77BF
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 161268D4
	/// @DnDParent : 0ADB77BF
	/// @DnDArgument : "times" "InfectionLevel"
	repeat(InfectionLevel){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 56EEE558
		/// @DnDParent : 161268D4
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "PhageSpawn"
		/// @DnDSaveInfo : "objectid" "PhageSpawn"
		instance_create_layer(x + 0, y + 0, "Instances", PhageSpawn);}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 488FAA95
	/// @DnDParent : 0ADB77BF
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 15);}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 24D8B850
/// @DnDArgument : "steps" "Tick"
alarm_set(0, Tick);