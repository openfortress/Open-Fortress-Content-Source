// Created by Crowbar 0.56

$modelname "weapons\v_models\v_gravity_gauntlets.mdl"

$bodygroup "YMCA"
{
	studio "v_grav_gaunt_ex.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\player\engineer\"
$cdmaterials "models\buildables\teleporter\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "engineer_mech_hand"      "teleporter"      	}
	{ "engineer_mech_hand_blue" "teleporter_blue" 	}
	{ "engineer_mech_hand" 		"teleporter_custom" }
}

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "pull_attach" "pull_point" 0 0 0 rotate 0 0 0

$attachment "swing_cam"  	"cam" 				0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_attach"  "robo_hand_R" 		0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_1" 		"robo_thumb_2_R" 	0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_2" 		"robo_pointer_2_R"  0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_3" 		"robo_middle_2_R" 	0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_4" 		"robo_pinky_2_R" 	0.00 0.00 0.00 rotate 0 0 0

$attachment "hover_attach" "robo_hand_L" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -4.695 -23.184 -19.085 67.236 20.431 0.418

$hboxset "default"
$hbox 0 "bip_hand_L" -6 -6.5 -3 2 1.5 5 ""
$hbox 0 "bip_hand_R" -2 -1.5 -5 6 6.5 3 ""

$definebone "pull_point" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "cam" 		 "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "root" "" 0 3.788849 65.927551 0 0 89.999983 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346468 27.874861 -9.113983 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187893 -14.058319 -3.263422 -0.80237 -4.237944 -10.928138 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000076 -12.375345 0.000017 -0.000059 0.000053 -0.710411 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000019 -1.058861 0.00001 -0.000002 -0.000005 0.000001 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809811 -0.499903 2.575143 -6.260652 -25.558384 -31.004466 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000006 -3.099529 -0.000025 0.000053 -0.000001 11.827213 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000008 -1.649399 0.000006 0.000055 -0.000289 -8.169643 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008186 -1.168264 1.640409 61.198523 -118.798738 -115.979154 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000002 -3.307289 0.000011 -15.200286 22.794542 12.10958 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000007 -2.892876 -0.000025 0.000171 -0.000003 39.535068 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000002 -1.789223 0.000005 -0.000003 0.000458 8.962713 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.322845 0.774757 75.179797 -147.65025 -144.61352 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" -0.00001 -3.408804 0.000013 -6.141821 11.826304 13.018287 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000002 -2.799482 0.000004 0.000058 0.000172 39.115766 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000006 -1.822449 0.000004 -0.000002 -0.000058 14.700034 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205315 -1.375326 -0.310263 77.044145 145.983533 149.994944 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000007 -3.388142 0.000031 0.778654 -0.720954 16.126186 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.00001 -2.085262 0.000011 0.000005 0.000224 35.566581 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000006 -1.544369 0.000013 0.000002 0.000112 12.350395 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163868 -1.333138 69.133078 115.573509 124.448821 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.000001 -3.29752 -0.000019 1.355968 -7.079814 14.347029 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000005 -1.951855 -0.000002 0.00012 -0.000061 28.584864 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000001 -1.231857 0 0.000003 0.000108 22.624512 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346869 -27.874684 170.886034 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187798 14.058414 3.263434 -0.802771 -4.237365 -10.928421 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000042 12.375395 0.000011 0.001146 0.000058 -0.710177 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000053 1.058855 -0.000012 0.000002 0 0.000001 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013504 1.02375 0.572139 9.774773 -21.896492 -161.570776 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809753 0.499903 -2.575129 -6.261167 -25.55838 -31.004234 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000002 3.09956 0.000042 0.000054 -0.000051 11.827215 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000004 1.649416 -0.000002 -0.000863 -0.000221 -8.169577 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008186 1.168333 -1.640389 61.198782 -118.798 -115.978362 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000015 3.307261 0.000019 -15.199481 22.794838 12.109586 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.00003 2.892818 0.000051 -0.000745 0.00028 39.534785 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000031 1.789268 -0.000031 0.000113 0.000166 8.963069 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108299 1.322824 -0.774755 75.180426 -147.648474 -144.611772 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.00001 3.408823 -0.000004 -6.143027 11.825901 13.018921 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00001 2.799549 -0.000011 0.001314 -0.000061 39.115203 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000016 1.822407 0.000002 0.000338 -0.000114 14.700036 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205299 1.375284 0.310246 77.044835 145.981266 149.992677 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000008 3.388218 -0.000008 0.77687 -0.721701 16.126189 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000011 2.08526 -0.00001 0.002689 0.000398 35.566185 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000011 1.544376 0.000019 -0.000349 0.000058 12.350855 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193977 1.163836 1.333126 69.133208 115.572758 124.447988 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.00001 3.297588 0.000034 1.354298 -7.080162 14.347615 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.00001 1.951797 -0.000008 0.001773 -0.000006 28.584298 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000011 1.231865 -0.000048 -0.00012 0.000169 22.624443 0 0 0 0 0 0

