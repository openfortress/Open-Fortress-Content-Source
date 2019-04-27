$modelname "weapons\v_models\v_minigun_heavy.mdl"

$model "minigun" "c_minigun.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 -7.76 57.76 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -5.00 -8.76 25.76 rotate -45 163 90

$include "../Arms/c_heavy_arms_bonemerge.qci"

$sequence "m_idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "m_fire" "fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	loop
	snap
	node "raised"
}

$sequence "m_spool_up" "spool_up.smd" {
	fps 30
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	snap
	node "raised"
}

$sequence "m_spool_down" "spool_down.smd" {
	fps 30
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	snap
	node "raised"
}

$sequence "m_draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	transition "lowered" "raised"
	{ event 5004 1 "Weapon_Minigun.Draw" }
}

$sequence "m_spool_idle" "spool_idle.smd" {
	fps 30
	activity "ACT_VM_SECONDARYATTACK" 1
	loop
	snap
	node "raised"
}