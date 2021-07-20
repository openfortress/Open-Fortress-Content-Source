// Created by Crowbar 0.68

$modelname "weapons\v_models\v_assault_rifle_dm.mdl"

$bodygroup "ar"
{
	studio "v_assault_rifle_dm_v_rifle_m16.smd"
}
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
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5

$definebone "root" "" 0 3.788857 96.738922 0 0 89.999982 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 20.828754 -2.282578 2.656232 -1.15812 51.711673 -4.878965 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.18779 -14.058338 -3.263421 -0.127426 -2.992617 4.244128 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000092 -12.37536 0.000035 -0.000286 0.000002 -0.710296 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000031 -1.058851 0.00001 -4.861318 15.935907 16.532753 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.336227 -1.140991 2.084046 68.27828 -116.10323 -105.014097 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.329191 -3.384632 -0.109627 -11.300501 -5.168763 19.312071 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.049377 -3.750057 0.18959 -0.230438 -0.545223 -3.685883 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000009 -1.789232 0.000015 0.000293 0.000347 -4.601013 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.436371 -1.295582 1.218386 75.179612 -147.646314 -128.309598 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.1957 -3.418917 0.041183 -3.618287 3.41666 -1.784246 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.176345 -3.375984 -0.151131 0.513942 -4.571345 3.222719 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000003 -1.822441 0.000031 5.772606 -4.147756 7.529583 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.533356 -1.348063 0.133368 77.044179 145.984652 166.29564 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.220472 -3.342068 -0.018654 1.439723 -10.115685 5.20756 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.08919 -3.409744 0.240448 0.00028 0.000397 -3.492402 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000006 -1.544369 -0.000008 -0.000062 0.000168 3.561109 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.522034 -1.136658 -0.889513 72.799428 125.32695 143.386093 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.138077 -3.256802 -0.025192 0.820988 -9.183429 5.602103 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.03655 -2.573507 -0.049278 -1.507744 0.411151 -3.932892 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000004 -1.231831 0.000015 -1.312764 -1.678138 10.878353 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.707832 -0.242149 2.765992 -3.082685 -22.70568 -41.867168 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0 -3.09955 -0.000032 2.092038 -4.320038 4.233461 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0 -1.649416 0.000012 -0.000003 -0.000507 -8.170099 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -20.754253 -3.026413 1.461232 0.570379 -53.448993 171.730408 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187836 14.058409 3.263424 0.566713 -4.798128 6.56856 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000061 12.375389 0.000101 -7.152519 -0.061598 0.882356 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000076 1.058823 -0.00001 8.197934 19.692846 4.242982 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013557 1.023651 0.57214 9.775062 -21.897701 -161.571116 0 0 0 0 0 0
$definebone "v_weapon.flash" "weapon_bone" 0.028008 9.545305 57.493614 -89.999456 -89.74038 0 0 0 0 0 0 0
$definebone "v_weapon.shelleject" "weapon_bone" -1.258385 9.276741 8.060219 -0.000055 160.000924 0 0 0 0 0 0 0
$definebone "v_weapon.M4A1_Clip" "weapon_bone" 0.000061 -0.292255 7.188747 0.000112 0.000401 -90.000494 0 0 0 0 0 0
$definebone "v_weapon.epic" "weapon_bone" 4.773209 8.465639 10.900309 -0.000172 -86.853184 89.999927 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.113686 1.110878 -1.640679 69.841013 -125.119408 -98.476069 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" -0.827822 3.394108 -0.160522 -15.328915 14.851521 0.469658 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.170527 3.688337 -0.068161 -8.453764 -2.755127 -5.682251 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000013 1.789253 -0.000031 -2.616472 3.069331 5.686438 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.135521 1.298027 -0.777337 79.205032 155.927181 -177.875201 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.263579 3.364334 -0.082993 -6.925224 3.233429 -0.953862 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.045218 3.308664 -0.103409 -0.026296 1.898838 -8.134856 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000003 1.822388 -0.000015 -0.000742 0.000342 14.699061 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.24221 1.375353 0.303225 69.704369 115.356267 139.087595 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" 0.053251 3.483347 -0.096275 -1.720709 -5.00032 4.365027 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.120395 2.795164 -0.17466 0.001775 0.0004 -11.550876 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.000008 1.544373 0.000053 0.000629 0.000569 9.369014 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.280212 1.191484 1.328459 61.400095 105.198983 132.018281 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" 0 3.297583 0.000023 0.426679 -7.400213 -14.95941 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000004 1.951794 0 0.000686 0.000111 -0.697178 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000013 1.23185 -0.000061 -0.000175 0.000512 22.624725 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.788376 0.477566 -2.750221 -6.753283 -25.51702 -23.529085 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000008 3.099564 0.000048 0.933746 -0.959587 1.669487 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000046 1.649387 -0.000021 0.680441 -0.957068 -14.836685 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

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
	{ event 5004 30 "Weapon_AR.ClipIn" }
	{ event 5004 55 "Weapon_AR.BoltForward" }
	{ event 5004 47 "Weapon_AR.BoltBack" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
