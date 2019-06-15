$modelname "weapons\v_models\v_machete_sniper.mdl"

$model "machete" "c_machete.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_sniper_arms_bonemerge.qci"

$sequence "m_idle" "m_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "m_draw" "m_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Machete.Draw" }
}

$sequence "m_swing_a" "m_swing_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 2
	snap
}

$sequence "m_swing_b" "m_swing_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "m_swing_c" "m_swing_c.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
}