$modelname "weapons/w_models/w_physcannon_dm.mdl"

$upaxis Y

// temporary
$renamebone "weapon_bone_1" "vm_weapon_bone_1"
$renamebone "weapon_bone_2" "vm_weapon_bone_2"
$renamebone "weapon_bone_3" "vm_weapon_bone_3"
$renamebone "weapon_bone_4" "vm_weapon_bone_4"

$model "w_physcannon" "w_physcannon.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$opaque

$cdmaterials "models\weapons\w_physcannon\"

$texturegroup "skinfamilies"
{
	{ "w_physcannon_red"  }
	{ "w_physcannon_blue" }
	{ "w_physcannon_custom" }
}

$attachment "core" "vm_weapon_bone_4" 0 0 0 rotate -90 -90 0
$attachment "fork1m" "vm_weapon_bone_1" 0 2.2 5.3 rotate -90 -90 0
$attachment "fork1t" "vm_weapon_bone_1" 0 -1.5 7.8 rotate -90 -90 0
$attachment "fork2m" "vm_weapon_bone_2" 0 -2.9 5.5 rotate -90 -90 0
$attachment "fork2t" "vm_weapon_bone_2" 0.1 1.2 7.7 rotate -90 -90 0
$attachment "fork3m" "vm_weapon_bone_3" 0 -2.2 5.8 rotate -90 -90 0
$attachment "fork3t" "vm_weapon_bone_3" 0.1 2 7.4 rotate -90 -90 0

$sequence "ref" {
	"w_physcannon.smd"
	fps 30
}

$sequence "spin" {
	"spin.smd"
	fps 30
}

$collisionmodel "w_physcannon_phy.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}