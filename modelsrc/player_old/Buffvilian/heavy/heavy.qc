// Created by Crowbar 0.56

$modelname "player/buffvilian.mdl"

$upaxis Y

$model "hench" "civilian_BUFFF_AF.smd" {

	eyeball "eye_0" "bip_head" -1.425952 83.274610 1.799862 "eyeball_r" 1.80356 0 "iris_unused" 0.6
	eyeball "eye_1" "bip_head" 1.425951 83.274610 1.799862 "eyeball_l" 1.80356 0 "iris_unused" 0.6


	flexfile "heavy_01.vta" 
	{
		defaultflex frame 0
		flexpair "CloseLidLo" 1 frame 1
		flexpair "CloseLidUp" 1 frame 2
		flex "SH" frame 3
		flex "EEE" frame 4
		flex "WQU" frame 5
		flex "FFF" frame 6
		flex "AIY" frame 7
		flex "AH" frame 8
		flex "ST" frame 9
		flex "LTH" frame 10
		flex "UH" frame 11
		flex "OH" frame 12
		flex "P" frame 13
		flex "ER" frame 14
		flex "RR" frame 15
		flex "DS" frame 16
		flex "MB" frame 17
		flex "painbig" frame 18
		flex "mad" frame 19
		flex "idleface" frame 20
		flex "actionfire02" frame 21
		flex "happy1" frame 22
		flex "happysmall02" frame 23
		flex "happybig" frame 24
		flex "happybig02" frame 25
		flex "happyBig02Upper" frame 26
		flex "happybigUpper" frame 27
		flex "upperHappy1" frame 28
		flex "upperHappy2" frame 29
		flex "upperAngry2" frame 30
		flex "upperAngry3" frame 31
		flex "upperSuprise1" frame 32
		flex "upperSad1" frame 33
		flex "upperSad3" frame 34
		flex "upperUpset1" frame 35
		flex "upset1" frame 36
		flex "upset2" frame 37
		flex "actionfire01" frame 38
		flex "dead01" frame 39
		flex "dead02" frame 40
		flex "dead03" frame 41
	}

	flexcontroller DS range 0 1 "DS"
	flexcontroller MB range 0 1 "MB"
	flexcontroller right_CloseLid range -1 1 "right_CloseLid"
	flexcontroller left_CloseLid range -1 1 "left_CloseLid"
	flexcontroller multi_CloseLid range -1 1 "multi_CloseLid"
	flexcontroller blink range 0 1 "blink"
	flexcontroller upset1 range 0 1 "upset1"
	flexcontroller upperAngry3 range 0 1 "upperAngry3"
	flexcontroller P range 0 1 "P"
	flexcontroller dead03 range 0 1 "dead03"
	flexcontroller actionfire01 range 0 1 "actionfire01"
	flexcontroller happy1 range 0 1 "happy1"
	flexcontroller painbig range 0 1 "painbig"
	flexcontroller dead02 range 0 1 "dead02"
	flexcontroller upset2 range 0 1 "upset2"
	flexcontroller actionfire02 range 0 1 "actionfire02"
	flexcontroller happybig range 0 1 "happybig"
	flexcontroller upperSad3 range 0 1 "upperSad3"
	flexcontroller upperSad1 range 0 1 "upperSad1"
	flexcontroller upperSuprise1 range 0 1 "upperSuprise1"
	flexcontroller happybig02 range 0 1 "happybig02"
	flexcontroller happysmall02 range 0 1 "happysmall02"
	flexcontroller upperAngry2 range 0 1 "upperAngry2"
	flexcontroller mad range 0 1 "mad"
	flexcontroller idleface range 0 1 "idleface"
	flexcontroller upperHappy1 range 0 1 "upperHappy1"
	flexcontroller upperHappy2 range 0 1 "upperHappy2"
	flexcontroller upperUpset1 range 0 1 "upperUpset1"
	flexcontroller dead01 range 0 1 "dead01"
	flexcontroller happyBig02Upper range 0 1 "happyBig02Upper"
	flexcontroller happybigUpper range 0 1 "happybigUpper"
	flexcontroller Neutral range 0 1 "Neutral"
	flexcontroller ER range 0 1 "ER"
	flexcontroller RR range 0 1 "RR"
	flexcontroller SH range 0 1 "SH"
	flexcontroller EEE range 0 1 "EEE"
	flexcontroller WQU range 0 1 "WQU"
	flexcontroller FFF range 0 1 "FFF"
	flexcontroller AIY range 0 1 "AIY"
	flexcontroller AH range 0 1 "AH"
	flexcontroller ST range 0 1 "ST"
	flexcontroller LTH range 0 1 "LTH"
	flexcontroller UH range 0 1 "UH"
	flexcontroller OH range 0 1 "OH"
	flexcontroller eyes range -45 45 "eyes_updown"
	flexcontroller eyes range -45 45 "eyes_rightleft"

	localvar Neutral
	%CloseLidLoL = (min(1, (1 - (-1 + 2 * (min(max((eyes_updown - -45) / (45 - -45), 0), 1))))) * (1 - (min(max((multi_CloseLid - -1) / (1 - -1), 0), 1))) * (min(max((left_CloseLid - -1) / (1 - -1), 0), 1))) // WARNING: Expression is an approximation of what can only be done via DMX file.
	%CloseLidLoR = (min(1, (1 - (-1 + 2 * (min(max((eyes_updown - -45) / (45 - -45), 0), 1))))) * (1 - (min(max((multi_CloseLid - -1) / (1 - -1), 0), 1))) * (min(max((right_CloseLid - -1) / (1 - -1), 0), 1))) // WARNING: Expression is an approximation of what can only be done via DMX file.
	%CloseLidUpL = (min(1, (1 + (-1 + 2 * (min(max((eyes_updown - -45) / (45 - -45), 0), 1))))) * (min(max((multi_CloseLid - -1) / (1 - -1), 0), 1)) * (min(max((left_CloseLid - -1) / (1 - -1), 0), 1))) // WARNING: Expression is an approximation of what can only be done via DMX file.
	%CloseLidUpR = (min(1, (1 + (-1 + 2 * (min(max((eyes_updown - -45) / (45 - -45), 0), 1))))) * (min(max((multi_CloseLid - -1) / (1 - -1), 0), 1)) * (min(max((right_CloseLid - -1) / (1 - -1), 0), 1))) // WARNING: Expression is an approximation of what can only be done via DMX file.
	%SH = SH
	%EEE = EEE
	%WQU = WQU
	%FFF = FFF
	%AIY = AIY
	%AH = AH
	%ST = ST
	%LTH = LTH
	%UH = UH
	%OH = OH
	%P = P
	%ER = ER
	%RR = RR
	%DS = DS
	%MB = MB
	%painbig = painbig
	%mad = mad
	%idleface = idleface
	%actionfire02 = actionfire02
	%happy1 = happy1
	%happysmall02 = happysmall02
	%happybig = happybig
	%Neutral = Neutral
	%happybig02 = happybig02
	%happyBig02Upper = happyBig02Upper
	%happybigUpper = happybigUpper
	%upperHappy1 = upperHappy1
	%upperHappy2 = upperHappy2
	%upperAngry2 = upperAngry2
	%upperAngry3 = upperAngry3
	%upperSuprise1 = upperSuprise1
	%upperSad1 = upperSad1
	%upperSad3 = upperSad3
	%upperUpset1 = upperUpset1
	%upset1 = upset1
	%upset2 = upset2
	%actionfire01 = actionfire01
	%dead01 = dead01
	%dead02 = dead02
	%dead03 = dead03
}

