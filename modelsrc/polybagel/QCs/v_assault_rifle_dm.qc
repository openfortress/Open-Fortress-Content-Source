// Created by Crowbar 0.58

$modelname "weapons\v_models\v_assault_rifle_dm.mdl"

$bodygroup "ar"
{
	studio "v_assault_rifle_dm_models/v_rifle_m16.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_assault_rifle_dm_models/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials ""
$cdmaterials "models\weapons\v_assault_rifle\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "v_weapon.flash" 0 0 0 rotate 0 0 0
$attachment "eject_brass" "v_weapon.shelleject" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -3.789 -19.591 -64.834 96.915 21.198 96.739

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "root" "" 0 3.788857 96.738922 0 0 89.999983 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 20.828754 -2.282578 2.656232 -1.157833 51.711967 -4.878966 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187881 -14.058323 -3.263424 -0.127655 -2.992899 4.24407 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000061 -12.375357 0.000025 -0.000115 0.000231 -0.710239 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058851 0.000009 -4.861775 15.935328 16.532581 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.336235 -1.140995 2.084041 68.278328 -116.102944 -105.013811 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.32919 -3.384613 -0.109604 -11.300108 -5.168652 19.311539 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.049378 -3.750048 0.189598 -0.230447 -0.545282 -3.685835 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000007 -1.789227 0.000008 0.000109 0.000403 -4.600849 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.436348 -1.295576 1.218382 75.179196 -147.647886 -128.311757 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.195704 -3.418941 0.041191 -3.618572 3.416661 -1.783964 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.176343 -3.37598 -0.151123 0.514056 -4.571342 3.222599 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000004 -1.822445 0.000031 5.772664 -4.147755 7.529522 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.533356 -1.348064 0.133366 77.044295 145.984708 166.295819 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.220471 -3.342058 -0.018639 1.440019 -10.115686 5.207326 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.089191 -3.40974 0.240448 0.000003 0.000516 -3.492183 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000008 -1.544369 0 0.000003 0.000114 3.561044 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.522034 -1.136635 -0.889515 72.798622 125.328495 143.386968 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.138081 -3.256813 -0.02523 0.821165 -9.183483 5.602094 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.036554 -2.573488 -0.049271 -1.508425 0.411151 -3.932323 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000003 -1.231834 0.000015 -1.312647 -1.678024 10.878179 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.707809 -0.242155 2.765997 -3.081939 -22.705344 -41.867168 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000015 -3.099535 -0.000024 2.09181 -4.320385 4.233412 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000015 -1.649405 0.000015 -0.00023 -0.000744 -8.16986 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -20.754253 -3.026413 1.461231 0.569978 -53.448539 171.73041 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187721 14.058418 3.263432 0.56677 -4.798065 6.568618 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000145 12.375385 0.000097 -7.152864 -0.061309 0.882356 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000046 1.058849 -0.00001 8.198281 19.692614 4.242926 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013535 1.023678 0.572166 9.774487 -21.897763 -161.571118 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.113708 1.11088 -1.640678 69.84113 -125.117865 -98.474929 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" -0.827822 3.394114 -0.160507 -15.328801 14.851579 0.469758 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.170524 3.688328 -0.068146 -8.453767 -2.755128 -5.682263 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000019 1.789265 -0.000015 -2.616303 3.069273 5.686707 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.135529 1.298031 -0.777336 79.205381 155.926772 -177.875886 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.263574 3.364319 -0.083008 -6.925454 3.233429 -0.954096 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.045217 3.30867 -0.103409 -0.026356 1.898896 -8.134975 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000001 1.822388 0.000008 -0.000286 0.000401 14.699571 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.242172 1.375351 0.303226 69.704649 115.355708 139.086558 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" 0.053251 3.483355 -0.096275 -1.720935 -5.00032 4.364794 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.120401 2.795164 -0.174644 0.002408 0.000457 -11.550199 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.000002 1.544373 0.000053 -0.000055 0.000342 9.368199 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.280197 1.19149 1.32846 61.400198 105.198534 132.017299 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000007 3.297586 0.000031 0.426684 -7.40021 -14.959358 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000006 1.951797 0.000015 0.000634 0.000172 -0.697239 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.231853 -0.000053 0.000003 0.000405 22.625065 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.788399 0.477585 -2.750211 -6.753738 -25.516508 -23.528854 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000015 3.099577 0.000039 0.933751 -0.959588 1.669373 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000015 1.649397 -0.00002 0.68102 -0.957582 -14.836622 0 0 0 0 0 0
$definebone "v_weapon.flash" "weapon_bone" 0.027664 9.545237 57.493607 -89.999928 -89.999983 0 0 0 0 0 0 0
$definebone "v_weapon.shelleject" "weapon_bone" -1.258392 9.276754 8.060207 -0.000004 159.999956 0 0 0 0 0 0 0
$definebone "v_weapon.M4A1_Trigger" "weapon_bone" 0.000008 5.506802 2.562973 0.000003 -0.000002 -90.000031 0 0 0 0 0 0
$definebone "v_weapon.M4A1_Clip" "weapon_bone" 0.000008 -0.29224 7.188747 0.000003 -0.000002 -90.000092 0 0 0 0 0 0

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
	{ event 5004 9 "Weapon_AR.ClipOut" }
	{ event 5004 40 "Weapon_AR.ClipIn" }
	{ event 5004 59 "Weapon_AR.BoltForward" }
	{ event 5004 58 "Weapon_AR.BoltBack" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
