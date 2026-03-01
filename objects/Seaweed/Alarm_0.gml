/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 046BCDA1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Wall"
/// @DnDSaveInfo : "object" "Wall"
var l046BCDA1_0 = instance_place(x + 0, y + -10, [Wall]);if ((l046BCDA1_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
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
	/// @DnDArgument : "min" "-25"
	/// @DnDArgument : "max" "25"
	tx = floor(random_range(-25, 25 + 1));

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 56918942
	/// @DnDParent : 7C1DAB55
	/// @DnDArgument : "x" "tx"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-100"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + tx, y + -100);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 51E78EC6
	/// @DnDParent : 7C1DAB55
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "0.02"
	/// @DnDArgument : "max" "0.3"
	Speed = (random_range(0.02, 0.3));

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
		image_xscale += 0.02;image_yscale += 0.02;}}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 28863CFF
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "3"
Tick = floor(random_range(0.5, 3 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5F885B20
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);