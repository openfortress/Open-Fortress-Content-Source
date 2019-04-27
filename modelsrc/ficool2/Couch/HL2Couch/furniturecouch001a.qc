// Created by Crowbar 0.58

$modelname "props_office\hl2_couch.mdl"

$staticprop

$model "nastypinkdemon" "FurnitureCouch001a_reference.smd"


$surfaceprop "dirt"

$illumposition 0 0 0

$cdmaterials "models\props_office\"

$sequence "idle" {
	"FurnitureCouch001a_reference.smd"
	fps 30
}

$collisionmodel "furniturecouch001a_physics.smd"
{
	$mass 300
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
}

$keyvalues
{
	prop_data 
	{
		"base"		"metal.Medium"
		"allowstatic" "1"
	}
}
