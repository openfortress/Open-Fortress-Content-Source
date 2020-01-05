$modelname "weapons/v_models/v_chainsaw.mdl"

$model "chainsaw" "chainsaw.smd"

$include "../shared.qci"

$cdmaterials "Models\props_swamp\"
$cdmaterials "models\weapons\v_minigun\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone" 0 -7.76 57.76 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -5 -8.76 25.76 rotate -45 163 90

$include "../Arms/c_soldier_arms_bonemerge.qci"

$sequence "cs_idle" {
	"anims/idle.smd"
	activity "ACT_VM_IDLE" 1
	node "raised"
	fps 30
	loop
}

$sequence "cs_fire" {
	"anims/fire.smd"
	activity "ACT_VM_HITCENTER" 1
	node "raised"
	fps 30
	loop
}

$sequence "cs_fire_crit" {
	"anims/fire.smd"
	activity "ACT_VM_SWINGHARD" 1
	node "raised"
	fps 30
	loop
}

$sequence "cs_start" {
	"anims/windup.smd"
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	node "raised"
	snap
	fps 30
}

$sequence "cs_stop" {
	"m_spool_down.smd"
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	node "raised"
	snap
	fps 30
}

$sequence "cs_draw" {
	"anims/draw.smd"
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
