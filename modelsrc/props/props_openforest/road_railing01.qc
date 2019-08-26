// Created by Crowbar 0.56

$modelname "props_openforest\road_railing01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "road_railing01.smd"
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