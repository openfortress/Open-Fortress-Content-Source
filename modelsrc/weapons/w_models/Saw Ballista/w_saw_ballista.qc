// Created by Crowbar 0.68

$modelname "weapons\w_models\w_saw_ballista.mdl"

$model "saw_ballista" "w_saw_ballista.smd"
$model "saw_ballista_drum" "w_saw_ballista_drum.smd"
$bodygroup "saw"
{
	studio "w_ripper_blade.smd"
	studio "w_ripper_blade_folded.smd"
	blank
}

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "weapon_bone"

$opaque

$cdmaterials "models\weapons\v_saw_ballista\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
//$attachment "muzzle" "muzzle" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

//$bbox -25.178 -22.246 -33.891 73.584 16.079 0.021

$hboxset "default"
$hbox 0 "weapon_bone" -10 -8 -7 10 5 30


$bonemerge "weapon_bone"
$bonemerge "weapon_bone_1"
$bonemerge "weapon_bone_2"
$bonemerge "weapon_bone_3"
$bonemerge "weapon_bone_4"
$bonemerge "weapon_bone_5"

$sequence "ref" {
	"w_saw_ballista.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "w_saw_ballista_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}
