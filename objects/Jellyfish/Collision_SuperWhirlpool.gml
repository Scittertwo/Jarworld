/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 238CC2B2
/// @DnDArgument : "output" "WhirlpowerTemp"
/// @DnDArgument : "var" "global.WhirlPower"
WhirlpowerTemp = global.WhirlPower;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 02885C9A
/// @DnDArgument : "angle" "WhirlpowerTemp-WhirlpowerTemp*2"
/// @DnDArgument : "angle_relative" "1"
image_angle += WhirlpowerTemp-WhirlpowerTemp*2;