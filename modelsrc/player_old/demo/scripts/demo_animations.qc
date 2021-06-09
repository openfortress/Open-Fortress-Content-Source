// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/demo_user_animations.mdl

$definevariable infoNode "demoInfo"
$include "demo_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

//----------------------------------------------------------------------------------
//	Local Weightlists
//----------------------------------------------------------------------------------
$Weightlist Demo_Melee_ArmsBlend {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_1" 1.0
	"bip_spine_2" 1.0
	"bip_spine_3" 1.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_hand_R" 1.0
	"bip_hand_L" 1.0
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
  "bip_head" 1.0
  "bip_neck" 1.0
	}

$weightlist Demo_Melee_HipsTorso {
	"bip_pelvis" 0.75
	"bip_hip_R" 0.25
	"bip_hip_L" 0.25
	"bip_collar_L" 0.0
	"bip_collar_R" 0.0
	"bip_spine_0" 1.0
	}
$Weightlist DemoGrenadeRightArmBlend {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_collar_L" 0.4
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_collar_R" 0.8
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	}

$Weightlist DemoGrenade2RightArmBlend {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_collar_R" 0.9
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	}

$weightlist DemoGrenadeHipsTorso {
	"bip_pelvis" 1.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_collar_L" 0.0
	"bip_collar_R" 0.0
	}

$Weightlist Airwalk_ArmsBlend {

	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_spine_1" 0.4
	"bip_spine_2" 0.6
	"bip_spine_3" 1.0
	}

$Weightlist ArmLGestureBlend {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_neck" 0.0
	"bip_collar_R" 0.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}

$Weightlist ArmLGestureBlend_RUN {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_spine_2" 0.7
	"bip_spine_3" 0.7
	"bip_neck" 0.7
	"bip_head" 0.7
	"bip_collar_R" 0.5
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}

$Weightlist ArmLGestureBlend_RUN_CHEER {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.5
	"bip_spine_1" 0.5
	"bip_spine_2" 0.5
	"bip_spine_3" 0.5
	"bip_neck" 0.5
	"bip_head" 0.5
	"bip_collar_R" 0.5
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}

	
$Weightlist armsblendstun {
  "bip_pelvis" 1.0
	}

$pushd "../animations/dmx"

//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "primary_idle.dmx" lx ly
$sequence ragdollspawn "primary_idle.dmx" lx ly

//-----------------------------------------------------------------------------------
// Primary
//-----------------------------------------------------------------------------------
$MPWeaponAims_lefthandIK	PRIMARY	$infoNode$
$MPWeaponFiring		PRIMARY

//Start Primary Reload
$sequence a_primary_reload primary_reload

$sequence primary_reload "primary_reload.dmx" frames 0 20 fps 30 hidden {
	numframes 23
	subtract a_primary_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_PRIMARY 1
}

$sequence a_primary_reload_loop "primary_reload.dmx" frame 20 40 fps 30 hidden {
	numframes 23
	subtract a_primary_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_PRIMARY_LOOP 1
}

$sequence a_primary_reload_end {
	primary_reload frames 40 52
	subtract a_primary_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_PRIMARY_END 1
}
//End Primary Reload

//Start Primary Crouch Reload

$sequence a_primary_crouch_reload primary_crouch_reload

$sequence primary_crouch_reload "primary_crouch_reload.dmx" frames 0 20 fps 30 hidden {
	numframes 23
	subtract a_primary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY 1
}

$sequence a_primary_crouch_reload_loop "primary_crouch_reload.dmx" frames 20 40 fps 30 hidden  {
	numframes 23
	subtract a_primary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_LOOP 1
}

$sequence a_primary_crouch_reload_end {
	primary_crouch_reload frames 40 50
	subtract a_primary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_END 1
}
//End Primary Crouch Reload

//Start Primary Swim Reload


$sequence a_primary_swim_reload primary_swim_reload

$sequence primary_swim_reload "primary_swim_reload.dmx" frames 0 20 fps 30 hidden {
	numframes 23
	subtract a_primary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_PRIMARY 1
}

$sequence a_primary_swim_reload_loop "primary_swim_reload.dmx" frames 20 40 fps 30 hidden  {
	numframes 23
	subtract a_primary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_PRIMARY_LOOP 1
}

$sequence a_primary_swim_reload_end {
	primary_swim_reload frames 40 50
	subtract a_primary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_PRIMARY_END 1
}

//End of Primary Swim Reload

//Start Primary Airwalk Reload

$sequence a_primary_reload_airwalk primary_reload_airwalk

$sequence primary_reload_airwalk "primary_reload_airwalk.dmx" frames 0 20 fps 30 hidden {
	numframes 23
	subtract a_primary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY 1
}

