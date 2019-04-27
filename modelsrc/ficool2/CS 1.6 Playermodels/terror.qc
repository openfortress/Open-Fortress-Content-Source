$modelname "cstrike16/player/terror.mdl"

$upaxis Y

$alwayscollapse "mouth"
$alwayscollapse "necksmooth"
$alwayscollapse "prp_helmet"
$alwayscollapse "R wrist"
$alwayscollapse "R forearm twist"
$alwayscollapse "R Elbow"
$alwayscollapse "R bicep twist"
$alwayscollapse "R Shoulder inside"
$alwayscollapse "R shoulder outside"
$alwayscollapse "L wrist" 
$alwayscollapse "L Forearm twist"
$alwayscollapse "L Elbow"
$alwayscollapse "L bicep twist"
$alwayscollapse "L shoulder outside"
$alwayscollapse "L Shoulder inside"
$alwayscollapse "L ankle"
$alwayscollapse "L Knee"
$alwayscollapse "L butt"
$alwayscollapse "R Ankle"
$alwayscollapse "R Knee"
$alwayscollapse "R Butt"

$model "mercenary" "terror.smd"

$bodygroup "rocket"
{
	blank
	studio "mercenary_rocket.smd"
}

$surfaceprop "flesh"

$illumposition 0 -2.142 40.346

$eyeposition 0 78.62 0

$cdmaterials "effects"
$cdmaterials "models\player\mercenary\"
$cdmaterials "models\player\soldier\"
$cdmaterials "models\weapons\w_rocketlauncher\"
$cdmaterials "cstrike16\player\"
$cdmaterials "models\effects"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "Terrorist_Working1_red"    }
	{ "Terrorist_Working1_blue"   }
	{ "invulnfx_red"          }
	{ "invulnfx_blue"         }
	{ "Terrorist_Working1_custom" }
	{ "invulnfx_mercenary"    }
	{ "Terrorist_Working1_custom" }
	{ "invulnfx_mercenary"    }
}

$attachment "eyes" "bip_head" 0 -3.42 -4.19 rotate 89.73 -90 0
$attachment "righteye" "bip_head" -1.24 -3.42 -4.19 rotate 89.73 -90 0
$attachment "lefteye" "bip_head" 1.24 -3.42 -4.19 rotate 89.73 -90 0
$attachment "back_lower" "bip_spine_0" 0 0 0 rotate 0 0 0
$attachment "foot_L" "bip_foot_L" 0 0 0 rotate 0 0 0
$attachment "foot_R" "bip_foot_R" 0 0 0 rotate 0 0 0
$attachment "partyhat" "bip_head" 1.3 -8.97 -1.49 rotate 84 90 161
$attachment "head" "bip_head" 0 -8.97 -0.49 rotate 87.52 -90 0
$attachment "eyeglow_L" "bip_head" 1.52 -2.34 -5.49 rotate 57.22 38.68 133.6
$attachment "eyeglow_R" "bip_head" -1.52 -2.34 -5.49 rotate 57.22 141.32 -133.6
$attachment "effect_hand_L" "bip_hand_L" 0 0 0 rotate 0 0 0
$attachment "handle_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "effect_hand_R" "bip_hand_R" 0 0 0 rotate 0 0 0
$attachment "flag" "bip_spine_3" 1.42 5.01 8.82 rotate -3.7 10.88 -10.1
$attachment "prop_bone" "bip_pelvis" 0 0 0 rotate 0 0 0
$attachment "prop_bone_1" "bip_pelvis" 0 0 0 rotate 0 0 0
$attachment "prop_bone_2" "bip_pelvis" 0 0 0 rotate 0 0 0
$attachment "prop_bone_3" "bip_pelvis" 0 0 0 rotate 0 0 0
$attachment "prop_bone_4" "bip_pelvis" 0 0 0 rotate 0 0 0
$attachment "prop_bone_5" "bip_pelvis" 0 0 0 rotate 0 0 0
$attachment "prop_bone_6" "bip_pelvis" 0 0 0 rotate 0 0 0

