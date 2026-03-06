/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 29001EFB
/// @DnDArgument : "output" "BubbleSpeed"
/// @DnDArgument : "var" "global.BubbleSpeed"
BubbleSpeed = global.BubbleSpeed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 029799BB
/// @DnDInput : 6
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "var_1" "tx"
/// @DnDArgument : "var_2" "ty"
/// @DnDArgument : "var_3" "Distance"
/// @DnDArgument : "var_4" "Size"
/// @DnDArgument : "var_5" "Rotation"
Speed = 0;
tx = 0;
ty = 0;
Distance = 0;
Size = 0;
Rotation = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 072F0A15
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "2"
Speed = (random_range(0.1, 2));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5D331565
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-100"
/// @DnDArgument : "max" "100"
tx = (random_range(-100, 100));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 52402BC7
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-100"
/// @DnDArgument : "max" "100"
ty = (random_range(-100, 100));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1692F383
/// @DnDArgument : "var" "Distance"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "120"
Distance = floor(random_range(1, 120 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6D8AECE6
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4E19851C
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.05"
/// @DnDArgument : "max" "0.2"
Size = (random_range(0.05, 0.2));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 53E5D8A9
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 72841D5F
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 66EFA70A
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3E5452B1
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 10E73B21
/// @DnDArgument : "var" "PitchSet"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "4"
PitchSet = floor(random_range(1, 4 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 59B58A31
/// @DnDInput : 3
/// @DnDArgument : "steps" "Distance"
/// @DnDArgument : "steps_1" "Distance"
/// @DnDArgument : "steps_2" "1"
/// @DnDArgument : "alarm_1" "1"
/// @DnDArgument : "alarm_2" "2"
alarm_set(0, Distance);
alarm_set(1, Distance);
alarm_set(2, 1);