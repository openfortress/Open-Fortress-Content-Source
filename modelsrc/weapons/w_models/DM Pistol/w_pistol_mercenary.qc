$modelname "weapons\w_models\magazines/w_pistol_mercenary_magazine.mdl"

$upaxis Y

$staticprop

$model studio "w_walther_magazine.smd"

$surfaceprop "weapon"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$sequence "ref" {
	"w_walther_magazine.smd"
	fps 30
}

$collisionmodel "w_walther_magazine_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
