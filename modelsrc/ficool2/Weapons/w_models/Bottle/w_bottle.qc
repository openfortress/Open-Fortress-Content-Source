$modelname "weapons\w_models\w_bottle.mdl"

$bodygroup "brokenBottle"
{
	studio "w_bottle_reference.smd"
	studio "w_bottle_broken_reference.smd"
}

$lod 18
{
	replacemodel "w_bottle_reference.smd" "w_bottle_reference_lod1.smd"
	replacemodel "w_bottle_broken_reference.smd" "w_bottle_broken_reference_lod1.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_bottle"
$cdmaterials "\models\weapons\w_bottle\"
$cdmaterials ""


$sequence "ref" {
	"w_bottle_reference.smd"
	fps 30
	loop
}

$sequence "spin" {
	"spin.smd"
	fps 30
}


$collisionmodel "w_bottle_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
