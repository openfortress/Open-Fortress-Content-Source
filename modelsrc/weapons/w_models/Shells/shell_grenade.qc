$modelname "weapons/shells/shell_grenade.mdl"

$bodygroup "shell_grenade"
{
	studio "shell_grenade_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_grenade_grenadelauncher"

$cbox 0 0 0 0 0 0

$bbox -2.497 -1.395 -0.24 2.697 1.237 2.392

$definebone "polymsh" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0


$sequence "idle" {
	"shell_grenade_anims\idle.smd"
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
