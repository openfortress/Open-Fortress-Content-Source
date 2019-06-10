// Created by Crowbar 0.56

$modelname "weapons\w_models\w_supershotgun.mdl"

$bodygroup "supershotgun"
{
	studio "c_super_shotgun.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 1

$cdmaterials "models\weapons\c_items\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 4.96 16.42 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -16.476 -3.216 -3.636 37.384 2.996 7.935

$definebone "weapon_bone" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0 3.436529 10.3051 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_3" "weapon_bone_1" 1.090158 2.226016 -1.39491 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_4" "weapon_bone_1" -1.237664 2.226016 -1.39491 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_2" "weapon_bone" 0 6.776579 3.488801 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"c_super_shotgun.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_supershotgun_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
