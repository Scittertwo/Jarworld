/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7871842A
/// @DnDInput : 6
/// @DnDArgument : "expr_5" "100"
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "var_1" "Size"
/// @DnDArgument : "var_2" "Rotation"
/// @DnDArgument : "var_3" "Rev"
/// @DnDArgument : "var_4" "Control"
/// @DnDArgument : "var_5" "Age"
Speed = 0;
Size = 0;
Rotation = 0;
Rev = 0;
Control = 0;
Age = 100;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 341DEAB2
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.01"
/// @DnDArgument : "max" "0.03"
Size = (random_range(0.01, 0.03));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 502A030F
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "max" "1.5"
Speed = (random_range(0, 1.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 20D7F717
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3C3AC602
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 5F5AC8B3
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4890511C
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6DD86EE0
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 79102A74
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "y" "ty"
direction = point_direction(x, y, tx, ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 479BB0AA
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5F1E8B66
/// @DnDArgument : "var" "Distance"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "120"
Distance = (random_range(60, 120));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 457A8203
/// @DnDArgument : "steps" "Distance"
alarm_set(0, Distance);