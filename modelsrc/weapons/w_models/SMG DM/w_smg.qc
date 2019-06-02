$modelname "weapons\w_models\w_smg_dm.mdl"

$upaxis Y

$model smg "w_smg_dm.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_smg\"
$cdmaterials "models\weapons\v_smg\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 2.61 26.49 rotate -90 0 0

$sequence "ref" {
	"w_smg_dm.smd"
	fps 30
}

$collisionmodel "w_smg_dm_phy.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
