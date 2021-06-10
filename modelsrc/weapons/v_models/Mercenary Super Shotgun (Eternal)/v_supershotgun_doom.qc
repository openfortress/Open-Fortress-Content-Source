// Created by Crowbar 0.68

$modelname "weapons/v_models/v_supershotgun_doom.mdl"

$bodygroup "supershotgun"
{
	studio "v_supershotgun_doom.smd"
}
$bodygroup "illumpos"
{
	blank
	studio "v_supershotgun_doom_v_supershotgun_mercenary_c_double_barrel_ill.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_supershotgun_mercenary\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 5 31 rotate -90 0 0
$attachment "shell_eject" "illumpos" 15 -6 -20 rotate 0 0 90

$cbox 0 0 0 0 0 0

$bbox -13.974 -27.197 -36.052 45.531 16.718 7.932

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.159071 -0.006046 0.486514 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187983 -14.058311 -3.263454 -0.190734 -0.014002 -0.073963 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" -0.000015 -12.375347 -0.000021 -0.012395 0.000001 -0.000011 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000024 -1.058865 0.000004 0 -0.000001 0.000007 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809813 -0.499912 2.575139 -0.541122 -0.109269 -0.446081 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000005 -3.099537 -0.00001 0.20642 0 0 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000003 -1.649403 0.00001 -0.142593 -0.000002 0.000005 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008195 -1.168274 1.640412 1.11737 2.073471 1.068153 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000009 -3.307281 0.000018 0.21135 -0.265296 0.397839 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000003 -2.892878 -0.000008 0.69001 0 0.000001 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000001 -1.789223 -0.000004 0.156442 0 0.000001 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108308 -1.322849 0.774756 0.617618 1.829459 0.564617 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000008 -3.408813 0.000012 0.227217 -0.107195 0.20641 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.00001 -2.799509 0.000005 0.682694 0 0.000003 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000007 -1.822456 -0.000007 0.25656 0 0.000002 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205316 -1.375328 -0.310264 -0.523687 1.796918 -0.593698 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000003 -3.388149 0.000004 0.281458 0.01359 -0.01258 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000006 -2.085278 0.000005 0.620756 0.000001 0 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000001 -1.544369 0.000011 0.21556 0 -0.000001 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193974 -1.163876 -1.333143 -0.969554 1.934991 -1.124458 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0.000001 -3.297539 -0.000005 0.250406 0.023667 -0.123566 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000001 -1.951847 -0.000004 0.498897 0 0 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000003 -1.231834 -0.000006 0.394871 -0.000001 0 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 2.982521 0.006047 -0.486514 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187927 14.058395 3.263464 -0.190736 -0.01401 -0.073963 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000002 12.375381 0.00004 -0.012393 0.000013 -0.000004 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000052 1.058838 -0.000008 0 0 0.000002 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.290512 27.444244 8.948009 -2.819995 0.170587 -0.382114 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" -0.000177 3.308189 8.917328 0.000058 0 0.000055 0 0 0 0 0 0
$definebone "weapon_bone_3" "weapon_bone_1" 1.619127 2.353828 -0.006926 0.000003 0 0 0 0 0 0 0 0
$definebone "weapon_bone_4" "weapon_bone_1" -1.619097 2.353828 -0.006931 0.000003 0 0 0 0 0 0 0 0
$definebone "weapon_bone_hook" "weapon_bone_1" -1.488638 -1.570435 12.670902 0.000008 0 0 0 0 0 0 0 0
$definebone "weapon_bone_reel" "weapon_bone_1" 2.78462 0.253456 12.730646 0.000017 0 0.000001 0 0 0 0 0 0
$definebone "weapon_bone_2" "weapon_bone" -0.000389 7.080765 4.185638 -0.240677 0 0.000056 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193974 1.163811 1.333126 -0.969562 1.934991 -1.124464 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000009 3.297607 0.00003 0.250407 0.023703 -0.123555 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.00001 1.951797 0.000011 0.498897 -0.000039 0.000001 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.23188 -0.000044 0.394871 0 0 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.80975 0.499878 -2.575135 -0.541119 -0.109281 -0.446077 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000002 3.099571 0.000012 0.206421 0.000017 0.00001 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000012 1.649399 -0.000012 -0.142593 -0.00001 -0.000003 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008169 1.168297 -1.640399 1.117399 2.073464 1.068183 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000037 3.307266 -0.000024 0.211354 -0.265285 0.397836 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000026 2.892815 0.000036 0.690005 -0.000001 0.000006 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000026 1.789261 -0.00003 0.156441 -0.000001 -0.000001 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108294 1.3228 -0.774757 0.617647 1.82945 0.564646 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0 3.408821 0.000002 0.227218 -0.107194 0.20641 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000021 2.799561 -0.000001 0.682694 0.000002 0 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000012 1.822372 0.000001 0.256559 0.000004 0.000002 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205289 1.375267 0.310243 -0.52371 1.79691 -0.59372 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000021 3.388245 -0.000004 0.281458 0.013557 -0.012591 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000003 2.085258 -0.000007 0.620749 0.000044 0.000003 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000007 1.544357 0.000017 0.215555 -0.000006 0.000004 0 0 0 0 0 0
$definebone "illumpos" "" 0 0 0 0 0 0 0 0 0 0 0 0

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
$bonemerge "weapon_bone"
$bonemerge "weapon_bone_1"
$bonemerge "weapon_bone_3"
$bonemerge "weapon_bone_4"
$bonemerge "weapon_bone_hook"
$bonemerge "weapon_bone_reel"
$bonemerge "weapon_bone_2"
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"
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
$bonemerge "illumpos"


$sectionframes 30 134

$poseparameter "reel_direction" -1 1 loop 30

$weightlist "weights_layer_reel" {
	 "root" 0
	 "bip_upperArm_L" 0
	 "bip_lowerArm_L" 0
	 "bip_wrist_L" 0
	 "bip_hand_L" 0
	 "bip_thumb_0_L" 0
	 "bip_thumb_1_L" 0
	 "bip_thumb_2_L" 0
	 "bip_index_meta_0_L" 0
	 "bip_index_0_L" 0
	 "bip_index_1_L" 0
	 "bip_index_2_L" 0
	 "bip_middle_meta_0_L" 0
	 "bip_middle_0_L" 0
	 "bip_middle_1_L" 0
	 "bip_middle_2_L" 0
	 "bip_ring_meta_0_L" 0
	 "bip_ring_0_L" 0
	 "bip_ring_1_L" 0
	 "bip_ring_2_L" 0
	 "bip_pinky_meta_0_L" 0
	 "bip_pinky_0_L" 0
	 "bip_pinky_1_L" 0
	 "bip_pinky_2_L" 0
	 "bip_upperArm_R" 0
	 "bip_lowerArm_R" 0
	 "bip_wrist_R" 0
	 "bip_hand_R" 0
	 "weapon_bone" 0
	 "weapon_bone_1" 0
	 "weapon_bone_3" 0
	 "weapon_bone_4" 0
	 "weapon_bone_hook" 1
	 "weapon_bone_reel" 1
	 "weapon_bone_2" 0
	 "bip_pinky_meta_0_R" 0
	 "bip_pinky_0_R" 0
	 "bip_pinky_1_R" 0
	 "bip_pinky_2_R" 0
	 "bip_thumb_0_R" 0
	 "bip_thumb_1_R" 0
	 "bip_thumb_2_R" 0
	 "bip_index_meta_0_R" 0
	 "bip_index_0_R" 0
	 "bip_index_1_R" 0
	 "bip_index_2_R" 0
	 "bip_middle_meta_0_R" 0
	 "bip_middle_0_R" 0
	 "bip_middle_1_R" 0
	 "bip_middle_2_R" 0
	 "bip_ring_meta_0_R" 0
	 "bip_ring_0_R" 0
	 "bip_ring_1_R" 0
	 "bip_ring_2_R" 0
	 "illumpos" 0
}

$weightlist "weights_es_draw" {
	 "root" 1
	 "bip_upperArm_L" 1
	 "bip_lowerArm_L" 1
	 "bip_wrist_L" 1
	 "bip_hand_L" 1
	 "bip_thumb_0_L" 1
	 "bip_thumb_1_L" 1
	 "bip_thumb_2_L" 1
	 "bip_index_meta_0_L" 1
	 "bip_index_0_L" 1
	 "bip_index_1_L" 1
	 "bip_index_2_L" 1
	 "bip_middle_meta_0_L" 1
	 "bip_middle_0_L" 1
	 "bip_middle_1_L" 1
	 "bip_middle_2_L" 1
	 "bip_ring_meta_0_L" 1
	 "bip_ring_0_L" 1
	 "bip_ring_1_L" 1
	 "bip_ring_2_L" 1
	 "bip_pinky_meta_0_L" 1
	 "bip_pinky_0_L" 1
	 "bip_pinky_1_L" 1
	 "bip_pinky_2_L" 1
	 "bip_upperArm_R" 1
	 "bip_lowerArm_R" 1
	 "bip_wrist_R" 1
	 "bip_hand_R" 1
	 "weapon_bone" 1
	 "weapon_bone_1" 1
	 "weapon_bone_3" 1
	 "weapon_bone_4" 1
	 "weapon_bone_hook" 0
	 "weapon_bone_reel" 0
	 "weapon_bone_2" 1
	 "bip_pinky_meta_0_R" 1
	 "bip_pinky_0_R" 1
	 "bip_pinky_1_R" 1
	 "bip_pinky_2_R" 1
	 "bip_thumb_0_R" 1
	 "bip_thumb_1_R" 1
	 "bip_thumb_2_R" 1
	 "bip_index_meta_0_R" 1
	 "bip_index_0_R" 1
	 "bip_index_1_R" 1
	 "bip_index_2_R" 1
	 "bip_middle_meta_0_R" 1
	 "bip_middle_0_R" 1
	 "bip_middle_1_R" 1
	 "bip_middle_2_R" 1
	 "bip_ring_meta_0_R" 1
	 "bip_ring_0_R" 1
	 "bip_ring_1_R" 1
	 "bip_ring_2_R" 1
	 "illumpos" 1
}

$animation "reel_fly_corrective_animation" "anims\reel_fly.smd" {
}

$animation "reel_base_corrective_animation" "v_supershotgun_doom_anims\reel_base_corrective_animation.smd" {
}

$animation "reel_pull_corrective_animation" "anims\reel_pull.smd" {
}

$animation "reel_base" "v_supershotgun_doom_anims\reel_base.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "reel_base_corrective_animation" 0
	weightlist "weights_layer_reel"
}