$sequence a_primary_reload_airwalk_loop "primary_reload_airwalk.dmx" frames 20 40 fps 30 hidden  {
	numframes 23
	subtract a_primary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_LOOP 1
}

$sequence a_primary_reload_airwalk_end {
	primary_reload_airwalk frames 40 50
	subtract a_primary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_END 1
}

//End Primary Airwalk Reload


//Hit flinch
$sequence a_flinch01 "hit_flinch01.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}


//place sapper gesture
$sequence layer_placeSapper_ArmL "primary_placeSapper.dmx" {
	ikrule lhand release range 0 4 20 24
	weightlist LeftArmBlend
	hidden
}
$sequence PRIMARY_placeSapper "primary_placeSapper.dmx" {
	subtract PRIMARY_placeSapper 0
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	addlayer layer_placeSapper_ArmL
	activity ACT_MP_ATTACK_STAND_GRENADE 1
}

//-----------------------------------------------------------------------------------
// Secondary
//-----------------------------------------------------------------------------------
$MPWeaponAims_lefthandIK		SECONDARY	$infoNode$
$MPWeaponFiring		  SECONDARY

//loopable reloads

//Start Secondary Reload
$sequence a_secondary_reload secondary_reload

$sequence secondary_reload "secondary_reload.dmx" frames 0 20 {
	numframes 23
	subtract a_SECONDARY_reload 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_SECONDARY 1
}

$sequence secondary_reload_loop "secondary_reload.dmx" frames 20 40 {
	numframes 23
	subtract a_secondary_reload 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_SECONDARY_LOOP 1
}

$sequence a_secondary_reload_end {
	SECONDARY_reload frames 40 55
	subtract a_secondary_reload 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_SECONDARY_END 1
}
//End Secondary Reload

//Start Secondary Crouch Reload

$sequence a_secondary_crouch_reload secondary_crouch_reload

$sequence secondary_crouch_reload "secondary_crouch_reload.dmx" frames 0 20 fps 30 hidden {
	numframes 23
	subtract a_secondary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY 1
}

$sequence a_secondary_crouch_reload_loop "secondary_crouch_reload.dmx" frames 20 40 fps 30 hidden  {
	numframes 23
	subtract a_secondary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY_LOOP 1
}

$sequence a_secondary_crouch_reload_end {
	secondary_crouch_reload frames 40 55
	subtract a_secondary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY_END 1
}
//End Secondary Crouch Reload

//Start Secondary Swim Reload

$sequence a_Secondary_swim_reload Secondary_swim_reload

$sequence Secondary_swim_reload "Secondary_swim_reload.dmx" frames 0 20 fps 30 hidden {
	numframes 23
	subtract a_Secondary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_Secondary 1
}

$sequence a_Secondary_swim_reload_loop "Secondary_swim_reload.dmx" frames 20 40 fps 30 hidden  {
	numframes 23
	subtract a_Secondary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_Secondary_LOOP 1
}

$sequence a_Secondary_swim_reload_end {
	Secondary_swim_reload frames 40 55
	subtract a_Secondary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_Secondary_END 1
}

//End Secondary Swim Reload

//Start Secondary Reload Airwalk


$sequence a_Secondary_reload_airwalk Secondary_reload_airwalk

$sequence Secondary_reload_airwalk "Secondary_reload_airwalk.dmx" frames 0 20 fps 30 hidden {
	numframes 23
	subtract a_Secondary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_Secondary 1
}

$sequence a_Secondary_reload_airwalk_loop "secondary_reload_airwalk.dmx" frames 20 40 fps 30 hidden  {
	numframes 23
	subtract a_Secondary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_Secondary_LOOP 1
}

$sequence a_Secondary_reload_airwalk_end {
	Secondary_reload_airwalk frames 40 55
	subtract a_Secondary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_Secondary_END 1
}


//End Secondary Reload Airwalk

//--------------------------------------------------------
//primary stun layers
//--------------------------------------------------------

$sequence layer_PRIMARY_Stun_begin "primary_stun_all.dmx" weightlist armsblendstun {
	frames 0 25
	hidden
}

$sequence layer_PRIMARY_stun_middle "primary_stun_all.dmx" weightlist armsblendstun {
	frames 25 55
	hidden
}

$sequence layer_PRIMARY_Stun_end "primary_stun_all.dmx" weightlist armsblendstun {
	frames 60 81
	hidden
}

$animation a_stun_startpose "primary_stun_all.dmx" frames 0 0

$animation a_stun_endpose "primary_stun_all.dmx" frames 60 60

//------------------------------------
//primary stun
//------------------------------------

