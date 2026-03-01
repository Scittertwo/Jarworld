/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 573DCDB0
/// @DnDArgument : "var" "Growth"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "GrowthTarget/2"
if(Growth >= GrowthTarget/2){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 231D1A6F
	/// @DnDParent : 573DCDB0
	/// @DnDArgument : "var" "Rotation"
	/// @DnDArgument : "min" "-3"
	/// @DnDArgument : "max" "3"
	Rotation = (random_range(-3, 3));

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 50FAABFC
	/// @DnDParent : 573DCDB0
	/// @DnDArgument : "angle" "Rotation"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += Rotation;}