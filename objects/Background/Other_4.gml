/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 606690F8
/// @DnDArgument : "var" "RoomNumber"
RoomNumber = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 109463E9
/// @DnDArgument : "var" "RoomNumber"
/// @DnDArgument : "value" "1"
if(RoomNumber == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 25A55BD1
	/// @DnDParent : 109463E9
	/// @DnDArgument : "spriteind" "R1BackgroundSprite"
	/// @DnDSaveInfo : "spriteind" "R1BackgroundSprite"
	sprite_index = R1BackgroundSprite;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 700B7EFB
/// @DnDArgument : "var" "RoomNumber"
/// @DnDArgument : "value" "2"
if(RoomNumber == 2){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4D3B2438
	/// @DnDParent : 700B7EFB
	/// @DnDArgument : "spriteind" "R2BackgroundSprite"
	/// @DnDSaveInfo : "spriteind" "R2BackgroundSprite"
	sprite_index = R2BackgroundSprite;
	image_index = 0;}