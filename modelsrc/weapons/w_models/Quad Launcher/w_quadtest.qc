// Created by Crowbar 0.74

$modelname "weapons\w_models\w_quadtest.mdl"

$bodygroup "w_rocketlauncher"
{
	studio "basecolor_test.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.613 5.169 -3.118

$cdmaterials "models\weapons\w_quad\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 6.69 9.91 rotate -90 0 0
$attachment "backblast" "weapon_bone" 0 6.69 -35.43 rotate 90 0 0

$cbox 0 0 0 0 0 0

$bbox -22.706 -8.31 -13.908 30.309 11.937 23.615

$definebone "weapon_bone" "" 0 -2.245433 -2.109874 0 0 89.999982 0 0 0 0 0 0


$sequence "ref" {
	"w_quadtest_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "spin" {
	"w_quadtest_anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_quadtest_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
