/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73279D1C
/// @DnDInput : 8
/// @DnDArgument : "expr_5" "20"
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "var_1" "ty"
/// @DnDArgument : "var_2" "Energy"
/// @DnDArgument : "var_3" "Size"
/// @DnDArgument : "var_4" "Speed"
/// @DnDArgument : "var_5" "Cooldown"
/// @DnDArgument : "var_6" "Rotation"
/// @DnDArgument : "var_7" "Tick"
tx = 0;
ty = 0;
Energy = 0;
Size = 0;
Speed = 0;
Cooldown = 20;
Rotation = 0;
Tick = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5BD89DEB
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "3"
Speed = (random_range(1, 3));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4C864447
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-90"
/// @DnDArgument : "max" "90"
tx = (random_range(-90, 90));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3FB86125
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-90"
/// @DnDArgument : "max" "90"
ty = (random_range(-90, 90));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 313ABECD
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.025"
/// @DnDArgument : "max" "0.1"
Size = (random_range(0.025, 0.1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2A9BAF54
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-90"
/// @DnDArgument : "max" "90"
Rotation = (random_range(-90, 90));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 760E6C92
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "20"
/// @DnDArgument : "max" "40"
Energy = floor(random_range(20, 40 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 78843010
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 56F14B85
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2A12068F
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1BBC2785
/// @DnDArgument : "spriteind" "ShrimpLSprite"
/// @DnDSaveInfo : "spriteind" "ShrimpLSprite"
sprite_index = ShrimpLSprite;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 2C279BB0
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 497DBBB0
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);