/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 55B97293
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 21DED5BD
/// @DnDArgument : "x" "global.CosmeticBubbleDir"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-100"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + global.CosmeticBubbleDir, y + -100);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 23B40566
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
Rotation = (random_range(-5, 5));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 143AA88C
/// @DnDArgument : "angle" "Rotation"
/// @DnDArgument : "angle_relative" "1"
image_angle += Rotation;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3B577485
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "60"
Tick = floor(random_range(1, 60 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 391DA01D
/// @DnDArgument : "steps" "Tick"
alarm_set(0, Tick);