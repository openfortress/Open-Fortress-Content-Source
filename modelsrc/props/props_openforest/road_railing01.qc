// Created by Crowbar 0.56

$modelname "props_hydro\road_railing01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "road_railing01_reference.smd"
}

$lod 45
{
	replacemodel "road_railing01_reference.smd" "road_railing01_reference_lod1.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 30.712 -74.145 -62.816

$maxeyedeflection 90

$cdmaterials "models\props_hydro\"

$cbox 0 0 0 0 0 0

$bbox -103.868 -467.079 -210.121 254.823 519.083 84.727


$sequence "idle" {
	"road_railing01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "road_railing01_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 18

}
