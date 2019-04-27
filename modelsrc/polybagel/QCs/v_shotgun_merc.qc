// Created by Crowbar 0.58

$modelname "weapons\v_models\v_shotgun_merc.mdl"

$bodygroup "shotgun"
{
	studio "v_shotgun_merc_models/c_shotgun.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_shotgun_merc_models/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_shotgun"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 3.73 34.92 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0.8 3.25 9.76 rotate -12 18 -18

$cbox 0 0 0 0 0 0

$bbox -137.341 -200.742 -43.769 57.938 17.577 86.467

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

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
$bonemerge "weapon_bone"


$sequence "draw" {
	"v_shotgun_merc_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	{ event 5004 9 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 15 "Weapon_ShotgunEngineer.Cock_Forward" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_shotgun_merc_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 20
	loop
}

$sequence "fire" {
	"v_shotgun_merc_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5004 6 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 13 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 15 "2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "fire_crit" {
	"v_shotgun_merc_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	{ event 5004 6 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 13 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 15 "2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload_start" {
	"v_shotgun_merc_anims\reload_start.smd"
	activity "ACT_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload_loop" {
	"v_shotgun_merc_anims\reload_loop.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 8 "Weapon_Shotgun.Reload" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_end" {
	"v_shotgun_merc_anims\reload_end.smd"
	activity "ACT_RELOAD_FINISH" 1
	{ event 5004 6 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 13 "Weapon_ShotgunEngineer.Cock_Forward" }
	fadeout 0.2
	snap
	fps 30
}