$hboxset "mercenary"
$hbox 1 "bip_head" -6.25 -9 -7.55 6.25 5 5.45 ""
$hbox 0 "bip_pelvis" -10.5 -3 -9 10.5 11 7 ""
$hbox 3 "bip_spine_0" -9.5 -1.5 -10 9.5 5.5 5 ""
$hbox 3 "bip_spine_1" -10 -2 -10.5 10 4 3.5 ""
$hbox 2 "bip_spine_2" -10 -4 -11 10 4 5 ""
$hbox 2 "bip_spine_3" -10 -4.5 -7 10 1.5 5 ""
$hbox 4 "bip_upperArm_L" 0 -4 -3 14 4 3 ""
$hbox 4 "bip_lowerArm_L" 0 -2.75 -4 14 3.75 4 ""
$hbox 4 "bip_hand_L" -2.75 -10 -2.5 1.75 0 4.5 ""
$hbox 5 "bip_upperArm_R" 0 -4 -3 14 4 3 ""
$hbox 5 "bip_lowerArm_R" 0 -4 -3.75 14 4 2.75 ""
$hbox 5 "bip_hand_R" -1.75 0 -4.5 2.75 10 2.5 ""
$hbox 6 "bip_hip_L" 1.5 -5.5 -4 16.5 4.5 4 ""
$hbox 6 "bip_knee_L" 0 -2 -5 18 4 2 ""
$hbox 6 "bip_foot_L" -2.5 -11 -3.75 2.5 3 2.25 ""
$hbox 7 "bip_hip_R" 1.5 -4.5 -4 16.5 5.5 4 ""
$hbox 7 "bip_knee_R" 0 -4 -5 18 2 2 ""
$hbox 7 "bip_foot_R" -2.5 -3 -2.25 2.5 11 3.75 ""
$skipboneinbbox

