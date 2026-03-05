/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 28F3D350
/// @DnDArgument : "x" "global.CosmeticBubbleDir"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + global.CosmeticBubbleDir, y + 10);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F9885D3
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "op" "1"
if(tx < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 37A3BD33
	/// @DnDParent : 7F9885D3
	/// @DnDArgument : "spriteind" "FishCorpseLSprite"
	/// @DnDSaveInfo : "spriteind" "FishCorpseLSprite"
	sprite_index = FishCorpseLSprite;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64465710
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "op" "2"
if(tx > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 03A0E194
	/// @DnDParent : 64465710
	/// @DnDArgument : "spriteind" "FishCorpseRSprite"
	/// @DnDSaveInfo : "spriteind" "FishCorpseRSprite"
	sprite_index = FishCorpseRSprite;
	image_index = 0;}