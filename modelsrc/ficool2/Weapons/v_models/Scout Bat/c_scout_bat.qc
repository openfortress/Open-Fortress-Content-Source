$modelname "weapons\v_models\v_bat_scout.mdl"

$model "bat" "c_bat.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_scout_arms_bonemerge.qci"

$sequence "b_idle" "b_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	node "raised"
}

$sequence "b_draw" "b_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	node "raised"
	snap
	{ event 5004 1 "Weapon_Bat.Draw" }
	{ event 5004 8 "Weapon_Bat.DrawSwoosh2" }
	{ event 5004 16 "Weapon_Bat.DrawSwoosh1" }
	{ event 5004 20 "Weapon_Bat.DrawCatch" }
}

$sequence "b_swing_a" "b_swing_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 2
}

$sequence "b_swing_b" "b_swing_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
}

$sequence "b_swing_c" "b_swing_c.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	node "raised"
}
$Sequence "b_throw" {
	"b_throw.smd"
	activity "ACT_VM_throw" 1
	fps 30
}