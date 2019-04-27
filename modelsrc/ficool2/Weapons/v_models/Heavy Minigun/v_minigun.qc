$modelname "weapons/v_models/v_minigun_heavy.mdl"

$model "minigun" "c_minigun.smd"

$include "../shared.qci"

$cdmaterials "models\weapons\v_minigun\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone" 0 -7.76 57.76 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -5 -8.76 25.76 rotate -45 163 90

$include "../Arms/c_heavy_arms_bonemerge.qci"

$sequence "m_idle" {
	"m_idle.smd"
	activity "ACT_VM_IDLE" 1
	node "raised"
	fps 30
	loop
}

$sequence "m_fire" {
	"m_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	{ event 6002 3 "3" }
	{ event 6002 6 "3" }
	{ event 6002 9 "3" }
	{ event 6002 12 "3" }
	{ event 6002 15 "3" }
	node "raised"
	snap
	fps 30
	loop
}

$sequence "m_spool_up" {
	"m_spool_up.smd"
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	node "raised"
	snap
	fps 30
}

$sequence "m_spool_down" {
	"m_spool_down.smd"
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	node "raised"
	snap
	fps 30
}

$sequence "m_draw" {
	"m_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Minigun.Draw" }
	transition "lowered" "raised"
	snap
	fps 30
}

$sequence "m_spool_idle" {
	"m_spool_idle.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	node "raised"
	snap
	fps 30
	loop
}
