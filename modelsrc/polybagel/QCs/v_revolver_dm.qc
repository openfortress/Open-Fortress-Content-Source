// Created by Crowbar 0.58

$modelname "weapons/v_models/v_revolver_dm.mdl"

$bodygroup "revolver"
{
	studio "v_revolver_dm_models/c_revolver.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_revolver_dm_models/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_revolver"
$cdmaterials "\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 2.71 14.41 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -23.802 -16 -15.228 43.196 9.382 23.327

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

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
$bonemerge "weapon_bone"
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


$sequence "draw" {
	"v_revolver_dm_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Revolver.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_revolver_dm_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_revolver_dm_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "fire_crit" {
	"v_revolver_dm_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"v_revolver_dm_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 11 "Weapon_Revolver.Reload1" }
	{ event 5004 29 "Weapon_Revolver.Reload2" }
	{ event 5004 43 "Weapon_Revolver.Reload3" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$KeyValues
{
}
