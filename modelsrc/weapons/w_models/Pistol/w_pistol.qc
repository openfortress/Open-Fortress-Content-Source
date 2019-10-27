$modelname "weapons\w_models\w_pistol.mdl"

$upaxis Y

$model studio "w_pistol.smd"

$bodygroup "magazine"
{
	studio "w_pistol_mag.smd"
	blank
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_pistol"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 6.19 3.46 rotate 0 44.89 -180
$attachment "mag_eject" "weapon_bone" 0 -2.5 -1.5 rotate -90 -90 0

$sequence "idle" {
	"w_pistol.smd"
	fps 30
}

$collisionmodel "w_pistol_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
