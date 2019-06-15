$modelname "weapons\w_models\w_smg.mdl"

$upaxis Y

$model smg "w_smg_reference.smd"

$lod 18
{
	replacemodel "w_smg_reference.smd" "w_smg_reference_lod1.smd"
	nofacial
}
$lod 35
{
	replacemodel "w_smg_reference.smd" "w_smg_reference_lod2.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_smg\"
$cdmaterials "models\weapons\v_smg\"
$cdmaterials "models\weapons\v_supersmg\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 2.61 26.49 rotate -90 0 0

$sequence "ref" {
	"w_smg_reference.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_smg_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
