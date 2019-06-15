$modelname "weapons/w_models/w_flamethrower.mdl"

$upaxis Y

$model "flamethrower" "w_flamethrower_reference.smd"

$lod 20
{
	replacemodel "w_flamethrower_reference.smd" "w_flamethrower_reference_lod1.smd"
	nofacial
}
$lod 30
{
	replacemodel "w_flamethrower_reference.smd" "w_flamethrower_reference_lod2.smd"
	nofacial
}
$lod 40
{
	replacemodel "w_flamethrower_reference.smd" "w_flamethrower_reference_lod3.smd"
	nofacial
}
$lod 50
{
	replacemodel "w_flamethrower_reference.smd" "w_flamethrower_reference_lod4.smd"
	replacebone "weapon_bone_1" "weapon_bone"
	nofacial
}
$lod 70
{
	replacemodel "w_flamethrower_reference.smd" "w_flamethrower_reference_lod5.smd"
	replacebone "weapon_bone_1" "weapon_bone"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_flamethrower\"
$cdmaterials "models\effects\pyro\"
$cdmaterials "\"

$texturegroup "skinfamilies"
{
	{ "w_flamethrower01"        }
	{ "w_flamethrower01_blue"   }
	{ "w_flamethrower01_purple" }
}

$attachment "muzzle" "weapon_bone" 0.64 1.1 67.18 rotate -81.92 -90 90

$sequence "ref" {
	"w_flamethrower_reference.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_flamethrower_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}