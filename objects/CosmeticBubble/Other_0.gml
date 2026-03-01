/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FD1913A
/// @DnDArgument : "var" "cy"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-1"
if(cy < -1){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 445E03B5
	/// @DnDParent : 5FD1913A
	/// @DnDArgument : "msg" ""CosBub Popped""
	show_debug_message(string("CosBub Popped"));

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D8AF602
	/// @DnDParent : 5FD1913A
	instance_destroy();}