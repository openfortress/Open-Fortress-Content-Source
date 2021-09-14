// Created by Crowbar 0.71

$modelname "weapons/w_models/w_pistol_akimbo.mdl"

$bodygroup "pistol"
{
	studio "w_pistol_akimbo_akimbo.smd"
}

$bodygroup "magazine_left"
{
	studio "w_pistol_mag_l.smd"
	blank
}

$bodygroup "magazine_right"
{
	studio "w_pistol_mag_r.smd"
	blank
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "muzzle" 0 0 0 rotate 0 -90 0
$attachment "eject_brass" "muzzle" 0 6.5 0 rotate -35 180 180

$cbox 0 0 0 0 0 0

$bbox -12.34 -33.704 -30.741 33.858 24.065 6.759

$hboxset "default"
$hbox 0 "weapon_bone" -2 -3 -3 2 7 7
$hbox 0 "weapon_bone_L" -2 -3 -3 2 7 7


$sequence "idle" {
	"w_pistol_akimbo_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$collisionmodel "w_pistol_akimbo_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
