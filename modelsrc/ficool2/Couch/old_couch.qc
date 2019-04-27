$modelname "props_office/old_couch.mdl"
$scale 1.35
$staticprop
$model ficool2 "old_couch.smd"

$lod 10
{ 
replacemodel "old_couch.smd" "old_couch_lod1.smd"
}

$cdmaterials "models/props_office"

$texturegroup "skinfamilies"
{
	{ "old_couch"      }
	{ "old_couch_red"  }
	{ "old_couch_blue" }
}
$sequence idle "old_couch.smd" fps 30
$surfaceprop dirt
$opaque
$collisionmodel "old_couch_physics.smd" { $concave
$automass
}
