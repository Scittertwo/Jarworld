/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BA762C5
/// @DnDArgument : "var" "Control"
if(Control == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 49A48C3A
	/// @DnDParent : 1BA762C5
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "0.7"
	/// @DnDArgument : "max" "3"
	Speed = (random_range(0.7, 3));}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7E1D824B
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 115A1ED3
/// @DnDArgument : "var" "Stasis"
if(Stasis == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3258AE50
	/// @DnDParent : 115A1ED3
	/// @DnDArgument : "var" "ty"
	/// @DnDArgument : "min" "-100"
	/// @DnDArgument : "max" "100"
	ty = (random_range(-100, 100));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7909CD9E
	/// @DnDParent : 115A1ED3
	/// @DnDArgument : "var" "tx"
	/// @DnDArgument : "min" "-100"
	/// @DnDArgument : "max" "100"
	tx = (random_range(-100, 100));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 08F97FD7
/// @DnDArgument : "var" "Stasis"
/// @DnDArgument : "value" "1"
if(Stasis == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00AEA23D
	/// @DnDParent : 08F97FD7
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "ty"
	ty = 100;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7F7000CC
	/// @DnDParent : 08F97FD7
	/// @DnDArgument : "var" "tx"
	/// @DnDArgument : "min" "-10"
	/// @DnDArgument : "max" "10"
	tx = (random_range(-10, 10));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E9354C2
/// @DnDArgument : "var" "Control"
if(Control == 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 33398040
	/// @DnDParent : 0E9354C2
	/// @DnDArgument : "x" "tx"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "ty"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + tx, y + ty);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64BB5E24
/// @DnDArgument : "var" "Stasis"
if(Stasis == 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0A5B941A
	/// @DnDParent : 64BB5E24
	/// @DnDArgument : "speed" "Speed"
	speed = Speed;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 14401D4B
	/// @DnDParent : 64BB5E24
	/// @DnDArgument : "var" "Tick"
	/// @DnDArgument : "min" "30"
	/// @DnDArgument : "max" "180"
	Tick = (random_range(30, 180));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05EE61F1
/// @DnDArgument : "var" "Stasis"
/// @DnDArgument : "value" "1"
if(Stasis == 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 15228589
	/// @DnDParent : 05EE61F1
	/// @DnDArgument : "speed" "0.2"
	speed = 0.2;}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2ED646D8
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 1A8DB349
/// @DnDArgument : "var" "TardPop"
/// @DnDArgument : "object" "Tardigrade"
/// @DnDSaveInfo : "object" "Tardigrade"
TardPop = instance_number(Tardigrade);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 559931AD
/// @DnDArgument : "var" "Stasis"
/// @DnDArgument : "value" "1"
if(Stasis == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62EFB76C
	/// @DnDParent : 559931AD
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Energy"
	Energy += -1;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7C5DB887
	/// @DnDParent : 559931AD
	/// @DnDArgument : "var" "Tick"
	/// @DnDArgument : "min" "60"
	/// @DnDArgument : "max" "360"
	Tick = (random_range(60, 360));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 064C8E48
/// @DnDArgument : "var" "Stasis"
if(Stasis == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 628365EC
	/// @DnDParent : 064C8E48
	/// @DnDArgument : "var" "TardPop"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(TardPop < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01E52703
		/// @DnDParent : 628365EC
		/// @DnDArgument : "expr" "TardPop-TardPop*2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Energy"
		Energy += TardPop-TardPop*2;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05923BC8
	/// @DnDParent : 064C8E48
	/// @DnDArgument : "var" "TardPop"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "10"
	if(TardPop >= 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 623B3E05
		/// @DnDParent : 05923BC8
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Energy"
		Energy += -10;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06F23FBB
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "200"
if(Energy >= 200){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E2A90BB
	/// @DnDParent : 06F23FBB
	/// @DnDArgument : "expr" "-100"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Energy"
	Energy += -100;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3AEC4CD0
	/// @DnDParent : 06F23FBB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "TardigradeEgg"
	/// @DnDSaveInfo : "objectid" "TardigradeEgg"
	instance_create_layer(x + 0, y + 0, "Instances", TardigradeEgg);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 627E3370
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "20"
if(Energy <= 20){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7BF495EF
	/// @DnDParent : 627E3370
	/// @DnDArgument : "colour" "$FF123960"
	image_blend = $FF123960 & $ffffff;
	image_alpha = ($FF123960 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4086A8DC
	/// @DnDParent : 627E3370
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Stasis"
	Stasis = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 66377CCC
	/// @DnDParent : 627E3370
	/// @DnDArgument : "spriteind" "StasisSprite"
	/// @DnDSaveInfo : "spriteind" "StasisSprite"
	sprite_index = StasisSprite;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 102D346D
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "20"
if(Energy > 20){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 38B5CBDB
	/// @DnDParent : 102D346D
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 77AB8A29
	/// @DnDParent : 102D346D
	/// @DnDArgument : "spriteind" "TardigradeSprite"
	/// @DnDSaveInfo : "spriteind" "TardigradeSprite"
	sprite_index = TardigradeSprite;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3027F5FD
	/// @DnDParent : 102D346D
	/// @DnDArgument : "var" "Stasis"
	Stasis = 0;}

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
	/// @DnDHash : 783ABD5A
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
	/// @DnDArgument : "max" "3"
	InfectionLevelTemp = floor(random_range(0, 3 + 1));

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
	/// @DnDArgument : "expr" "InfectionLevel-InfectionLevel*2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Health"
	Health += InfectionLevel-InfectionLevel*2;}

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