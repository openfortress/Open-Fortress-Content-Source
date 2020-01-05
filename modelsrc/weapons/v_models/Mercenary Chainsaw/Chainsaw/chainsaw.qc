// Created by Crowbar 0.56

$modelname "props_swamp\chainsaw.mdl"

$staticprop

$bodygroup "Body"
{
	studio "chainsaw.smd"
}

$lod 20
{
	replacemodel "chainsaw.smd" "chainsaw_lod1.smd"
	nofacial
}
$lod 40
{
	replacemodel "chainsaw.smd" "chainsaw_lod2.smd"
	nofacial
}
$lod 60
{
	replacemodel "chainsaw.smd" "chainsaw_lod3.smd"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "Models\props_swamp\"

$cbox 0 0 0 0 0 0

$bbox -18.514 -11.706 -11.304 37.538 9.918 15.434


$sequence "idle" {
	"chainsaw_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$collisionmodel "chainsaw_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 23

}
