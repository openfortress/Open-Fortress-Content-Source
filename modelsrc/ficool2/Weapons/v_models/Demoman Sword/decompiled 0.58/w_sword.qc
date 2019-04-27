$modelname "weapons/w_models/w_sword.mdl"

$upaxis Y

$model "sword" "w_sword.smd"

$lod 8
{
	replacemodel "w_sword.smd" "w_sword_lod1.smd"
	nofacial
}
$lod 13
{
	replacemodel "w_sword.smd" "w_sword_lod2.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_sword"
$cdmaterials ""

$sequence "idle" {
	"w_sword.smd"
	fps 30
}

$collisionmodel "w_sword_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 4
	$rootbone " "

}
