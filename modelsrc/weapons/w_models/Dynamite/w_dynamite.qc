// Created by Crowbar 0.71

$modelname "weapons\w_models\w_dynamite.mdl"

$bodygroup "dynamite"
{
	studio "w_dynamite_bundle.smd"
	blank
}

$bodygroup "lighter"
{
	studio "w_dynamite_lighter.smd"
	blank
}

$surfaceprop "dm_grenade"

$contents "solid"

$illumposition -0.165 -0.823 5.293

$cdmaterials "models\weapons\w_dynamite\"
$cdmaterials "models\props_facemovie\lighter\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_l" "weapon_bone_l" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_l_1" "weapon_bone_l_1" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -3.554 -4.454 -18.893 3.225 2.805 1.478

$definebone "weapon_bone" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_l" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_l_1" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "w_dynamite_mesh" "weapon_bone" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_dynamite_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_dynamite_physics.smd"
{
	$mass 6.067674
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
