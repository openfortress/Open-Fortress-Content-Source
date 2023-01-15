// Created by Crowbar 0.56

$modelname "weapons/v_models/v_saw_ballista.mdl"

$model "saw_ballista" "v_saw_ballista.smd"
$model "saw_ballista_drum" "v_saw_ballista_drum.smd"
$bodygroup "saw" {
		studio "v_ripper_blade.smd"
		studio "v_ripper_blade_folded.smd"
		blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "weapon_bone"

$cdmaterials "models\weapons\v_saw_ballista\"

//$attachment "exhaust" "exhaust_end" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

//$bbox -7.344 -23.517 -45.003 57.009 16.079 12.794

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10 ""

$bonemerge "root"
$bonemerge "weapon_bone"
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
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
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
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"

$sequence "ref" {
	"v_saw_ballista.smd"
	fadeout 0.2
	node "raised"
	fps 30
}

$animation "a_saw_spinning" "anims/saw_spinning.smd" {
	subtract "ref" 0
}

$sequence "saw_spinning" "a_saw_spinning" {
	delta
	realtime
	hidden
	fps 60
}

$sequence "saw_draw" {
	"anims\saw_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Minigun.Draw" }
	fadeout 0.5
	addlayer "saw_spinning"
	blendlayer "saw_idle"  60 100 120 120
	node "raised"
	snap
	fps 60
}

$sequence "saw_idle" {
	"anims\saw_idle.smd"
	activity "ACT_VM_IDLE" 1
	addlayer "saw_spinning"
	fadein 0.2
	fadeout 0.2
	fps 60
	loop
}

$sequence "saw_fire" {
	"anims\saw_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_CL_BODYGROUP_SET_VALUE 3 "saw 3" }
	{ event 5004 55 "Weapon_SawBallista.Cock_Back" }
	{ event 5004 77 "Weapon_SawBallista.Cock_Forward" }
	{ event AE_CL_BODYGROUP_SET_VALUE 40 "saw 1" }
	{ event AE_CL_BODYGROUP_SET_VALUE 80 "saw 0" }
	addlayer "saw_spinning"
	blendlayer "saw_idle"  120 140 160 160
	snap
	fadeout 0.5
	fps 60
}
//$sequence "saw_reload" {
//	"anims\saw_reload.smd"
//	activity "ACT_VM_RELOAD" 1
//	snap
//	fadeout 0.2
//	{ event 5004 33 "Weapon_SawBallista.Cock_Back" }
//	{ event 5004 55 "Weapon_SawBallista.Cock_Forward" }
//	{ event AE_CL_BODYGROUP_SET_VALUE 0 "saw 5" }
//	{ event AE_CL_BODYGROUP_SET_VALUE 18 "saw 1" }
//	{ event AE_CL_BODYGROUP_SET_VALUE 58 "saw 3" }
//	{ event AE_CL_BODYGROUP_SET_VALUE 59 "saw 4" }
//	{ event AE_CL_BODYGROUP_SET_VALUE 63 "saw 0" }
//	node "raised"
//	fps 60
//}