$definebone "robo_hand_L" 	  ""                  21.406967 -0.715032 40.498962  -1.047055 0.276100 -3.050851
$definebone "robo_pointer_0_L" "robo_hand_L"      0.051752 0.000010 0.998662  -0.000000 -3.141592 0.000000
$definebone "robo_pointer_1_L" "robo_pointer_0_L" -0.056461 0.631870 -1.089342  -0.000000 0.000001 0.000000
$definebone "robo_pointer_2_L" "robo_pointer_1_L" -0.231392 1.525680 -4.496549  0.000011 0.000037 0.000018
$definebone "robo_pointer_3_L" "robo_pointer_2_L" -0.222949 0.103699 -4.272931  0.000023 -0.000051 -0.000005
$definebone "robo_pinky_0_L"   "robo_hand_L"      -0.051763 -0.000010 -0.998655  0.000024 3.141582 -0.000010
$definebone "robo_pinky_1_L"   "robo_pinky_0_L"   0.056466 0.631881 1.089331  -3.141585 0.016315 -0.000015
$definebone "robo_pinky_2_L"   "robo_pinky_1_L"   0.155234 -1.524254 -4.499042  -0.000011 0.000003 -0.000016
$definebone "robo_pinky_3_L"   "robo_pinky_2_L"   0.156231 -0.105251 -4.276633  -0.000023 0.000001 0.000010
$definebone "robo_middle_0_L"  "robo_hand_L"      0.998659 -0.000007 -0.051757  0.000002 -2.865917 -0.000027
$definebone "robo_middle_1_L"  "robo_middle_0_L"  -1.063575 0.631883 -0.242185  -0.000001 -0.275602 0.000000
$definebone "robo_middle_2_L"  "robo_middle_1_L"  -4.496556 1.525721 0.231060  0.000030 -0.000075 -0.000008
$definebone "robo_middle_3_L"  "robo_middle_2_L"  -4.272923 0.103752 0.223117  -0.000032 -0.000008 -0.000023
$definebone "robo_thumb_0_L"   "robo_hand_L"      -0.998660 0.000011 0.051759  0.000007 -3.141592 -0.000004
$definebone "robo_thumb_1_L"   "robo_thumb_0_L"   1.089344 0.631870 -0.056456  -3.141593 0.016299 0.000000
$definebone "robo_thumb_2_L"   "robo_thumb_1_L"   4.499065 -1.524184 0.155275  -0.000007 -0.000000 0.000004
$definebone "robo_thumb_3_L"   "robo_thumb_2_L"   4.276641 -0.105252 0.156229  0.000026 0.000009 -0.000052
$definebone "robo_hand_R" 	  ""				  -21.406967 -0.715032 40.498962  -2.094513 0.276114 -0.090661
$definebone "robo_pinky_0_R"   "robo_hand_R"      -0.051691 -0.000007 0.998659  0.000023 -0.101742 0.000014
$definebone "robo_pinky_1_R"   "robo_pinky_0_R"   0.054554 0.631876 1.089432  3.141495 0.020681 0.000062
$definebone "robo_pinky_2_R"   "robo_pinky_1_R"   0.136640 -1.523766 -4.499825  0.000099 0.000000 0.000062
$definebone "robo_pinky_3_R"   "robo_pinky_2_R"   0.121168 -0.105271 -4.277773  -0.000032 -0.000012 -0.000012
$definebone "robo_middle_0_R"  "robo_hand_R"      0.998660 0.000020 0.051685  0.000001 0.000022 0.000007
$definebone "robo_middle_1_R"  "robo_middle_0_R"  1.089342 0.631878 0.056405  -0.000001 -0.000023 -0.000007
$definebone "robo_middle_2_R"  "robo_middle_1_R"  4.496554 1.525724 0.231056  0.000024 0.000097 0.000021
$definebone "robo_middle_3_R"  "robo_middle_2_R"  4.272922 0.103699 0.223211  -0.000025 -0.000014 0.000008
$definebone "robo_thumb_0_R"   "robo_hand_R"      -0.998667 -0.000014 -0.051685  -0.000002 0.000072 0.000027
$definebone "robo_thumb_1_R"   "robo_thumb_0_R"   -1.089338 0.631873 -0.056455  3.141593 -0.016299 0.000000
$definebone "robo_thumb_2_R"   "robo_thumb_1_R"   -4.499063 -1.524181 0.155262  0.000001 0.000000 0.000000
$definebone "robo_thumb_3_R"   "robo_thumb_2_R"   -4.276634 -0.105238 0.156232  0.000026 -0.000006 0.000036
$definebone "robo_pointer_0_R" "robo_hand_R"      0.051680 0.000006 -0.998666  -0.000002 -0.101714 0.000034
$definebone "robo_pointer_1_R" "robo_pointer_0_R" -0.054511 0.631870 -1.089445  0.000001 0.000002 0.000000
$definebone "robo_pointer_2_R" "robo_pointer_1_R" -0.226686 1.525670 -4.496796  0.000000 -0.000070 -0.000027
$definebone "robo_pointer_3_R" "robo_pointer_2_R" -0.212508 0.103724 -4.273470  0.000031 0.000046 0.000002

