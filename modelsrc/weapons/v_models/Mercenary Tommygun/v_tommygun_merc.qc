// Created by Crowbar 0.56

$modelname "weapons/v_models/v_tommygun_merc.mdl"

$model "Body" "v_tommygun_merc_c_tommygun_dm.smd"

$model "illumpos" "v_tommygun_merc_illumpos.smd"



$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "\models\weapons\v_tommygun\"

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
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188139 -14.056351 -3.26281 -1.313462 -1.084946 0.480937 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000012 -12.375357 -0.000004 5.788926 -4.813402 -3.68725 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000028 -1.076866 -0.000158 23.890837 8.225074 22.165883 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499924 2.57514 -48.836618 -25.69821 -23.419153 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000008 -3.099545 -0.000019 -17.975765 23.294598 35.853757 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000004 -1.649414 0.000011 10.813057 -3.574666 31.798192 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008194 -1.168278 1.640409 61.199008 -118.79923 -115.979523 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000013 -3.307285 0 -2.296203 24.143411 3.174246 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000004 -2.892872 -0.000002 0.460133 4.948315 85.454997 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000002 -1.789223 0.000004 4.042569 9.538078 61.695399 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108309 -1.322842 0.774755 75.179825 -147.650045 -144.613561 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000002 -3.408817 -0.000008 6.941344 13.844058 27.449748 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000003 -2.799503 0.000004 -0.462864 5.774574 97.512815 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000004 -1.822445 0.000013 -0.000061 0.000204 30.305229 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205317 -1.375324 -0.310268 77.043974 145.982768 149.994261 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0.000001 -3.388153 0.000015 18.522278 -5.533726 57.721342 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000009 -2.085269 0 2.785095 2.638198 45.869259 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0 -1.544365 0.000008 4.74965 7.298776 52.031938 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193981 -1.163879 -1.333145 69.132935 115.573154 124.448302 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297546 -0.000019 31.112782 -4.783992 65.694556 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000007 -1.95185 0.000004 0.000015 0.000003 28.58449 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000001 -1.231848 0 -2.432338 8.086668 49.571714 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -9.002883 -12.651545 -5.565578 -3.181882 -52.014299 145.001174 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187885 14.058393 3.263456 -7.099409 -19.499074 -9.234173 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000005 12.375387 0.000029 3.019983 -6.772682 -14.113204 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000057 1.058861 -0.00001 42.009038 39.610135 33.279175 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809732 0.499899 -2.575141 -1.947057 -37.09444 -2.201908 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000006 3.09956 0.000028 -52.394836 33.60893 13.140085 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000001 1.649403 -0.00001 2.166841 2.140088 6.623968 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008162 1.16832 -1.640392 61.198953 -118.79897 -115.979127 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000019 3.30727 0.000011 -2.182009 3.313223 25.85117 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.033797 3.375307 -0.082048 -2.768495 15.429297 31.75313 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000028 1.789275 -0.000027 -7.770222 -12.86684 88.820505 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.10829 1.322813 -0.774755 75.179893 -147.649471 -144.612851 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000002 3.408812 0.000014 -13.20636 22.084799 56.379906 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000013 2.79956 0.000004 -7.128701 0.320168 75.523827 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000009 1.822411 -0.000002 -11.26239 8.566979 66.05129 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.20529 1.375267 0.310246 77.04448 145.981853 149.99325 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000015 3.388241 -0.000009 -0.353246 13.546675 74.525841 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000003 2.085255 -0.000008 -2.555241 14.075538 46.532419 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.00001 1.544371 0.000027 -12.717902 7.34979 75.298444 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193979 1.16382 1.333126 69.132798 115.574151 124.44919 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000008 3.297583 0.000034 12.719919 -4.593496 91.709641 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000011 1.951794 0 0.757446 12.336178 39.786409 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000009 1.231873 -0.000043 18.186185 12.828393 70.230301 0 0 0 0 0 0
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

$sequence "tommy_draw" {
	"anims\tommy_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Scatter_Gun.Draw" }
	fadeout 0.2
	snap
	fps 60
}

$sequence "tommy_idle" {
	"anims\tommy_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "tommy_fire" {
	"anims\tommy_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadeout 0.2
	snap
	fps 60
}

$sequence "tommy_reload" {
	"anims\tommy_reload_alt.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 24 "Weapon_TommmyGun.DrumOut" }
	{ event 5004 57 "Weapon_TommmyGun.DrumIn" }
	{ event 5004 81 "Weapon_TommmyGun.BoltBack" }
	{ event 5004 92 "Weapon_TommmyGun.BoltForward" }
	snap
	fadeout 0.2
	fps 60
}
