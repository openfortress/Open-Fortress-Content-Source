$modelname "weapons\v_models\v_crowbar_mercenary.mdl"

$model "crowbar" "c_crowbar.smd"

$include "../shared.qci"

$cdmaterials "models\props_facemovie\medic_crowbar\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "medic_crowbar"        }
	{ "medic_crowbar_blue"   }
	{ "medic_crowbar_purple" }
}

$include "../Arms/c_soldier_arms_bonemerge.qci"

$sequence "idle" {
	"idle.smd"
	activity "ACT_VM_IDLE" 1
	node "raised"
	fps 30
	loop
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Bat.Draw" }
	node "raised"
	snap
	fps 30
}

$sequence "swingMiss_a" {
	"hit1.smd"
	activity "ACT_VM_HITCENTER" 2
	fps 30
	snap
}

$sequence "swingMiss_b" {
	"hit2.smd"
	activity "ACT_VM_HITCENTER" 1
	fps 30
	snap
}

$sequence "swingMiss_c" {
	"hit3.smd"
	activity "ACT_VM_HITCENTER" 1
	fps 30
	snap
}

$sequence "swingMiss_crit" {
	"hit3.smd"
	activity "ACT_VM_SWINGHARD" 1
	node "raised"
	fps 30
	snap
}