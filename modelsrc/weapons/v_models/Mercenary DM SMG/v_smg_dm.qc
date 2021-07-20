// Created by Crowbar 0.68

$modelname "weapons/v_models/v_smg_dm.mdl"

$bodygroup "smg"
{
	studio "v_smg_dm_c_smg_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -0.399 -33.119 -18.863

$cdmaterials "models\weapons\v_smg\"
$cdmaterials "\"

$attachment "__illumPosition" "illumpos" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 3.25 26.09 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -0.73 3.21 4.59 rotate 0 154 -180

$cbox 0 0 0 0 0 0

$bbox 3.135 -21.509 -39.2 55.245 9.859 -1.557

$definebone "root" "" 0 70.500832 -4.842813 0 0 -170.261398 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 3.712229 0.237946 -0.699376 -10.749605 -69.921651 -177.15168 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000153 -5.595222 -0.000014 -4.410631 -45.35208 0.277428 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -0.000137 -12.121807 0.000008 -0.000057 -0.000753 -22.816952 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000015 -14.19334 0.00007 0.00012 -0.000348 0.000003 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.859825 -2.648415 2.207282 4.14948 -20.654859 -13.188572 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000008 -2.049995 0.000017 -0.000165 0.000562 6.310211 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.00001 -1.291405 0 0.000179 -0.000469 -4.343761 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.237595 -5.361666 1.505651 85.664465 47.274406 68.420348 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000005 -2.789349 0.000013 -0.000117 -0.000118 40.259792 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000008 -1.804688 0.000007 -0.000006 0.00023 10.68576 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.179268 -5.739496 -0.211215 76.37995 123.303534 145.769829 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000003 -2.810287 0.000011 0.000053 -0.000002 32.543983 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000003 -2.500301 0.000006 0.000111 -0.000169 21.737316 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.394386 -5.352423 -1.89642 75.231064 130.661437 153.536738 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000007 -2.377277 0 0.000111 -0.000289 34.597992 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000004 -2.166 0.000009 0.000109 0.000115 24.978953 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.228046 -4.503622 -3.220795 71.565452 104.545102 131.976344 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000002 -2.339813 0.000004 0 0.000231 30.524372 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000003 -1.654041 0 0.000001 -0.000056 16.553098 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -3.71223 0.237946 -0.699378 10.749662 69.921651 2.848173 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.000122 5.595212 0.000012 -4.410345 -45.351906 0.277604 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 0.000206 12.121788 -0.000032 0.000286 -0.001101 -22.817121 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 0.000027 14.19334 -0.000064 -0.001316 -0.000417 -0.000115 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.859756 2.648348 -2.207337 4.150735 -20.654728 -13.190059 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000004 2.049988 0.000013 0.000518 0.000056 6.311406 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000042 1.291435 0.000008 -0.000342 -0.000002 -4.343718 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.237679 5.361641 -1.505654 85.665558 47.306122 68.451043 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.00001 2.78936 0.000031 -0.001609 0.000169 40.260028 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000004 1.804729 0.000022 -0.00052 0.000114 10.686533 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.179306 5.739393 0.211185 76.380865 123.302974 145.769556 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000011 2.810368 -0.000021 0.00138 -0.000001 32.543884 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000003 2.500309 0.00002 0.000118 -0.000117 21.737343 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.394352 5.352388 1.896395 75.229739 130.665234 153.540603 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000005 2.377277 0.000036 -0.000968 0.000003 34.596974 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 2.166 0.000031 0.000064 -0.000346 24.979952 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.228024 4.503641 3.220788 71.566934 104.54054 131.972683 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000003 2.339733 0.000065 0.002755 0.000002 30.523876 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000012 1.65403 -0.000044 0.000119 -0.000057 16.553103 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.782913 30.943052 10.728144 7.010195 -23.814247 -161.902804 0 0 0 0 0 0
$definebone "weapon_stock" "weapon_bone" 0.212419 2.019758 -6.184763 0.000116 0.005447 0.00401 0 0 0 0 0 0
$definebone "weapon_slide" "weapon_bone" 2.577382 3.819108 9.277378 0.000116 0.009171 0.000228 0 0 0 0 0 0
$definebone "flap_jiggle" "weapon_bone" -1.704736 3.696288 6.857328 22.319272 0.776476 -87.906563 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 37.43927 34.52002 3.864474 7.011857 -23.819921 -161.900277 0 0 0 0 0 0
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


$sequence "smg_draw" {
	"v_smg_dm_anims\smg_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_smg.Draw" }
	{ event 5004 6 "Weapon_SMG_DM.Draw" }
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
	{ event 5004 12 "Weapon_smg.ClipOut" }
	{ event 5004 36 "Weapon_smg.ClipIn" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$keyvalues
{
}
