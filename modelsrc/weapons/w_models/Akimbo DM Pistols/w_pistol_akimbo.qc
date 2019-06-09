$modelname "weapons\w_models\w_pistol_akimbo.mdl"

$upaxis Y

$model "dualpistol" "w_walther_dual.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_pistol"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 5.96 12.5 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 6.19 3.46 rotate 0 44.89 -180
$attachment "magazine" "weapon_bone_1" 0 0 0 rotate 0 0 0
$attachment "magazine2" "weapon_bone_L_1" 0 0 0 rotate 0 0 0



$sequence "ref" {
	"w_walther_dual.smd"
	fps 30
}

$collisionmodel "w_walther_dual_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
