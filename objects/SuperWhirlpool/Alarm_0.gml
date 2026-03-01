/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 71634DC7
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "180"
Tick = (random_range(1, 180));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 418FB12F
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 55E7F788
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17ED6FCB
/// @DnDArgument : "expr" "0.1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Speed"
Speed += 0.1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 74C8D4CA
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0A6B465C
/// @DnDArgument : "speed" "Speed"
speed = Speed;