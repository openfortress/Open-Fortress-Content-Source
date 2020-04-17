// Created by Crowbar 0.56

$modelname "weapons/v_models/v_pistol_mercenary.mdl"

$bodygroup "v_pistol"
{
	studio "v_pistol_mercenary_c_walther_mercenary.smd"
}
$bodygroup "illumpos"
{
	studio "v_pistol_mercenary_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 5.19 3.46 rotate 0 44.89 180

$cbox 0 0 0 0 0 0

$bbox 8.412 -18.453 -37.08 44.653 20.711 9.201

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

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
	"v_pistol_mercenary_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 20 "Weapon_Pistol.SlideForward" }
	{ event 5004 14 "Weapon_Pistol.SlideBack" }
	{ event 5004 13 "Weapon_Pistol.Draw" }
	{ event 5004 20 "Weapon_Pistol.Draw2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_pistol_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_pistol_mercenary_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"v_pistol_mercenary_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 16 "Weapon_Pistol.ClipOut" }
	{ event 5004 38 "Weapon_Pistol.ClipIn" }
	{ event 5004 46 "Weapon_Pistol.SlideForward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
