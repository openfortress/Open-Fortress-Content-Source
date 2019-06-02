$modelname "catapult/catapult.mdl"
$scale 3
$model ficool2 "catapult.smd"

$cdmaterials "models/catapult"

$sequence ref "catapult_anims.smd" Frames 0 0 fps 30
$sequence idle "catapult_anims.smd" Frames 1 1 fps 30
$sequence launch "catapult_anims.smd" Frames 1 30 fps 30
$sequence pullback "catapult_anims.smd" Frames 40 90 fps 30

$surfaceprop wood
$opaque
$collisionmodel "catapult_phy.smd" {
$automass
$concave
}