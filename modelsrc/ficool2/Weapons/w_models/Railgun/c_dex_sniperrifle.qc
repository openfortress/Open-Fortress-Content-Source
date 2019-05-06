$modelname "weapons\w_models\w_railgun.mdl"

$upaxis Y

$model "dexsniperrifle" "w_dex_sniperrifle.smd"

$surfaceprop "metal"

$cdmaterials "models\weapons\v_sniperrifle"
$cdmaterials "models\weapons\c_items"
$cdmaterials "models\weapons\c_items\c_dex_sniperrifle\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "c_dex_sniperrifle01" }
	{ "c_dex_sniperrifle01" }
	{ "c_dex_sniperrifle01_custom" }
}

$attachment "muzzle" "weapon_bone" 0 3.77 45.82 rotate -90 0 0

$sequence "ref" {
	"w_dex_sniperrifle.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_dex_sniperrifle_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
