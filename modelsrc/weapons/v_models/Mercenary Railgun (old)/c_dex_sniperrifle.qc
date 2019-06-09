$modelname "weapons\v_models\v_railgun_mercenary.mdl"

$model "dexsniperrifle" "c_dex_sniperrifle.smd"

$cdmaterials "models\weapons\v_sniperrifle"
$cdmaterials "models/weapons/c_items"
$cdmaterials "models\weapons\c_items\c_dex_sniperrifle\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "c_dex_sniperrifle01" }
	{ "c_dex_sniperrifle01" }
	{ "c_dex_sniperrifle01_custom" }
}

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 3.77 45.82 rotate -90 0 0

$include "../Arms/c_sniper_arms_bonemerge.qci"

$sequence "draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_SniperRifle.Draw" }
}

$sequence "fire" "fire_alt.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
}

$sequence "idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
}