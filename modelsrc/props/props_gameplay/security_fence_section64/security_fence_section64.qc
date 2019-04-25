// Created by Crowbar 0.56

$modelname "props_gameplay\security_fence_section64.mdl"

$staticprop

$bodygroup "Body"
{
	studio "security_fence_section64_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.621 0.298 63.994

$cdmaterials "models\props_gameplay\"

$cbox 0 0 0 0 0 0

$bbox -128.25 -3.338 -0.25 128.25 4.58 128.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"security_fence_section64_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "security_fence_section64_physics.smd"
{
	$mass 80
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
