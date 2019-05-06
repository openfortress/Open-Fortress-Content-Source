$modelname "weapons\w_models\w_pistol_akimbo.mdl"

$upaxis Y

$model "dualpistol" "w_pistol_dual.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_pistol"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 4.96 16.42 rotate -90 0 0

$sequence "ref" {
	"w_pistol_dual.smd"
	fps 30
}

$collisionmodel "w_pistol_dual_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
