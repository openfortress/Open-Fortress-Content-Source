$modelname "weapons\v_models\v_medigun_medic.mdl"

$model "medigun" "c_medigun.smd"

$cdmaterials ""

$include "../shared.qci"

$texturegroup "skinfamilies"
{
	{ "models\weapons\v_medigun\v_medigun"        }
	{ "models\weapons\v_medigun\v_medigun_blue"   }
	{ "models\weapons\v_medigun\v_medigun_custom" }
}

$attachment "weapon_bone_L" "weapon_bone_L" 0 0 0 rotate 0 0 0
//$attachment "muzzle" "weapon_bone" 0 -0.79 29.34 rotate -90 0 0
$attachment "muzzle" "weapon_bone" -2.00 -29.00 -6.00 rotate 0 -90 0

$include "../Arms/c_medic_arms_bonemerge.qci"

$sequence "draw" "draw.smd" {
	fps 30
	snap
	activity "ACT_VM_DRAW" 1
	node "raised"
	{ event 5004 1 "Weapon_Medigun.Draw" }
}

$sequence "idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "fire_on" "fire_on.smd" {
	fps 30
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	snap
	node "raised"
}

$sequence "fire_loop" "fire_loop.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	loop
	node "raised"
}

$sequence "fire_off" "fire_off.smd" {
	fps 18
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	node "raised"
}