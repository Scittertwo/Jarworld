/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A5DBF62
/// @DnDInput : 8
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "var_1" "SpeedY"
/// @DnDArgument : "var_2" "Tick"
/// @DnDArgument : "var_3" "Age"
/// @DnDArgument : "var_4" "SpeedX"
/// @DnDArgument : "var_5" "tx"
/// @DnDArgument : "var_6" "ty"
/// @DnDArgument : "var_7" "MaxSize"
Size = 0;
SpeedY = 0;
Tick = 0;
Age = 0;
SpeedX = 0;
tx = 0;
ty = 0;
MaxSize = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6ABE4980
/// @DnDArgument : "var" "Sprite"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2"
Sprite = floor(random_range(1, 2 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 48D5834B
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.05"
/// @DnDArgument : "max" "0.1"
Size = (random_range(0.05, 0.1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 161D0937
/// @DnDArgument : "var" "MaxSize"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "1.5"
MaxSize = (random_range(0.5, 1.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 31B6377F
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "0.7"
Speed = (random_range(0.1, 0.7));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 376CAFA9
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2"
Tick = (random_range(1, 2));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2DC287E0
/// @DnDArgument : "var" "Age"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "300"
Age = floor(random_range(60, 300 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5251A948
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-20"
/// @DnDArgument : "max" "20"
tx = floor(random_range(-20, 20 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 05A50749
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-10"
/// @DnDArgument : "max" "10"
ty = floor(random_range(-10, 10 + 1));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 37D29411
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 6BF91F83
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 29E08807
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 509533B6
/// @DnDInput : 2
/// @DnDArgument : "steps" "Tick*60"
/// @DnDArgument : "steps_1" "1"
/// @DnDArgument : "alarm_1" "1"
alarm_set(0, Tick*60);
alarm_set(1, 1);