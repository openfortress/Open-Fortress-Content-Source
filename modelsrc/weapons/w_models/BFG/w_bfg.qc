// Created by Crowbar 0.56

$modelname "weapons\w_models\w_bfg.mdl"

$bodygroup "w_bfg"
{
	studio "w_bfg.smd"
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

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10 ""

$bonemerge "weapon_ik"
$bonemerge "weapon_bone"
$bonemerge "muzzle"


$sequence "idle" {
	"w_bfg.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
$sequence "spin" {
	"w_bfg.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "w_bfg_physics.smd"
{
	$mass 1
	$concave
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}