// Created by Crowbar 0.56

$modelname "weapons\v_models\v_claws_zombie.mdl"

$bodygroup "wherearethearms"
{
	studio "v_claws_zombie_v_claws_arms.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\items\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -3.787 -19.807 -23.785 40.783 29.259 16.462

$definebone "root" "" 0 3.788849 65.927551 0 0 90.00001 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346466 27.87483 -9.113983 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187897 -14.058315 -3.263422 -0.802371 -4.237963 -10.928165 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.00008 -12.37534 0.000017 -0.000055 0.000073 -0.71043 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000011 -1.058857 0.000007 0.000002 -0.000003 -0.000009 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499905 2.575144 -6.260653 -25.55842 -31.004442 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000004 -3.099533 -0.000023 0.00006 -0.000007 11.827243 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000004 -1.649399 0.000006 0.00004 -0.000312 -8.169629 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008186 -1.168261 1.640412 61.19855 -118.798738 -115.979181 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000004 -3.307293 0.00001 -15.200286 22.794556 12.109587 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000006 -2.892874 -0.000027 0.000187 0.00001 39.535058 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000002 -1.789223 0.000009 -0.000016 0.000444 8.962735 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.32284 0.774758 75.179811 -147.650222 -144.613506 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" -0.000006 -3.408808 0.000015 -6.14183 11.82631 13.018261 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000002 -2.79948 0.000006 0.000074 0.000163 39.115777 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000005 -1.822453 0.000006 0.000017 -0.000086 14.700039 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205318 -1.375319 -0.310261 77.044152 145.983533 149.994931 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000009 -3.38814 0.000034 0.778678 -0.720985 16.126201 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.00001 -2.085262 0.000011 -0.000012 0.000252 35.566605 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000007 -1.544376 0.000013 -0.00003 0.000091 12.350417 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163866 -1.333138 69.133126 115.573536 124.448834 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.000001 -3.297523 -0.000015 1.355982 -7.079808 14.34706 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -1.951859 -0.000002 0.000104 -0.000058 28.584856 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000002 -1.231853 0.000008 0.000015 0.000094 22.624484 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346895 -27.874706 170.886048 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187786 14.058403 3.263433 -0.802744 -4.237362 -10.928421 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000038 12.375389 0.000013 0.001159 0.000044 -0.710169 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.00005 1.058859 -0.000014 0.000014 0.000014 0.000005 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013508 1.023748 0.572137 9.774796 -21.896526 -161.570804 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809753 0.499903 -2.57513 -6.261146 -25.558375 -31.004237 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0 3.099558 0.000042 0.000028 -0.000037 11.827256 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000002 1.649416 -0.000004 -0.000837 -0.000201 -8.169556 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008186 1.168339 -1.640391 61.198796 -118.798 -115.978321 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000013 3.307267 0.000015 -15.199509 22.794858 12.1096 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000028 2.89282 0.00005 -0.000771 0.00028 39.534798 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000031 1.789272 -0.000031 0.000115 0.000149 8.963031 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108299 1.322832 -0.774757 75.18046 -147.648501 -144.611772 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.00001 3.408817 -0.000004 -6.143041 11.825938 13.018914 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00001 2.799547 -0.000013 0.001329 -0.000062 39.11523 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000016 1.822403 0.000002 0.000325 -0.000098 14.700061 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205299 1.375282 0.310245 77.044849 145.981238 149.99269 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000007 3.388222 -0.000008 0.776848 -0.721682 16.126189 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.00001 2.085255 -0.000013 0.002702 0.000393 35.566158 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.00001 1.544376 0.000019 -0.000357 0.000079 12.350823 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193974 1.163839 1.333125 69.133174 115.572771 124.44796 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000009 3.297588 0.00004 1.354297 -7.080149 14.347634 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.00001 1.951797 -0.000011 0.001798 0.000026 28.584279 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.231861 -0.000051 -0.000102 0.000161 22.624462 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_meta_0_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_meta_0_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_meta_0_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_meta_0_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_R"
$bonemerge "weapon_bone"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_meta_0_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_meta_0_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_meta_0_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"

$animation "a_ref" "anims\ref.smd"
$animation "a_FingerSwingAOverlayFix" "anims\FingerSwingAOverlayFix.smd" {
	subtract "a_ref" 0
}
$sequence "ILostTheAnimationForSwingASoICantEditItLol" {
	"a_FingerSwingAOverlayFix"
	hidden
	delta
	node "raised"
	fps 60
}
$sequence "swing" {
	"anims\swingA.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	addlayer "ILostTheAnimationForSwingASoICantEditItLol"
	fps 60
}

$sequence "swingB" {
	"anims\swingB.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "swingC" {
	"anims\swingC.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "swingD" {
	"anims\swingD.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$sequence "draw" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Fist.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}
