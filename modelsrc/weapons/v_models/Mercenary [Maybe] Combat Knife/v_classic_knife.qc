// Created by Crowbar 0.68

$modelname "weapons/v_models/v_classic_knife.mdl"

$bodygroup "stabstabstab"
{
	studio "v_classic_knife.smd"
}
$bodygroup "illumpos"
{
	studio "illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\c_models\c_classic_knife\"

$texturegroup "skinfamilies"
{
	{ "c_classic_knife" "nodraw" }
}

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -23.188 -21.158 -35.323 37.648 16.079 12.372

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$definebone "root" "" 0 46.698849 -0.827193 0 0 -179.375999 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -8.652999 -22.135143 3.987299 -17.71276 33.309589 -11.083181 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000118 14.314007 -0.000007 -0.000574 0.00034 -28.029155 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" -0.000031 13.023432 -0.000004 -0.180075 -0.108234 0.017417 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 0.552692 1.347185 -1.605813 17.915646 -24.174297 -23.77649 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000019 2.023954 0.000023 -0.007677 -0.000059 10.704169 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000015 1.137083 -0.000021 -0.000285 -0.000001 -12.03916 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" 0.032703 4.593838 -1.353849 69.633888 142.34647 162.949066 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.000002 1.75502 -0.000025 -0.073454 0.000003 37.983314 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" 0.000008 1.227131 0.000035 -0.000169 -0.000053 5.310749 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.368076 4.211676 -0.173072 62.49994 145.281266 168.579696 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00001 2.372921 -0.000027 -0.063426 0.00029 41.370125 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000002 1.580273 0.000038 -0.000283 -0.000054 1.963297 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.937859 3.861097 0.961391 57.349157 147.851165 174.374484 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.00001 1.69109 0.000017 -0.056836 0.000174 28.15835 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000011 1.423668 0.000033 -0.00057 -0.000172 13.419933 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 1.546986 3.401964 1.919373 54.037171 144.031641 173.232968 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000021 1.438156 0.000034 -0.055807 -0.000168 24.344748 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000004 1.059544 0 -0.000114 0.000176 18.452229 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 8.652996 -22.135143 3.987303 17.790112 -33.341275 168.908666 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000046 -14.314026 0.000004 -0.052594 0.038215 -28.013283 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" -0.000023 -13.02343 0.00001 0.000118 -0.000058 -0.000112 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -0.552643 -1.347166 1.605794 17.915419 -24.174522 -23.77637 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000004 -2.023949 0.000015 -0.007563 0.000002 10.704109 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000006 -1.13711 -0.000004 0.000058 -0.000171 -12.03916 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" -0.032684 -4.593775 1.35388 69.635548 142.344694 162.947454 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000008 -1.755028 -0.00001 -0.072254 -0.000118 37.983317 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0 -1.22707 -0.000006 -0.000119 -0.000059 5.310749 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.368076 -4.211655 0.173077 62.500452 145.28076 168.579341 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000004 -2.372925 0 -0.063488 0.000117 41.370125 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000002 -1.580189 -0.000005 -0.000058 -0.000052 1.963247 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.937836 -3.861063 -0.96138 57.349342 147.850769 174.374238 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0 -1.691063 0.000002 -0.057355 -0.000001 28.158351 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000002 -1.423687 -0.000006 -0.000002 -0.000171 13.419875 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -1.546959 -3.401915 -1.919364 54.038736 144.03104 173.232517 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -1.438107 -0.00001 -0.054663 -0.000171 24.344741 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0 -1.059563 0 -0.000118 0.000173 18.452156 0 0 0 0 0 0
$definebone "Sleeve_Control" "bip_lowerArm_L" -0.000023 -13.02343 0.00001 0.000118 -0.000058 -0.000112 0 0 0 0 0 0
$definebone "Wrist_Control" "bip_lowerArm_L" -0.000011 -10.821735 0.00001 0.000118 -0.000172 -0.00011 0 0 0 0 0 0
$definebone "weapon_bone" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

$bonemerge "root"
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
$bonemerge "Sleeve_Control"
$bonemerge "Wrist_Control"
$bonemerge "weapon_bone"


$sequence "knife_draw" {
	"v_classic_knife_anims\knife_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Classic_Knife.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 35
}

$sequence "knife_idle" {
	"v_classic_knife_anims\knife_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "knife_idle2" {
	"v_classic_knife_anims\knife_idle2.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "knife_stab_a" {
	"v_classic_knife_anims\knife_stab_a.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "knife_stab_b" {
	"v_classic_knife_anims\knife_stab_b.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "knife_stab_c" {
	"v_classic_knife_anims\knife_stab_c.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "knife_backstab" {
	"v_classic_knife_anims\knife_backstab.smd"
	activity "ACT_VM_SWINGHARD" 1
	fadein 0.0
	fadeout 0.0
	node "raised"
	snap
	fps 30
}

$sequence "knife_backstab_up" {
	"v_classic_knife_anims\knife_backstab_up.smd"
	activity "ACT_BACKSTAB_VM_UP" 1
	fadein 0.0
	fadeout 0.0
	snap
	fps 30
}

$sequence "knife_backstab_down" {
	"v_classic_knife_anims\knife_backstab_down.smd"
	activity "ACT_BACKSTAB_VM_DOWN" 1
	fadein 0.0
	fadeout 0.0
	snap
	fps 30
}

$sequence "knife_backstab_idle" {
	"v_classic_knife_anims\knife_backstab_idle.smd"
	activity "ACT_BACKSTAB_VM_IDLE" 1
	fadein 0.0
	fadeout 0.0
	node "raised"
	fps 30
	loop
}