$surfaceprop "flesh"

$contents "solid"

$illumposition 0 0 0 "bip_pelvis"

$eyeposition 0 83.275 0

$cdmaterials "..\..\effects"
$cdmaterials "models\player\civilian\"
$cdmaterials "models\player\hvyweapon\"
$cdmaterials "models\player\shared\"

$texturegroup "skinfamilies"
{
	{ "DM_Base"            "DM_Base2"           "eyeball_l"		"eyeball_r"		}
	{ "DM_BASE_B"          "DM_Base2"           "eyeball_l"		"eyeball_r"		}
	{ "invulnfx_red"       "invulnfx_red"       "eyeball_invun"	"eyeball_invun"	}
	{ "invulnfx_blue"      "invulnfx_blue"      "eyeball_invun"	"eyeball_invun"	}
	{ "DM_BASE_C"          "DM_Base2"           "eyeball_l"		"eyeball_r"		}
	{ "invulnfx_mercenary" "invulnfx_mercenary" "eyeball_l"		"eyeball_r"		}
	{ "DM_BASE_C"          "DM_Base2"           "eyeball_l"		"eyeball_r"		}
	{ "invulnfx_mercenary" "invulnfx_mercenary" "eyeball_invun"	"eyeball_invun"	}
}

$attachment "eyes" "bip_head" 0 -3.71 -5.15 rotate 90 -90 0
$attachment "righteye" "bip_head" -1.43 -3.71 -5.15 rotate 90 -90 0
$attachment "lefteye" "bip_head" 1.43 -3.71 -5.15 rotate 90 -90 0
$attachment "back_lower" "bip_spine_0" 0 0 0 rotate 0 0 0
$attachment "foot_L" "bip_foot_L" 0 0 0 rotate 0 0 0
$attachment "foot_R" "bip_foot_R" 0 0 0 rotate 0 0 0
$attachment "partyhat" "bip_head" -0.6 -7.8 -1.69 rotate 85 85 -180
$attachment "head" "bip_head" 0 -8.99 -1.69 rotate 85.19 -90 0
$attachment "eyeglow_L" "bip_head" 1.42 -3.72 -6.61 rotate 65 0 90
$attachment "eyeglow_R" "bip_head" -1.42 -3.72 -6.61 rotate 65 180 -90
$attachment "effect_hand_L" "effect_hand_L" 0 0 0 rotate 0 0 0
$attachment "effect_hand_R" "effect_hand_R" 0 0 0 rotate 0 0 0
$attachment "flag" "bip_spine_2" 0 -4.99 9.58 rotate 0.59 2.56 11.46
$attachment "prop_bone" "prop_bone" 0 0 0 rotate 0 0 0
$attachment "prop_bone_1" "prop_bone_1" 0 0 0 rotate 0 0 0
$attachment "prop_bone_2" "prop_bone_2" 0 0 0 rotate 0 0 0
$attachment "prop_bone_3" "prop_bone_3" 0 0 0 rotate 0 0 0
$attachment "prop_bone_4" "prop_bone_4" 0 0 0 rotate 0 0 0
$attachment "prop_bone_5" "prop_bone_5" 0 0 0 rotate 0 0 0
$attachment "prop_bone_6" "prop_bone_6" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -15.175 -30.416 -5.569 11.909 30.416 88.911

