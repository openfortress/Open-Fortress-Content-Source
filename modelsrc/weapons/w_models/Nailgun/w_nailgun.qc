// Created by Crowbar 0.68

$modelname "weapons\w_models\w_nailgun.mdl"

$bodygroup "nailgun"
{
	studio "w_nailgun_reference.smd"
}
$bodygroup "mag"
{
	studio "w_nailgun_mag2.smd"
	blank
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_nailgun\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 4.86 11.75 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -10.705 -6.29 -13.416 9.3 6.162 7.323

$sequence "ref" {
	"w_nailgun_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_nailgun_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
