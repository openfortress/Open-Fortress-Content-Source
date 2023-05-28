$modelname "weapons/shells/shell_grenade.mdl"

$origin 0 0 -1

$bodygroup "shell_grenade"
{
	studio "shell_grenade.smd"
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\shells"
$cdmaterials ""

$sequence "idle" {
	"shell_grenade.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "shell_grenade_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
