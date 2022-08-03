// Created by Crowbar 0.71

$modelname "props_taunts/grenade_frag.mdl"

$bodygroup "grenade"
{
	studio "merc_taunt_grenade.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.448 0.689 1.666

$cdmaterials "models\player\soldier\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "soldier_red"  }
	{ "soldier_blue" }
	{ "soldier_custom" }
}

$attachment "__illumPosition" "weapon_bone_1" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -12.663 -11.25 0 13.217 11.545 21.5

$definebone "weapon_bone_1" "" 0 0 0 0 0 0 0 0 0 0 0 0

$bonemerge "weapon_bone_1"


$sequence "idle" {
	"merc_taunt_grenade_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
