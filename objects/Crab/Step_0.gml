/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 33F3DC2D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "25"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Floor"
/// @DnDSaveInfo : "object" "Floor"
var l33F3DC2D_0 = instance_place(x + 0, y + 25, [Floor]);if ((l33F3DC2D_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27B8DEF9
	/// @DnDParent : 33F3DC2D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "OnFloor"
	OnFloor = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 21EEEAF4
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0472C78E
	/// @DnDParent : 21EEEAF4
	/// @DnDArgument : "var" "OnFloor"
	OnFloor = 0;}