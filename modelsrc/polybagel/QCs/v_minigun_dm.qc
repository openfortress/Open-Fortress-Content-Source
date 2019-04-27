// Created by Crowbar 0.58

$modelname "weapons/v_models/v_minigun_dm.mdl"

$bodygroup "minigun"
{
	studio "v_minigun_dm_models/c_minigun.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_minigun_dm_models/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_minigun"
$cdmaterials "\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 -7.76 57.76 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -5 -8.76 25.76 rotate -45 163 90

$cbox 0 0 0 0 0 0

$bbox -63.178 -24.929 -39.867 65.96 2.221 21.601

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "root" "" 0 69.116623 -7.999471 0 0 -161.83061 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 2.131428 -5.805885 -7.194506 -17.631744 -75.55474 -156.575668 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000229 -14.06188 0.000025 -32.440926 -48.398205 -17.732756 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000076 -17.67094 -0.00009 -0.000055 0.000116 -25.321641 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000038 -15.175507 0.000091 0.00006 -0.000115 0 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -2.440086 -1.974152 3.83658 11.66273 -29.679679 -44.861964 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.00001 -4.365026 -0.000031 -0.000052 -0.00006 27.71283 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000003 -1.793217 -0.000015 0.000061 -0.000292 -17.637584 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" -0.75156 -6.859724 4.600682 77.62116 163.776121 172.639658 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000032 -3.600693 -0.000021 0.000112 0.000286 53.652222 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000006 -2.262775 0.000001 0.000116 0.00029 4.468218 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.713013 -6.783447 1.947241 68.239205 155.91997 177.16403 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.040722 -4.737335 -0.016111 0.000054 -0.000054 47.020986 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000008 -2.758442 0.000005 0.000058 0.000061 5.248119 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -1.681061 -6.576677 -0.639751 65.725866 156.982392 -178.818384 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000021 -3.781097 -0.000025 -0.000059 -0.000283 34.56156 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000004 -2.39843 -0.000022 -0.000001 0.000119 16.826168 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -2.639675 -6.552858 -2.641624 58.30561 139.782882 169.75654 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0 -3.015026 0.00001 -0.00006 0.000115 31.245281 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.878258 -0.000003 -0.000002 -0.000112 20.547069 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -2.13143 -5.805832 -7.194519 17.631744 75.554857 23.423948 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.000313 14.061869 0.000063 -32.440643 -48.398263 -17.73224 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000092 17.670925 -0.000004 -0.000342 0.000283 -25.322501 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" -0.000011 15.17556 0.000053 0.000517 -0.000289 0.000399 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 2.440121 1.974142 -3.836599 11.662959 -29.679792 -44.861858 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000046 4.365021 0.000019 0.00012 0.000226 27.712706 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000007 1.793221 0.000017 -0.000742 -0.000234 -17.637485 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" 0.751511 6.859694 -4.600688 77.620354 163.776162 172.639685 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.000023 3.600679 0.000074 -0.000518 0.000574 53.652171 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000023 2.262814 -0.000046 -0.000401 0.000289 4.468262 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.712982 6.783419 -1.947237 68.240796 155.919601 177.163579 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000006 4.729755 0.000032 0.001547 0.000061 47.020986 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000004 2.75845 0.000011 0.000059 0.00006 5.24818 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 1.681023 6.57667 0.639758 65.72506 156.982679 -178.817974 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000008 3.781073 0.00004 -0.000403 0.000174 34.561382 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000008 2.398415 0.00002 -0.000344 0.000173 16.826221 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 2.639702 6.552809 2.641603 58.306293 139.782131 169.755747 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000013 3.015026 -0.000045 0.000686 -0.000224 31.245387 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000007 1.878231 -0.00003 0.000231 0.000003 20.546495 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.430965 28.438517 5.869867 17.526438 -15.5381 -159.666629 0 0 0 0 0 0
$definebone "v_minigun_barrel" "weapon_bone" 0.000107 -7.765344 27.1446 0.000004 116.621028 -0.000002 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_collar_L"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
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
$bonemerge "bip_collar_R"
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
$bonemerge "weapon_bone"


$sequence "m_idle" {
	"v_minigun_dm_anims\m_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "m_fire" {
	"v_minigun_dm_anims\m_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	{ event 6002 3 "3" }
	{ event 6002 6 "3" }
	{ event 6002 9 "3" }
	{ event 6002 12 "3" }
	{ event 6002 15 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$sequence "m_fire_crit" {
	"v_minigun_dm_anims\m_fire.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	{ event 6002 0 "3" }
	{ event 6002 3 "3" }
	{ event 6002 6 "3" }
	{ event 6002 9 "3" }
	{ event 6002 12 "3" }
	{ event 6002 15 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$sequence "m_spool_up" {
	"v_minigun_dm_anims\m_spool_up.smd"
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "m_spool_down" {
	"v_minigun_dm_anims\m_spool_down.smd"
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "m_draw" {
	"v_minigun_dm_anims\m_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Minigun.Draw" }
	fadein 0.2
	fadeout 0.2
	transition "lowered" "raised"
	snap
	fps 30
}

$sequence "m_spool_idle" {
	"v_minigun_dm_anims\m_spool_idle.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$KeyValues
{
}
