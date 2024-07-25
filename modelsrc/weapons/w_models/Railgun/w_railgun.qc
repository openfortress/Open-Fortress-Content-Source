// Created by Crowbar 0.56

$modelname "weapons/w_models/w_railgun.mdl"

$bodygroup "dexsniperrifle"
{
	studio "w_railgun.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.166 -13.264 4.164

$mostlyopaque

$cdmaterials "models\weapons\v_railgun\"
$cdmaterials "models\weapons\c_items\"
$cdmaterials "models\weapons\c_items\c_dex_sniperrifle\"
$cdmaterials "\"

$texturegroup "skinfamilies"
{
	{ }
	{ }
	{ }
}

$attachment "muzzle" "weapon_bone" 0 3.77 45.82 rotate -90 0 0
$attachment "light" "weapon_bone" 0.00 3.77 20.82 rotate -90 -0 0
$cbox 0 0 0 0 0 0

$bbox -16.94 -2.96 -4.967 49.224 3.291 16.517

$definebone "weapon_bone" "" -0.000065 -0.000042 0.000195 -0.000115 -0.000974 0.00063 0 0 0 0 0 0


$sequence "ref" {
	"w_railgun.smd"
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

$collisionmodel "w_railgun_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$KeyValues
{
}
