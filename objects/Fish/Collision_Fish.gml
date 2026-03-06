/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 7758A34B
/// @DnDArgument : "var" "FishN"
/// @DnDArgument : "object" "Fish"
/// @DnDSaveInfo : "object" "Fish"
FishN = instance_number(Fish);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00950C2D
/// @DnDArgument : "var" "FishN"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "25"
if(FishN < 25){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AC38A68
	/// @DnDParent : 00950C2D
	/// @DnDArgument : "var" "CanBreed"
	/// @DnDArgument : "value" "1"
	if(CanBreed == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1AB6F207
		/// @DnDParent : 7AC38A68
		/// @DnDArgument : "var" "CanBreed"
		CanBreed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F8C3924
		/// @DnDInput : 2
		/// @DnDParent : 7AC38A68
		/// @DnDArgument : "expr" "70"
		/// @DnDArgument : "var" "Energy"
		Energy = 70;
		variable = 0;
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 214078FA
		/// @DnDParent : 7AC38A68
		/// @DnDArgument : "var" "EggCount"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "1"
		/// @DnDArgument : "max" "3"
		EggCount = floor(random_range(1, 3 + 1));
	
		/// @DnDAction : YoYo Games.Movement.Reverse
		/// @DnDVersion : 1
		/// @DnDHash : 0FCB8A85
		/// @DnDParent : 7AC38A68
		direction = (direction + 180) % 360;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 4F22E920
		/// @DnDParent : 7AC38A68
		/// @DnDArgument : "times" "EggCount"
		repeat(EggCount){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2B6FF120
			/// @DnDParent : 4F22E920
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "FishEgg"
			/// @DnDSaveInfo : "objectid" "FishEgg"
			instance_create_layer(x + 0, y + 0, "Instances", FishEgg);}}}