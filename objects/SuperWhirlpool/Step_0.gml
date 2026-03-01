/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 37528C26
/// @DnDArgument : "angle" "Power-Power*2"
/// @DnDArgument : "angle_relative" "1"
image_angle += Power-Power*2;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4AF48CE1
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61507223
/// @DnDArgument : "var" "Power"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "MaxPower"
if(Power > MaxPower){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79138F4D
	/// @DnDParent : 61507223
	/// @DnDArgument : "expr" "MaxPower"
	/// @DnDArgument : "var" "Power"
	Power = MaxPower;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38499F62
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "0.02"
if(Size <= 0.02){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77695229
	/// @DnDParent : 38499F62
	/// @DnDArgument : "expr" "0.01"
	/// @DnDArgument : "var" "Size"
	Size = 0.01;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 75D1B75F
	/// @DnDParent : 38499F62
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F5EA5F5
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "MaxSize"
if(Size > MaxSize){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 264552F9
	/// @DnDParent : 4F5EA5F5
	/// @DnDArgument : "expr" "MaxSize"
	/// @DnDArgument : "var" "Size"
	Size = MaxSize;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B8941CF
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "MaxSpeed"
if(Speed >= MaxSpeed){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34DF8FB0
	/// @DnDParent : 4B8941CF
	/// @DnDArgument : "expr" "MaxSpeed"
	/// @DnDArgument : "var" "Speed"
	Speed = MaxSpeed;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 419B685A
/// @DnDArgument : "var" "Power"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "MaxPower"
if(Power >= MaxPower){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 644D20D4
	/// @DnDParent : 419B685A
	/// @DnDArgument : "expr" "MaxPower"
	/// @DnDArgument : "var" "Power"
	Power = MaxPower;}