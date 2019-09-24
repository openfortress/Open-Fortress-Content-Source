// Created by Crowbar 0.56

$modelname "weapons\w_models\w_bfg_hack.mdl"

$bodygroup "w_rocket"
{
	blank
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 0

$maxeyedeflection 90

$cdmaterials "\models\weapons\w_rocketlauncher\"

$attachment "trail" "cylinder" 0.00 0.00 107.00 rotate 90 -0 0

$cbox 0 0 0 0 0 0

$bbox -0.321 -3.417 -3.417 36.321 3.417 3.417


$sequence "idle" {
	"w_rocket_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
