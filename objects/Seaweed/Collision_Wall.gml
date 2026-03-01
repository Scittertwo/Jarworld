/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F3775A2
/// @DnDArgument : "var" "Planted"
if(Planted == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BAE8332
	/// @DnDParent : 0F3775A2
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Rev"
	Rev = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 680CF075
	/// @DnDParent : 0F3775A2
	/// @DnDArgument : "var" "Rev"
	/// @DnDArgument : "value" "1"
	if(Rev == 1){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 1DADF1BC
		/// @DnDParent : 680CF075
		/// @DnDArgument : "steps" "2"
		/// @DnDArgument : "alarm" "2"
		alarm_set(2, 2);
	
		/// @DnDAction : YoYo Games.Movement.Reverse
		/// @DnDVersion : 1
		/// @DnDHash : 31344D19
		/// @DnDParent : 680CF075
		direction = (direction + 180) % 360;}}