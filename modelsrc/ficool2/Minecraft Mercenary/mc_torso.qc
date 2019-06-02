// Created by Crowbar 0.58

$modelname "player\gibs\mc_torso.mdl"

$upaxis Y

$staticprop
$model "gib" "mc_torso.smd"

$surfaceprop "flesh"

//$ambientboost

//$illumposition 0 77 0

$cdmaterials "models\player\mc\"
$cdmaterials "models\player\mercenary\"
$cdmaterials "models\effects"
$cdmaterials "..\..\effects"
$cdmaterials "\"

$texturegroup "skinfamilies"
{
	{ "mc_mercenary_red" "mc_mercenary_red_head" }
	{ "mc_mercenary_blue" "mc_mercenary_red_head" }
	{ "mc_mercenary_custom" "mc_mercenary_red_head" }
}

$sequence "idle" {
	"mc_torso.smd"
	fps 30
}

$collisionmodel "mc_torso.smd"
{
	$automass
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$keyvalues
{
	prop_data 
	{
	}
}
