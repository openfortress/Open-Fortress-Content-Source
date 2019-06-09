$modelname "weapons/w_models/w_revolver.mdl"

$upaxis Y

$model "body" "w_revolver_reference.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_revolver"
$cdmaterials "\models\weapons\w_revolver\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 2.72 14.78 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0 1.92 1.59 rotate 90 0 0

$sequence "idle" {
	"w_revolver_reference.smd"
	fps 30
}

$collisionmodel "w_revolver_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