$bonemerge "pull_point"
$bonemerge "root"
$bonemerge "cam"
$bonemerge "robo_hand_R"
$bonemerge "robo_hand_L"
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

$sectionframes 30 149

$weightlist "weights_null" {
"pull_point"			"0"
"root"				    "0"
"bip_upperArm_R"	    "0"
"bip_lowerArm_R"	    "0"
"bip_wrist_R"		    "0"
"bip_hand_R"		    "0"
"weapon_bone"		    "0"
"bip_thumb_0_R"		    "0"
"bip_thumb_1_R"		    "0"
"bip_thumb_2_R"		    "0"
"bip_index_meta_0_R"    "0"
"bip_index_0_R"		    "0"
"bip_index_1_R"		    "0"
"bip_index_2_R"		    "0"
"bip_middle_meta_0_R"   "0"
"bip_middle_0_R"	    "0"
"bip_middle_1_R"	    "0"
"bip_middle_2_R"	    "0"
"bip_ring_meta_0_R"	    "0"
"bip_ring_0_R"		    "0"
"bip_ring_1_R"		    "0"
"bip_ring_2_R"		    "0"
"bip_pinky_meta_0_R"    "0"
"bip_pinky_0_R"		    "0"
"bip_pinky_1_R"		    "0"
"bip_pinky_2_R"	        "0"
"robo_hand_R"		    "0"
"robo_pinky_0_R"	    "0"
"robo_pinky_1_R"	    "0"
"robo_pinky_2_R"	    "0"
"robo_pinky_3_R"	    "0"
"robo_middle_0_R"	    "0"
"robo_middle_1_R"	    "0"
"robo_middle_2_R"	    "0"
"robo_middle_3_R"	    "0"
"robo_thumb_0_R"	    "0"
"robo_thumb_1_R"	    "0"
"robo_thumb_2_R"	    "0"
"robo_thumb_3_R"	    "0"
"robo_pointer_0_R"	    "0"
"robo_pointer_1_R"	    "0"
"robo_pointer_2_R"	    "0"
"robo_pointer_3_R"		"0"

"bip_upperArm_L"	    "0"
"bip_lowerArm_L"	    "0"
"bip_wrist_L"		    "0"
"bip_hand_L"		    "0"
"bip_thumb_0_L"		    "0"
"bip_thumb_1_L"		    "0"
"bip_thumb_2_L"		    "0"
"bip_index_meta_0_L"    "0"
"bip_index_0_L"		    "0"
"bip_index_1_L"		    "0"
"bip_index_2_L"		    "0"
"bip_middle_meta_0_L"   "0"
"bip_middle_0_L"	    "0"
"bip_middle_1_L"	    "0"
"bip_middle_2_L"	    "0"
"bip_ring_meta_0_L"	    "0"
"bip_ring_0_L"		    "0"
"bip_ring_1_L"		    "0"
"bip_ring_2_L"		    "0"
"bip_pinky_meta_0_L"    "0"
"bip_pinky_0_L"		    "0"
"bip_pinky_1_L"		    "0"
"bip_pinky_2_L"		    "0"
"robo_hand_L"			"0"																																																																														
"robo_pointer_0_L"	    "0"
"robo_pointer_1_L"	    "0"
"robo_pointer_2_L"	    "0"
"robo_pointer_3_L"	    "0"
"robo_pinky_0_L"	    "0"
"robo_pinky_1_L"	    "0"
"robo_pinky_2_L"	    "0"
"robo_pinky_3_L"	    "0"
"robo_middle_0_L"	    "0"
"robo_middle_1_L"	    "0"
"robo_middle_2_L"	    "0"
"robo_middle_3_L"	    "0"
"robo_thumb_0_L"	    "0"
"robo_thumb_1_L"	    "0"
"robo_thumb_2_L"	    "0"
"robo_thumb_3_L"	    "0"
}

