
$modelname "player\gibs\mercenarygib004.mdl"

$bodygroup "Body"
{
	studio "../../parts/smd/mercgib004.smd"
}


$surfaceprop "flesh"



$illumposition -5 -7 62

$cdmaterials "models\player\mercenary\"

$texturegroup "skinfamilies"
{
	{ "mercenary_gib_red"  }
	{ "mercenary_gib_blue" }
    { "mercenary_gib_custom" }
}






$sequence "idle" {
	"../../parts/smd/mercgib004.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "../../parts/smd/mercgib004_phy.smd"
{
	$mass 3.063447
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}