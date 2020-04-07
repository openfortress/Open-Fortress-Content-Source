
$modelname "player\gibs\mercenarygib007.mdl"

$bodygroup "Body"
{
	studio "../../parts/smd/mercgib007.smd"
}


$surfaceprop "flesh"



$illumposition 0 -2 77

$cdmaterials "models\player\mercenary\"

$texturegroup "skinfamilies"
{
	{ "mercenary_gib_red"  }
	{ "mercenary_gib_blue" }
    { "mercenary_gib_custom" }
}

$attachment "bloodpoint" "polymsh" 0 70 -1 rotate 0 0 0






$sequence "idle" {
	"../../parts/smd/mercgib007.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "../../parts/smd/mercgib007_phy.smd"
{
	$mass 6.813213
	$inertia 1
	$damping 0
	$rotdamping 2
	$rootbone " "

}

$keyvalues
{
	particles 
	{
		"effect"		 
		{
			"name"			"blood_trail_red_01_goop"
			"attachment_type"			"follow_attachment"
			"attachment_point"			"bloodpoint"
		}
	}
	prop_data 
	{
	}
	world_interactions 
	{
		"onworldimpact"		"bloodsplat"
	}
}
