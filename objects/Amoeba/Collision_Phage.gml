/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4FCEF13A
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3F14B07E
/// @DnDArgument : "var" "InfectionTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "100"
InfectionTemp = floor(random_range(1, 100 + 1));

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
	Infected = 1;}