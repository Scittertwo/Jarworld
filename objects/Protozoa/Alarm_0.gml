/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E579065
/// @DnDArgument : "var" "Control"
if(Control == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 351E086A
	/// @DnDParent : 4E579065
	/// @DnDArgument : "var" "Infected"
	if(Infected == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 49A48C3A
		/// @DnDParent : 351E086A
		/// @DnDArgument : "var" "Speed"
		/// @DnDArgument : "min" "0.1"
		/// @DnDArgument : "max" "3"
		Speed = (random_range(0.1, 3));}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D71F7B6
	/// @DnDParent : 4E579065
	/// @DnDArgument : "var" "Infected"
	/// @DnDArgument : "value" "1"
	if(Infected == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 2238F232
		/// @DnDParent : 1D71F7B6
		/// @DnDArgument : "var" "Speed"
		/// @DnDArgument : "min" "0.1"
		/// @DnDArgument : "max" "1.5"
		Speed = (random_range(0.1, 1.5));}}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7E1D824B
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30A6497A
/// @DnDArgument : "var" "Infected"
if(Infected == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 79435617
	/// @DnDParent : 30A6497A
	/// @DnDArgument : "var" "Tick"
	/// @DnDArgument : "min" "30"
	/// @DnDArgument : "max" "320"
	Tick = (random_range(30, 320));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39DEC623
/// @DnDArgument : "var" "Infected"
/// @DnDArgument : "value" "1"
if(Infected == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 652C1944
	/// @DnDParent : 39DEC623
	/// @DnDArgument : "var" "Tick"
	/// @DnDArgument : "min" "60"
	/// @DnDArgument : "max" "500"
	Tick = (random_range(60, 500));}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0F2F9242
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6A3B7399
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F50B5CA
/// @DnDArgument : "var" "Control"
if(Control == 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 76FA2D85
	/// @DnDParent : 5F50B5CA
	/// @DnDArgument : "x" "tx"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "ty"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + tx, y + ty);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 656EBACC
	/// @DnDParent : 5F50B5CA
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
if(Energy >= 100){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5A394753
	/// @DnDParent : 06F23FBB
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
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
	/// @DnDArgument : "objectid" "Protozoa"
	/// @DnDSaveInfo : "objectid" "Protozoa"
	instance_create_layer(x + 0, y + 0, "Instances", Protozoa);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B4C3BE6
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(Energy <= 10){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6CF547FB
	/// @DnDParent : 1B4C3BE6
	/// @DnDArgument : "colour" "$FF123960"
	image_blend = $FF123960 & $ffffff;
	image_alpha = ($FF123960 >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40A97B54
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "10"
if(Energy > 10){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6AB17BB5
	/// @DnDParent : 40A97B54
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
	/// @DnDHash : 0ECE4E8E
	/// @DnDParent : 5108CCC6
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CA10ED2
/// @DnDArgument : "var" "Infected"
/// @DnDArgument : "value" "1"
if(Infected == 1){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
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
		instance_create_layer(x + 0, y + 0, "Instances", PhageSpawn);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 36127552
		/// @DnDParent : 161268D4
		/// @DnDArgument : "xscale" "-0.01"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "-0.01"
		/// @DnDArgument : "yscale_relative" "1"
		image_xscale += -0.01;image_yscale += -0.01;}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 488FAA95
	/// @DnDParent : 0ADB77BF
	/// @DnDArgument : "steps" "20"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 20);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DA1023D
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "3"
if(Health <= 3){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4979225D
	/// @DnDParent : 2DA1023D
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 24D8B850
/// @DnDArgument : "steps" "Tick"
alarm_set(0, Tick);