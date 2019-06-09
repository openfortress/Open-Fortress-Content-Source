$modelname "weapons\w_models\w_rocketlauncher.mdl"

$upaxis Y

$model "w_rocketlauncher" "w_rocketlauncher_reference.smd"

$lod 20
{
	replacemodel "w_rocketlauncher_reference.smd" "w_rocketlauncher_reference_lod1.smd"
	nofacial
}
$lod 30
{
	replacemodel "w_rocketlauncher_reference.smd" "w_rocketlauncher_reference_lod2.smd"
	nofacial
}
$lod 40
{
	replacemodel "w_rocketlauncher_reference.smd" "w_rocketlauncher_reference_lod3.smd"
	nofacial
}
$lod 60
{
	replacemodel "w_rocketlauncher_reference.smd" "w_rocketlauncher_reference_lod4.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_rocketlauncher\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 6.69 9.91 rotate -90 0 0
$attachment "backblast" "weapon_bone" 0 6.69 -35.43 rotate 90 0 0

$sequence "ref" {
	"w_rocketlauncher_reference.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_rocketlauncher_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
