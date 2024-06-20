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

$definebone "bip_pelvis" "" 0 0.030639 42.435368 0 0 -99.404627 0 0 0 0 0 0
$definebone "bip_spine_0" "bip_pelvis" 0 -7.6717 -0.000009 0 0 1.370518 0 0 0 0 0 0
$definebone "bip_spine_1" "bip_spine_0" 0 -4.790928 -0.000001 0 0 -1.611332 0 0 0 0 0 0
$definebone "bip_spine_2" "bip_spine_1" 0 -5.565567 -0.000005 0 0 5.843939 0 0 0 0 0 0
$definebone "bip_spine_3" "bip_spine_2" 0 -6.472752 -0.000003 0 0 16.725556 0 0 0 0 0 0
$definebone "bip_collar_R" "bip_spine_3" -2.20417 -2.813538 -2.257957 13.429386 70.894932 15.504808 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.000107 9.800033 0.000022 8.291905 41.365142 69.133324 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 14.480988 -0.000149 -0.000015 -0.000113 -21.317188 0.000285 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 10.643183 0.000006 -0.000008 -89.999641 -89.421882 0 0 0 0 0 0 0
$definebone "bip_collar_L" "bip_spine_3" 2.204173 -2.81353 -2.257957 -13.429269 -70.894891 -164.495202 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000061 -9.800076 -0.000007 -8.293622 -138.635669 110.865732 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 14.480953 -0.000206 -0.000019 -0.000229 21.315757 -89.99936 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 10.643158 0.000011 0 -0.000002 90.000269 -0.000011 0 0 0 0 0 0


$sequence "ref" {
	"merc_engineer_overalls.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
