/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F5273EA
/// @DnDInput : 10
/// @DnDArgument : "expr_9" "0.12"
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "var_1" "Speed"
/// @DnDArgument : "var_2" "Tick"
/// @DnDArgument : "var_3" "Growth"
/// @DnDArgument : "var_4" "TargetGrowth"
/// @DnDArgument : "var_5" "Size"
/// @DnDArgument : "var_6" "Planted"
/// @DnDArgument : "var_7" "tx"
/// @DnDArgument : "var_8" "ty"
/// @DnDArgument : "var_9" "MaxSize"
Rotation = 0;
Speed = 0;
Tick = 0;
Growth = 0;
TargetGrowth = 0;
Size = 0;
Planted = 0;
tx = 0;
ty = 0;
MaxSize = 0.12;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1C73EBB6
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5B59DA1F
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.03"
/// @DnDArgument : "max" "0.07"
Size = (random_range(0.03, 0.07));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2D37792B
/// @DnDArgument : "var" "TargetGrowth"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "10"
/// @DnDArgument : "max" "50"
TargetGrowth = floor(random_range(10, 50 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5C4B3AEE
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-80"
/// @DnDArgument : "max" "80"
tx = (random_range(-80, 80));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6549C139
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.2"
/// @DnDArgument : "max" "0.5"
Speed = (random_range(0.2, 0.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 02C89662
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "2"
/// @DnDArgument : "max" "4"
Tick = (random_range(2, 4));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0F293FA0
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 31B2E220
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + 50);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 415773B8
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 41450ED1
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 05300E59
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;