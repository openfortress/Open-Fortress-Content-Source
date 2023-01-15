// Created by Crowbar 0.68

$modelname "weapons\w_models\w_sawblade.mdl"

$model "saw" "w_saw_ballista_projectile.smd"
$bodygroup "saw_blur" {
	blank
	studio "w_saw_ballista_projectile_blur.smd"
}
$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\v_saw_ballista\"

$cbox 0 0 0 0 0 0

//$bbox -50.931 -2.517 -6.076 -45.194 2.517 5.172

$sequence "idle" {
	"w_saw_ballista_projectile.smd"
	fadein 0.2
	fadeout 0.2
	fps 30

	loop
}
$sequence "spinning" {
	"anims\saw_spinning.smd"
	fps 60
	loop
	//autoplay
	realtime
}

$collisionmodel "w_saw_ballista_projectile_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
