
$modelname "player\gibs\mercenarygib008.mdl"

$bodygroup "Body"
{
	studio "../../parts/smd/mercgib008.smd"
}


$surfaceprop "flesh"



$illumposition 0 -1 48

$cdmaterials "models\player\mercenary\"

$texturegroup "skinfamilies"
{
	{ "mercenary_gib_red"  }
	{ "mercenary_gib_blue" }
    { "mercenary_gib_custom" }
}


$attachment "bloodpoint" "polymsh" -14 50 -6 rotate 0 0 0




$sequence "idle" {
	"../../parts/smd/mercgib008.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "../../parts/smd/mercgib008_phy.smd"
{
	$mass 8.041666
	$inertia 1
	$damping 0
	$rotdamping 0
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