$weightlist "weights_pull_r" {
"root"				    "0"
"pull_point"			"1"
"bip_upperArm_R"	    "1"
"bip_lowerArm_R"	    "1"
"bip_wrist_R"		    "1"
"bip_hand_R"		    "1"
"weapon_bone"		    "1"
"bip_thumb_0_R"		    "1"
"bip_thumb_1_R"		    "1"
"bip_thumb_2_R"		    "1"
"bip_index_meta_0_R"    "1"
"bip_index_0_R"		    "1"
"bip_index_1_R"		    "1"
"bip_index_2_R"		    "1"
"bip_middle_meta_0_R"   "1"
"bip_middle_0_R"	    "1"
"bip_middle_1_R"	    "1"
"bip_middle_2_R"	    "1"
"bip_ring_meta_0_R"	    "1"
"bip_ring_0_R"		    "1"
"bip_ring_1_R"		    "1"
"bip_ring_2_R"		    "1"
"bip_pinky_meta_0_R"    "1"
"bip_pinky_0_R"		    "1"
"bip_pinky_1_R"		    "1"
"bip_pinky_2_R"	        "1"
"robo_hand_R"		    "1"
"robo_pinky_0_R"	    "1"
"robo_pinky_1_R"	    "1"
"robo_pinky_2_R"	    "1"
"robo_pinky_3_R"	    "1"
"robo_middle_0_R"	    "1"
"robo_middle_1_R"	    "1"
"robo_middle_2_R"	    "1"
"robo_middle_3_R"	    "1"
"robo_thumb_0_R"	    "1"
"robo_thumb_1_R"	    "1"
"robo_thumb_2_R"	    "1"
"robo_thumb_3_R"	    "1"
"robo_pointer_0_R"	    "1"
"robo_pointer_1_R"	    "1"
"robo_pointer_2_R"	    "1"
"robo_pointer_3_R"		"1"

"bip_upperArm_L"	    "0"
"bip_lowerArm_L"	    "0"
"bip_wrist_L"		    "0"
"bip_hand_L"		    "0"
"bip_thumb_0_L"		    "0"
"bip_thumb_1_L"		    "0"
"bip_thumb_2_L"		    "0"
"bip_index_meta_0_L"    "0"
"bip_index_0_L"		    "0"
"bip_index_1_L"		    "0"
"bip_index_2_L"		    "0"
"bip_middle_meta_0_L"   "0"
"bip_middle_0_L"	    "0"
"bip_middle_1_L"	    "0"
"bip_middle_2_L"	    "0"
"bip_ring_meta_0_L"	    "0"
"bip_ring_0_L"		    "0"
"bip_ring_1_L"		    "0"
"bip_ring_2_L"		    "0"
"bip_pinky_meta_0_L"    "0"
"bip_pinky_0_L"		    "0"
"bip_pinky_1_L"		    "0"
"bip_pinky_2_L"		    "0"
"robo_hand_L"			"0"																																																																														
"robo_pointer_0_L"	    "0"
"robo_pointer_1_L"	    "0"
"robo_pointer_2_L"	    "0"
"robo_pointer_3_L"	    "0"
"robo_pinky_0_L"	    "0"
"robo_pinky_1_L"	    "0"
"robo_pinky_2_L"	    "0"
"robo_pinky_3_L"	    "0"
"robo_middle_0_L"	    "0"
"robo_middle_1_L"	    "0"
"robo_middle_2_L"	    "0"
"robo_middle_3_L"	    "0"
"robo_thumb_0_L"	    "0"
"robo_thumb_1_L"	    "0"
"robo_thumb_2_L"	    "0"
"robo_thumb_3_L"	    "0"
}

