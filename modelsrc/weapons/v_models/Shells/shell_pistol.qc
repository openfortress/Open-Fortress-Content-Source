$modelname "weapons/shells/shell_pistol.mdl"

$origin 0 0 -1

$bodygroup "shell_pistol"
{
	studio "shell_pistol_reference.smd"
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "\models\weapons\shells\"

$sequence "idle" {
	"shell_pistol_reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "shell_pistol_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
