$modelname "weapons\w_models\w_dynamite_bundle.mdl"

$model studio "w_dynamite_bundle.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_dynamite\"
$cdmaterials "models\props_facemovie\lighter\
$cdmaterials ""

$sequence "ref" {
	"w_dynamite_bundle.smd"
	fps 30
}

$collisionmodel "w_dynamite_bundle_phy.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}