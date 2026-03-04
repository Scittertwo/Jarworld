/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4CC965EE
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2.5"
Tick = (random_range(1, 2.5));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 016F31E3
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1C81E7D7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "25"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Floor"
/// @DnDSaveInfo : "object" "Floor"
var l1C81E7D7_0 = instance_place(x + 0, y + 25, [Floor]);if ((l1C81E7D7_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 317FB0DC
	/// @DnDParent : 1C81E7D7
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "OnFloor"
	OnFloor = 1;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6DF8D6A9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "25"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Floor"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "Floor"
var l6DF8D6A9_0 = instance_place(x + 0, y + 25, [Floor]);if (!(l6DF8D6A9_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 681D7CB6
	/// @DnDParent : 6DF8D6A9
	/// @DnDArgument : "var" "OnFloor"
	OnFloor = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0119FF74
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "op" "3"
if(Health <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2666A1D0
	/// @DnDParent : 0119FF74
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DEADCB8
/// @DnDArgument : "var" "OnFloor"
if(OnFloor == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 1064F98A
	/// @DnDParent : 4DEADCB8
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "0.3"
	/// @DnDArgument : "max" "0.7"
	Speed = (random_range(0.3, 0.7));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6794F3D4
/// @DnDArgument : "var" "OnFloor"
/// @DnDArgument : "value" "1"
if(OnFloor == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 30A75F23
	/// @DnDParent : 6794F3D4
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "0.7"
	/// @DnDArgument : "max" "1.5"
	Speed = (random_range(0.7, 1.5));}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 08DBCD48
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-45"
/// @DnDArgument : "max" "45"
tx = (random_range(-45, 45));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D181FE1
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "2"
if(Energy > 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 656A8CBE
	/// @DnDParent : 6D181FE1
	/// @DnDArgument : "var" "EnergyLoss"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "-1"
	/// @DnDArgument : "max" "0"
	EnergyLoss = floor(random_range(-1, 0 + 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 574A40B3
	/// @DnDParent : 6D181FE1
	/// @DnDArgument : "expr" "EnergyLoss"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Energy"
	Energy += EnergyLoss;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5B0FE933
else{	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4B08F5D0
	/// @DnDParent : 5B0FE933
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5537EC67
/// @DnDArgument : "var" "Age"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "15"
if(Age > 15){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B5D5FA8
	/// @DnDParent : 5537EC67
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Mature"
	Mature = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1F4B37C7
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D67267C
	/// @DnDParent : 1F4B37C7
	/// @DnDArgument : "var" "Mature"
	Mature = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1236288B
	/// @DnDParent : 1F4B37C7
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Age"
	Age += 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45282200
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
if(Energy >= 100){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 148F7AC6
	/// @DnDParent : 45282200
	/// @DnDArgument : "var" "Mature"
	/// @DnDArgument : "value" "1"
	if(Mature == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F7F0EFF
		/// @DnDParent : 148F7AC6
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "CanBreed"
		CanBreed = 1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EACFA30
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(Energy < 100){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08A828EC
	/// @DnDParent : 7EACFA30
	/// @DnDArgument : "var" "CanBreed"
	CanBreed = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B403F04
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "10"
if(Energy > 10){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4E7C0EA1
	/// @DnDParent : 0B403F04
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0AE9FBAA
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(Energy <= 10){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6B3CDC29
	/// @DnDParent : 0AE9FBAA
	/// @DnDArgument : "colour" "$FF123960"
	image_blend = $FF123960 & $ffffff;
	image_alpha = ($FF123960 >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59143CD8
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "MaxSize/2"
if(Size < MaxSize/2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 300D0B88
	/// @DnDParent : 59143CD8
	/// @DnDArgument : "expr" "0.02"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Size"
	Size += 0.02;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 018B2669
	/// @DnDParent : 59143CD8
	/// @DnDArgument : "xscale" "Size"
	/// @DnDArgument : "yscale" "Size"
	image_xscale = Size;image_yscale = Size;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F3293DE
/// @DnDArgument : "var" "OnFloor"
if(OnFloor == 0){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3C0BF884
	/// @DnDParent : 7F3293DE
	/// @DnDArgument : "var" "ty"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "45"
	ty = floor(random_range(0, 45 + 1));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19343085
/// @DnDArgument : "var" "OnFloor"
/// @DnDArgument : "value" "1"
if(OnFloor == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2155669A
	/// @DnDParent : 19343085
	/// @DnDArgument : "var" "ty"
	ty = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F7B035F
/// @DnDArgument : "var" "OnFloor"
/// @DnDArgument : "value" "1"
if(OnFloor == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1076F13F
	/// @DnDParent : 5F7B035F
	/// @DnDArgument : "var" "Cooldown"
	/// @DnDArgument : "op" "2"
	if(Cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F4118D1
		/// @DnDParent : 1076F13F
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown += -1;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4651EF13
	/// @DnDParent : 5F7B035F
	/// @DnDArgument : "var" "Cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(Cooldown < 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 4F9C1850
		/// @DnDParent : 4651EF13
		/// @DnDArgument : "var" "ScanN"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "10"
		/// @DnDArgument : "max" "25"
		ScanN = floor(random_range(10, 25 + 1));
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 18A7D40B
		/// @DnDParent : 4651EF13
		/// @DnDArgument : "times" "ScanN"
		repeat(ScanN){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5DF2C72D
			/// @DnDParent : 18A7D40B
			/// @DnDArgument : "var" "FishScan"
			/// @DnDArgument : "min" "-100"
			/// @DnDArgument : "max" "-10"
			FishScan = (random_range(-100, -10));
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 7F3C3EA3
			/// @DnDParent : 18A7D40B
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "FishScan"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "Fish"
			/// @DnDSaveInfo : "object" "Fish"
			var l7F3C3EA3_0 = instance_place(x + 0, y + FishScan, [Fish]);if ((l7F3C3EA3_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0803DC01
				/// @DnDParent : 7F3C3EA3
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "Jump"
				Jump = 1;}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12F357A4
	/// @DnDParent : 5F7B035F
	/// @DnDArgument : "var" "Jump"
	/// @DnDArgument : "value" "1"
	if(Jump == 1){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 13C90709
		/// @DnDParent : 12F357A4
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-45"
		/// @DnDArgument : "y_relative" "1"
		direction = point_direction(x, y, x + 0, y + -45);
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 502D1B1C
		/// @DnDParent : 12F357A4
		/// @DnDArgument : "var" "Speed"
		/// @DnDArgument : "min" "2"
		/// @DnDArgument : "max" "4"
		Speed = (random_range(2, 4));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E90DBAE
		/// @DnDParent : 12F357A4
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown = 20;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D4BF032
		/// @DnDParent : 12F357A4
		/// @DnDArgument : "var" "OnFloor"
		OnFloor = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 60954C28
		/// @DnDParent : 12F357A4
		/// @DnDArgument : "steps" "180"
		/// @DnDArgument : "steps_relative" "1"
		alarm_set(0, 180 + alarm_get(0));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03622197
		/// @DnDParent : 12F357A4
		/// @DnDArgument : "var" "Jump"
		Jump = 0;}}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 71CA9836
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1158A19F
/// @DnDArgument : "speed" "Speed"
speed = Speed;