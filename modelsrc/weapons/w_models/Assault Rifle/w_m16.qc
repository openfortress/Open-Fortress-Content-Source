$modelname "weapons\w_models\w_assault_rifle.mdl"

$upaxis Y

$model "w_ar" "w_m16.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_assault_rifle\"

$attachment "muzzle" "weapon_bone" 0 2.61 46.49 rotate -90 0 0

$sequence "ref" {
	"w_m16.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_m16_phy.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
}
