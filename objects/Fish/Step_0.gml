/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55574C49
/// @DnDArgument : "var" "BumpCount"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "50"
if(BumpCount > 50){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 119387CE
	/// @DnDParent : 55574C49
	/// @DnDArgument : "var" "JumpDistance"
	/// @DnDArgument : "min" "-150"
	/// @DnDArgument : "max" "-50"
	JumpDistance = (random_range(-150, -50));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6F6E46D4
	/// @DnDParent : 55574C49
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "JumpDistance"
	/// @DnDArgument : "y_relative" "1"
	x += 0;y += JumpDistance;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53234C4C
	/// @DnDParent : 55574C49
	/// @DnDArgument : "var" "BumpCount"
	BumpCount = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B729269
/// @DnDArgument : "var" "Control"
/// @DnDArgument : "value" "1"
if(Control == 1){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4521A47A
	/// @DnDParent : 5B729269
	/// @DnDArgument : "colour" "$FF600463"
	image_blend = $FF600463 & $ffffff;
	image_alpha = ($FF600463 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 4724D443
	/// @DnDParent : 5B729269
	/// @DnDArgument : "key" "ord("W")"
	var l4724D443_0;l4724D443_0 = keyboard_check(ord("W"));if (l4724D443_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6F43180D
		/// @DnDParent : 4724D443
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 7B5D56B2
		/// @DnDParent : 4724D443
		/// @DnDArgument : "direction" "90"
		direction = 90;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 4CD99384
	/// @DnDParent : 5B729269
	/// @DnDArgument : "key" "ord("S")"
	var l4CD99384_0;l4CD99384_0 = keyboard_check(ord("S"));if (l4CD99384_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 7C93161C
		/// @DnDParent : 4CD99384
		/// @DnDArgument : "direction" "270"
		direction = 270;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 5EC91B6B
		/// @DnDParent : 4CD99384
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 477E4B08
	/// @DnDParent : 5B729269
	/// @DnDArgument : "key" "ord("A")"
	var l477E4B08_0;l477E4B08_0 = keyboard_check(ord("A"));if (l477E4B08_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 0D6A6D97
		/// @DnDParent : 477E4B08
		/// @DnDArgument : "direction" "180"
		direction = 180;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 167BAE3C
		/// @DnDParent : 477E4B08
		/// @DnDArgument : "spriteind" "FishLSprite"
		/// @DnDSaveInfo : "spriteind" "FishLSprite"
		sprite_index = FishLSprite;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 17482577
		/// @DnDParent : 477E4B08
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 04D140C7
	/// @DnDParent : 5B729269
	/// @DnDArgument : "key" "ord("D")"
	var l04D140C7_0;l04D140C7_0 = keyboard_check(ord("D"));if (l04D140C7_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 516C4716
		/// @DnDParent : 04D140C7
		/// @DnDArgument : "direction" "0"
		direction = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 144A340E
		/// @DnDParent : 04D140C7
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1F92FA48
		/// @DnDParent : 04D140C7
		/// @DnDArgument : "spriteind" "FishRSprite"
		/// @DnDSaveInfo : "spriteind" "FishRSprite"
		sprite_index = FishRSprite;
		image_index = 0;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 39D2E841
	/// @DnDParent : 5B729269
	/// @DnDArgument : "key" "vk_nokey"
	var l39D2E841_0;l39D2E841_0 = keyboard_check(vk_nokey);if (l39D2E841_0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 63D0B3F6
		/// @DnDParent : 39D2E841
		speed = 0;
		direction = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 046D336A
		/// @DnDParent : 39D2E841
		speed = 0;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 419BB6FF
	/// @DnDParent : 5B729269
	var l419BB6FF_0;l419BB6FF_0 = keyboard_check_pressed(vk_space);if (l419BB6FF_0){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 54D89B5B
		/// @DnDParent : 419BB6FF
		image_blend = $FFFFFFFF & $ffffff;
		image_alpha = ($FFFFFFFF >> 24) / $ff;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 749FCAA2
		/// @DnDParent : 419BB6FF
		/// @DnDArgument : "var" "Control"
		Control = 0;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 2052FC7D
	/// @DnDParent : 5B729269
	/// @DnDArgument : "key" "vk_delete"
	var l2052FC7D_0;l2052FC7D_0 = keyboard_check_pressed(vk_delete);if (l2052FC7D_0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4E51E021
		/// @DnDParent : 2052FC7D
		/// @DnDArgument : "steps" "1"
		/// @DnDArgument : "alarm" "11"
		alarm_set(11, 1);}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2C91904D
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60A3BE11
	/// @DnDParent : 2C91904D
	/// @DnDArgument : "var" "tx"
	/// @DnDArgument : "op" "2"
	if(tx > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A7D77F0
		/// @DnDParent : 60A3BE11
		/// @DnDArgument : "var" "SpriteChoice"
		/// @DnDArgument : "value" "1"
		if(SpriteChoice == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5550EF1D
			/// @DnDParent : 5A7D77F0
			/// @DnDArgument : "spriteind" "FishRSprite"
			/// @DnDSaveInfo : "spriteind" "FishRSprite"
			sprite_index = FishRSprite;
			image_index = 0;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1827C877
		/// @DnDParent : 60A3BE11
		/// @DnDArgument : "var" "SpriteChoice"
		/// @DnDArgument : "value" "2"
		if(SpriteChoice == 2){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3ED8E0FA
			/// @DnDParent : 1827C877
			/// @DnDArgument : "spriteind" "BettaRSprite"
			/// @DnDSaveInfo : "spriteind" "BettaRSprite"
			sprite_index = BettaRSprite;
			image_index = 0;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A509717
		/// @DnDParent : 60A3BE11
		/// @DnDArgument : "var" "SpriteChoice"
		/// @DnDArgument : "value" "3"
		if(SpriteChoice == 3){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 52733D09
			/// @DnDParent : 3A509717
			/// @DnDArgument : "spriteind" "F3RSprite"
			/// @DnDSaveInfo : "spriteind" "F3RSprite"
			sprite_index = F3RSprite;
			image_index = 0;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 61915F83
	/// @DnDParent : 2C91904D
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F30D9F0
		/// @DnDParent : 61915F83
		/// @DnDArgument : "var" "SpriteChoice"
		/// @DnDArgument : "value" "1"
		if(SpriteChoice == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 566F87EC
			/// @DnDParent : 3F30D9F0
			/// @DnDArgument : "spriteind" "FishLSprite"
			/// @DnDSaveInfo : "spriteind" "FishLSprite"
			sprite_index = FishLSprite;
			image_index = 0;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2894A2F2
		/// @DnDParent : 61915F83
		/// @DnDArgument : "var" "SpriteChoice"
		/// @DnDArgument : "value" "2"
		if(SpriteChoice == 2){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5C94507A
			/// @DnDParent : 2894A2F2
			/// @DnDArgument : "spriteind" "BettaLSprite"
			/// @DnDSaveInfo : "spriteind" "BettaLSprite"
			sprite_index = BettaLSprite;
			image_index = 0;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B1F9F04
		/// @DnDParent : 61915F83
		/// @DnDArgument : "var" "SpriteChoice"
		/// @DnDArgument : "value" "3"
		if(SpriteChoice == 3){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4CBA79F0
			/// @DnDParent : 0B1F9F04
			/// @DnDArgument : "spriteind" "F3LSprite"
			/// @DnDSaveInfo : "spriteind" "F3LSprite"
			sprite_index = F3LSprite;
			image_index = 0;}}}