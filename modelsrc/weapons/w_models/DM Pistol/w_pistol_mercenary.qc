// Created by Crowbar 0.71

$modelname "weapons/w_models/w_pistol_mercenary.mdl"

$bodygroup "pistol"
{
	studio "w_pistol_mercenary_pistol.smd"
}
//$bodygroup "magazine"
//{
//	studio "w_pistol_mercenary_mag.smd"
//	blank
//}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 5.19 3.46 rotate 0 44.89 180

$cbox 0 0 0 0 0 0

$bbox -0.021 -26.61 -40.826 53.087 20.711 17.142

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$sequence "idle" {
	"w_pistol_mercenary_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$collisionmodel "w_pistol_mercenary_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
