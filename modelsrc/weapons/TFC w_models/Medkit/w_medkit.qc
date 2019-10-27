$modelname "weapons\w_models\w_classic_medkit.mdl"

$upaxis Y

$model "here_take_this_medkit" "w_medkit.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\c_models\c_classic_medkit\"
$cdmaterials "models\props_facemovie\ecg\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "c_classic_medkit_red" }
	{ "c_classic_medkit_blue" }
	{ "c_classic_medkit_custom" }
}

$sequence "idle" {
	"w_medkit.smd"
	fps 30
}

$collisionmodel "w_medkit_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
