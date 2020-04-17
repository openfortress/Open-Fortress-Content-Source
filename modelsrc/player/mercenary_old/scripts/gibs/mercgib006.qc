
$modelname "player\gibs\mercenarygib006.mdl"

$bodygroup "Body"
{
	studio "../../parts/smd/mercgib006.smd"
}


$surfaceprop "flesh"



$illumposition 0 1.5 65

$cdmaterials "models\player\mercenary\"

$texturegroup "skinfamilies"
{
	{ "mercenary_gib_red"  }
	{ "mercenary_gib_blue" }
    { "mercenary_gib_custom" }
}

$attachment "bloodpoint" "polymsh" 0 63 -2 rotate 0 0 0






$sequence "idle" {
	"../../parts/smd/mercgib006.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "../../parts/smd/mercgib006_phy.smd"
{
	$mass 40
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
