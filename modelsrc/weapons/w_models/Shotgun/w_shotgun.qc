$modelname "weapons\w_models\w_shotgun.mdl"

$upaxis Y

$model "w_shotgun" "w_shotgun_reference.smd"

$lod 12
{
	replacemodel "w_shotgun_reference.smd" "w_shotgun_reference_lod1.smd"
	nofacial
}
$lod 24
{
	replacemodel "w_shotgun_reference.smd" "w_shotgun_reference_lod2.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_shotgun\"
$cdmaterials "models\weapons\w_shotgun\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 3.73 34.92 rotate -90 0 0

$sequence "ref" {
	"w_shotgun_reference.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_shotgun_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
