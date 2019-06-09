$modelname "weapons\v_models\v_flamethrower_pyro.mdl"

$model "flamethrower" "c_flamethrower.smd"

// fix transperancy issues
$mostlyopaque

$cdmaterials ""
$cdmaterials "\models\weapons\v_flamethrower\"

$include "../shared.qci"


$attachment "muzzle" "weapon_bone" 0.64 2.34 58.38 rotate -81.92 -90 90
$attachment "pilotlight" "weapon_bone" 4.38 -3.2 68.11 rotate -28.35 118.88 -132.36

$include "../Arms/c_pyro_arms_bonemerge.qci"

$sequence "ft_idle" "ft_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "ft_fire" "ft_fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	loop
	node "raised"
}

$sequence "ft_draw" "ft_draw.smd" {
	fps 30
	snap
	activity "ACT_VM_DRAW" 1
	node "raised"
	snap
	{ event 5004 1 "Weapon_FlameThrower.Draw" }
}

$sequence "ft_alt_fire" "ft_alt_fire.smd" {
	fps 30
	activity "ACT_VM_SECONDARYATTACK" 1
	node "raised"
}