$hboxset "heavy"
$hbox 1 "bip_head" -6 -9.35 -8.7 6 4.65 4.3 ""
$hbox 0 "bip_pelvis" -11 0 -9 11 10 3 ""
$hbox 3 "bip_spine_0" -12.5 -4 -14 12.5 6 4 ""
$hbox 3 "bip_spine_1" -12.5 -4 -15 12.5 4 5 ""
$hbox 2 "bip_spine_2" -12.5 -4 -15 12.5 4 5 ""
$hbox 2 "bip_spine_3" -13.11 -8 -12.5 13.11 2 5.16 ""
$hbox 4 "bip_upperArm_L" -3 -5.5 -3.75 19 5.5 3.75 ""
$hbox 4 "bip_lowerArm_L" 0.5 -5 -3.5 16.5 4 3.5 ""
$hbox 4 "bip_hand_L" -5.5 -13 -4.25 1.5 -1 6.25 ""
$hbox 5 "bip_upperArm_R" -3 -5.5 -3.75 19 5.5 3.75 ""
$hbox 5 "bip_lowerArm_R" 0.5 -4 -3.5 16.5 5 3.5 ""
$hbox 5 "bip_hand_R" -1.5 1 -6.25 5.5 13 4.25 ""
$hbox 6 "bip_hip_L" 0 -4.3 -3.9 14 3.7 3.1 ""
$hbox 6 "bip_knee_L" -0.5 -2.5 -4.75 16.5 4.5 2.75 ""
$hbox 6 "bip_foot_L" -2.55 -12.5 -3.8 2.95 2.5 2.2 ""
$hbox 7 "bip_hip_R" 0 -3.7 -3.9 14 4.3 3.1 ""
$hbox 7 "bip_knee_R" -0.5 -2.5 -4.75 16.5 4.5 2.75 ""
$hbox 7 "bip_foot_R" -2.95 -2.5 -2.2 2.55 12.5 3.8 ""
$skipboneinbbox

