// Created by Crowbar 0.51.0.0

$modelname "v_models/v_smg_dm.mdl"

$bodygroup "smg"
{
	studio "v_smg_dm_c_smg_reference.smd"
}
$bodygroup "illumpos"
{
	studio "v_smg_dm_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\weapons\v_smg\"
$cdmaterials "\"

$attachment "__illumPosition" "illumpos" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 3.25 26.09 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -0.73 3.21 4.59 rotate 0 154 180

$cbox 0 0 0 0 0 0

$bbox 3.135 -21.509 -39.2 55.245 9.859 -1.557

// $hboxset "default"
// $hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "root" "" 0 70.500832 -4.842813 0 0 -170.2614 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 3.712229 0.237961 -0.699368 -10.74949 -69.922799 -177.151503 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000031 -5.595211 -0.00001 -4.410572 -45.353402 0.277425 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -0.000114 -12.121803 0.000006 -0.000058 -0.000581 -22.816956 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000015 -14.193295 0.000027 0.000061 -0.000065 -0.000004 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.859825 -2.648386 2.207254 4.149419 -20.655373 -13.188344 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000004 -2.049992 0.000021 -0.000109 0.000389 6.310205 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000004 -1.291401 -0.000002 0.000063 -0.000127 -4.343487 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.237579 -5.361643 1.505619 85.664295 47.273802 68.419829 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000005 -2.789352 0.00001 0.000002 -0.000107 40.260011 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000006 -1.804695 0.000003 0.000007 0.000121 10.685953 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.179253 -5.739485 -0.211226 76.379896 123.302756 145.769516 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000003 -2.81028 0.000011 -0.000002 0.00006 32.54383 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000004 -2.500309 0.000005 0 -0.000225 21.736807 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.394409 -5.352411 -1.896418 75.231181 130.661315 153.536753 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000003 -2.377277 -0.000008 -0.000005 0.000178 34.597767 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000005 -2.165985 0.000002 0 -0.000049 24.978659 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.228065 -4.50362 -3.220772 71.565445 104.544611 131.976222 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000005 -2.339809 -0.000002 -0.000004 0.000233 30.524543 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.654034 0.000005 -0.000002 -0.000109 16.552962 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -3.71223 0.237946 -0.699368 10.749548 69.922853 2.848459 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" 0.000008 5.595217 0 -4.410515 -45.353505 0.277484 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 0.000118 12.121773 -0.00001 0.000171 -0.000401 -22.817017 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 0.00008 14.193321 -0.00001 -0.000631 -0.000406 0.00011 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.859772 2.648323 -2.207303 4.149588 -20.655069 -13.189544 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000015 2.049984 0.000004 -0.000404 -0.000224 6.310895 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000029 1.291431 0.000021 0.001544 0.000349 -4.34331 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.237663 5.361616 -1.505643 85.665039 47.2918 68.436973 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.00001 2.789345 0.000029 -0.000857 0.000061 40.26025 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000005 1.804718 0.000012 -0.000401 0.000174 10.68635 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.179291 5.739391 0.211184 76.380292 123.303425 145.770021 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000008 2.810356 -0.000021 0.000402 0.000001 32.543779 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000001 2.500305 0.000029 0.000173 -0.000113 21.737116 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.394352 5.352381 1.896381 75.231577 130.661588 153.537381 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.00001 2.377285 0.000023 0.000517 -0.000057 34.597255 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000003 2.165997 0.000013 0.000344 -0.000058 24.978683 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.228008 4.503656 3.22076 71.567624 104.537282 131.969884 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0 2.339729 0.000059 0.003381 -0.000118 30.523986 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000012 1.654015 -0.000054 0.000342 -0.000118 16.552924 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.782932 30.942923 10.728282 7.009793 -23.81522 -161.902696 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 37.439327 34.519821 3.864683 7.010942 -23.818828 -161.899991 0 0 0 0 0 0
$definebone "vm_weapon_bone" "bip_hand_R" 36.012024 29.032324 11.067092 7.010942 -23.818828 -161.899991 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "bip_hand_R" 36.018906 30.874849 2.622131 7.012429 -23.823411 -161.903898 0 0 0 0 0 0
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

$jigglebone "flap_jiggle" {
	is_rigid {
		tip_mass 100
		length 50
		yaw_constraint 30 90
	}
}

$sequence "smg_draw" {
	"v_smg_dm_anims\smg_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_smg.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "smg_idle" {
	"v_smg_dm_anims\smg_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "smg_fire" {
	"v_smg_dm_anims\smg_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "smg_reload" {
	"v_smg_dm_anims\smg_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 16 "Weapon_smg.ClipOut" }
	{ event 5004 41 "Weapon_smg.ClipIn" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$KeyValues
{
}
