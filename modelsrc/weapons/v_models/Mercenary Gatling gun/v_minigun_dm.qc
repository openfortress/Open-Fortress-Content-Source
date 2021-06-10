// Created by Crowbar 0.56

$modelname "weapons/v_models/v_minigun_dm.mdl"

$model "minigun" "v_minigun_dm_c_minigun.smd"

$model "illumpos" "v_minigun_dm_v_minigun_heavy_illumpos.smd"


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\w_minigun\"

$attachment "muzzle" "weapon_bone" 1.73 -14.29 64.49 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -5 -8.76 25.76 rotate -45 163 90

$cbox 0 0 0 0 0 0

$bbox -63.121 -24.861 -47.927 66.104 16.079 21.585

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10 ""

$definebone "root" "" 0 69.116623 -7.999471 0 0 -161.83061 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 2.131428 -5.805885 -7.194506 -17.631744 -75.55474 -156.575668 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000198 -14.061874 0.000021 -32.440926 -48.398205 -17.732754 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000069 -17.670929 -0.000091 -0.000054 0.000116 -25.321642 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000053 -15.17552 0.000092 0.000061 -0.00012 0.000002 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -2.440086 -1.974159 3.836581 11.662731 -29.679689 -44.861957 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.00001 -4.365025 -0.000031 -0.000049 -0.000064 27.712834 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000004 -1.793221 -0.000019 0.000063 -0.0003 -17.637577 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" -0.751564 -6.85973 4.600678 77.62118 163.776135 172.639617 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000031 -3.600695 -0.000027 0.000114 0.000288 53.652222 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000008 -2.262779 0.000005 0.000119 0.000288 4.468215 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.713017 -6.783451 1.94724 68.239218 155.919983 177.164057 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.040722 -4.737331 -0.016109 0.000048 -0.000046 47.020993 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000008 -2.758436 0.000002 0.000059 0.000072 5.248124 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -1.681061 -6.576679 -0.63975 65.725886 156.982405 -178.818343 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000019 -3.781105 -0.000019 -0.000057 -0.000277 34.561553 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000005 -2.398426 -0.000019 0.000008 0.000123 16.826166 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -2.639675 -6.55286 -2.641623 58.305617 139.782896 169.756581 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" -0.000001 -3.015034 0.00001 -0.000054 0.000122 31.245281 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000004 -1.878273 0.000003 0.000005 -0.000105 20.547064 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -2.13143 -5.805832 -7.194519 17.631744 75.554857 23.423948 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.00032 14.061868 0.000064 -32.440643 -48.398267 -17.732237 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000092 17.670921 -0.000008 -0.000347 0.000283 -25.3225 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" -0.000023 15.17557 0.000049 0.000509 -0.000288 0.00039 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 2.440121 1.974146 -3.836596 11.662951 -29.679792 -44.861854 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000043 4.365026 0.000023 0.000116 0.000213 27.712709 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000007 1.793219 0.000015 -0.000751 -0.000242 -17.637493 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" 0.751503 6.859701 -4.600689 77.62036 163.776121 172.63974 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.000027 3.600677 0.000074 -0.000516 0.000582 53.652175 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000025 2.262817 -0.000046 -0.000395 0.00029 4.468255 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.712975 6.783421 -1.94724 68.240762 155.919546 177.16362 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000006 4.729769 0.000031 0.001554 0.000063 47.020997 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000006 2.758446 0.000011 0.000068 0.000057 5.248176 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 1.681019 6.57667 0.639756 65.725074 156.982638 -178.817947 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.00001 3.781076 0.000042 -0.000406 0.000178 34.561386 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 2.398426 0.000022 -0.000347 0.00018 16.826219 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 2.639694 6.552809 2.6416 58.306306 139.78209 169.755802 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000012 3.015026 -0.000047 0.000688 -0.000219 31.245397 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.00001 1.878235 -0.000026 0.000232 0.000009 20.546481 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.430969 28.438524 5.869861 17.526436 -15.538098 -159.666629 0 0 0 0 0 0
$definebone "v_minigun_barrel" "weapon_bone" 1.785169 -14.267102 22.099501 0.000013 116.621028 0.000008 0 0 0 0 0 0
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
	"anims\m_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "m_fire" {
	"anims\m_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	{ event 6002 6 "3" }
	{ event 6002 12 "3" }
	{ event 6002 18 "3" }
	{ event 6002 24 "3" }
	{ event 6002 30 "3" }
	fadeout 0.2
	node "raised"
	snap
	fps 60
	loop
}

$sequence "m_spool_up" {
	"anims\m_spool_up.smd"
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "m_spool_down" {
	"anims\m_spool_down.smd"
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "m_draw" {
	"anims\m_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Minigun.Draw" }
	fadeout 0.2
	transition "lowered" "raised"
	snap
	fps 45
}

$sequence "m_spool_idle" {
	"anims\m_idle.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}
