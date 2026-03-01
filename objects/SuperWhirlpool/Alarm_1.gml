/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E2EC00D
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "0.01"
if(Size > 0.01){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4270F04E
	/// @DnDParent : 6E2EC00D
	/// @DnDArgument : "expr" "-0.01"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Size"
	Size += -0.01;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 03FB3056
/// @DnDArgument : "var" "Power"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(Power > 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 186C2938
	/// @DnDParent : 03FB3056
	/// @DnDArgument : "expr" "-0.01"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Power"
	Power += -0.01;}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7BC91D8C
/// @DnDArgument : "steps" "15"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 15);