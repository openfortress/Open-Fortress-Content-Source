$modelname "weapons\v_models\v_assault_rifle_dm.mdl"

$model "ar" "v_assault_rifle_dm_v_rifle_m16.smd"

$bodygroup "illumpos"
{
	studio "v_assault_rifle_dm_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials ""
$cdmaterials "models\weapons\w_assault_rifle\"

$attachment "muzzle" "v_weapon.flash" -16 0 -1 rotate 0 0 0
$attachment "eject_brass" "v_weapon.shelleject" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -0.087 -41.319 -51.256 84.537 16.079 0.021

$hboxset "default"
$hbox 0 "weapon_bone"	    -2.50    2.00   -7.50     2.50   12.00   27.50

$definebone "root" "" 0 3.788857 96.738922 0 0 89.999982 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 20.828754 -2.282578 2.656232 -1.15812 51.711673 -4.878965 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187775 -14.058338 -3.263421 -0.127426 -2.99262 4.244129 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000084 -12.375362 0.000035 -0.000286 0.000003 -0.710296 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000031 -1.058844 0.00001 -4.861321 15.935907 16.532753 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.336227 -1.140995 2.084045 68.27828 -116.10323 -105.014097 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.32919 -3.384628 -0.10965 -11.300493 -5.168756 19.312064 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.049376 -3.750053 0.18959 -0.230426 -0.545217 -3.685883 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000007 -1.78923 0.000023 0.000305 0.000353 -4.601016 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.436356 -1.295584 1.218386 75.179612 -147.646287 -128.309598 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.195702 -3.418932 0.041176 -3.618286 3.416653 -1.784236 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.176344 -3.375984 -0.151131 0.513946 -4.57135 3.222729 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000003 -1.822437 0.000038 5.772609 -4.14776 7.529602 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.533348 -1.348064 0.133367 77.044179 145.984679 166.295613 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.220469 -3.342064 -0.018654 1.439716 -10.115695 5.207574 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.089193 -3.409754 0.24044 0.000272 0.000388 -3.492381 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000007 -1.544369 -0.000023 -0.000072 0.000159 3.561132 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.522041 -1.136671 -0.889515 72.799428 125.326977 143.386093 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.138076 -3.256805 -0.025192 0.820984 -9.183439 5.6021 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.036549 -2.5735 -0.049278 -1.507746 0.411148 -3.932898 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000003 -1.231819 0.000023 -1.312768 -1.678143 10.878351 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.707855 -0.242151 2.765993 -3.082684 -22.705668 -41.867161 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000008 -3.099546 -0.000031 2.092032 -4.32003 4.233455 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0 -1.649418 0.00001 -0.00001 -0.000495 -8.1701 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -20.754253 -3.026413 1.461232 0.570379 -53.448993 171.730408 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187836 14.058422 3.263424 0.566713 -4.798145 6.568561 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000061 12.375381 0.000101 -7.152519 -0.06161 0.882357 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000076 1.058823 -0.00001 8.19793 19.692846 4.242984 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013573 1.023643 0.57214 9.775056 -21.897715 -161.571116 0 0 0 0 0 0
$definebone "v_weapon.flash" "weapon_bone" 0.028008 9.545292 57.493587 -89.999442 -89.740373 0 0 0 0 0 0 0
$definebone "v_weapon.shelleject" "weapon_bone" -1.258377 9.276733 8.06021 -0.000058 160.000924 0.00002 0 0 0 0 0 0
$definebone "v_weapon.M4A1_Clip" "weapon_bone" 0.000061 -0.292257 7.188745 0.000119 0.000418 -90.000501 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.113724 1.11088 -1.640679 69.841013 -125.119394 -98.476069 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" -0.827819 3.394104 -0.16053 -15.32892 14.851512 0.469636 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.170528 3.688341 -0.068176 -8.453761 -2.755143 -5.682265 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.00001 1.789253 -0.000031 -2.616463 3.069315 5.686433 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.135544 1.298027 -0.777336 79.205032 155.927154 -177.875201 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.263577 3.364332 -0.082993 -6.92522 3.233433 -0.953874 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.045218 3.308662 -0.103409 -0.026291 1.898844 -8.13488 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000003 1.822384 -0.000023 -0.000737 0.000348 14.699043 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.242226 1.375357 0.303225 69.704355 115.356267 139.087595 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" 0.053252 3.483347 -0.096275 -1.720701 -5.000308 4.365022 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.120393 2.795162 -0.17466 0.001781 0.000414 -11.550881 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.00001 1.544365 0.000046 0.000633 0.000582 9.369013 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.280228 1.191488 1.328459 61.400074 105.198977 132.018281 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" 0.000003 3.297585 0.000023 0.426688 -7.400197 -14.959427 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000006 1.95179 0 0.000694 0.00013 -0.697192 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000013 1.23185 -0.000053 -0.000169 0.000524 22.624713 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.788391 0.477564 -2.75022 -6.753284 -25.517042 -23.529086 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000008 3.099562 0.000051 0.933751 -0.959599 1.669512 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000046 1.649387 -0.000021 0.680443 -0.957085 -14.836663 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0
$definebone "v_weapon.epic" "weapon_bone" 1.637306 7.99118 10.74374 -86.853184 0.002597 -0.003002 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
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
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_R"
$bonemerge "weapon_bone"
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
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"


$sequence "draw" {
	"v_assault_rifle_dm_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_smg.Draw" }
	{ event 5004 16 "Weapon_AR.BoltForward" }
	{ event 5004 9 "Weapon_AR.BoltBack" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_assault_rifle_dm_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_assault_rifle_dm_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"v_assault_rifle_dm_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 12 "Weapon_AR.ClipOut" }
	{ event 5004 28 "Weapon_AR.ClipIn" }
	{ event 5004 55 "Weapon_AR.BoltForward" }
	{ event 5004 47 "Weapon_AR.BoltBack" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
