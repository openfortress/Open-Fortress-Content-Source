$modelname "weapons/shells/shell_sniperrifle.mdl"

$origin 0 0 -1

$bodygroup "shell_sniperrifle"
{
	studio "shell_sniperrifle_reference.smd"
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "\models\weapons\shells\"

$sequence "idle" {
	"shell_sniperrifle_reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "shell_sniperrifle_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