$bonemerge "bip_pelvis"
$bonemerge "bip_spine_0"
$bonemerge "bip_spine_1"
$bonemerge "bip_spine_2"
$bonemerge "bip_spine_3"
$bonemerge "bip_collar_R"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_neck"
$bonemerge "bip_head"
$bonemerge "bip_collar_L"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_hand_L"
$bonemerge "weapon_bone_L"
$bonemerge "weapon_bone_3"
$bonemerge "weapon_bone_4"
$bonemerge "bip_hand_R"
$bonemerge "weapon_bone"
$bonemerge "weapon_bone_1"
$bonemerge "weapon_bone_2"
$bonemerge "prop_bone"
$bonemerge "prop_bone_1"
$bonemerge "prop_bone_2"
$bonemerge "prop_bone_3"
$bonemerge "prop_bone_4"
$bonemerge "prop_bone_5"
$bonemerge "prop_bone_6"
$bonemerge "medal_bone"
$bonemerge "mvm"

$proceduralbones "heavy.vrd"


$poseparameter "body_pitch" -45 45 loop 360
$poseparameter "body_yaw" -45 45 loop 360

$ikchain "rhand" "bip_hand_R" knee 0 0 0
$ikchain "lhand" "bip_hand_L" knee 0 0 0
$ikchain "rfoot" "bip_foot_R" knee 0 0 0
$ikchain "lfoot" "bip_foot_L" knee 0 0 0

$sequence "ref" {
	"heavy_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release
	ikrule "lhand" release
	ikrule "rfoot" release
	ikrule "lfoot" release
}

$sequence "ragdoll" {
	"heavy_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release
	ikrule "lhand" release
	ikrule "rfoot" release
	ikrule "lfoot" release
}

$includemodel "player/heavy_user_animations.mdl"
$includemodel "player/heavy_animations.mdl"
$includemodel "workshop/player/animations/heavy_workshop_animations.mdl"

