// Created by Crowbar 0.71

$modelname "weapons\w_models\w_pistol.mdl"

$bodygroup "studio"
{
	studio "w_pistol.smd"
}
$bodygroup "magazine"
{
	studio "w_pistol_mag.smd"
	blank
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 6.19 3.46 rotate 0 44.89 180
$attachment "mag_eject" "weapon_bone" 0 -2.5 -1.5 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -4.02 -1.389 -3.506 8.674 1.24 7.248

$definebone "weapon_bone" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_pistol_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pistol_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
