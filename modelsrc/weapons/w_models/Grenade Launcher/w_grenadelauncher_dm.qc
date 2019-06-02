$modelname "weapons/w_models/w_grenadelauncher_dm.mdl"

$upaxis Y

$model "gl" "w_grenadelauncher_dm_w_grenadelauncher_reference.smd"

$lod 15
{
	replacemodel "w_grenadelauncher_dm_w_grenadelauncher_reference.smd" "w_grenadelauncher_dm_w_grenadelauncher_reference_lod1.smd"
	nofacial
}
$lod 33
{
	replacemodel "w_grenadelauncher_dm_w_grenadelauncher_reference.smd" "w_grenadelauncher_dm_w_grenadelauncher_reference_lod2.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_grenadelauncher\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone_3" 0 -2.79 6.78 rotate 0 0 0

$sequence "ref" {
	"w_grenadelauncher_reference.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_grenadelauncher_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}