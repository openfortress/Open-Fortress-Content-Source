// Created by Crowbar 0.71

$modelname "weapons/w_models/w_pistol_akimbo.mdl"

$bodygroup "pistol"
{
	studio "w_pistol_akimbo_akimbo.smd"
}
$bodygroup "illumpos"
{
	studio "w_pistol_akimbo_v_akimbo_pistols_mercenary_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "muzzle" 0 0 0 rotate 0 -90 0
$attachment "eject_brass" "muzzle" 0 6.5 0 rotate -35 180 180

$cbox 0 0 0 0 0 0

$bbox -12.34 -33.704 -30.741 33.858 24.065 6.759

$hboxset "default"
$hbox 0 "weapon_bone" -2 -3 -3 2 7 7
$hbox 0 "weapon_bone_L" -2 -3 -3 2 7 7

$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346468 27.874736 -9.114041 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187881 -14.0583 -3.263427 -0.802314 -4.237367 -10.928368 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" -0.000015 -12.375366 0.000011 -0.000114 -0.000292 -0.710137 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058851 0.000009 0 0.000109 0.000043 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809811 -0.499893 2.57515 -6.26078 -25.558109 -31.004496 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000013 -3.099546 -0.00001 0.00028 -0.000477 11.827561 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000011 -1.649406 0.000023 -0.000124 0.000266 -8.170237 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008194 -1.168251 1.640426 61.198843 -118.799147 -115.979426 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.00004 -3.307299 -0.000002 -15.199987 22.793601 12.109807 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000027 -2.892899 -0.000008 0.00012 0.000129 39.534665 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000011 -1.789227 0.000011 0.000131 0.00041 8.963254 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108299 -1.322836 0.774768 75.179175 -147.647694 -144.610923 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000011 -3.408827 -0.000008 -6.141878 11.826794 13.018647 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000008 -2.799505 0.000011 0.00012 -0.000148 39.115599 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000001 -1.822449 0.000011 -0.000038 0.000473 14.699388 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205315 -1.375305 -0.310242 77.044145 145.984379 149.995968 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.00001 -3.388151 0.000011 0.778766 -0.72157 16.126133 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000026 -2.085274 -0.000002 0.000004 0.000923 35.566649 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.00001 -1.544361 0.000008 0.000005 0.000061 12.350795 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193985 -1.163874 -1.333126 69.133467 115.574123 124.449298 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297504 -0.000021 1.356079 -7.079911 14.347424 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000009 -1.951847 0.00001 0.000064 0.000014 28.58454 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000005 -1.231846 -0.000012 0.000071 0.000353 22.625116 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346926 -27.874624 170.885924 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187801 14.058388 3.263432 -0.802542 -4.237196 -10.928597 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000004 12.37537 0.000102 0.001496 -0.000123 -0.709672 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000053 1.058844 -0.00001 0.000059 -0.000012 0.000001 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809799 0.499861 -2.575109 -6.261515 -25.558339 -31.004076 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.00001 3.099569 0.000038 0.000242 0.000038 11.827731 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000011 1.649395 -0.000029 -0.000449 -0.000198 -8.170385 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008205 1.168289 -1.640403 61.199185 -118.79774 -115.977773 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000048 3.307253 0.000004 -15.201605 22.793419 12.109797 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000005 2.892826 0.000034 0.001025 0.000858 39.534057 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.00002 1.789288 -0.000027 0.000054 -0.000287 8.963845 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108315 1.322777 -0.774765 75.181313 -147.642517 -144.606006 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000013 3.408817 -0.000004 -6.142456 11.826138 13.018971 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00003 2.799557 -0.000013 0.002287 0.000352 39.115646 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000004 1.822392 -0.000012 -0.000455 0.000464 14.69951 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205299 1.375254 0.310238 77.045463 145.980499 149.992061 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000009 3.388262 -0.000011 0.775949 -0.72249 16.126106 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000019 2.085251 -0.000011 0.003837 0.000642 35.566168 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.000002 1.544369 0.000013 0.000007 0.000068 12.350861 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193977 1.163811 1.33312 69.134 115.571104 124.446033 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.00001 3.297588 0.000023 1.355324 -7.08027 14.347419 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000006 1.951794 -0.000006 0.001541 0.000409 28.584518 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000008 1.231831 -0.000055 0.000055 0.000296 22.624804 0 0 0 0 0 0
$definebone "weapon_bone" "" -0.064069 0.184548 -0.023475 0.089267 0.287969 90.15319 0 0 0 0 0 0
$definebone "slide" "weapon_bone" -0.022752 5.038609 2.952832 0 0.000229 -0.001318 0 0 0 0 0 0
$definebone "hammer" "weapon_bone" 0.000101 4.557432 -1.445839 0 0.000229 -0.001261 0 0 0 0 0 0
$definebone "Clip_Empty" "weapon_bone" -0.048131 1.415376 -0.125289 0.000172 -0.000688 -0.002292 0 0 0 0 0 0
$definebone "weapon_bone_L" "" -4.464069 0.184548 -0.023475 0.08921 0.287911 90.15319 0 0 0 0 0 0
$definebone "slide.001" "weapon_bone_L" -0.022748 5.038609 2.952832 0.000057 0.000172 -0.001318 0 0 0 0 0 0
$definebone "hammer.001" "weapon_bone_L" 0.000105 4.557432 -1.445839 0.000057 0.000458 -0.001261 0 0 0 0 0 0
$definebone "Clip_Empty.001" "weapon_bone_L" -0.048131 1.415376 -0.125289 0.000229 -0.000802 -0.002292 0 0 0 0 0 0
$definebone "muzzle" "" -0.072814 5.690045 8.161114 0.287911 -0.089038 0.151318 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

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


$sequence "idle" {
	"w_pistol_akimbo_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$collisionmodel "w_pistol_akimbo_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
