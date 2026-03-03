/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68F77577
/// @DnDArgument : "var" "ReadyForKelp"
/// @DnDArgument : "value" "1"
if(ReadyForKelp == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30244612
	/// @DnDParent : 68F77577
	/// @DnDArgument : "var" "ReadyForKelp"
	ReadyForKelp = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15212EC6
	/// @DnDParent : 68F77577
	/// @DnDArgument : "expr" "70"
	/// @DnDArgument : "var" "Energy"
	Energy = 70;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3B0DFBE1
	/// @DnDParent : 68F77577
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-25"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "CrabEgg"
	/// @DnDSaveInfo : "objectid" "CrabEgg"
	instance_create_layer(x + 0, y + -25, "Instances", CrabEgg);}