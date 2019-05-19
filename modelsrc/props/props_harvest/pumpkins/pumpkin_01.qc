// Created by Crowbar 0.56

$modelname "props_halloween/pumpkin_01_physics.mdl"

$staticprop

$bodygroup "body"
{
	studio "pumpkin_01.smd"
}


$surfaceprop "dirt"

$contents "solid"

$illumposition 0.557 -0.783 14.655

$cdmaterials "models\props_halloween"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -17.087 -17.377 0 18.18 17.894 29.31


$sequence "ref" {
	"pumpkin_01_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pumpkin_01_physics.smd"
{
	$mass 460.9647
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}

$KeyValues
{
	prop_data 
	{
		"allowstatic" "1"
	}
}
