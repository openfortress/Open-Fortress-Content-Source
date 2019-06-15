$modelname "weapons\w_models\w_nailgun.mdl"

$upaxis Y

$model "nailgun" "w_nailgun_reference.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_nailgun\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 4.86 11.75 rotate -90 0 0

$sequence "ref" {
	"w_nailgun_reference.smd"
	fps 30
}

$collisionmodel "w_nailgun_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
