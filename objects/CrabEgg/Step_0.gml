/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C95E299
/// @DnDArgument : "var" "Growth"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "TargetGrowth"
if(Growth < TargetGrowth){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67212018
	/// @DnDParent : 1C95E299
	/// @DnDArgument : "var" "Size"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "MaxSize"
	if(Size >= MaxSize){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 137C4C62
		/// @DnDParent : 67212018
		/// @DnDArgument : "var" "Rotation"
		/// @DnDArgument : "min" "-5"
		/// @DnDArgument : "max" "5"
		Rotation = (random_range(-5, 5));
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 39873233
		/// @DnDParent : 67212018
		/// @DnDArgument : "angle" "Rotation"
		image_angle = Rotation;}}