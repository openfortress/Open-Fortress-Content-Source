// Created by Crowbar 0.56

$modelname "weapons/w_models/w_grenadelauncher_dm.mdl"

$bodygroup "gl"
{
	studio "w_grenadelauncher_dm.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_grenadelauncher\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone" 0.00 1.00 28.00 rotate -0 0 0

$cbox 0 0 0 0 0 0

$bbox -15.109 -5.843 -7.536 33.389 5.837 13.723

$sequence "ref" {
	"w_grenadelauncher_dm.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "spin" {
	"anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