$definebone "bip_pelvis" "" 0 42.435368 -0.030646 0 0 170.59556 0 0 0 0 0 0
$definebone "bip_spine_0" "bip_pelvis" 0 -7.6717 0 0 0 1.370442 0 0 0 0 0 0
$definebone "bip_spine_1" "bip_spine_0" 0 -4.790932 0 0 0 -1.611272 0 0 0 0 0 0
$definebone "bip_spine_2" "bip_spine_1" 0 -5.565578 0 0 0 5.843863 0 0 0 0 0 0
$definebone "bip_spine_3" "bip_spine_2" 0 -6.472752 0 0 0 16.72561 0 0 0 0 0 0
$definebone "bip_neck" "bip_spine_3" 0 -4.912437 0 0 0 3.400552 0 0 0 0 0 0
$definebone "bip_head" "bip_neck" 0 -3.899429 -0.000002 0 0 -16.054097 0 0 0 0 0 0
$definebone "bip_collar_R" "bip_spine_3" -2.20417 -2.813499 -2.257935 13.429266 70.895185 15.504728 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.000038 9.800024 0.000012 8.292569 41.364739 69.133727 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 14.480991 0.000001 0 -0.000237 -21.316433 0.000073 0 0 0 0 0 0
$definebone "bip_hip_L" "bip_pelvis" 5.827514 2.798294 -0.442891 -12.033386 89.524001 168.247341 0 0 0 0 0 0
$definebone "bip_knee_L" "bip_hip_L" 16.916908 0 0 9.582933 0.000001 0 0 0 0 0 0 0
$definebone "bip_foot_L" "bip_knee_L" 17.962732 0 0 9.601417 86.91146 -71.522552 0 0 0 0 0 0
$definebone "bip_hip_R" "bip_pelvis" -5.82751 2.798252 -0.442897 -12.033373 90.476026 101.752655 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 10.643173 0.000001 0.000004 -89.999955 -90.000031 0 0 0 0 0 0 0
$definebone "bip_collar_L" "bip_spine_3" 2.204173 -2.813492 -2.257935 -13.429266 -70.895185 -164.495286 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000008 -9.800063 0 -8.292877 -138.635602 110.866327 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 14.480949 0 0 -0.000002 21.316447 -90.000017 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 10.64316 0 0 -0.000002 90.000017 0 0 0 0 0 0 0
$definebone "bip_knee_R" "bip_hip_R" 16.916969 0 0 -0.000012 9.582968 90.00001 0 0 0 0 0 0
$definebone "bip_foot_R" "bip_knee_R" 17.962711 0 0 -9.601416 93.088553 108.477427 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.027744 -7.288504 -0.139499 74.928999 -176.637682 -163.748432 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.362812 -7.317844 1.92873 76.987284 178.224758 -169.243128 0 0 0 0 0 0
$definebone "bip_toe_R" "bip_foot_R" 0.000004 7.445688 0 0 0.000002 -29.867885 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.506016 -7.080647 -1.742908 69.60736 153.756685 171.869199 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.657028 -6.745142 4.10573 83.78029 -165.876008 -153.91229 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.604511 -3.299337 3.457885 1.337119 -22.184931 -38.257174 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.604591 3.29933 -3.457897 1.33712 -22.184934 -38.257171 0 0 0 0 0 0
$definebone "rocket_joint" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387927 -20.57429 14.176585 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.656982 6.745106 -4.105747 83.78029 -165.876008 -153.91229 0 0 0 0 0 0
$definebone "bip_toe_L" "bip_foot_L" 0.000001 -7.445684 0 0.000001 0.000002 -29.867888 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.362732 7.317846 -1.928742 76.987284 178.224758 -169.243128 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.027763 7.288553 0.139512 74.928999 -176.637668 -163.748446 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.50605 7.080656 1.7429 69.60736 153.756685 171.869199 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000006 1.968746 0.000029 0.000002 -0.000005 35.580508 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.00001 1.322277 -0.00001 0.000002 -0.000006 19.000217 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000026 2.368963 0.000053 0.000001 -0.000007 42.984672 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.000021 1.636562 -0.000043 -0.000004 -0.000007 19.614046 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000012 2.651695 -0.000036 0.000001 -0.000006 44.884384 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0 2.231041 -0.000023 -0.000001 -0.000006 19.122874 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.000006 2.405672 -0.000036 0.000001 -0.000003 33.119823 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" 0.000008 1.633949 0.000054 -0.000001 -0.000005 23.208382 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000063 2.446821 -0.000006 0 -0.000001 9.906556 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000046 1.546301 -0.000019 -0.000001 -0.000001 -6.813729 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0 -1.968758 -0.000002 0.000003 -0.000004 35.580505 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000002 -1.322315 -0.000001 0.000001 -0.000006 19.000219 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000001 -2.369028 0 0 -0.000005 42.984679 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000001 -1.636528 0.000002 -0.000002 -0.000003 19.614039 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000003 -2.651712 -0.000002 0.000001 -0.000006 44.884384 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000002 -2.231079 0.000002 -0.000004 -0.000005 19.122877 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000001 -2.405657 0.000002 0.000001 -0.000005 33.119827 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0 -1.633957 -0.000001 -0.000004 -0.000006 23.208384 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0 -2.44685 0 -0.000004 0.000003 9.906547 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000002 -1.546307 0 -0.000003 0.000004 -6.813742 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 1.458477 4.657347 -1.549474 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 2.367683 6.755417 -0.983943 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_2" "bip_hand_R" 2.367683 6.755417 -0.983943 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_3" "bip_hand_R" 2.367683 6.755417 -0.983943 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_4" "bip_hand_R" 2.367683 6.755417 -0.983943 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_5" "bip_hand_R" 2.367683 6.755417 -0.983943 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_6" "bip_hand_R" 2.367683 6.755417 -0.983943 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_7" "bip_hand_R" 2.367683 6.755417 -0.983943 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_8" "bip_hand_R" 2.367683 6.755417 -0.983943 11.387928 -20.574297 -75.82342 0 0 0 0 0 0
$definebone "weapon_bone_L" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0
$definebone "weapon_bone_L_1" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0
$definebone "weapon_bone_L_2" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0
$definebone "weapon_bone_L_3" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0
$definebone "weapon_bone_L_4" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0
$definebone "weapon_bone_L_5" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0
$definebone "weapon_bone_L_6" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0
$definebone "weapon_bone_L_7" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0
$definebone "weapon_bone_L_8" "bip_hand_L" -1.458443 -4.657341 1.549471 11.387922 -20.57429 104.17658 0 0 0 0 0 0

$bonemerge "bip_pelvis"
$bonemerge "bip_spine_0"
$bonemerge "bip_spine_1"
$bonemerge "bip_spine_2"
$bonemerge "bip_spine_3"
$bonemerge "bip_collar_R"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_collar_L"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_hand_L"
$bonemerge "weapon_bone"
$bonemerge "weapon_bone_1"
$bonemerge "weapon_bone_L"