$collisionjoints "heavy_physics.smd"
{
	$mass 100
	$inertia 10
	$damping 0
	$rotdamping 4
	$rootbone "bip_pelvis"

	$jointrotdamping "bip_pelvis" 0

	$jointmassbias "bip_hip_R" 0.8
	$jointconstrain "bip_hip_R" x limit -35 12 0
	$jointconstrain "bip_hip_R" y limit -30 25 0
	$jointconstrain "bip_hip_R" z limit -79 35 0

	$jointmassbias "bip_knee_R" 1.2
	$jointrotdamping "bip_knee_R" 3
	$jointconstrain "bip_knee_R" x limit 0 0 0
	$jointconstrain "bip_knee_R" y limit 0 0 0
	$jointconstrain "bip_knee_R" z limit 0 116 0

	$jointmassbias "bip_hip_L" 0.8
	$jointconstrain "bip_hip_L" x limit -12 35 0
	$jointconstrain "bip_hip_L" y limit -30 25 0
	$jointconstrain "bip_hip_L" z limit -35 79 0

	$jointmassbias "bip_knee_L" 1.2
	$jointrotdamping "bip_knee_L" 3
	$jointconstrain "bip_knee_L" x limit 0 0 0
	$jointconstrain "bip_knee_L" y limit 0 116 0
	$jointconstrain "bip_knee_L" z limit 0 0 0

	$jointmassbias "bip_foot_L" 0.75
	$jointrotdamping "bip_foot_L" 7
	$jointconstrain "bip_foot_L" x limit -10 30 0
	$jointconstrain "bip_foot_L" y limit -19 25 0
	$jointconstrain "bip_foot_L" z limit -24 24 0

	$jointmassbias "bip_spine_0" 1.6
	$jointrotdamping "bip_spine_0" 12
	$jointconstrain "bip_spine_0" x limit -30 30 0
	$jointconstrain "bip_spine_0" y limit -16 16 0
	$jointconstrain "bip_spine_0" z limit -20 15 0

	$jointmassbias "bip_spine_1" 1.6
	$jointrotdamping "bip_spine_1" 12
	$jointconstrain "bip_spine_1" x limit -10 10 0
	$jointconstrain "bip_spine_1" y limit -10 10 0
	$jointconstrain "bip_spine_1" z limit -10 10 0

	$jointmassbias "bip_upperArm_R" 0.8
	$jointrotdamping "bip_upperArm_R" 16
	$jointconstrain "bip_upperArm_R" x limit -50 40 0
	$jointconstrain "bip_upperArm_R" y limit -25 55 0
	$jointconstrain "bip_upperArm_R" z limit -80 50 0

	$jointmassbias "bip_upperArm_L" 0.8
	$jointrotdamping "bip_upperArm_L" 16
	$jointconstrain "bip_upperArm_L" x limit -40 50 0
	$jointconstrain "bip_upperArm_L" y limit -25 55 0
	$jointconstrain "bip_upperArm_L" z limit -80 50 0

	$jointmassbias "bip_lowerArm_L" 1.8
	$jointconstrain "bip_lowerArm_L" x limit 0 0 0
	$jointconstrain "bip_lowerArm_L" y limit -120 -6 0
	$jointconstrain "bip_lowerArm_L" z limit 0 0 0

	$jointmassbias "bip_hand_L" 0.6
	$jointrotdamping "bip_hand_L" 8
	$jointconstrain "bip_hand_L" x limit -20 10 0
	$jointconstrain "bip_hand_L" y limit -50 50 0
	$jointconstrain "bip_hand_L" z limit -20 35 0

	$jointmassbias "bip_lowerArm_R" 1.8
	$jointconstrain "bip_lowerArm_R" x limit 0 0 0
	$jointconstrain "bip_lowerArm_R" y limit 0 0 0
	$jointconstrain "bip_lowerArm_R" z limit -120 -6 0

	$jointmassbias "bip_hand_R" 0.6
	$jointrotdamping "bip_hand_R" 8
	$jointconstrain "bip_hand_R" x limit -20 10 0
	$jointconstrain "bip_hand_R" y limit -50 50 0
	$jointconstrain "bip_hand_R" z limit -35 20 0

	$jointmassbias "bip_head" 1.5
	$jointrotdamping "bip_head" 8
	$jointconstrain "bip_head" x limit -50 25 0
	$jointconstrain "bip_head" y limit -35 35 0
	$jointconstrain "bip_head" z limit -26 30 0

	$jointmassbias "bip_foot_R" 0.75
	$jointrotdamping "bip_foot_R" 7
	$jointconstrain "bip_foot_R" x limit -10 30 0
	$jointconstrain "bip_foot_R" y limit -19 25 0
	$jointconstrain "bip_foot_R" z limit -24 24 0
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
	$jointcollide "bip_hand_R" "bip_spine_0"
	$jointcollide "bip_hand_R" "bip_pelvis"
	$jointcollide "bip_hand_R" "bip_hip_R"
	$jointcollide "bip_lowerArm_R" "bip_head"
	$jointcollide "bip_lowerArm_R" "bip_spine_0"
	$jointcollide "bip_lowerArm_R" "bip_pelvis"
	$jointcollide "bip_lowerArm_R" "bip_hip_R"
	$jointcollide "bip_upperArm_R" "bip_spine_0"
	$jointcollide "bip_hand_L" "bip_hand_R"
	$jointcollide "bip_hand_L" "bip_head"
	$jointcollide "bip_hand_L" "bip_spine_0"
	$jointcollide "bip_hand_L" "bip_pelvis"
	$jointcollide "bip_hand_L" "bip_hip_L"
	$jointcollide "bip_lowerArm_L" "bip_hand_R"
	$jointcollide "bip_lowerArm_L" "bip_lowerArm_R"
	$jointcollide "bip_lowerArm_L" "bip_head"
	$jointcollide "bip_lowerArm_L" "bip_spine_0"
	$jointcollide "bip_lowerArm_L" "bip_pelvis"
	$jointcollide "bip_lowerArm_L" "bip_hip_L"
	$jointcollide "bip_upperArm_L" "bip_spine_0"
}

$collisiontext
{
	break 
	{
		"model" "player\gibs\heavygib007"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\heavygib002"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\heavygib005"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\heavygib006"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\random_organ"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\heavygib001"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "7"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "8"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "7"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "8"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "7"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "8"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "7"
	}
	break 
	{
		"model" "player\gibs\heavygib003"
		"health" "0"
		"fadetime" "8"
	}
	break 
	{
		"model" "player\gibs\heavygib004"
		"health" "0"
		"fadetime" "10"
	}
}

$KeyValues
{
}
