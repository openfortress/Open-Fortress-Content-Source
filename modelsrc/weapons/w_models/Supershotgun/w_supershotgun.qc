$modelname "weapons\w_models\w_supershotgun.mdl"

$model "supershotgun" "w_super_shotgun.smd"

$surfaceprop "metal"

$illumposition 0 0 1

$cdmaterials "models\weapons\c_items\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 4.96 16.42 rotate -90 0 0

$sequence "ref" {
	"w_super_shotgun.smd"
	fps 30
}

$collisionmodel "c_double_barrel_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
