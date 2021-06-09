// Created by Crowbar 0.56

$modelname "weapons/w_models/w_gravity_gauntlets.mdl"

$bodygroup "grav_gaunt"
{
	studio "w_grav_gaunt_ex.smd"
}


$surfaceprop "metal"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "pull_attach" "bip_hand_L" 0 0 0 rotate 0 0 0

$attachment "swing_attach"  "bip_hand_R" 		0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_1" 		"bip_hand_L" 		0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_2" 		"bip_hand_L" 	 	0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_3" 		"bip_hand_L" 		0.00 0.00 0.00 rotate 0 0 0
$attachment "swing_4" 		"bip_hand_L" 		0.00 0.00 0.00 rotate 0 0 0

$attachment "hover_attach" "bip_hand_L" 0 0 0 rotate 0 0 0

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\player\engineer\"
$cdmaterials "models\buildables\teleporter\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "engineer_mech_hand"      "teleporter"      	}
	{ "engineer_mech_hand_blue" "teleporter_blue" 	}
	{ "engineer_mech_hand" 		"teleporter_custom" }
}

$cbox 0 0 0 0 0 0

$bbox -4.922 -1.783 -8.768 8.047 1.768 28.304

$bonemerge "bip_lowerArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_wrist_L"

$sequence "ref" {
	"w_grav_gaunt_ex.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_grav_gaunt_ex_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
}
