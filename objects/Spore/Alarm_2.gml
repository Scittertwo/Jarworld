/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20403E10
/// @DnDArgument : "var" "Rev"
Rev = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4DF3255F
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4CBCC049
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 2AF0FDAB
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);