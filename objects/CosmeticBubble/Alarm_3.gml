/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6FBB67A4
/// @DnDArgument : "var" "ay"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "800"
/// @DnDArgument : "max" "1000"
ay = floor(random_range(800, 1000 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6CFA00DE
/// @DnDArgument : "var" "ax"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "1366"
ax = floor(random_range(0, 1366 + 1));

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 514F6159
/// @DnDArgument : "x" "ax"
/// @DnDArgument : "y" "ay"
x = ax;y = ay;