$modelname "weapons\w_models\w_classic_tranq.mdl"

$upaxis Y

$model "tranq" "w_tranq.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_tranq"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 3.47 14.92 rotate -90 0 0

$sequence "idle" {
	"w_tranq.smd"
	fps 30
}

$collisionmodel "w_tranq_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
