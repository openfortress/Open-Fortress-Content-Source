$modelname "weapons/w_models/w_crowbar.mdl"

$upaxis Y

$model "crowbar" "w_crowbar_medic_crowbar.smd"

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\props_facemovie\medic_crowbar\"
$cdmaterials "\"

$texturegroup "skinfamilies"
{
	{ "medic_crowbar"        }
	{ "medic_crowbar_blue"   }
	{ "medic_crowbar_purple" }
}

$sequence "ref" {
	"w_crowbar_medic_crowbar.smd"
	fps 30
}

$collisionmodel "w_crowbar_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}