$sequence PRIMARY_Stun_begin {
	"primary_stun_all.dmx"
	frames 0 25
	snap
	subtract a_stun_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
 	blendlayer layer_PRIMARY_Stun_begin 0 7 25 25
 	activity ACT_MP_STUN_BEGIN 1
}

$sequence PRIMARY_stun_middle {
	"primary_stun_all.dmx"
	frames 25 55
	snap
	subtract a_stun_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
  addlayer layer_PRIMARY_stun_middle
 	activity ACT_MP_STUN_MIDDLE 1
}

$sequence PRIMARY_stun_end {
	"primary_stun_all.dmx"
	frames 60 81
	snap
	subtract a_stun_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
  blendlayer layer_PRIMARY_Stun_end 0 0 10 21
 	activity ACT_MP_STUN_END 1
}



//-----------------------------------------------------------------------------------
// Melee
//-----------------------------------------------------------------------------------
$MPWeaponAims		MELEE	$infoNode$
$DEMOMelee


// This is where all of the Idle, Jump, Swim, and Movement animations are built
$include "demo_movement.qci"

$sequence layer_taunt03 "taunt03.dmx" fps 30 hidden
$sequence taunt03 "taunt03.dmx" noanimation {
	numframes 136
	blendlayer layer_taunt03 0 5 128 135
} { event 5004 23 "Taunt.Demo03BottleCatch" } { event 5004 48 "Taunt.Demo03BottleSlosh" } { event 5004 111 "Taunt.Demo03BottleAh" }

$sequence layer_taunt02 "taunt02.dmx" fps 30 hidden
$sequence taunt02 "taunt02.dmx" noanimation {
	numframes 66
	blendlayer layer_taunt02 0 5 60 65

	event AE_CL_BODYGROUP_SET_VALUE 20 "smile 1"
	event AE_CL_BODYGROUP_SET_VALUE 60 "smile 0"
}

$sequence layer_taunt01 "taunt01.dmx" fps 30 hidden
$sequence taunt01 "taunt01.dmx" noanimation {
	numframes 120
	blendlayer layer_taunt01 0 5 110 120
	ikrule lhand release range 0 5 110 120

} { event 5004 25 "Taunt.Demo01FootStompLight" } { event 5004 41 "Taunt.Demo01FootSpin" } { event 5004 66 "Taunt.Demo01HandClap" } { event 5004 72 "Taunt.Demo01HandClap2" }


//-----------------------------------------------------------------------------------
//HAND GESTURES
//If you use the macros TFLeftHandGesture, or TFRightHandGesture you need to make a weightlist called ArmLGestureBlend, or ArmRGestureBlend.
//i didnt add this to the global weightlist.qci because ppl like to tweak their values per char.
//-----------------------------------------------------------------------------------

//primary go
$sequence layer_gesture_primary_go_armL "gesture_primary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 3 43 45
	ikrule lhand touch "bip_head" range 8 28 28 45 usesource
	hidden
}
$sequence layer_gesture_primary_go_runN_armL "gesture_primary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 3 43 45
	ikrule lhand touch "bip_head" range 8 28 28 45 usesource
	hidden
}
$sequence gesture_primary_go "gesture_primary_go.dmx" {
	subtract gesture_primary_go 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 3 43 45
	blendlayer layer_gesture_primary_go_armL -2.0 -1.0 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_primary_go_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_PRIMARY 1
}
//primary help
$sequence layer_gesture_primary_help_armL "gesture_primary_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 33 35
	ikrule lhand touch "bip_head" range 8 12 30 35 usesource
	hidden
}
$sequence layer_gesture_primary_help_runN_armL "gesture_primary_help_run.dmx" {
	weightlist ArmLGestureBlend_RUN
	ikrule lhand release range 0 5 33 35
	ikrule lhand touch "bip_head" range 8 12 30 35 usesource
	hidden
}
$sequence gesture_primary_help "gesture_primary_help.dmx" {
	subtract gesture_primary_help 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 5 33 35
	blendlayer layer_gesture_primary_help_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_primary_help_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_primary_help_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_PRIMARY 1
}
//primary cheer
$sequence layer_gesture_primary_cheer_armL "gesture_primary_cheer.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 35 37
	hidden
}
$sequence layer_gesture_primary_cheer_runN_armL "gesture_primary_cheer_run.dmx" {
	weightlist ArmLGestureBlend_RUN_CHEER
	ikrule lhand release range 0 5 35 37
	hidden
}
$sequence gesture_primary_cheer "gesture_primary_cheer.dmx" {
	subtract gesture_primary_cheer 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 5 35 37
	blendlayer layer_gesture_primary_cheer_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_primary_cheer_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_primary_cheer_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_PRIMARY 1
}
//primary positive
$sequence layer_gesture_primary_positive_armL "gesture_primary_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 30 35
	ikrule lhand touch "bip_head" range 8 18 18 35 usesource
	hidden
}
$sequence layer_gesture_primary_positive_runN_armL "gesture_primary_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 30 35
	ikrule lhand touch "bip_head" range 8 18 18 35 usesource
	hidden
}
$sequence gesture_primary_positive "gesture_primary_positive.dmx" {
	subtract gesture_primary_positive 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 5 30 35
	blendlayer layer_gesture_primary_positive_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_primary_positive_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_primary_positive_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_PRIMARY 1
}

