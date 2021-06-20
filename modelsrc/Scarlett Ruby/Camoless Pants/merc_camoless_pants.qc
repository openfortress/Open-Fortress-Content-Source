// Created by Crowbar 0.71
$modelname "player/items/mercenary/merc_camoless_pants/merc_camoless_pants.mdl"

$bodygroup "default"
{
	studio "merc_camoless_pants.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 -0.64 63.181

$cdmaterials "models\workshop\player\items\soldier\merc_camoless_pants\"
$cdmaterials "models\player\mercenary\"

$texturegroup "skinfamilies"
{
	{ "merc_camoless_pants_red" 				"mercenary_red"}
	{ "merc_camoless_pants_blue"				"mercenary_blue"}
	{ "merc_camoless_pants_custom"				"mercenary_custom"}
	{ "merc_camoless_pants_custom"				"mercenary_sport"}
	{ "merc_camoless_pants_red_darker"			"mercenary_red"}
	{ "merc_camoless_pants_blue_darker"			"mercenary_blue"}
	{ "merc_camoless_pants_custom_darker"		"mercenary_custom"}
	{ "merc_camoless_pants_custom_darker"		"mercenary_sport"}
}

$cbox 0 0 0 0 0 0

$bbox -7.143 -3.837 41.365 8.423 3.837 84.996

//$definebone "bip_pelvis" "" 0 0.030639 42.435368 0 0 -99.404627 0 0 0 0 0 0
//$definebone "bip_hip_L" "bip_pelvis" 5.827514 2.798294 -0.442891 -12.033371 89.524198 168.247285 0 0 0 0 0 0
//$definebone "bip_knee_L" "bip_hip_L" 16.91692 0.000064 -0.000026 9.582945 0.000514 -0.000057 0 0 0 0 0 0
//$definebone "bip_foot_L" "bip_knee_L" 17.962748 -0.000079 -0.000042 9.601164 86.911172 -71.522551 0 0 0 0 0 0
//$definebone "bip_toe_L" "bip_foot_L" 0.000001 -7.445711 0.000013 -0.000116 -0.000061 -29.86782 0 0 0 0 0 0
//$definebone "bip_hip_R" "bip_pelvis" -5.82751 2.798248 -0.442897 -12.033029 90.476176 101.752552 0 0 0 0 0 0
//$definebone "bip_knee_R" "bip_hip_R" 16.916986 0.000146 0.000002 0.000459 9.583345 90.000269 0 0 0 0 0 0
//$definebone "bip_foot_R" "bip_knee_R" 17.962732 0.000149 -0.000043 -9.601165 93.089195 108.477358 0 0 0 0 0 0
//$definebone "bip_toe_R" "bip_foot_R" 0.00001 7.445718 -0.000006 -0.000172 -0.000055 -29.86783 0 0 0 0 0 0


$sequence "ref" {
	"merc_camoless_pants_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$keyvalues
{
}
