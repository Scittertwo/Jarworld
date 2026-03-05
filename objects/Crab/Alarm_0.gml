/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4CC965EE
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "2.5"
Tick = (random_range(0.5, 2.5));

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
	/// @DnDArgument : "min" "0.4"
	Speed = (random_range(0.4, 1));}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 08DBCD48
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-45"
/// @DnDArgument : "max" "45"
tx = floor(random_range(-45, 45 + 1));

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
/// @DnDHash : 45282200
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
if(Energy >= 100){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CF1FCBD
	/// @DnDParent : 45282200
	/// @DnDArgument : "var" "Health"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "MaxHealth"
	if(Health < MaxHealth){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15EFFF88
		/// @DnDInput : 2
		/// @DnDParent : 3CF1FCBD
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-3"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "Health"
		/// @DnDArgument : "var_1" "Energy"
		Health += 1;
		Energy += -3;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 312EB082
	/// @DnDParent : 45282200
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 148F7AC6
		/// @DnDParent : 312EB082
		/// @DnDArgument : "var" "Mature"
		/// @DnDArgument : "value" "1"
		if(Mature == 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F7F0EFF
			/// @DnDParent : 148F7AC6
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "CanBreed"
			CanBreed = 1;}}}

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
	/// @DnDHash : 02289911
	/// @DnDParent : 59143CD8
	/// @DnDArgument : "var" "Mature"
	Mature = 0;

	/// @DnDAction : YoYo Games.Common.Variable
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

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4B0CF619
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01C66464
	/// @DnDParent : 4B0CF619
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Age"
	Age += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38D76A36
	/// @DnDParent : 4B0CF619
	/// @DnDArgument : "var" "Age"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "19"
	if(Age > 19){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 373241E0
		/// @DnDInput : 2
		/// @DnDParent : 38D76A36
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "Age"
		/// @DnDArgument : "var_1" "Mature"
		Age = 20;
		Mature = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A7AD05D
		/// @DnDParent : 38D76A36
		/// @DnDArgument : "var" "MaxHealth"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "100"
		if(MaxHealth < 100){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0108266A
			/// @DnDParent : 4A7AD05D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "MaxHealth"
			MaxHealth += 1;}}}

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
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "45"
	ty = floor(random_range(1, 45 + 1));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 47100C66
	/// @DnDParent : 7F3293DE
	/// @DnDArgument : "var" "tx"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "-70"
	/// @DnDArgument : "max" "70"
	tx = floor(random_range(-70, 70 + 1));}

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

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 5A43740F
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-1"
/// @DnDArgument : "y_relative" "1"
x += 0;y += -1;

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

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 11135405
image_angle = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 016F31E3
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);