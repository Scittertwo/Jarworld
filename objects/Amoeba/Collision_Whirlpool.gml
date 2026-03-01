/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 238CC2B2
/// @DnDArgument : "output" "WhirlpowerTemp"
/// @DnDArgument : "var" "global.WhirlPower"
WhirlpowerTemp = global.WhirlPower;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6B21390C
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4337D8F5
/// @DnDArgument : "angle" "WhirlpowerTemp-WhirlpowerTemp*2"
/// @DnDArgument : "angle_relative" "1"
image_angle += WhirlpowerTemp-WhirlpowerTemp*2;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 106D8684
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 34241E11
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "y" "ty"
direction = point_direction(x, y, tx, ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 2868FBBF
/// @DnDArgument : "speed" "WhirlpowerTemp"
speed = WhirlpowerTemp;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1263C7EB
/// @DnDArgument : "var" "Whirltick"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "300"
Whirltick = (random_range(60, 300));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2C96697A
/// @DnDInput : 2
/// @DnDArgument : "steps" "Whirltick"
/// @DnDArgument : "steps_1" "Whirltick"
/// @DnDArgument : "steps_relative_1" "1"
/// @DnDArgument : "alarm" "6"
alarm_set(6, Whirltick);
alarm_set(0, Whirltick + alarm_get(0));