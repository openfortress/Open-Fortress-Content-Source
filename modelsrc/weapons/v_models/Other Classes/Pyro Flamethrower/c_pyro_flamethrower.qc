$modelname "weapons\v_models\v_flamethrower_pyro.mdl"

$model "flamethrower" "c_flamethrower.smd"

// fix transperancy issues
$mostlyopaque

$cdmaterials ""
$cdmaterials "\models\weapons\v_flamethrower\"

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0.64 2.34 58.38 rotate -81.92 -90 90
$attachment "pilotlight" "weapon_bone" 4.38 -3.2 68.11 rotate -28.35 118.88 -132.36

$surfaceprop "default"
$jointsurfaceprop "illumpos"	 "default"

$hboxset "default"

$hbox 0 "weapon_bone"	    -4.00    0.50   15.00     4.00    5.50   65.00
$hbox 1 "weapon_bone"	    -9.00   -8.00   15.00    -1.00    2.00   45.00
$hbox 2 "weapon_bone"	     2.00   -5.00   66.00     6.00   -1.00   70.00

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