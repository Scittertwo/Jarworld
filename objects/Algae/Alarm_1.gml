/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 0F2F2789
/// @DnDArgument : "var" "APOP"
/// @DnDArgument : "object" "Algae"
/// @DnDSaveInfo : "object" "Algae"
APOP = instance_number(Algae);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 472530BE
/// @DnDArgument : "var" "APOP"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "2"
if(APOP < 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 019BE1E3
	/// @DnDParent : 472530BE
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Energy"
	Energy += 100;}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 270DE937
/// @DnDArgument : "steps" "1200"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1200);