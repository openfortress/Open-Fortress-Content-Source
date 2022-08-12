// Created by Crowbar 0.71

$modelname "items\armor_medium.mdl"

$bodygroup "body"
{
	studio "armor_medium_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 15.062

$cdmaterials "\models\items\"

$cbox 0 0 0 0 0 0

$bbox -9.487 -9.502 -0.261 9.482 9.491 14.928

$definebone "Bone" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"armor_medium_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
	loop
}
