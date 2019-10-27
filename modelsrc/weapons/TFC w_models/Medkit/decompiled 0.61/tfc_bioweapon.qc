// Created by Crowbar 0.61

$modelname "weapons/w_models/tfc_bioweapon/tfc_bioweapon.mdl"

$bodygroup "body"
{
	studio "tfc_bioweapon_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 2.82 -4.468 5.195

$cdmaterials "models\props_facemovie\ecg\"
$cdmaterials "models\weapons\w_tfc_medpack\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{
		"tfc_medpack"
	}
	{
		"tfc_medpack_blue"
	}
	{
		"tfc_medpack_custom"
	}
}

$cbox 0 0 0 0 0 0

$bbox -8.384 -17.927 -1.23 17.321 23.567 11.62

$definebone "weapon_bone" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"tfc_bioweapon_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
