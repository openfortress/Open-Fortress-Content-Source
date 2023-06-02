$modelname "weapons/w_models/w_grenade_grenadelauncher_dm.mdl"

$bodygroup "studio"
{
	studio "w_grenade_grenadelauncher_dm.smd"
}


$surfaceprop "dm_grenade"

$contents "solid"

$illumposition 0 -0.1 0

$cdmaterials "models\weapons\w_grenade_grenadelauncher"

$texturegroup "skinfamilies"
{
	{ "w_grenade_red"		"w_grenade_dm_red_light" }
	{ "w_grenade_dm_blue"	"w_grenade_dm_blue_light" }
	{ "w_grenade_dm"		"w_grenade_dm_light" }
}

$cbox 0 0 0 0 0 0

$bbox -6.438 -3.5 -3.5 6.638 3.5 3.5

$definebone "cylinder" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_grenade_grenadelauncher_dm_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$collisionmodel "w_grenade_grenadelauncher_dm_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$collisiontext
{
	break 
	{
		"model"		"\weapons\w_models\w_grenade_grenadelauncher"
		"health"		"0"
		"fadetime"		"10"
	}
}
