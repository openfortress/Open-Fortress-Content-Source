$modelname "weapons\w_models\w_bottle_broken.mdl"

$bodygroup "Body"
{
	studio "w_bottle_broken_reference.smd"
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_bottle"
$cdmaterials "\models\weapons\w_bottle\"
$cdmaterials ""

$sequence "ref" {
	"w_bottle_broken_reference.smd"
	fps 30
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