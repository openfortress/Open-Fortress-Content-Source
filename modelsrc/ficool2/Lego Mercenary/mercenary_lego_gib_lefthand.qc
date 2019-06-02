// Created by Crowbar 0.58

$modelname "player\gibs\mercenary_lego_gib_lefthand.mdl"

$upaxis Y

$staticprop
$model "gib" "bobgib_lefthand.smd"

$surfaceprop "flesh"

//$ambientboost

//$illumposition 20 40 -1

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
	"bobgib_lefthand.smd"
	fps 30
}

$collisionmodel "bobgib_lefthand.smd"
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
