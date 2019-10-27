$modelname "weapons/w_models/magazines/w_pistol_magazine.mdl"

$upaxis Y

$staticprop

$model studio "w_pistol_mag.smd"

$surfaceprop "weapon"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_pistol"
$cdmaterials ""

$sequence "idle" {
	"w_pistol_mag.smd"
	fps 30
}

$collisionmodel "w_pistol_mag_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
