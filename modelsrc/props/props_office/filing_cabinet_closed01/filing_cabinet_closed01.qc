// Created by Crowbar 0.56

$modelname "props_office\filing_cabinet_closed01.mdl"

$staticprop

$bodygroup "filing_cabinet_closed"
{
	studio "filing_cabinet_closed01.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -7.637 11.132 65.096

$cdmaterials "models\props_office\filing_cabinets\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "filing_cabinets"   }
	{ "filing_cabinets_b" }
}

$cbox 0 0 0 0 0 0

$bbox -67.206 -34.73 0 44.942 19.456 130.191


$sequence "idle" {
	"filing_cabinet_closed01_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "filing_cabinet_closed01_physics.smd"
{
	$mass 12414.47
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 22

}
