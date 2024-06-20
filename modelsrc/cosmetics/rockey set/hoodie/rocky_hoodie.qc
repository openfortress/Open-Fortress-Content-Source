// Created by Crowbar 0.72
// Autor Wendy | @wendylol, 229318205808705536

$modelname "player/items/mercenary/rocky_set/rocky_hoodie.mdl"

$bodygroup "default"
{
	studio "rocky_hoodie.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 55.689 -1.567

$cdmaterials "models\workshop\player\items\soldier\rocky_set\"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -72.118 -23.19 -12.065 -39.26 23.19 8.93

$definebone "bip_pelvis" "" 0 42.435368 -0.030656 0 0 170.595463 0 0 0 0 0 0
$definebone "bip_spine_0" "bip_pelvis" 0 -7.671703 -0.000018 0 0 1.370617 0 0 0 0 0 0
$definebone "bip_spine_1" "bip_spine_0" 0 -4.790936 0.000003 0 0 -1.611394 0 0 0 0 0 0
$definebone "bip_spine_2" "bip_spine_1" 0 -5.565575 -0.000009 0 0 5.84388 0 0 0 0 0 0
$definebone "bip_spine_3" "bip_spine_2" 0 -6.472744 -0.000005 0 0 16.72505 0 0 0 0 0 0
$definebone "bip_collar_R" "bip_spine_3" -2.20417 -2.813461 -2.257936 13.428796 70.894843 15.504675 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.000145 9.800006 0.000018 8.292042 41.365391 69.133331 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 14.480988 -0.000134 0.000011 -0.00019 -21.317022 0.000557 0 0 0 0 0 0
$definebone "bip_collar_L" "bip_spine_3" 2.204173 -2.813454 -2.257936 -13.428402 -70.894761 -164.495407 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000046 -9.800061 -0.000005 -8.291465 -138.641543 110.866217 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 14.480953 -0.00017 -0.001591 0.005591 21.315798 -89.997216 0 0 0 0 0 0


$sequence "ref" {
	"rocky_hoodie.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
