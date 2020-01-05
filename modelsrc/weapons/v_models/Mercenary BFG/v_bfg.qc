// Created by Crowbar 0.56

$modelname "weapons\v_models\v_bfg.mdl"

$bodygroup "v_bfg"
{
	studio "v_bfg.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -9.192 -17.033 -14.813

$mostlyopaque

$cdmaterials "models\weapons\v_bfg\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "muzzle" 0 0 0 rotate -90 0 0
$attachment "pilotlight" "weapon_bone" 4.38 -3.2 68.11 rotate -28.35 118.88 -132.36

$cbox 0 0 0 0 0 0

$bbox -25.178 -22.246 -33.891 73.584 16.079 0.021

$surfaceprop "default"
$jointsurfaceprop "weapon_ik"	 "default"

$hboxset "default"

$hbox 0 "weapon_bone"	    -5.00   -5.00   -5.00     5.00   10.00   15.00
$hbox 0 "weapon_bone"	   -10.00    0.00   10.50    10.00   10.00   25.50
$hbox 0 "weapon_bone_1"	    -8.00   -1.00  -18.00     8.00   11.00   -2.00

$bonemerge "root"
$bonemerge "weapon_ik"
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
$bonemerge "muzzle"
$bonemerge "bip_collar_L"
$bonemerge "bip_collar_R"


$sequence "idle" {
	"v_bfg_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "draw" {
	"v_bfg_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "Weapon_MLG.Draw" }
	{ event 5004 15 "Building_Dispenser.Build1b" }
	{ event 5004 34 "Building_Sentrygun.BuildSteam3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$sequence "fire" {
	"v_bfg_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "chargeup" {
	"v_bfg_anims\chargeup.smd"
	activity "ACT_VM_CHARGEUP" 1
	{ event 5004 1 "Weapon_MLG.Charge" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}