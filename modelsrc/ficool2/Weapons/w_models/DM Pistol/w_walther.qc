$modelname "weapons\w_models\w_pistol_mercenary.mdl"

$upaxis Y

$model "nelson" "w_walther.smd"

$bodygroup "magazine"
{
	studio "w_walther_magazine.smd"
	blank
}


$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_pistol"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 6.19 3.46 rotate 0 44.89 -180
$attachment "magazine" "weapon_bone_1" 0 0 0 rotate 0 0 0

$sequence "ref" {
	"w_walther.smd"
	fps 30
}

$collisionmodel "w_walther_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
