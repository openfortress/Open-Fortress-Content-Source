$modelname "weapons/w_models/w_classic_knife.mdl"

$upaxis Y

$model knife "w_classic_knife.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\c_models\c_classic_knife\"
$cdmaterials ""

$sequence "idle" {
	"w_classic_knife.smd"
	fps 30
}

$collisionmodel "w_classic_knife_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
