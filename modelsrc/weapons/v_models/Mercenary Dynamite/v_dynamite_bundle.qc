// Created by Crowbar 0.56

$modelname "weapons/v_models/v_dynamite_bundle.mdl"

$bodygroup "v_dynamite"
{
	studio "v_dynamite_bundle_v_dynamite.smd"
}
$bodygroup "illumpos"
{
	studio "v_dynamite_bundle_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\w_dynamite\"
$cdmaterials "models\props_facemovie\lighter\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone_muzzle" 0.00 0.00 0.00 rotate 90 60 0

$cbox 0 0 0 0 0 0

$bbox -3.02 -29.045 -23.659 35.076 24.779 6.538

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10 ""

$definebone "root" "" 0 70.500832 -4.842813 0 0 -170.2614 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 3.712229 0.237961 -0.699358 -10.749435 -69.923024 -177.151503 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" -0.184898 -21.635294 14.513807 -15.654812 -59.961015 6.925514 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -3.71223 0.237938 -0.69936 10.749435 69.923024 2.848517 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" 2.963051 3.597836 -21.79413 -29.311542 -48.150174 13.622591 0 0 0 0 0 0
$definebone "weapon_bone" "" 0.000015 0.103531 0.000398 -0.000229 -0.000745 0.000974 0 0 0 0 0 0
$definebone "bip_hand_R" "" -19.685062 51.171459 -0.751292 -1.106668 -24.750116 160.663153 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.859764 2.648357 -2.207327 4.150907 -20.655245 -13.189781 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000006 2.049988 0.000017 -0.001261 -0.000458 6.311184 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000029 1.291431 0.000021 0.002463 0.000573 -4.343307 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.23764 5.361649 -1.505625 85.665319 47.318284 68.463365 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000025 2.789352 0.000044 -0.002231 -0.000457 40.260772 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000009 1.804703 0.000008 -0.000051 0.000172 10.686175 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.179253 5.739426 0.211219 76.383331 123.293658 145.761306 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000011 2.810356 -0.00004 0.004756 0.000059 32.543082 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000001 2.500301 0.000036 0.000231 -0.00023 21.737613 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.394409 5.352388 1.89642 75.231399 130.661561 153.5376 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000009 2.377289 0.000027 0.001259 0.000175 34.597145 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0 2.165981 0.000012 0.000059 0.000058 24.978502 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.228065 4.503632 3.220804 71.572378 104.519059 131.953478 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000004 2.339748 0.00004 0.011518 -0.000231 30.523641 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000012 1.653999 -0.000051 0.000172 -0.000059 16.552477 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "" -33.458633 60.164989 -12.406751 -3.899148 -9.131572 155.991372 0 0 0 0 0 0
$definebone "bip_hand_L" "" 28.68515 51.171501 -0.751375 1.10747 24.749428 -19.336809 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.859825 -2.648424 2.207253 4.149591 -20.655247 -13.188172 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000002 -2.050011 0.000029 -0.000286 0.00074 6.31016 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000011 -1.291397 -0.000006 0.000057 -0.000406 -4.343473 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.237587 -5.361671 1.505601 85.663783 47.279205 68.42472 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000017 -2.789345 -0.000004 -0.000055 -0.000397 40.260714 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000006 -1.804691 0.000021 0.000003 0.000117 10.685611 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.17926 -5.739487 -0.211263 76.379547 123.3021 145.768519 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000001 -2.810284 0.000004 -0.000058 0.000234 32.54355 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000011 -2.500317 -0.000008 0.000002 -0.000451 21.737555 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.394394 -5.352386 -1.896464 75.230826 130.660892 153.536452 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000011 -2.377281 0.00001 0.000056 0.000288 34.59777 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000002 -2.165974 0.000017 0.000001 0.000001 24.978617 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.22805 -4.503586 -3.220824 71.564926 104.544386 131.975771 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -2.339806 -0.000008 -0.000003 0.000229 30.52473 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.654034 0.000006 -0.000003 -0.000171 16.553083 0 0 0 0 0 0
$definebone "weapon_bone_L" "" 18 9.996234 0.003771 0 31.336495 0 0 0 0 0 0 0
$definebone "weapon_bone_muzzle" "weapon_bone_L" 1.203250 1.566112 0.000007  0.000000 0.523599 0.153201
$definebone "vm_weapon_bone_L_1" "weapon_bone_L" 1.982973 0.000299 0 89.999983 -31.336495 0 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "" -33.142494 57.019211 -28.867365 33.23178 61.543973 -12.305472 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_collar_L"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_collar_R"
$bonemerge "bip_upperArm_R"
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
$bonemerge "bip_lowerArm_R"
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
$bonemerge "bip_lowerArm_L"
$bonemerge "weapon_bone_muzzle"


$sectionframes 30 120

$sequence "idle" {
	"v_dynamite_bundle_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_dynamite_bundle_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5004 0 "Weapon_Bat.DrawSwoosh2" }
	{ event 5004 17 "Weapon_GrenadeLauncher.Draw" }
	{ event 5004 40 "Weapon_DynamiteBundle.LighterOpen" }
	{ event 5004 16 "Weapon_Bat.DrawSwoosh1" }
	{ event 5004 30 "Weapon_Wrench.HitHand" }
	
	{ event AE_CL_STOP_PARTICLE_EFFECT 2 "dynamite_fire" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "draw" {
	"v_dynamite_bundle_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_GrenadeLauncher.Draw" }
	{ event 5004 24 "Weapon_DynamiteBundle.LighterOpen" }
	{ event 5004 0 "Weapon_Bat.DrawSwoosh1" }
	{ event 5004 14 "Weapon_Wrench.HitHand" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "autofire" {
	"v_dynamite_bundle_anims\autofire.smd"
	activity "ACT_VM_PULLBACK" 1
	{ event 5004 1 "Weapon_DynamiteBundle.LighterLight" }
	{ event 5004 24 "Weapon_DynamiteBundle.Fuse" }
	{ event 5004 32 "Weapon_DynamiteBundle.LighterClose" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "dynamite_fire follow_attachment muzzle" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}
