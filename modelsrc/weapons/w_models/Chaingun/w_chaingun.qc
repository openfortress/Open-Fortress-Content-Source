// Created by Crowbar 0.74

$modelname "weapons/w_models/w_minigun_dm.mdl"

$upaxis Y

$bodygroup "chaingun"
{
	studio "w_chaingun.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 24.229 -1.742 9.069

$cdmaterials "models\weapons\w_minigun\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone" 0.00 -7 50 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -3 -3.5 13.5 rotate 0 154.21 180

$cbox 0 0 0 0 0 0

$bbox -33.004 -16.226 -58.109 7.219 9.911 7.024

$sequence "ref" {
	"w_chaingun.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "spin" {
	"w_chaingun_anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_chaingun_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "weapon_bone"
}
