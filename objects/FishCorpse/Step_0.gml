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