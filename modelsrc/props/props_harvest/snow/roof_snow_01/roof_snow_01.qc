// Created by Crowbar 0.56

$modelname "props_harvest/roof_snow_01.mdl"

$staticprop

$bodygroup "body"
{
	studio "roof_snow_01.smd"
}


$surfaceprop "snow"

$contents "solid"

$illumposition -797.546 509.994 158.101

$cdmaterials "models\nature\"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"roof_snow_01_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
