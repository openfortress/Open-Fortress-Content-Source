
$modelname "hl1/player/gibs/hgibs_HGIB_Lung1.mdl"

$model "gib" "hgibs_HGIB_Lung1.smd"

$surfaceprop "flesh"

$illumposition 5 -4 57.5

$cdmaterials "hl1\player\gibs\"



$attachment "bloodpoint" "polymsh" -9 14 -6 rotate 0 0 0

$sequence "idle" {
	"hgibs_HGIB_Lung1.smd"
	fps 30
}

$collisionmodel "hgibs_HGIB_Lung1_phy.smd"
{
	$automass
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
