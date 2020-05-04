// Created by Crowbar 0.56

$modelname "weapons/v_models/v_minigun_dm.mdl"

$bodygroup "minigun"
{
	studio "v_minigun_dm_c_minigun.smd"
}
$bodygroup "illumpos"
{
	studio "v_minigun_dm_v_minigun_heavy_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\w_minigun\"
$cdmaterials "\"

$attachment "muzzle" "weapon_bone" 1.73163 -14.2945 64.4869 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -5 -8.76 25.76 rotate -45 163 90

$cbox 0 0 0 0 0 0

$bbox -63.121 -24.861 -47.927 66.104 16.079 21.585

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10 ""

$definebone "root" "" 0 69.116623 -7.999471 0 0 -161.83061 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 2.131428 -5.805885 -7.194506 -17.631744 -75.55474 -156.575668 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000198 -14.061875 0.000022 -32.440926 -48.398205 -17.732756 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000069 -17.670933 -0.000091 -0.000054 0.000116 -25.321642 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000046 -15.175516 0.000092 0.000061 -0.000119 0.000001 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -2.44009 -1.974157 3.83658 11.662731 -29.679686 -44.861957 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.00001 -4.365024 -0.000027 -0.00005 -0.000063 27.712834 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000006 -1.793217 -0.000019 0.000062 -0.000297 -17.637575 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" -0.751564 -6.85973 4.600679 77.62118 163.776135 172.639631 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000032 -3.600695 -0.000025 0.000114 0.00029 53.652222 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000006 -2.262779 0.000005 0.00012 0.000289 4.468214 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.713017 -6.783453 1.94724 68.239218 155.919983 177.164057 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.040724 -4.737331 -0.016111 0.00005 -0.000047 47.02099 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000008 -2.758438 0.000002 0.00006 0.00007 5.248124 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -1.681065 -6.576681 -0.639751 65.725886 156.982405 -178.818343 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.00002 -3.781109 -0.000023 -0.000056 -0.000279 34.56156 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000006 -2.398426 -0.00002 0.000006 0.000119 16.826163 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -2.639675 -6.55286 -2.641624 58.305617 139.782896 169.756581 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" -0.000001 -3.015034 0.00001 -0.000055 0.000121 31.245285 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000003 -1.878273 0 0.000004 -0.000107 20.547062 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -2.13143 -5.805832 -7.194519 17.631744 75.554857 23.423948 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.00032 14.061868 0.000064 -32.440643 -48.398267 -17.732237 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000092 17.670925 -0.000007 -0.000346 0.000283 -25.322501 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" -0.000019 15.17557 0.000049 0.000511 -0.000288 0.000391 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 2.440121 1.974142 -3.836597 11.662953 -29.679795 -44.861854 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000045 4.365026 0.000023 0.000117 0.000214 27.712706 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000007 1.793221 0.000013 -0.00075 -0.000242 -17.637499 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" 0.751503 6.859695 -4.60069 77.62036 163.776121 172.63974 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.000025 3.600679 0.000076 -0.000517 0.000584 53.652171 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000025 2.262817 -0.000045 -0.000394 0.000292 4.468257 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.712975 6.783419 -1.947239 68.240762 155.919546 177.16362 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000006 4.729769 0.000031 0.001553 0.000066 47.020993 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000006 2.758446 0.00001 0.00007 0.00006 5.248184 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 1.681019 6.576668 0.639757 65.725074 156.982638 -178.817947 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.00001 3.781078 0.000042 -0.000403 0.000179 34.561382 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 2.398426 0.00002 -0.000345 0.000178 16.826217 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 2.639694 6.552809 2.641602 58.306306 139.78209 169.755802 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000012 3.015026 -0.000045 0.00069 -0.000219 31.245397 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000009 1.878235 -0.000025 0.000234 0.000009 20.54649 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.430965 28.438522 5.869863 17.526435 -15.5381 -159.666629 0 0 0 0 0 0
$definebone "v_minigun_barrel" "weapon_bone" 1.785169 -14.267101 22.099501 0.000011 116.621028 0.000007 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

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
