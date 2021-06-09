// Created by Crowbar 0.56

$modelname "weapons/w_models/w_revolver_dm.mdl"

$bodygroup "body"
{
	studio "w_revolver_dm.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_revolver\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone" 0 2.72 14.78 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0 1.92 1.59 rotate 90 0 0

$cbox 0 0 0 0 0 0

$bbox -3.839 -1.397 -5.702 14.659 1.397 4.852

$definebone "weapon_bone" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0.357845 0.801234 2.97831 0 89.999983 0 0 0 0 0 0 0
$definebone "weapon_bone_2" "weapon_bone_1" 1.200594 0.357845 0 0 -89.999983 0 0 0 0 0 0 0


$sequence "idle" {
	"w_revolver_dm_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_revolver_dm_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
