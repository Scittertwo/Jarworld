/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 497D0256
/// @DnDArgument : "var" "Control"
/// @DnDArgument : "value" "1"
if(Control == 1){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 11236388
	/// @DnDParent : 497D0256
	/// @DnDArgument : "colour" "$FF600463"
	image_blend = $FF600463 & $ffffff;
	image_alpha = ($FF600463 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2E802651
	/// @DnDParent : 497D0256
	/// @DnDArgument : "key" "ord("W")"
	var l2E802651_0;l2E802651_0 = keyboard_check(ord("W"));if (l2E802651_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 22A4851B
		/// @DnDParent : 2E802651
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 1411577E
		/// @DnDParent : 2E802651
		/// @DnDArgument : "direction" "90"
		direction = 90;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3B880EC1
	/// @DnDParent : 497D0256
	/// @DnDArgument : "key" "ord("S")"
	var l3B880EC1_0;l3B880EC1_0 = keyboard_check(ord("S"));if (l3B880EC1_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 41A67267
		/// @DnDParent : 3B880EC1
		/// @DnDArgument : "direction" "270"
		direction = 270;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 19DDD745
		/// @DnDParent : 3B880EC1
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1667AEA7
	/// @DnDParent : 497D0256
	/// @DnDArgument : "key" "ord("A")"
	var l1667AEA7_0;l1667AEA7_0 = keyboard_check(ord("A"));if (l1667AEA7_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 461F00CE
		/// @DnDParent : 1667AEA7
		/// @DnDArgument : "direction" "180"
		direction = 180;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0A3F1B28
		/// @DnDParent : 1667AEA7
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 62583BB1
	/// @DnDParent : 497D0256
	/// @DnDArgument : "key" "ord("D")"
	var l62583BB1_0;l62583BB1_0 = keyboard_check(ord("D"));if (l62583BB1_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 1FF74D1B
		/// @DnDParent : 62583BB1
		/// @DnDArgument : "direction" "0"
		direction = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 65FDDD2D
		/// @DnDParent : 62583BB1
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3DC0B4C2
	/// @DnDParent : 497D0256
	/// @DnDArgument : "key" "vk_nokey"
	var l3DC0B4C2_0;l3DC0B4C2_0 = keyboard_check(vk_nokey);if (l3DC0B4C2_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 278FFB5E
		/// @DnDParent : 3DC0B4C2
		speed = 0;
		direction = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4C9F222D
		/// @DnDParent : 3DC0B4C2
		speed = 0;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7AE6128F
	/// @DnDParent : 497D0256
	var l7AE6128F_0;l7AE6128F_0 = keyboard_check_pressed(vk_space);if (l7AE6128F_0){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 062E1BA4
		/// @DnDParent : 7AE6128F
		image_blend = $FFFFFFFF & $ffffff;
		image_alpha = ($FFFFFFFF >> 24) / $ff;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E8F60ED
		/// @DnDParent : 7AE6128F
		/// @DnDArgument : "var" "Control"
		Control = 0;}}