$animation "reel_fly" "v_supershotgun_doom_anims\reel_fly.smd" {
	fps 120
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "reel_fly_corrective_animation" 0
	weightlist "weights_layer_reel"
}

$animation "reel_pull" "v_supershotgun_doom_anims\reel_pull.smd" {
	fps 120
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "reel_pull_corrective_animation" 0
	weightlist "weights_layer_reel"
}

$sequence "layer_reel" {
	"reel_fly"
	"reel_base"
	"reel_pull"
	autoplay
	blend "reel_direction" -1 1
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "es_draw" {
	"anims\es_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Scatter_Gun.Draw" }
	{ event 5004 18 "Weapon_SuperShotGun.TubeClose" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
	weightlist "weights_es_draw"
}

$sequence "es_idle" {
	"anims\es_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	weightlist "weights_es_draw"
}

$sequence "es_fire" {
	"anims\es_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
	weightlist "weights_es_draw"
}

$sequence "es_hook_shot" {
	"anims\es_hookshot.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
	weightlist "weights_es_draw"
}

$sequence "es_reload" {
	"anims\es_reload_fast.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 19 "Weapon_SuperShotGun.TubeOpen" }
	{ event 6002 40 "4" }
	{ event 6002 40 "4" }
	{ event 5004 55 "Weapon_SuperShotGun.ShellsIn" }
	{ event 5004 84 "Weapon_SuperShotGun.TubeClose" }
	fadein 0.1
	fadeout 0.2
	node "raised"
	fps 60
	weightlist "weights_es_draw"
}
