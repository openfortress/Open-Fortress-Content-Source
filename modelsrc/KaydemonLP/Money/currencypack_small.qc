// Created by Crowbar 0.56

$modelname "props_greenback\moneybundle_small.mdl"

$bodygroup "body"
{
	studio "currencypack_small_model.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.015 -0.014 9.128

$cdmaterials "models\items"
$cdmaterials "\models\items\"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -38.952 -38.952 -0.25 38.952 38.952 27.429


$sequence "idle" {
	"currencypack_small_model.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$collisionmodel "currencypack_small_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
