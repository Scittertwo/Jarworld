/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68F77577
/// @DnDArgument : "var" "ReadyForKelp"
/// @DnDArgument : "value" "1"
if(ReadyForKelp == 1){	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 390CB4A4
	/// @DnDParent : 68F77577
	/// @DnDArgument : "var" "CrabCount"
	/// @DnDArgument : "object" "Crab"
	/// @DnDSaveInfo : "object" "Crab"
	CrabCount = instance_number(Crab);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 622A5857
	/// @DnDParent : 68F77577
	/// @DnDArgument : "var" "CrabCount"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "15"
	if(CrabCount < 15){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3B0DFBE1
		/// @DnDParent : 622A5857
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-25"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "CrabEgg"
		/// @DnDSaveInfo : "objectid" "CrabEgg"
		instance_create_layer(x + 0, y + -25, "Instances", CrabEgg);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15212EC6
	/// @DnDParent : 68F77577
	/// @DnDArgument : "expr" "30"
	/// @DnDArgument : "var" "Energy"
	Energy = 30;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30244612
	/// @DnDInput : 2
	/// @DnDParent : 68F77577
	/// @DnDArgument : "var" "ReadyForKelp"
	/// @DnDArgument : "var_1" "CanBreed"
	ReadyForKelp = 0;
	CanBreed = 0;}