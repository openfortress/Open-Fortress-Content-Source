
$modelname "player\gibs\mercenarygib005.mdl"

$bodygroup "Body"
{
	studio "../../parts/smd/mercgib005.smd"
}


$surfaceprop "flesh"



$illumposition 20 0 40

$cdmaterials "models\player\mercenary\"

$texturegroup "skinfamilies"
{
	{ "mercenary_gib_red"  }
	{ "mercenary_gib_blue" }
    { "mercenary_gib_custom" }
}


$attachment "bloodpoint" "polymsh" -14 50 -6 rotate 0 0 0




$sequence "idle" {
	"../../parts/smd/mercgib005.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "../../parts/smd/mercgib005_phy.smd"
{
	$mass 4.702384
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
