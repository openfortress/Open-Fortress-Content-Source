// Created by Crowbar 0.56

$modelname "weapons/v_models/v_umbrella_civilian.mdl"

$bodygroup "copy_that"
{
	studio "v_umbrella_civilian_v_umbrella.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -6.932 -4.973 -9.48

$cdmaterials "models\player\civilian\"
$cdmaterials "models\weapons\v_umbrella\"
$cdmaterials "\"

$texturegroup "skinfamilies"
{
	{ "dm_base"   }
	{ "DM_BASE_B" }
	{ "DM_BASE_C" }
}

$cbox 0 0 0 0 0 0

$bbox -4.233 -13.865 -24.602 14.18 0.002 5.642


$sequence "idle" {
	"v_umbrella_civilian_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "draw" {
	"v_umbrella_civilian_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 24
}

$sequence "swingMiss_a" {
	"v_umbrella_civilian_anims\swingMiss_a.smd"
	activity "ACT_VM_HITCENTER" 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 22
}

$sequence "swingMiss_b" {
	"v_umbrella_civilian_anims\swingMiss_b.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 22
}

$sequence "swingMiss_crit" {
	"v_umbrella_civilian_anims\swingMiss_crit.smd"
	activity "ACT_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 24
}

$KeyValues
{
}
