// Created by Crowbar 0.58

$modelname "player\gibs\mercenary_lego_gib_rightarm.mdl"

$upaxis Y

$staticprop
$model "gib" "bobgib_rightarm.smd"

$surfaceprop "flesh"

//$ambientboost

//$illumposition -15 55 -2

$cdmaterials "models\player\soldier\"
$cdmaterials "models\player\lego\"
$cdmaterials "models\effects"
$cdmaterials "..\..\effects"
$cdmaterials "\"

$texturegroup "skinfamilies"
{
	{ "bob_merc"              }
	{ "bob_merc_blue"         }
	{ "bob_merc_custom"       }
}

$sequence "idle" {
	"bobgib_rightarm.smd"
	fps 30
}

$collisionmodel "bobgib_rightarm.smd"
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