$weightlist "weights_pull_l" {
"pull_point"			"1"
"root"				    "0"
"bip_upperArm_R"	    "0"
"bip_lowerArm_R"	    "0"
"bip_wrist_R"		    "0"
"bip_hand_R"		    "0"
"weapon_bone"		    "0"
"bip_thumb_0_R"		    "0"
"bip_thumb_1_R"		    "0"
"bip_thumb_2_R"		    "0"
"bip_index_meta_0_R"    "0"
"bip_index_0_R"		    "0"
"bip_index_1_R"		    "0"
"bip_index_2_R"		    "0"
"bip_middle_meta_0_R"   "0"
"bip_middle_0_R"	    "0"
"bip_middle_1_R"	    "0"
"bip_middle_2_R"	    "0"
"bip_ring_meta_0_R"	    "0"
"bip_ring_0_R"		    "0"
"bip_ring_1_R"		    "0"
"bip_ring_2_R"		    "0"
"bip_pinky_meta_0_R"    "0"
"bip_pinky_0_R"		    "0"
"bip_pinky_1_R"		    "0"
"bip_pinky_2_R"	        "0"
"robo_hand_R"		    "0"
"robo_pinky_0_R"	    "0"
"robo_pinky_1_R"	    "0"
"robo_pinky_2_R"	    "0"
"robo_pinky_3_R"	    "0"
"robo_middle_0_R"	    "0"
"robo_middle_1_R"	    "0"
"robo_middle_2_R"	    "0"
"robo_middle_3_R"	    "0"
"robo_thumb_0_R"	    "0"
"robo_thumb_1_R"	    "0"
"robo_thumb_2_R"	    "0"
"robo_thumb_3_R"	    "0"
"robo_pointer_0_R"	    "0"
"robo_pointer_1_R"	    "0"
"robo_pointer_2_R"	    "0"
"robo_pointer_3_R"		"0"

"bip_upperArm_L"	    "1"
"bip_lowerArm_L"	    "1"
"bip_wrist_L"		    "1"
"bip_hand_L"		    "1"
"bip_thumb_0_L"		    "1"
"bip_thumb_1_L"		    "1"
"bip_thumb_2_L"		    "1"
"bip_index_meta_0_L"    "1"
"bip_index_0_L"		    "1"
"bip_index_1_L"		    "1"
"bip_index_2_L"		    "1"
"bip_middle_meta_0_L"   "1"
"bip_middle_0_L"	    "1"
"bip_middle_1_L"	    "1"
"bip_middle_2_L"	    "1"
"bip_ring_meta_0_L"	    "1"
"bip_ring_0_L"		    "1"
"bip_ring_1_L"		    "1"
"bip_ring_2_L"		    "1"
"bip_pinky_meta_0_L"    "1"
"bip_pinky_0_L"		    "1"
"bip_pinky_1_L"		    "1"
"bip_pinky_2_L"		    "1"
"robo_hand_L"			"1"																																																																														
"robo_pointer_0_L"	    "1"
"robo_pointer_1_L"	    "1"
"robo_pointer_2_L"	    "1"
"robo_pointer_3_L"	    "1"
"robo_pinky_0_L"	    "1"
"robo_pinky_1_L"	    "1"
"robo_pinky_2_L"	    "1"
"robo_pinky_3_L"	    "1"
"robo_middle_0_L"	    "1"
"robo_middle_1_L"	    "1"
"robo_middle_2_L"	    "1"
"robo_middle_3_L"	    "1"
"robo_thumb_0_L"	    "1"
"robo_thumb_1_L"	    "1"
"robo_thumb_2_L"	    "1"
"robo_thumb_3_L"	    "1"
}

