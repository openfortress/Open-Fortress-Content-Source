$modelname "weapons\w_models\w_classic_tranq_proj.mdl"

$upaxis Y

$model "tranq_proj" "w_tranq_proj.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_tranq"
$cdmaterials ""

$sequence "idle" {
	"w_tranq_proj.smd"
	fps 30
}

$collisionmodel "w_tranq_proj_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}