$modelname "weapons\w_models\w_knife.mdl"

$upaxis Y

$bodygroup "spyknife"
{
	studio "w_knife.smd"
	studio "w_knife_blood.smd"
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_knife"
$cdmaterials ""

$sequence "idle" {
	"w_knife_anims\idle.smd"
	fps 30
}

$collisionmodel "w_knife_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
