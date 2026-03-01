/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57BDA845
/// @DnDArgument : "var" "Infected"
/// @DnDArgument : "value" "1"
if(Infected == 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3A2B9E66
	/// @DnDParent : 57BDA845
	speed = 0;}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3F14B07E
/// @DnDArgument : "var" "InfectionTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "7"
InfectionTemp = floor(random_range(1, 7 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D9FF53F
/// @DnDArgument : "var" "InfectionTemp"
/// @DnDArgument : "value" "1"
if(InfectionTemp == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48C77E98
	/// @DnDParent : 1D9FF53F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Infected"
	Infected = 1;

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7E0305F7
	/// @DnDParent : 1D9FF53F
	/// @DnDArgument : "colour" "$FF00FF00"
	image_blend = $FF00FF00 & $ffffff;
	image_alpha = ($FF00FF00 >> 24) / $ff;}