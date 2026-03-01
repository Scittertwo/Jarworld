/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7697992C
/// @DnDInput : 8
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "var_1" "Growth"
/// @DnDArgument : "var_2" "Speed"
/// @DnDArgument : "var_3" "GrowthTarget"
/// @DnDArgument : "var_4" "Distance"
/// @DnDArgument : "var_5" "Rotation"
/// @DnDArgument : "var_6" "Far"
/// @DnDArgument : "var_7" "Rev"
Size = 0;
Growth = 0;
Speed = 0;
GrowthTarget = 0;
Distance = 0;
Rotation = 0;
Far = 0;
Rev = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4A2CCFF4
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "0.2"
Size = (random_range(0.1, 0.2));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 180B28F0
/// @DnDArgument : "var" "Far"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "10"
Far = floor(random_range(1, 10 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 356D963A
/// @DnDArgument : "var" "GrowthTarget"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "10"
/// @DnDArgument : "max" "30"
GrowthTarget = floor(random_range(10, 30 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 00C3134B
/// @DnDArgument : "var" "Distance"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "15"
/// @DnDArgument : "max" "30"
Distance = floor(random_range(15, 30 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 383A159C
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "1.5"
Speed = (random_range(0.5, 1.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 71FEC4D8
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 79D1E5B3
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FB0663A
/// @DnDArgument : "var" "Far"
/// @DnDArgument : "value" "1"
if(Far == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 03F6DDB5
	/// @DnDParent : 5FB0663A
	/// @DnDArgument : "var" "Distance"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "90"
	/// @DnDArgument : "max" "700"
	Distance = floor(random_range(90, 700 + 1));}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 255CC9FB
/// @DnDInput : 2
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "steps_1" "Distance"
/// @DnDArgument : "alarm_1" "1"
alarm_set(0, 60);
alarm_set(1, Distance);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1035E191
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1489203E
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 2A4BEFE5
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 77278820
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 7304479A
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;