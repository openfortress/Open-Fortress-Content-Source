$modelname "weapons/v_models/v_pistol_mercenary.mdl"

$model "pistol_R" "pistol_R.smd"
$model "pistol_L" "pistol_L.smd"
$bodygroup "illumpos"
{
	blank
	studio "illumpos.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_pistol\"

$attachment "muzzle" "muzzle_attach" 0 0 0 rotate 0 90 0
$attachment "eject_brass" "eject_attach" 0 0 0 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$bbox -12.34 -33.704 -30.741 33.858 24.065 6.759

$hboxset "default"
$hbox 0 "weapon_bone_R" -2 -3 -3 2 7 7
$hbox 0 "weapon_bone_L" -2 -3 -3 2 7 7

$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"
$bonemerge "bip_wrist_R"


$sequence "draw" {
	"anims\pistol_draw_rack.smd"
	activity "ACT_VM_DRAW" 4
	{ event 5004 16 "Weapon_Pistol.SlideBack" }
	{ event 5004 40 "Weapon_Pistol.SlideForward" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 75
}

$sequence "draw_alt" {
	"anims\pistol_draw_simple.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 25 "Weapon_Pistol.SlideForward" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 75
}

$sequence "idle" {
	"anims\pistol_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"anims\pistol_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	snap
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "reload" {
	"anims\pistol_reload_spin.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 40 "Weapon_Pistol.ClipOut" }
	{ event 5004 68 "Weapon_Pistol.ClipIn" }
	{ event 5004 85 "Weapon_Pistol.SlideForward" }
	fadein 0.2
	fadeout 0
	snap
	fps 60
}
