/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09CFA2CC
/// @DnDArgument : "var" "Growth"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "TargetGrowth"
if(Growth < TargetGrowth){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B3580A7
	/// @DnDParent : 09CFA2CC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Growth"
	Growth += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BB86CFC
	/// @DnDParent : 09CFA2CC
	/// @DnDArgument : "var" "Size"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "MaxSize"
	if(Size < MaxSize){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 457C2277
		/// @DnDParent : 2BB86CFC
		/// @DnDArgument : "expr" "0.01"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Size"
		Size += 0.01;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 712C74BF
		/// @DnDParent : 2BB86CFC
		/// @DnDArgument : "xscale" "0.01"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "0.01"
		/// @DnDArgument : "yscale_relative" "1"
		image_xscale += 0.01;image_yscale += 0.01;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6518F8C0
else{	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4FE1D7E6
	/// @DnDParent : 6518F8C0
	/// @DnDArgument : "var" "ty"
	/// @DnDArgument : "min" "-70"
	/// @DnDArgument : "max" "-10"
	ty = (random_range(-70, -10));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 74AC1452
	/// @DnDParent : 6518F8C0
	/// @DnDArgument : "var" "CrabN"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "3"
	CrabN = floor(random_range(1, 3 + 1));

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 5AB9BFE1
	/// @DnDParent : 6518F8C0
	/// @DnDArgument : "times" "CrabN"
	repeat(CrabN){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3BDA03FF
		/// @DnDParent : 5AB9BFE1
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "ty"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "Crab"
		/// @DnDSaveInfo : "objectid" "Crab"
		instance_create_layer(x + 0, y + ty, "Instances", Crab);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 608137F2
	/// @DnDParent : 6518F8C0
	/// @DnDArgument : "var" "Growth"
	Growth = 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1CF058EB
	/// @DnDParent : 6518F8C0
	instance_destroy();}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5933A07E
/// @DnDArgument : "y" "25"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l5933A07E_0 = instance_place(0, y + 25, [noone]);if (!(l5933A07E_0 > 0)){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 488A6BC4
	/// @DnDParent : 5933A07E
	/// @DnDArgument : "var" "tx"
	/// @DnDArgument : "min" "-25"
	/// @DnDArgument : "max" "25"
	tx = (random_range(-25, 25));

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 723A17EE
	/// @DnDParent : 5933A07E
	/// @DnDArgument : "x" "tx"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "25"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + tx, y + 25);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 340D7AD0
	/// @DnDParent : 5933A07E
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "0.2"
	/// @DnDArgument : "max" "0.8"
	Speed = (random_range(0.2, 0.8));

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 59AAABA3
	/// @DnDParent : 5933A07E
	/// @DnDArgument : "speed" "Speed"
	speed = Speed;}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 7398231C
image_angle = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 205E64F9
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2.5"
Tick = (random_range(1, 2.5));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 45731C31
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);