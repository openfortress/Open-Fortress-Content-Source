
$modelname "hl1/player/gibs/hgibs_HGIB_B_Bone1.mdl"

$model "gib" "hgibs_HGIB_B_Bone1.smd"

$surfaceprop "flesh"

$illumposition 4 7.4 61

$cdmaterials "hl1\player\gibs\"



$attachment "bloodpoint" "polymsh" -9 14 -6 rotate 0 0 0

$sequence "idle" {
	"hgibs_HGIB_B_Bone1.smd"
	fps 30
}

$collisionmodel "hgibs_HGIB_B_Bone1_phy.smd"
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
