/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 149E1BF0
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "2.5"
Tick = (random_range(0.5, 2.5));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24BCA5F4
/// @DnDArgument : "var" "Float"
/// @DnDArgument : "op" "2"
if(Float > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43E57986
	/// @DnDInput : 2
	/// @DnDParent : 24BCA5F4
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-20"
	/// @DnDArgument : "var" "Float"
	/// @DnDArgument : "var_1" "ty"
	Float += -1;
	ty = -20;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 01CF2D0F
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 795E0610
	/// @DnDParent : 01CF2D0F
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "var" "ty"
	ty = 20;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C7CE61D
/// @DnDArgument : "var" "Decay"
/// @DnDArgument : "op" "3"
if(Decay <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 31F3E2E4
	/// @DnDParent : 7C7CE61D
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4ACC50E1
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46D36469
	/// @DnDParent : 4ACC50E1
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Decay"
	Decay += -1;}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 23552E13
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-30"
/// @DnDArgument : "max" "30"
tx = (random_range(-30, 30));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4A7B560F
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
Rotation = (random_range(-5, 5));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 289B1BB1
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 020AAA74
/// @DnDArgument : "angle" "Rotation"
/// @DnDArgument : "angle_relative" "1"
image_angle += Rotation;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E981976
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "op" "3"
if(Speed <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 232C1F11
	/// @DnDParent : 3E981976
	/// @DnDArgument : "expr" "0.1"
	/// @DnDArgument : "var" "Speed"
	Speed = 0.1;}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 489A7433
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6A6024B0
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);