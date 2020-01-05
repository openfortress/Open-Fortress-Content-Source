$modelname "weapons\v_models\v_assault_rifle_dm.mdl"

$bodygroup "ar"
{
	studio "v_assault_rifle_dm_v_rifle_m16.smd"
}
$bodygroup "illumpos"
{
	studio "v_assault_rifle_dm_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials ""
$cdmaterials "models\weapons\w_assault_rifle\"

$attachment "muzzle" "v_weapon.flash" -16 0 -1 rotate 0 0 0
$attachment "eject_brass" "v_weapon.shelleject" 0 0 0 rotate 0 0 0

$surfaceprop "default"
$jointsurfaceprop "illumpos"	 "default"

$hboxset "default"

$hbox 0 "weapon_bone"	    -2.50    2.00   -4.00     2.50   12.00   16.00
$hbox 0 "weapon_bone"	    -2.50    5.50   13.00     2.50   11.50   33.00

$definebone "root" "" 0 3.788857 96.738922 0 0 89.999983 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 20.828754 -2.282578 2.656232 -1.157833 51.711967 -4.878966 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187866 -14.058327 -3.263424 -0.127655 -2.992899 4.24407 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000069 -12.375364 0.000025 -0.000115 0.000232 -0.710239 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058853 0.00001 -4.861774 15.935335 16.532581 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.336212 -1.140999 2.084042 68.278328 -116.102972 -105.013811 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.32919 -3.384632 -0.109604 -11.300112 -5.168655 19.311532 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.049376 -3.750048 0.189598 -0.230453 -0.545282 -3.685826 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000008 -1.789236 0.000015 0.000101 0.000402 -4.600844 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.436363 -1.295589 1.218385 75.179196 -147.647886 -128.311771 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.195704 -3.418928 0.041176 -3.618576 3.416664 -1.783962 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.176344 -3.375988 -0.151131 0.51405 -4.571339 3.222607 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000004 -1.822441 0.000031 5.772664 -4.147746 7.529529 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.533356 -1.34807 0.133368 77.044295 145.984694 166.295833 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.22047 -3.342066 -0.018639 1.440022 -10.115671 5.207324 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.08919 -3.409735 0.240448 0.000013 0.000529 -3.49219 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.00001 -1.544365 0 0.00001 0.000126 3.561032 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.522041 -1.136652 -0.889513 72.798622 125.328481 143.387009 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.138083 -3.256807 -0.025223 0.821161 -9.183483 5.602102 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.036553 -2.5735 -0.049286 -1.508434 0.41115 -3.932312 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0 -1.231834 0.000023 -1.312655 -1.678019 10.878202 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.707825 -0.242165 2.765999 -3.081943 -22.705352 -41.867154 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000031 -3.099543 -0.000029 2.091813 -4.320385 4.233426 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000008 -1.649414 0.000012 -0.000231 -0.000753 -8.169851 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -20.754253 -3.026413 1.461231 0.569978 -53.448539 171.73041 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187721 14.058418 3.263432 0.56677 -4.798063 6.568618 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000145 12.375391 0.0001 -7.152867 -0.06131 0.882366 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000069 1.058832 -0.00001 8.19828 19.692597 4.242939 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.01355 1.023684 0.572166 9.774474 -21.897769 -161.571118 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.113708 1.110889 -1.640678 69.84113 -125.117879 -98.474929 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" -0.827826 3.394106 -0.160507 -15.328808 14.851575 0.469756 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.170525 3.688328 -0.068161 -8.453782 -2.755134 -5.682266 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000015 1.789261 -0.000023 -2.616318 3.069264 5.686686 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.135521 1.298033 -0.777336 79.205367 155.9268 -177.875941 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.263576 3.364326 -0.083015 -6.925446 3.233416 -0.954098 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.045218 3.308664 -0.103409 -0.02635 1.898881 -8.134964 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000002 1.822392 0 -0.000277 0.000389 14.699587 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.242195 1.375359 0.303226 69.704642 115.355749 139.086531 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" 0.053246 3.483351 -0.096268 -1.720922 -5.000324 4.364789 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.120401 2.795155 -0.174637 0.002414 0.000452 -11.550191 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.000004 1.544373 0.000053 -0.000044 0.000339 9.368183 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.280205 1.191494 1.32846 61.400198 105.198581 132.017272 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000005 3.297585 0.000031 0.426701 -7.400214 -14.959371 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000004 1.951797 0.000008 0.00065 0.000166 -0.69728 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000011 1.231857 -0.000061 0.000016 0.0004 22.625031 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.788399 0.477585 -2.75021 -6.753738 -25.516504 -23.528851 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000008 3.099566 0.000042 0.933748 -0.959571 1.66938 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000031 1.649393 -0.000019 0.681021 -0.957575 -14.836614 0 0 0 0 0 0
$definebone "v_weapon.flash" "weapon_bone" 0.027634 9.545259 57.493591 -89.999942 -89.999969 0 0 0 0 0 0 0
$definebone "v_weapon.shelleject" "weapon_bone" -1.258392 9.276745 8.060209 -0.000023 159.999997 -0.000019 0 0 0 0 0 0
$definebone "v_weapon.M4A1_Trigger" "weapon_bone" 0 5.50679 2.562974 0.000013 0.000003 -90.000017 0 0 0 0 0 0
$definebone "v_weapon.M4A1_Clip" "weapon_bone" 0.000008 -0.292246 7.188744 0.000013 0.000003 -90.000085 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
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
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_R"
$bonemerge "weapon_bone"
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
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"


$sequence "draw" {
	"anims.smd"
	frames 0 27
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_smg.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"anims.smd"
	frames 43 123
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"anims.smd"
	frames 28 42
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"anims.smd"
	frames 124 203
	activity "ACT_VM_RELOAD" 1
	{ event 5004 9 "Weapon_AR.ClipOut" }
	{ event 5004 31 "Weapon_AR.ClipIn" }
	{ event 5004 59 "Weapon_AR.BoltForward" }
	{ event 5004 58 "Weapon_AR.BoltBack" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
