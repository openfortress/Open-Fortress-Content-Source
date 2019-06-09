// Created by Crowbar 0.56

$modelname "props_gameplay/windowed_door_small.mdl"

$staticprop

$bodygroup "body"
{
	studio "windowed_door_small.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 64

$cdmaterials "models\props_gameplay"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -1.489 -96 0 1.489 96 128

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"windowed_door_small_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "windowed_door_small_physics.smd"
{
	$mass 93.7133
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
