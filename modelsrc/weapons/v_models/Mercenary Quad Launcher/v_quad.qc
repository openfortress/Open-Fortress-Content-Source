// Created by Crowbar 0.72

$modelname "weapons\v_models\v_quad.mdl"

$bodygroup "quad"
{
	studio "v_quad.smd"
}

$jigglebone "tape_jig"
{
	is_flexible
	{
		length 50
		tip_mass 10
		pitch_stiffness 100
		pitch_damping 40
		yaw_stiffness 100
		yaw_damping 20
		along_stiffness 5
		along_damping 4
		pitch_constraint -0.7 0.7
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -60 60
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 30
	}
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\w_quad\"
$cdmaterials "models\weapons\v_rocketlauncher\"
$cdmaterials "models\weapons\w_rocketlauncher\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 6.69 9.91 rotate -90 0 0
$attachment "ping" "weapon_bone" 2 22.5 11.5 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -26.673 -25.976 -36.212 48.918 7.272 4.435

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$definebone "weapon_bone" "" 0 -2.245433 -2.109874 0 0 0 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "weapon_bone" 0.132037 9.678565 -23.203333 -0.000917 -44.999247 -90.00033 0 0 0 0 0 0
$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346468 27.875139 -9.114097 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187992 -14.058296 -3.263439 -0.80237 -4.238571 -10.928196 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000172 -12.375359 0.000015 -0.000056 0.001083 -0.710982 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" -0.000008 -1.058868 -0.000013 -0.000003 -0.000014 0.000178 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809822 -0.499924 2.575128 -6.260364 -25.558556 -31.003827 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000021 -3.099533 -0.000011 0.000109 -0.000388 11.828141 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000002 -1.649399 0.000025 -0.000004 -0.000102 -8.170189 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008194 -1.168285 1.640393 61.199082 -118.799625 -115.980041 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.00001 -3.307275 -0.000017 -15.200274 22.794599 12.110536 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000003 -2.892857 0.000025 0.00023 -0.000471 39.534661 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000019 -1.789204 -0.000002 -0.000006 0.000681 8.962985 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108315 -1.322855 0.774736 75.179551 -147.649661 -144.613191 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000065 -3.40881 -0.000036 -6.142049 11.827735 13.019086 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000023 -2.79948 0.000027 0.000056 -0.000513 39.115612 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000002 -1.822456 0.00001 -0.00006 0.000061 14.699776 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.20533 -1.375307 -0.310269 77.043892 145.981428 149.993304 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0.000007 -3.388147 0.000011 0.778662 -0.721245 16.125889 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.00002 -2.085266 -0.000011 0.000067 0.000849 35.566755 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.00001 -1.544357 0.000007 -0.000171 0.000042 12.350342 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193989 -1.163864 -1.333144 69.132846 115.572374 124.447659 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0.000008 -3.297512 -0.000053 1.356032 -7.079535 14.347883 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000003 -1.951859 0.00001 0.000068 -0.000071 28.58476 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000004 -1.231838 0.000001 0.00006 -0.000302 22.624991 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346639 -27.875428 170.885691 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187996 14.058369 3.263475 -0.802198 -4.238341 -10.928023 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000038 12.375374 0.000012 0.001089 0.001083 -0.71053 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000065 1.058849 -0.000001 -0.001258 -0.000464 -0.000295 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809731 0.499907 -2.575147 -6.259344 -25.559024 -31.003953 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000031 3.099554 0.000023 0.000569 0.000331 11.828167 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000015 1.649408 -0.000021 -0.001213 -0.000413 -8.170866 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.00816 1.168339 -1.640384 61.19872 -118.801128 -115.981489 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" -0.000008 3.307274 0.000023 -15.203089 22.794286 12.110433 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000038 2.892815 0.000011 0.002131 0.000474 39.533804 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000015 1.789276 -0.000023 0.000307 -0.000339 8.963768 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108284 1.322809 -0.77475 75.179776 -147.648828 -144.612303 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.00005 3.408827 0.000032 -6.143139 11.82614 13.019257 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000049 2.799551 -0.000015 0.001892 0.000517 39.115759 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.00001 1.822392 0.000008 0.000231 0.000115 14.699687 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205307 1.375271 0.310263 77.044302 145.980076 149.992033 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000019 3.38825 -0.000011 0.776294 -0.722157 16.126297 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000021 2.08526 -0.00001 0.002916 0.000402 35.566349 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000014 1.544346 0.000013 0.00045 -0.000459 12.35154 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193993 1.163803 1.333142 69.132033 115.574574 124.449844 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000007 3.297604 0.000038 1.352173 -7.080496 14.347931 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000021 1.951782 -0.000008 0.003317 -0.000226 28.584391 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.231865 -0.000057 0.000055 0.000236 22.6241 0 0 0 0 0 0
$definebone "rocket" "root" 0 -20 -20 0 0 0 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

$bonemerge "weapon_bone"
$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_meta_0_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_meta_0_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_meta_0_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_meta_0_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_meta_0_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_meta_0_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_meta_0_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"
$bonemerge "illumpos"


$sectionframes 30 118

$sequence "bet_idle" {
	"anims/idle.dmx"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$sequence "bet_fire" {
	"anims/fire.dmx"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$sequence "bet_draw" {
	"anims/draw.dmx"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "bet_reload_loop" {
	"anims/reload.dmx"
	activity "ACT_VM_RELOAD" 1
	//{ event 5004 22 "Weapon_Fist.HitHand" }
	{ event 5004 22 "Weapon_Tommmygun.DrumIn" }
	{ event 5004 24 "Weapon_Tommmygun.BoltForward" }
	{ event 5004 60 "Weapon_RPG.Reload" }
	{ event 5004 60 "Weapon_Fist.HitHand" }
	{ event 5004 79 "Weapon_Tommmygun.DrumOut" }
	{ event 5004 80 "Weapon_Tommmygun.BoltBack" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
