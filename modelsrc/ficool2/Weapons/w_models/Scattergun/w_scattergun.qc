$modelname "weapons\w_models\w_scattergun.mdl"

$upaxis Y

$model "scattergun" "w_scattergun_reference.smd"

$lod 20
{
	replacemodel "w_scattergun_reference.smd" "w_scattergun_reference_lod1.smd"
	nofacial
}
$lod 30
{
	replacemodel "w_scattergun_reference.smd" "w_scattergun_reference_lod2.smd"
	nofacial
}
$lod 40
{
	replacemodel "w_scattergun_reference.smd" "w_scattergun_reference_lod3.smd"
	nofacial
}
$lod 60
{
	replacemodel "w_scattergun_reference.smd" "w_scattergun_reference_lod4.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_scattergun\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 3.97 23.38 rotate -90 0 0

$sequence "ref" {
	"w_scattergun_reference.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_scattergun_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
