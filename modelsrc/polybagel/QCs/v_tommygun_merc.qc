// Created by Crowbar 0.58

$modelname "weapons/v_models/v_tommygun_merc.mdl"

$bodygroup "Body"
{
	studio "v_tommygun_merc_models/c_tommygun_dm.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_tommygun_merc_models/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials "\models\weapons\v_tommygun\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 -30 5.6 rotate 0 -90 90
$attachment "eject_brass" "weapon_bone" -0.6 -8.8 5.8 rotate -40 180 90

$cbox 0 0 0 0 0 0

$bbox -13.462 -46.598 -44.386 53.241 11.08 7.836

$definebone "weapon_bone" "" 0 0.313127 -1.720974 -0.000057 0 0 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0.000005 -4.204053 3.393662 0.000057 0 9.237892 0 0 0 0 0 0
$definebone "weapon_bone_2" "weapon_bone" -0.000001 -7.617449 -0.843541 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_3" "weapon_bone" 0.000009 1.977703 6.588398 0.000057 0 0 0 0 0 0 0 0
$definebone "root" "" 0.105893 6.259624 -4.937866 -1.615566 -0.000226 -0.000226 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" -2.028829 -33.304359 17.316284 -67.319376 18.122896 -101.644219 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188138 -14.056347 -3.26281 -1.313462 -1.084946 0.480939 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000014 -12.375349 -0.000006 5.788925 -4.813393 -3.687248 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000027 -1.07687 -0.000158 23.890836 8.225077 22.165882 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809818 -0.499916 2.575143 -48.836621 -25.698186 -23.419139 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000006 -3.099543 -0.000019 -17.975769 23.29461 35.853764 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000006 -1.64941 0.000011 10.813058 -3.574654 31.798192 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008196 -1.16827 1.640412 61.199001 -118.799216 -115.979536 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000015 -3.307285 0.000002 -2.29621 24.143392 3.174257 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000004 -2.892872 -0.000004 0.460125 4.948295 85.455004 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000001 -1.789227 0.000008 4.042548 9.538086 61.695385 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108309 -1.322838 0.774755 75.179825 -147.64999 -144.613588 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000006 -3.408821 -0.000008 6.941335 13.844048 27.449747 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000003 -2.799501 0 -0.462872 5.774569 97.512815 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000003 -1.822449 0.000011 -0.000067 0.000216 30.305232 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205322 -1.37532 -0.310264 77.043981 145.982823 149.99422 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0 -3.388149 0.000017 18.522276 -5.533736 57.721342 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000009 -2.085275 0 2.785084 2.638191 45.869252 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000001 -1.544363 0.000008 4.749638 7.298774 52.031931 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193985 -1.163872 -1.33314 69.132949 115.573154 124.448288 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.000001 -3.297543 -0.000019 31.112786 -4.784008 65.694556 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -1.951854 0 0.000001 -0.000004 28.584506 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000002 -1.231848 0.000004 -2.432354 8.086675 49.571717 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -9.002885 -12.651545 -5.565578 -3.181882 -52.014299 145.001174 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187887 14.058392 3.263456 -7.099409 -19.499074 -9.234173 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000005 12.375387 0.000029 3.019983 -6.772683 -14.113208 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000057 1.058861 -0.00001 42.009045 39.610135 33.279168 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809732 0.499897 -2.575142 -1.947049 -37.094437 -2.201918 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000006 3.09956 0.000025 -52.394832 33.608919 13.140077 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000003 1.649403 -0.000009 2.166847 2.140081 6.623974 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008162 1.168318 -1.640392 61.19896 -118.79897 -115.979154 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000023 3.30727 0.000011 -2.182019 3.313225 25.851185 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.033798 3.375309 -0.082047 -2.768507 15.429302 31.753143 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000025 1.789277 -0.000031 -7.770225 -12.866833 88.820498 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.10829 1.322811 -0.774757 75.179906 -147.649457 -144.612864 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000001 3.408815 0.000013 -13.206375 22.084804 56.379903 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000013 2.799557 0 -7.128699 0.32018 75.523834 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000011 1.822403 0 -11.262373 8.566977 66.05129 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.20529 1.375265 0.310247 77.04448 145.981812 149.993319 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000017 3.388241 -0.000008 -0.35326 13.546685 74.525841 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0 2.085254 -0.000008 -2.555237 14.075552 46.532426 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 1.544371 0.000027 -12.717887 7.349797 75.298444 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193979 1.163818 1.333126 69.132798 115.574124 124.449231 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000009 3.297583 0.000032 12.719912 -4.593495 91.709641 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.00001 1.951796 0 0.757444 12.336185 39.786402 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000009 1.231873 -0.000046 18.186193 12.828407 70.230287 0 0 0 0 0 0

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


$sectionframes 30 371

$sequence "tommy_draw" {
	"v_tommygun_merc_anims\tommy_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Scatter_Gun.Draw" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "tommy_idle" {
	"v_tommygun_merc_anims\tommy_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "tommy_fire" {
	"v_tommygun_merc_anims\tommy_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "tommy_fire_crit" {
	"v_tommygun_merc_anims\tommy_fire.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "tommy_reload" {
	"v_tommygun_merc_anims\tommy_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 15 "Weapon_Nailgun.ClipOut" }
	{ event 5004 37 "Weapon_Nailgun.ClipIn" }
	{ event 5004 60 "Weapon_Tommmygun.BoltBack" }
	{ event 5004 54 "Weapon_Tommmygun.BoltForward" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
