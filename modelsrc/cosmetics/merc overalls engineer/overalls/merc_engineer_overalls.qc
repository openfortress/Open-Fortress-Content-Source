// Created by Crowbar 0.72
// Autor Wendy | @wendylol, 229318205808705536

$modelname "player/items/mercenary/merc_engineer_overalls/merc_engineer_overalls.mdl"

$bodygroup "default"
{
	studio "merc_engineer_overalls.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 -0.64 63.181

$cdmaterials "models\workshop\player\items\soldier\merc_engineer_overalls\"
$cdmaterials "models\player\mercenary\"

$texturegroup "skinfamilies"
{
	{ "mercenary_engineer"     }
	{ "mercenary_engineercamoless"     }
}
$cbox 0 0 0 0 0 0

$bbox -7.143 -3.837 41.365 8.423 3.837 84.996

$include "..\..\..\player\mercenary\scripts\mercenary_definebones.qci"

$sequence "ref" {
	"merc_engineer_overalls.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
