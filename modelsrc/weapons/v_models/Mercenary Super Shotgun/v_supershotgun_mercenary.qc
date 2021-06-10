// Created by Crowbar 0.56

$modelname "weapons/v_models/v_supershotgun_mercenary.mdl"

$model "supershotgun" "v_supershotgun_mercenary_c_double_barrel.smd"

$bodygroup "illumpos"
{
	blank
	studio "v_supershotgun_mercenary_c_double_barrel_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_supershotgun_mercenary\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 5 31 rotate -90 0 0
$attachment "shell_eject" "illumpos" 15 -6 -20 rotate 0 0 90

$cbox 0 0 0 0 0 0

$bbox -13.974 -27.197 -36.052 45.531 16.718 7.932

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10 ""

$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.34641 27.875139 -9.114097 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187969 -14.058315 -3.263449 -0.802313 -4.237889 -10.928197 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000019 -12.375349 -0.000008 0.000006 -0.000176 -0.710359 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058857 0 0.000006 0.000058 -0.000006 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499916 2.575139 -6.260583 -25.558338 -31.004066 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.00001 -3.099546 -0.000019 0.000126 -0.000226 11.827287 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000002 -1.649406 0.00001 -0.000045 0.000054 -8.169796 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008194 -1.168276 1.64041 61.198987 -118.79923 -115.979468 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000011 -3.307284 0.00001 -15.200291 22.794377 12.10975 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000002 -2.892881 0 0.00005 0.000003 39.534716 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000003 -1.789219 0.000006 0.000001 0.000239 8.963181 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.322849 0.774753 75.179777 -147.649826 -144.613343 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.00001 -3.408817 -0.000002 -6.141885 11.826599 13.018695 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000003 -2.799513 0.000002 0.000053 0.000006 39.115712 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000006 -1.822456 0.000003 -0.000059 0.000178 14.699371 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205318 -1.375322 -0.310266 77.044077 145.982932 149.994357 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000006 -3.388144 0.000011 0.77859 -0.720826 16.126065 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000007 -2.085272 0.000002 0.000001 0.000127 35.56665 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000001 -1.544369 0.000008 0.000008 0.000012 12.350812 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193977 -1.163868 -1.333147 69.133065 115.573072 124.448274 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297543 -0.000013 1.356076 -7.079798 14.347422 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000001 -1.951847 -0.000002 0.000005 0.000011 28.584572 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000001 -1.231827 -0.000003 0.000008 0.000007 22.624792 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346697 -27.875027 170.885925 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187885 14.058403 3.263455 -0.802425 -4.237656 -10.928312 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000011 12.375385 0.00003 0.000289 -0.00006 -0.710243 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000053 1.058844 -0.000009 0.000003 -0.000002 -0.000069 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.290573 27.44418 8.947867 9.77449 -21.894095 -161.573467 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193989 1.163811 1.333128 69.132764 115.574247 124.449436 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000009 3.297592 0.000031 1.356352 -7.079568 14.347487 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.00001 1.951794 0.000004 -0.000697 0.000076 28.584572 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.231873 -0.000044 -0.000055 0.000019 22.624802 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809738 0.499895 -2.575146 -6.260487 -25.558397 -31.004025 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000011 3.099566 0.000017 0.000512 0.000336 11.827265 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000011 1.649412 -0.000013 -0.001147 -0.000352 -8.169807 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008163 1.168303 -1.640395 61.198933 -118.799161 -115.979468 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000029 3.30727 -0.000006 -15.200518 22.794358 12.109809 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000023 2.892818 0.000031 0.000172 0.000316 39.534307 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000025 1.789268 -0.000031 0.000075 -0.000093 8.963529 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108292 1.322803 -0.774755 75.179777 -147.649812 -144.613233 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000004 3.40881 0.000011 -6.141941 11.826608 13.018745 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000014 2.799557 -0.000002 -0.000003 -0.000215 39.115643 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.00001 1.822384 -0.000002 0.000288 0.000235 14.699455 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205296 1.375257 0.310245 77.044418 145.981785 149.993291 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000017 3.38825 -0.000015 0.777725 -0.721279 16.126125 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000002 2.085251 -0.000006 0.0016 0.000247 35.566271 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000011 1.544357 0.000023 -0.000111 0.000016 12.35076 0 0 0 0 0 0
$definebone "illumpos" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" -0.000151 3.308241 8.917302 -0.000001 0.002579 0.002918 0 0 0 0 0 0
$definebone "weapon_bone_3" "weapon_bone_1" 1.619125 2.353828 -0.006927 -0.000001 0 0.00011 0 0 0 0 0 0
$definebone "weapon_bone_4" "weapon_bone_1" -1.619094 2.353827 -0.006928 -0.000001 0 0.00011 0 0 0 0 0 0
$definebone "weapon_bone_2" "weapon_bone" -0.000323 7.080789 4.185593 -0.000001 0.002636 -13.79018 0 0 0 0 0 0

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
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"
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

$sequence "db_draw" {
	"anims\db_draw_2.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Scatter_Gun.Draw" }
	{ event 5004 18 "Weapon_SuperShotGun.TubeClose" }
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "db_idle" {
	"anims\db_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$sequence "db_fire" {
	"anims\db_fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadeout 0.2
	snap
	fps 60
}

$sequence "db_reload" {
	"anims\db_reload_fast.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 19 "Weapon_SuperShotGun.TubeOpen" }
	{ event 6002 40 "4" }
	{ event 6002 40 "4" }
	{ event 5004 55 "Weapon_SuperShotGun.ShellsIn" }
	{ event 5004 84 "Weapon_SuperShotGun.TubeClose" }
	fadein 0.1
	fadeout 0.2
	node "raised"
	fps 60
}
