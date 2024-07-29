// Created by Crowbar 0.56

$modelname "weapons/v_models/v_railgun_mercenary.mdl"

$bodygroup "railgun"
{
	studio "railgun.smd"
}
$bodygroup "illumpos"
{
	studio "illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_railgun\"
$cdmaterials "models\weapons\c_items\"
$cdmaterials "models\weapons\c_items\c_dex_sniperrifle\"
$cdmaterials "\"

$texturegroup "skinfamilies"
{
	{ }
	{ }
	{ }
}

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 3.77 45.82 rotate -90 0 0
$attachment "light" "weapon_bone" 0 3.77 20.82 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -3.623 -29.108 -64.755 73.402 7.103 5.772

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "weapon_bone" "" -0.000009 0.000027 -0.000006 -0.000951 -179.999897 90.000591 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0.000009 3.52666 21.175005 -0.000115 -0.000974 -0.004297 0 0 0 0 0 0
$definebone "root" "" 0 0 0 0 179.999966 89.999983 0 0 0 0 0 0
$definebone "bip_collar_L" "root" -3.712229 0.237961 0.699372 10.749492 -110.076422 2.848746 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" -0.000062 -5.595213 -0.000012 -4.410914 -45.35454 0.277424 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -0.000034 -12.121805 -0.000003 0.000118 -0.000405 -22.81707 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000057 -14.1933 0.000048 -0.000569 -0.000174 0.000165 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.859799 -2.648405 2.207306 4.150967 -20.654789 -13.189032 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000011 -2.050001 0.000018 -0.000743 0.000004 6.310271 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.00001 -1.291388 -0.000001 -0.000856 -0.000283 -4.343192 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.237619 -5.361654 1.505654 85.664527 47.26704 68.413115 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000012 -2.789366 0.000034 0.001315 0.000007 40.259454 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000002 -1.804699 0 -0.000168 0.000292 10.685559 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.179272 -5.739489 -0.211202 76.379547 123.305174 145.771702 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000017 -2.810274 -0.000008 -0.000578 -0.000452 32.544288 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000017 -2.500305 0.000034 0.000512 -0.000107 21.73635 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.394407 -5.352415 -1.896399 75.232315 130.660632 153.536384 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000001 -2.377285 0.000002 0.002116 0.000065 34.597647 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000004 -2.165977 0.000015 -0.000744 0.000238 24.978272 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.228086 -4.503614 -3.220769 71.567283 104.540527 131.972506 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000005 -2.339798 0.000008 0.003492 0.000346 30.524444 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000005 -1.654027 -0.000008 -0.001435 0.000059 16.552412 0 0 0 0 0 0
$definebone "bip_collar_R" "root" 3.71223 0.237946 0.699374 -10.749646 110.076402 -177.151367 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" 0.000074 5.595214 -0.000001 -4.410801 -45.354547 0.277424 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 0.000062 12.121778 0.000008 0.00046 0 -22.817246 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 0.000142 14.193352 0.000031 -0.001031 -0.000169 0.000687 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.85978 2.648312 -2.207358 4.150276 -20.655134 -13.190237 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000004 2.049994 0.00001 -0.000745 -0.000867 6.310896 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000017 1.291431 0.000033 0.00189 0.000279 -4.342862 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.237626 5.36161 -1.505696 85.665558 47.299979 68.444937 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000027 2.789347 0.000051 -0.001258 -0.000347 40.261052 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.00001 1.804715 -0.000008 -0.000459 0.000284 10.685542 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.179255 5.739407 0.211141 76.379035 123.307483 145.774543 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000015 2.810352 -0.000029 -0.001146 -0.000515 32.543717 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000002 2.500301 0.000031 0.000342 -0.000174 21.736925 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.394415 5.35239 1.896345 75.233237 130.660659 153.53708 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000015 2.377296 0.000017 0.002579 0.000287 34.597077 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000005 2.165989 0.000027 0.000058 -0.00023 24.978603 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.228069 4.503666 3.220747 71.571176 104.527474 131.961442 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000008 2.339745 0.000048 0.008365 -0.000171 30.52374 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000006 1.653998 -0.000046 0.00023 0.000287 16.552344 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_collar_L"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_collar_R"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"


$sequence "draw" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_SniperRifle.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5004 12 "Weapon_Railgun.Charge" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$KeyValues
{
}
