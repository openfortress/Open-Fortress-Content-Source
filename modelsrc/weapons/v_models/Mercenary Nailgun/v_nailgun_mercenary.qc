// Created by Crowbar 0.68

$modelname "weapons/v_models/v_nailgun_mercenary.mdl"

$model "nailgun" "v_nailgun_mercenary_nailgun.smd"
$bodygroup "illumpos"
{
	blank
	studio "illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\w_nailgun\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0.00 4.8 8 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -60.106 -18.673 -28.346 32.787 13.563 -1.857

$hboxset "default"
$hbox 0 "weapon_bone" -4 -7 -4 4 7 9

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
$bonemerge "forearm_twist_01_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_R"
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
$bonemerge "arm_attach_R"
$bonemerge "bip_twist_R"
$bonemerge "weapon_bone"


$sequence "draw" {
	"v_nailgun_mercenary_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Nailgun.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "idle" {
	"v_nailgun_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
	loop
}

$sequence "fire" {
	"v_nailgun_mercenary_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "reload" {
	"v_nailgun_mercenary_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 25 "Weapon_Nailgun.ClipOut" }
	{ event 5004 64 "Weapon_Nailgun.ClipIn" }
	fadein 0.2
	fadeout 0.2
	fps 60
}
$sequence "ref" {
	"v_nailgun_mercenary_nailgun.smd"
	fps 30
}