// Created by Crowbar 0.56

$modelname "pickups/pickup_powerup_invis.mdl"

$bodygroup "body"
{
	studio "pickup_powerup_invis_pickup_powerup_agility.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0.057 -0.013 28.898

$cdmaterials "models\pickups\"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -24.111 -24.044 0 24.136 24.159 58.047


$sequence "spin" {
	"pickup_powerup_invis_anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}

$collisionmodel "pickup_powerup_invis_physics.smd"
{
	$mass 291.9626
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
