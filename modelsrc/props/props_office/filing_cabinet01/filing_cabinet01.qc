// Created by Crowbar 0.56

$modelname "props_office\filing_cabinet01.mdl"

$staticprop

$bodygroup "filing_cabinet"
{
	studio "filing_cabinet01.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -6.526 22.057 56.908

$cdmaterials "models\props_office\filing_cabinets\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "filing_cabinets"   }
	{ "filing_cabinets_b" }
}

$cbox 0 0 0 0 0 0

$bbox -88.83 -33.806 -0.725 44.717 20.754 114.541


$sequence "idle" {
	"filing_cabinet01_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "filing_cabinet01_physics.smd"
{
	$mass 12414.47
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 22

}
