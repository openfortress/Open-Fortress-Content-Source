// Created by Crowbar 0.51.0.0

$modelname "v_models/v_smg_dm.mdl"

$bodygroup "smg"
{
	studio "v_smg_dm_c_smg_reference.smd"
}
$bodygroup "illumpos"
{
	studio "v_smg_dm_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\weapons\v_smg\"
$cdmaterials "\"

$attachment "__illumPosition" "illumpos" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 3.25 26.09 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -0.73 3.21 4.59 rotate 0 154 180

$cbox 0 0 0 0 0 0

$bbox 3.135 -21.509 -39.2 55.245 9.859 -1.557

// $hboxset "default"
// $hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$bonemerge "root"
$bonemerge "bip_collar_L"
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
$bonemerge "bip_collar_R"
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

$jigglebone "flap_jiggle_1" {
is_rigid {
		tip_mass 100
		length 20
		angle_constraint 60 
        length 40
        yaw_constraint 0 0
	}
}

$sequence "smg_draw" {
	"v_smg_dm_anims\smg_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_smg.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "smg_idle" {
	"v_smg_dm_anims\smg_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "smg_fire" {
	"v_smg_dm_anims\smg_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "smg_reload" {
	"v_smg_dm_anims\smg_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 16 "Weapon_smg.ClipOut" }
	{ event 5004 41 "Weapon_smg.ClipIn" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$KeyValues
{
}