$poseparameter "pull_l_param" 0 1 loop 30
$poseparameter "pull_r_param" 0 1 loop 30
$poseparameter "hover_param" 0 1 loop 30

$animation "nullanim" "v_grav_gaunt_ex" {
	fps 30
	subtract "nullanim" 0
	weightlist "weights_null"
}

$animation "idle_l_layer" "v_gravity_gauntlets_anims\idle.smd" {
	fps 30
	weightlist "weights_pull_l"
}

$animation "pull_l_layer" "v_gravity_gauntlets_anims\pull_L.smd" {
	fps 30
	subtract "idle_l_layer" 0
	weightlist "weights_pull_l"
}

$animation "hover_layer" "v_gravity_gauntlets_anims\hover.smd" {
	fps 30
	subtract "idle_l_layer" 0
	weightlist "weights_pull_l"
}

$animation "idle_r_layer" "v_gravity_gauntlets_anims\idle.smd" {
	fps 30
	weightlist "weights_pull_r"
}

$animation "pull_r_layer" "v_gravity_gauntlets_anims\pull_R.smd" {
	fps 30
	subtract "idle_r_layer" 0
	weightlist "weights_pull_r"
}

$sequence "idle_to_pull_L" {
	"nullanim"
	"pull_l_layer"
	blend "pull_l_param" 0 1
	delta
	autoplay
	fadein 1.0
	fadeout 1.0
	fps 30
}

$sequence "idle_to_pull_R" {
	"nullanim"
	"pull_r_layer"
	blend "pull_r_param" 0 1
	delta
	autoplay
	fadein 1.0
	fadeout 1.0
	fps 30
}

$sequence "idle_to_hover" {
	"nullanim"
	"hover_layer"
	blend "hover_param" 0 1
	delta
	autoplay
	fadein 1.0
	fadeout 1.0
	fps 30
}

$sequence "swing_right" {
	"v_gravity_gauntlets_anims\swing.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30

	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "gravity_fingies follow_attachment swing_1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "gravity_fingies follow_attachment swing_2" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "gravity_fingies follow_attachment swing_3" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "gravity_fingies follow_attachment swing_4" }
}

$sequence "swing_crit" {
	"v_gravity_gauntlets_anims\swing.smd"
	activity "ACT_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "gravity_fingies follow_attachment swing_1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "gravity_fingies follow_attachment swing_2" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "gravity_fingies follow_attachment swing_3" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "gravity_fingies follow_attachment swing_4" }
}

$sequence "idle" {
	"v_gravity_gauntlets_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "draw" {
	"v_gravity_gauntlets_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Fist.Draw" }
	{ event 5004 12 "Weapon_Fist.HitHand" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}