//secondary
$sequence layer_gesture_secondary_go_armL "gesture_secondary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 3 43 45
	ikrule lhand touch "bip_head" range 8 28 28 45 usesource
	hidden
}
$sequence layer_gesture_secondary_go_runN_armL "gesture_secondary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 3 43 45
	ikrule lhand touch "bip_head" range 8 28 28 45 usesource
	hidden
}
$sequence gesture_secondary_go "gesture_secondary_go.dmx" {
	subtract gesture_secondary_go 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 3 43 45
	blendlayer layer_gesture_secondary_go_armL -2.0 -1.0 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_secondary_go_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_secondary 1
}
//secondary help
$sequence layer_gesture_secondary_help_armL "gesture_secondary_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 33 35
	ikrule lhand touch "bip_head" range 8 12 30 35 usesource
	hidden
}
$sequence layer_gesture_secondary_help_runN_armL "gesture_secondary_help.dmx" {
	weightlist ArmLGestureBlend_RUN
	ikrule lhand release range 0 5 33 35
	ikrule lhand touch "bip_head" range 8 12 30 35 usesource
	hidden
}
$sequence gesture_secondary_help "gesture_secondary_help.dmx" {
	subtract gesture_secondary_help 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 5 33 35
	blendlayer layer_gesture_secondary_help_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_secondary_help_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_secondary_help_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_secondary 1
}
//secondary cheer
$sequence layer_gesture_secondary_cheer_armL "gesture_secondary_cheer.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 35 37
	hidden
}
$sequence layer_gesture_secondary_cheer_runN_armL "gesture_secondary_cheer.dmx" {
	weightlist ArmLGestureBlend_RUN_CHEER
	ikrule lhand release range 0 5 35 37
	hidden
}
$sequence gesture_secondary_cheer "gesture_secondary_cheer.dmx" {
	subtract gesture_secondary_cheer 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 5 35 37
	blendlayer layer_gesture_secondary_cheer_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_secondary_cheer_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_secondary_cheer_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_secondary 1
}
//secondary positive
$sequence layer_gesture_secondary_positive_armL "gesture_secondary_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 30 35
	ikrule lhand touch "bip_head" range 8 18 18 35 usesource
	hidden
}
$sequence layer_gesture_secondary_positive_runN_armL "gesture_secondary_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 30 35
	ikrule lhand touch "bip_head" range 8 18 18 35 usesource
	hidden
}
$sequence gesture_secondary_positive "gesture_secondary_positive.dmx" {
	subtract gesture_secondary_positive 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 5 30 35
	blendlayer layer_gesture_secondary_positive_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_secondary_positive_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_secondary_positive_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_secondary 1
}

//melee
$TFLeftHandGesture gesture_melee_go "gesture_melee_go.dmx" 0 3 43 45 ACT_MP_GESTURE_VC_FINGERPOINT_MELEE
$TFLeftHandGesture gesture_melee_cheer "gesture_melee_cheer.dmx" 0 5 35 37 ACT_MP_GESTURE_VC_FISTPUMP_MELEE
$TFLeftHandGestureIK gesture_melee_help "gesture_melee_help.dmx" 0 5 30 35 ACT_MP_GESTURE_VC_HANDMOUTH_MELEE "bip_head" 6 10 30 35
$TFLeftHandGesture gesture_melee_positive "gesture_melee_POSITIVE.dmx" 0 5 30 35 ACT_MP_GESTURE_VC_THUMBSUP_MELEE


//CHARACTER SELECTION

$sequence selectionMenu_StartPose "selectionMenu_Anim01.dmx" frames 0 0  fps 30

$sequence selectionMenu_Anim01 "selectionMenu_Anim01.dmx" frames 0 92  fps 30 event AE_CL_PLAYSOUND 3 "Selection.DemoEquipment1" event AE_CL_PLAYSOUND 30 "Selection.DemoClipSpin" event AE_CL_PLAYSOUND 61 "Selection.DemoEquipment2"


$sequence selectionMenu_Idle "selectionMenu_Anim01.dmx" loop frames 92 140  fps 30


$popd

