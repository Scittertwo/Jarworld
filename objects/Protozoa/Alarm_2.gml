/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20403E10
/// @DnDArgument : "var" "Rev"
Rev = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 08BE0B5F
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0531ADE2
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 03F8123F
/// @DnDArgument : "var" "TempSpeed"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2"
TempSpeed = (random_range(1, 2));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0515BC60
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "y" "ty"
direction = point_direction(x, y, tx, ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6993B552
/// @DnDArgument : "speed" "TempSpeed"
speed = TempSpeed;