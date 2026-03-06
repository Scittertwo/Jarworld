/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 7A223A23
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29B05162
/// @DnDArgument : "expr" "-0.05"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Speed"
Speed += -0.05;