$poseparameter "body_pitch" -45 45 loop 360
$poseparameter "body_yaw" -45 45 loop 360

$ikchain "rhand" "bip_hand_R" knee 0 0 0
$ikchain "lhand" "bip_hand_L" knee 0 0 0
$ikchain "rfoot" "bip_foot_R" knee 0 0 0
$ikchain "lfoot" "bip_foot_L" knee 0 0 0

$sequence "ref" {
	"terror.smd"
	fps 30
	ikrule "rhand" release
	ikrule "lhand" release
	ikrule "rfoot" release
	ikrule "lfoot" release
}

$sequence "ragdoll" {
	"terror.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
	ikrule "rhand" release
	ikrule "lhand" release
	ikrule "rfoot" release
	ikrule "lfoot" release
}

$includemodel "player/mercenary_animations.mdl"

$collisionjoints "mercenary_physics.smd"
{
	$mass 100
	$inertia 10
	$damping 0
	$rotdamping 4
	$rootbone "bip_pelvis"

	$jointrotdamping "bip_pelvis" 0

	$jointmassbias "bip_hip_R" 0.8
	$jointconstrain "bip_hip_R" x limit -12 12 0
	$jointconstrain "bip_hip_R" y limit -12 30 0
	$jointconstrain "bip_hip_R" z limit -50 24 0

	$jointmassbias "bip_knee_R" 1.2
	$jointrotdamping "bip_knee_R" 9
	$jointconstrain "bip_knee_R" x limit 0 0 0
	$jointconstrain "bip_knee_R" y limit -12 100 0
	$jointconstrain "bip_knee_R" z limit 0 0 0

	$jointmassbias "bip_hip_L" 0.8
	$jointconstrain "bip_hip_L" x limit -12 12 0
	$jointconstrain "bip_hip_L" y limit -12 30 0
	$jointconstrain "bip_hip_L" z limit -24 50 0

	$jointmassbias "bip_knee_L" 1.2
	$jointrotdamping "bip_knee_L" 9
	$jointconstrain "bip_knee_L" x limit 0 0 0
	$jointconstrain "bip_knee_L" y limit -12 100 0
	$jointconstrain "bip_knee_L" z limit 0 0 0

	$jointmassbias "bip_foot_L" 0.75
	$jointrotdamping "bip_foot_L" 7
	$jointconstrain "bip_foot_L" x limit -30 45 0
	$jointconstrain "bip_foot_L" y limit -19 25 0
	$jointconstrain "bip_foot_L" z limit -25 24 0

	$jointmassbias "bip_spine_0" 1.2
	$jointrotdamping "bip_spine_0" 15
	$jointconstrain "bip_spine_0" x limit -30 15 0
	$jointconstrain "bip_spine_0" y limit -16 16 0
	$jointconstrain "bip_spine_0" z limit -15 15 0

	$jointmassbias "bip_spine_2" 1.6
	$jointrotdamping "bip_spine_2" 10
	$jointconstrain "bip_spine_2" x limit -30 15 0
	$jointconstrain "bip_spine_2" y limit -16 16 0
	$jointconstrain "bip_spine_2" z limit -10 10 0

	$jointmassbias "bip_upperArm_R" 0.8
	$jointrotdamping "bip_upperArm_R" 16
	$jointconstrain "bip_upperArm_R" x limit -50 40 0
	$jointconstrain "bip_upperArm_R" y limit -32 55 0
	$jointconstrain "bip_upperArm_R" z limit -80 25 0

	$jointmassbias "bip_upperArm_L" 0.8
	$jointrotdamping "bip_upperArm_L" 16
	$jointconstrain "bip_upperArm_L" x limit -40 50 0
	$jointconstrain "bip_upperArm_L" y limit -55 32 0
	$jointconstrain "bip_upperArm_L" z limit -80 25 0

	$jointmassbias "bip_lowerArm_L" 1.8
	$jointconstrain "bip_lowerArm_L" x limit 0 0 0
	$jointconstrain "bip_lowerArm_L" y limit 0 0 0
	$jointconstrain "bip_lowerArm_L" z limit -120 -6 0

	$jointmassbias "bip_hand_L" 0.6
	$jointrotdamping "bip_hand_L" 8
	$jointconstrain "bip_hand_L" x limit -30 37 0
	$jointconstrain "bip_hand_L" y limit -12 8 0
	$jointconstrain "bip_hand_L" z limit -20 35 0

	$jointmassbias "bip_lowerArm_R" 1.8
	$jointconstrain "bip_lowerArm_R" x limit 0 0 0
	$jointconstrain "bip_lowerArm_R" y limit 0 0 0
	$jointconstrain "bip_lowerArm_R" z limit -120 -6 0

	$jointmassbias "bip_neck" 0.5
	$jointrotdamping "bip_neck" 9
	$jointconstrain "bip_neck" x limit -20 20 0
	$jointconstrain "bip_neck" y limit -20 20 0
	$jointconstrain "bip_neck" z limit -15 15 0

	$jointmassbias "bip_hand_R" 0.6
	$jointrotdamping "bip_hand_R" 8
	$jointconstrain "bip_hand_R" x limit -37 30 0
	$jointconstrain "bip_hand_R" y limit -8 12 0
	$jointconstrain "bip_hand_R" z limit -35 20 0

	$jointmassbias "bip_head" 1.5
	$jointrotdamping "bip_head" 8
	$jointconstrain "bip_head" x limit -20 20 0
	$jointconstrain "bip_head" y limit -20 20 0
	$jointconstrain "bip_head" z limit -20 20 0

	$jointmassbias "bip_foot_R" 0.75
	$jointrotdamping "bip_foot_R" 7
	$jointconstrain "bip_foot_R" x limit -30 45 0
	$jointconstrain "bip_foot_R" y limit -19 25 0
	$jointconstrain "bip_foot_R" z limit -25 24 0
	$jointcollide "bip_foot_R" "bip_foot_L"
	$jointcollide "bip_foot_R" "bip_knee_L"
	$jointcollide "bip_foot_R" "bip_hip_L"
	$jointcollide "bip_knee_R" "bip_foot_L"
	$jointcollide "bip_knee_R" "bip_knee_L"
	$jointcollide "bip_knee_R" "bip_hip_L"
	$jointcollide "bip_hip_R" "bip_foot_L"
	$jointcollide "bip_hip_R" "bip_knee_L"
	$jointcollide "bip_hip_R" "bip_hip_L"
	$jointcollide "bip_hand_R" "bip_head"
	$jointcollide "bip_hand_R" "bip_spine_2"
	$jointcollide "bip_hand_R" "bip_pelvis"
	$jointcollide "bip_hand_R" "bip_hip_R"
	$jointcollide "bip_lowerArm_R" "bip_head"
	$jointcollide "bip_lowerArm_R" "bip_spine_2"
	$jointcollide "bip_lowerArm_R" "bip_pelvis"
	$jointcollide "bip_lowerArm_R" "bip_hip_R"
	$jointcollide "bip_upperArm_R" "bip_spine_2"
	$jointcollide "bip_hand_L" "bip_hand_R"
	$jointcollide "bip_hand_L" "bip_head"
	$jointcollide "bip_hand_L" "bip_spine_2"
	$jointcollide "bip_hand_L" "bip_pelvis"
	$jointcollide "bip_hand_L" "bip_hip_L"
	$jointcollide "bip_lowerArm_L" "bip_hand_R"
	$jointcollide "bip_lowerArm_L" "bip_lowerArm_R"
	$jointcollide "bip_lowerArm_L" "bip_head"
	$jointcollide "bip_lowerArm_L" "bip_spine_2"
	$jointcollide "bip_lowerArm_L" "bip_pelvis"
	$jointcollide "bip_lowerArm_L" "bip_hip_L"
	$jointcollide "bip_upperArm_L" "bip_spine_2"
}

$collisiontext
{
	break 
	{
		"model" "hl1\player\gibs\hgibs_hgib_skull1"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_hgib_legbone1"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_flesh3"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_hgib_hmeat1"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_hgib_lung1"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_hgib_guts1"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_hgib_b_gib1"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_hgib_b_bone1"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_flesh4"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_flesh2"
		"health" "0"
		"fadetime" "20"
	}
	break 
	{
		"model" "hl1\player\gibs\hgibs_flesh1"
		"health" "0"
		"fadetime" "20"
	}
}
