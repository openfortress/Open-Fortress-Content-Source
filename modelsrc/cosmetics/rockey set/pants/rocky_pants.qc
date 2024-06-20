// Created by Crowbar 0.72
// Autor Wendy | @wendylol, 229318205808705536

$modelname "player/items/mercenary/rocky_set/rocky_pants.mdl"

$bodygroup "default"
{
	studio "rocky_pants.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 -0.64 63.181

$cdmaterials "models\workshop\player\items\soldier\rocky_set\"
$cdmaterials "models\player\mercenary\"

$cbox 0 0 0 0 0 0

$bbox -7.143 -3.837 41.365 8.423 3.837 84.996

$definebone "bip_pelvis" "" 0 42.435368 -0.030641 0 0 170.594807 0 0 0 0 0 0
$definebone "bip_hip_L" "bip_pelvis" 5.827514 2.798317 -0.442858 -12.033833 89.524423 168.247285 0 0 0 0 0 0
$definebone "bip_knee_L" "bip_hip_L" 16.916906 0.000115 -0.000051 9.582948 0.003553 0.000001 0 0 0 0 0 0
$definebone "bip_foot_L" "bip_knee_L" 17.96273 -0.000976 -0.000057 9.600764 86.908188 -71.524839 0 0 0 0 0 0
$definebone "bip_toe_L" "bip_foot_L" 0.000021 -7.4457 -0.000307 -0.000342 0.000225 -29.865248 0 0 0 0 0 0
$definebone "bip_hip_R" "bip_pelvis" -5.82751 2.79826 -0.442865 -12.033374 90.476278 101.752607 0 0 0 0 0 0
$definebone "bip_knee_R" "bip_hip_R" 16.91699 0.000212 0.000007 0.006074 9.583121 90.001184 0 0 0 0 0 0
$definebone "bip_foot_R" "bip_knee_R" 17.962738 0.001928 -0.000174 -9.600365 93.094987 108.478499 0 0 0 0 0 0
$definebone "bip_toe_R" "bip_foot_R" 0.000017 7.44571 -0.000074 -0.000342 -0.000058 -29.868346 0 0 0 0 0 0


$sequence "ref" {
	"rocky_pants.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}