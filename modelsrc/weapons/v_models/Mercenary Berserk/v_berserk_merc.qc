// Created by Crowbar 0.56

$modelname "weapons\v_models\v_berserk_merc.mdl"

$bodygroup "rip_and_tear"
{
	studio "v_berserk_merc_v_berserk_arms.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\items\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -4.695 -23.184 -19.085 67.236 20.431 0.418


$surfaceprop "default"

$hboxset "default"

$hbox 0 "bip_hand_L"	    -6.00   -6.50   -3.00     2.00    1.50    5.00
$hbox 0 "bip_hand_R"	    -2.00   -1.50   -5.00     6.00    6.50    3.00

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


$sectionframes 30 149

$sequence "swing_left" {
	"v_berserk_merc_anims\swing_left.smd"
	activity "ACT_VM_HITLEFT" 1
	fadein 0.2
	fadeout 0.2
	snap
	node "raised"
	fps 60
}

$sequence "swing_right" {
	"v_berserk_merc_anims\swing_right.smd"
	activity "ACT_VM_HITRIGHT" 1
	fadein 0.2
	fadeout 0.2
	snap
	node "raised"
	fps 60
}

$sequence "swing_crit" {
	"v_berserk_merc_anims\swing_crit.smd"
	activity "ACT_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 24
}

$sequence "idle" {
	"v_berserk_merc_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "draw" {
	"v_berserk_merc_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}
