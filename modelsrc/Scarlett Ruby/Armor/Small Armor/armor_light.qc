// Created by Crowbar 0.71

$modelname "items\armor_small.mdl"

$bodygroup "body"
{
	studio "armor_light_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 15.062

$cdmaterials "\models\items\"

$cbox 0 0 0 0 0 0

$bbox -9.487 -9.502 -0.261 9.482 9.491 14.928

$definebone "Bone" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"armor_light_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$collisionmodel "ammopack_medium_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
