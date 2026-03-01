/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 198031B3
var l198031B3_0;l198031B3_0 = mouse_check_button_pressed(mb_left);if (l198031B3_0){	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 15174F8F
	/// @DnDParent : 198031B3
	if(room == room_last){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 33CFA8B5
		/// @DnDParent : 15174F8F
		/// @DnDArgument : "room" "Room1"
		/// @DnDSaveInfo : "room" "Room1"
		room_goto(Room1);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1A894175
	/// @DnDParent : 198031B3
	else{	/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 73EE57AE
		/// @DnDParent : 1A894175
		room_goto_next();}}