$modelname "weapons/v_models/v_dynamite_bundle.mdl"

$model "v_dynamite" "v_dynamite_bundle_v_dynamite.smd"

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

$attachment "muzzle" "weapon_bone_muzzle" 0 0 0 rotate 90 60 0

$cbox 0 0 0 0 0 0

$bbox -3.02 -29.045 -23.659 35.076 24.779 6.538

$hboxset "default"
$hbox 0 "weapon_bone"	   -12.00   -7.50   -1.00    -4.00    3.50    7.00
$hbox 0 "weapon_bone_L"	    -2.50   -2.50   -2.50     2.50    2.50    2.50

$definebone "root" "" 0 70.500832 -4.842813 0 0 -170.261398 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 3.712229 0.237961 -0.699356 -10.749435 -69.923023 -177.151502 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" -0.184898 -21.635298 14.513811 -15.654812 -59.961015 6.925515 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -3.71223 0.237923 -0.699358 10.749435 69.923023 2.848517 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" 2.963036 3.597836 -21.794127 -29.311538 -48.150173 13.622592 0 0 0 0 0 0
$definebone "weapon_bone" "" 0.000015 0.103531 0.000398 -0.000229 -0.000745 0.000974 0 0 0 0 0 0
$definebone "bip_hand_R" "" -19.685062 51.171459 -0.751292 -1.106668 -24.750116 160.663152 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.85976 2.648357 -2.20733 4.150907 -20.655245 -13.189783 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000002 2.049992 0.000015 -0.001261 -0.000459 6.311174 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000029 1.291435 0.000021 0.002462 0.000571 -4.343314 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.23764 5.361654 -1.505629 85.665312 47.318335 68.463303 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000025 2.789345 0.00004 -0.002227 -0.000453 40.260775 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.00001 1.80471 0.000008 -0.000045 0.000173 10.686172 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.179253 5.739429 0.211216 76.383331 123.293644 145.761305 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000009 2.810356 -0.00004 0.004757 0.000062 32.543085 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000001 2.500305 0.000041 0.000233 -0.000229 21.73761 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.394402 5.35239 1.896419 75.231399 130.66156 153.537598 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000009 2.377289 0.000027 0.001259 0.000177 34.597159 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0 2.165985 0.000011 0.000059 0.000057 24.978507 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.228065 4.50363 3.220803 71.572378 104.519059 131.953476 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000004 2.339756 0.00004 0.01152 -0.000231 30.523641 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000012 1.654003 -0.000051 0.000172 -0.000059 16.552484 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "" -33.458633 60.164989 -12.406751 -3.899148 -9.131572 155.991371 0 0 0 0 0 0
$definebone "bip_hand_L" "" 28.68515 51.171501 -0.751375 1.10747 24.749428 -19.336809 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.859825 -2.648424 2.207253 4.149591 -20.655248 -13.188172 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000002 -2.050014 0.000029 -0.000284 0.000737 6.31016 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.00001 -1.291393 -0.000008 0.000058 -0.000409 -4.343471 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.237587 -5.361671 1.505601 85.663782 47.279235 68.424685 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000017 -2.789352 -0.000004 -0.000054 -0.000392 40.260714 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000006 -1.804684 0.000021 0.000005 0.000119 10.685613 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.179256 -5.739487 -0.211263 76.379547 123.302099 145.768518 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000003 -2.810276 0.000006 -0.00006 0.00024 32.54355 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.00001 -2.50032 -0.000008 0.000004 -0.000445 21.737548 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.394394 -5.352383 -1.896464 75.230825 130.66089 153.536451 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000013 -2.377281 0.00001 0.000056 0.000288 34.59777 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000004 -2.165977 0.000017 0.000002 0.000001 24.978618 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.22805 -4.503586 -3.220822 71.564926 104.544385 131.97577 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -2.339806 -0.000008 -0.000003 0.000229 30.52473 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.654026 0.000008 -0.000005 -0.000169 16.553074 0 0 0 0 0 0
$definebone "weapon_bone_L" "" 18 9.996234 0.003771 0 31.336495 0 0 0 0 0 0 0
$definebone "weapon_bone_muzzle" "weapon_bone_L" 1.203247 1.566113 0.000007 0 0.523593 0.153201 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_1" "weapon_bone_L" 1.982969 0.000298 0 89.999982 -31.336495 0 0 0 0 0 0 0
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
$bonemerge "weapon_bone_L"
$bonemerge "weapon_bone_muzzle"
$bonemerge "bip_lowerArm_L"


$sectionframes 30 120

$sequence "idle" {
	"v_dynamite_bundle_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_dynamite_bundle_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5004 0 "Weapon_Bat.DrawSwoosh2" }
	{ event 5004 15 "Weapon_GrenadeLauncher.Draw" }
	{ event 5004 25 "Weapon_DynamiteBundle.LighterOpen" }
	{ event 5004 15 "Weapon_Bat.DrawSwoosh1" }
	{ event 5004 35 "Weapon_Wrench.HitHand" }
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
	{ event 5004 11 "Weapon_DynamiteBundle.LighterOpen" }
	{ event 5004 0 "Weapon_Bat.DrawSwoosh1" }
	{ event 5004 21 "Weapon_Wrench.HitHand" }
	fadein 0.2
	fadeout 0
	node "raised"
	snap
	fps 30
}

$sequence "autofire" {
	"v_dynamite_bundle_anims\autofire.smd"
	activity "ACT_VM_PULLBACK" 1
	{ event 5004 1 "Weapon_DynamiteBundle.LighterLight" }
	{ event 5004 12 "Weapon_DynamiteBundle.Fuse" }
	{ event 5004 27 "Weapon_DynamiteBundle.LighterClose" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 1 "dynamite_fire follow_attachment muzzle" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}
