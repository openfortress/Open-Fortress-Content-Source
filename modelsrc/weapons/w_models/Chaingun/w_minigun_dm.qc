// Created by Crowbar 0.74

$modelname "weapons/w_models/w_minigun_dm.mdl"

$upaxis Y

$bodygroup "minigun"
{
	studio "overlordlettuce_chaingun.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 24.229 -1.742 9.069

$cdmaterials "models\weapons\w_minigun\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone" 0 -7.76 64.76 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -8.57 -10.99 5.85 rotate 0 154.21 180

$cbox 0 0 0 0 0 0

$bbox -33.004 -16.226 -58.109 7.219 9.911 7.024

$definebone "weapon_bone" "" -0.767549 0 0 0 0 -89.999982 0 0 0 0 0 0
$definebone "barrel" "weapon_bone" 0.019932 -6.613401 27.144716 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"w_minigun_dm_anims\ref.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "spool_up" {
	"w_minigun_dm_anims\spool_up.smd"
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire_loop" {
	"w_minigun_dm_anims\fire_loop.smd"
	activity "ACT_MP_ATTACK_STAND_PRIMARY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$sequence "spool_down" {
	"w_minigun_dm_anims\spool_down.smd"
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "spin" {
	"w_minigun_dm_anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_minigun_dm_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
