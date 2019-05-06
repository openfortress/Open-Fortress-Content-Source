$modelname "weapons\w_models\w_stickybomb_launcher.mdl"

$upaxis Y

$model "w_sticky_launcher" "w_stickybomb_launcher_reference.smd"

$lod 18
{
	replacemodel "w_stickybomb_launcher_reference.smd" "w_stickybomb_launcher_reference_lod1.smd"
	nofacial
}
$lod 30
{
	replacemodel "w_stickybomb_launcher_reference.smd" "w_stickybomb_launcher_reference_lod2.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_stickybomb_launcher\"
$cdmaterials "\models\weapons\w_stickybomb_launcher\"
$cdmaterials ""

$attachment "eject_brass" "weapon_bone" 2.22 4.18 9.1 rotate 0 27.29 0
$attachment "muzzle" "weapon_bone" 0 2.2 25.15 rotate 0 0 0

$sequence "ref" {
	"w_stickybomb_launcher_reference.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_stickybomb_launcher_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
