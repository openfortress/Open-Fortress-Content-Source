$modelname "weapons\w_models\w_machete.mdl"

$upaxis Y

$model "machete" "w_machete_reference.smd"

$lod 15
{
	replacemodel "w_machete_reference.smd" "w_machete_reference_lod1.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_machete"
$cdmaterials "\models\weapons\w_machete\"
$cdmaterials ""

$sequence "ref" {
	"w_machete_reference.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_machete_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
