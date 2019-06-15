$modelname "weapons/w_models/w_minigun_dm.mdl"

$upaxis Y

$model "minigun" "w_minigun_dm_w_minigun_reference.smd"

$lod 20
{
	replacemodel "w_minigun_dm_w_minigun_reference.smd" "w_minigun_dm_w_minigun_reference_lod1.smd"
	nofacial
}
$lod 30
{
	replacemodel "w_minigun_dm_w_minigun_reference.smd" "w_minigun_dm_w_minigun_reference_lod2.smd"
	nofacial
}
$lod 40
{
	replacemodel "w_minigun_dm_w_minigun_reference.smd" "w_minigun_dm_w_minigun_reference_lod3.smd"
	nofacial
}
$lod 50
{
	replacemodel "w_minigun_dm_w_minigun_reference.smd" "w_minigun_dm_w_minigun_reference_lod4.smd"
	nofacial
}
$lod 70
{
	replacemodel "w_minigun_dm_w_minigun_reference.smd" "w_minigun_dm_w_minigun_reference_lod5.smd"
	nofacial
}

$surfaceprop "metal"

$illumposition 0 0 0

$cdmaterials "models\weapons\w_minigun\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone" 0 -7.76 57.76 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -8.57 -10.99 5.85 rotate 0 154.21 180

$sequence "ref" {
	"w_minigun_anims\idle.smd"
	activity "ACT_IDLE" 1
	fps 30
}

$sequence "spool_up" {
	"w_minigun_anims\spool_up.smd"
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	fps 30
}

$sequence "fire_loop" {
	"w_minigun_anims\fire_loop.smd"
	activity "ACT_MP_ATTACK_STAND_PRIMARY" 1
	snap
	fps 30
	loop
}

$sequence "spool_down" {
	"w_minigun_anims\spool_down.smd"
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	fps 30
}

$sequence "spin" {
	"w_minigun_anims\spin.smd"
	fps 30
}

$collisionmodel "w_minigun_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}