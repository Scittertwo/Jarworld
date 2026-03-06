/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4063323C
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "op" "2"
if(tx > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 33F8B86A
	/// @DnDParent : 4063323C
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "ShrimpRSprite"
	/// @DnDSaveInfo : "spriteind" "ShrimpRSprite"
	sprite_index = ShrimpRSprite;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 29F48D49
else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 07ADA188
	/// @DnDParent : 29F48D49
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "ShrimpLSprite"
	/// @DnDSaveInfo : "spriteind" "ShrimpLSprite"
	sprite_index = ShrimpLSprite;
	image_index += 0;}