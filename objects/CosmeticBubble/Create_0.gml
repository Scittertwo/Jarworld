/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 7A61CACB
/// @DnDArgument : "var" "CosbubN"
/// @DnDArgument : "object" "CosmeticBubble"
/// @DnDSaveInfo : "object" "CosmeticBubble"
CosbubN = instance_number(CosmeticBubble);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 120D9566
/// @DnDInput : 7
/// @DnDArgument : "expr" "0.1"
/// @DnDArgument : "expr_1" "0.005"
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "var_1" "Size"
/// @DnDArgument : "var_2" "Rotation"
/// @DnDArgument : "var_3" "tx"
/// @DnDArgument : "var_4" "ty"
/// @DnDArgument : "var_5" "Distance"
/// @DnDArgument : "var_6" "Loop"
Speed = 0.1;
Size = 0.005;
Rotation = 0;
tx = 0;
ty = 0;
Distance = 0;
Loop = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 65694D56
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 483A622F
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-100"
/// @DnDArgument : "max" "100"
tx = (random_range(-100, 100));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 48DCB44E
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-100"
/// @DnDArgument : "max" "100"
ty = (random_range(-100, 100));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7DCA3DFE
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.02"
/// @DnDArgument : "max" "0.1"
Size = (random_range(0.02, 0.1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5EBE875A
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "1.5"
Speed = (random_range(0.5, 1.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 77B15F5E
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-15"
/// @DnDArgument : "max" "15"
Rotation = (random_range(-15, 15));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2C868A51
/// @DnDArgument : "var" "Distance"
/// @DnDArgument : "min" "15"
/// @DnDArgument : "max" "120"
Distance = (random_range(15, 120));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7F180FE6
/// @DnDArgument : "var" "PitchSet"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "3"
PitchSet = floor(random_range(1, 3 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1E225AE0
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5DCBCADA
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 62AEDB75
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6AD1F40D
/// @DnDInput : 2
/// @DnDArgument : "steps" "Distance"
/// @DnDArgument : "steps_1" "1"
/// @DnDArgument : "alarm_1" "2"
alarm_set(0, Distance);
alarm_set(2, 1);