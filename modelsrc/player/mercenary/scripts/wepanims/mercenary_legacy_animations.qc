// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_legacy.mdl

$definevariable infoNode "mercenaryInfo"
$include "../mercenary_definebones.qci"

// include the file that sets up the ikchains
$include "../../../TF_animation_rules/ruleshierarchy.qci"
$include "../../../TF_animation_rules/TF_macros_list_merc.qci"

$pushd "../../animations/dmx"

//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "primary_idle.dmx" lx ly
$sequence ragdollspawn "primary_idle.dmx" lx ly


//-----------------------------------------------------------------------------------
// Mercenary-specific weightlists
//-----------------------------------------------------------------------------------
$weightlist armsblendMelee {
	"bip_pelvis" 0.0
	"bip_collar_r" 1.0
	"bip_collar_l" 1.0
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

$Weightlist Swim_Melee_SwingBody {

  "bip_spine_1" 1.0
  "bip_spine_2" 1.0
  "bip_spine_3" 1.0
	}

$Weightlist Swim_Melee_SwingArms {

  "bip_collar_R" 1.0
  "bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
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
	
$Weightlist armsblendstun {
  "bip_pelvis" 1.0
	}

$Weightlist CrowbarMercStandArmsBlend {
	"bip_pelvis" 1.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.7
	"bip_spine_1" 0.8
	"bip_spine_2" 0.9
	"bip_spine_3" 1.0
	"bip_collar_R" 1.0
	"bip_collar_L" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_head" 0.5
}

//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// LEGACY animations (primary, secondary etc)
// Borrowed from Soldier
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

$sequence layer_primary_jump_floatNoise primary_floatD subtract layer_primary_jump_floatNoise 0 delta realtime hidden

//Hit flinch
$sequence a_flinch01 "hit_flinch01.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

//--------------------------------------------------------
// Hand Gesture anims for Voice commands
//--------------------------------------------------------

//primary
$sequence layer_gesture_primary_go_armL "gesture_primary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 3 27 30
	ikrule lhand touch "bip_head" range 5 10 24 30 usesource
	hidden
	}

$sequence gesture_primary_go "gesture_primary_go.dmx" {
	subtract gesture_primary_go 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 3 27 30
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_PRIMARY 1
	}

$sequence layer_gesture_primary_help_armL "gesture_primary_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 3 33 36
	ikrule lhand touch "bip_head" range 3 9 32 36 usesource
	hidden
	}

$sequence gesture_primary_help "gesture_primary_help.dmx" {
	subtract gesture_primary_help 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_primary_help_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_PRIMARY 1
	}

$sequence layer_gesture_primary_cheer_armL "gesture_primary_cheer.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 36 39
	ikrule lhand touch "bip_head" range 2 6 34 39 usesource
	hidden
	}

$sequence gesture_primary_cheer "gesture_primary_cheer.dmx" {
	subtract gesture_primary_cheer 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_primary_cheer_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_PRIMARY 1
	}
$sequence layer_gesture_primary_positive_armL "gesture_primary_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 26 30
	ikrule lhand touch "bip_head" range 2 7 26 30 usesource
	hidden
	}

$sequence gesture_primary_positive "gesture_primary_positive.dmx" {
	subtract gesture_primary_positive 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_primary_positive_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_POSITIVE_PRIMARY 1
	}


//--------------------------------------------------------
//secondary
//--------------------------------------------------------

$sequence layer_gesture_secondary_go_armL "gesture_secondary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 3 27 30
	hidden
	}

$sequence gesture_secondary_go "gesture_secondary_go.dmx" {
	subtract gesture_secondary_go 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 3 27 30
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY 1
	}

$sequence layer_gesture_secondary_help_armL "gesture_secondary_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 3 33 36
	ikrule lhand touch "bip_head" range 2 9 33 36 usesource
	hidden
	}

$sequence gesture_secondary_help "gesture_secondary_help.dmx" {
	subtract gesture_secondary_help 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_secondary_help_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_SECONDARY 1
	}

$sequence layer_gesture_secondary_cheer_armL "gesture_secondary_cheer.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 36 39
	ikrule lhand touch "bip_head" range 2 6 34 39 usesource
	hidden
	}

$sequence gesture_secondary_cheer "gesture_secondary_cheer.dmx" {
	subtract gesture_secondary_cheer 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_secondary_cheer_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_SECONDARY 1
	}

$sequence layer_gesture_secondary_positive_armL "gesture_secondary_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 5 26 30
	ikrule lhand touch "bip_head" range 2 5 26 30 usesource
	hidden
	}

$sequence gesture_secondary_positive "gesture_secondary_positive.dmx" {
	subtract gesture_secondary_positive 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_secondary_positive_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_POSITIVE_SECONDARY 1
	}

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

//--------------------------------------------------------
//primary stun
//--------------------------------------------------------

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

//================================================================================================
//
// JUMP LOSER
//
//================================================================================================

$sequence a_jumpStart_loser loser_jump frames 0 25 alignto a_reference Z activity ACT_MP_JUMP_START_LOSERSTATE 1 LX LY
$sequence a_jumpfloat_loser loser_jump frames 26 103	loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_LOSERSTATE 1 LX LY
$sequence jumpLandPose_loser loser_jump frames 25 25 numframes 30 loop
$sequence jumpLand_loser { 
	loser_jump_land 
	subtract jumpLand_loser 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 
	
	activity ACT_MP_JUMP_LAND_LOSERSTATE 1 
}


$animation a_runCenter_loser  loser_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_loser loser_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 4
	alignto a_reference
}
$animation a_runSE_loser loser_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 0
	alignto a_reference
}
$animation a_runE_loser loser_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 14
	alignto a_reference
}
$animation a_runNE_loser loser_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 15
	alignto a_reference
}
$animation a_runN_loser loser_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 15
	alignto a_reference
}
$animation a_runNW_loser loser_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 14
	alignto a_reference
}
$animation a_runW_loser loser_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 13
	alignto a_reference
}
$animation a_runSW_loser loser_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 4
	alignto a_reference
}
$sequence Run_LOSER {
	a_runsw_loser	a_runS_loser		a_runSE_loser
	a_runW_loser	a_runCenter_loser	a_runE_loser
	a_runNW_loser	a_runN_loser		a_runNE_loser
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	activity ACT_MP_RUN_LOSERSTATE 1
			{ event 7001 2 "right" }
	    { event 7001 11 "left" }
}
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// START OF MELEE
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// CROWBAR
//-----------------------------------------------------------------------------------

$MPAimLayer MELEE_aimmatrix_idle        CROWBAR_aimmatrix_idle        $infoNode$
$MPAimLayer MELEE_aimmatrix_run         CROWBAR_aimmatrix_run         $infoNode$
$MPAimLayer MELEE_aimmatrix_crouch_idle CROWBAR_aimmatrix_crouch_idle $infoNode$

$MPGestureAttack Attack_Stand_MELEE  CROWBAR_fire          ACT_MP_ATTACK_STAND_MELEE weightlist CrowbarMercStandArmsBlend
$MPGestureAttack Attack_Crouch_MELEE CROWBAR_crouch_fire   ACT_MP_ATTACK_CROUCH_MELEE weightlist CrowbarMercStandArmsBlend
$MPGestureAttack Attack_Swim_MELEE   CROWBAR_swim_fire     ACT_MP_ATTACK_SWIM_MELEE weightlist CrowbarMercStandArmsBlend

$sequence Stand_Melee  CROWBAR_idle loop alignto a_reference addlayer MELEE_aimmatrix_idle activity ACT_MP_STAND_MELEE 1
$sequence Crouch_Melee CROWBAR_crouch_idle loop alignto a_reference addlayer MELEE_aimmatrix_crouch_idle activity ACT_MP_CROUCH_MELEE 1

// swim
$MPAimLayer MELEE_aimmatrix_swim        MELEE_aimmatrix_idle        $infoNode$
$MPswimWithWeapon Melee 0 0 0 0 0 0 0 0 CROWBAR_SwimN	CROWBAR_SwimCenter	MELEE_aimmatrix_swim	ACT_MP_SWIM_MELEE $infonode$

//-----------------------------------------------------------------------------------
// JUMP
//-----------------------------------------------------------------------------------

//CROWBAR jump
$sequence a_jumpStart_MELEE CROWBAR_jump frames 0 25 addlayer MELEE_aimmatrix_swim alignto a_reference Z activity ACT_MP_JUMP_START_MELEE 1 LX LY 

$sequence a_jumpfloat_MELEE CROWBAR_jump frames 26 189 addlayer MELEE_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_MELEE 1 LX LY 

$sequence jumpLandPose_MELEE CROWBAR_jump frames 25 25 numframes 30 loop 

$sequence jumpLand_MELEE { 
	CROWBAR_jump_land 
	subtract jumpLand_MELEE 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MP_JUMP_LAND_MELEE 1 
}

//-----------------------------------------------------------------------------------
//  RUN
//-----------------------------------------------------------------------------------
$animation a_runCenter_CROWBAR  CROWBAR_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_CROWBAR CROWBAR_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_CROWBAR CROWBAR_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_CROWBAR CROWBAR_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_CROWBAR CROWBAR_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_CROWBAR CROWBAR_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_CROWBAR CROWBAR_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_CROWBAR CROWBAR_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_CROWBAR CROWBAR_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_MELEE {
	a_runsw_CROWBAR	a_runS_CROWBAR		a_runSE_CROWBAR
	a_runW_CROWBAR	a_runCenter_CROWBAR	a_runE_CROWBAR
	a_runNW_CROWBAR	a_runN_CROWBAR		a_runNE_CROWBAR
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer MELEE_aimmatrix_run
	activity ACT_MP_RUN_MELEE 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_MELEE 0 0 0 0 0 0 0 0 CROWBAR_crouch_walkN CROWBAR_crouch_walkCenter MELEE_aimmatrix_crouch_idle ACT_MP_CROUCHWALK_MELEE $infoNode$

//-----------------------------------------------------------------------------------
// Airwalk
//-----------------------------------------------------------------------------------
$sequence Airwalk_MELEE "CROWBAR_airwalk.dmx" fps 30 loop {
	addlayer MELEE_aimmatrix_idle 
	activity ACT_MP_AIRWALK_MELEE 1
}

//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// END OF MELEE
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
//SPACE
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// START OF PRIMARY
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// Supershotgun
//-----------------------------------------------------------------------------------

$MPAimLayer_lefthandIK PRIMARY_aimmatrix_idle        SUPERSHOTGUN_aimmatrix_idle        $infoNode$
$MPAimLayer_lefthandIK PRIMARY_aimmatrix_run         SUPERSHOTGUN_aimmatrix_run         $infoNode$
$MPAimLayer_lefthandIK PRIMARY_aimmatrix_crouch_idle SUPERSHOTGUN_aimmatrix_crouch_idle $infoNode$

$MPGestureAttack Attack_Stand_PRIMARY  SUPERSHOTGUN_fire          ACT_MP_ATTACK_STAND_PRIMARY
$MPGestureAttack Attack_Crouch_PRIMARY SUPERSHOTGUN_crouch_fire   ACT_MP_ATTACK_CROUCH_PRIMARY
$MPGestureAttack Attack_Swim_PRIMARY   SUPERSHOTGUN_swim_fire     ACT_MP_ATTACK_SWIM_PRIMARY

$sequence layer_reload_standing_arms_SUPERSHOTGUN "SUPERSHOTGUN_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden

}
$sequence layer_reload_crouching_arms_SUPERSHOTGUN "SUPERSHOTGUN_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}	

$sequence layer_reload_swimming_arms_SUPERSHOTGUN "SUPERSHOTGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}

$sequence layer_reload_airwalk_arms_SUPERSHOTGUN "SUPERSHOTGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}

$MPGestureReload_IK ReloadStand_PRIMARY     SUPERSHOTGUN_reload			ACT_MP_RELOAD_STAND_PRIMARY    layer_reload_standing_arms_SUPERSHOTGUN 0 4 45 51
$MPGestureReload_IK ReloadCrouch_PRIMARY   SUPERSHOTGUN_crouch_reload		ACT_MP_RELOAD_CROUCH_PRIMARY   layer_reload_crouching_arms_SUPERSHOTGUN 0 4 45 51
$MPGestureReload_IK ReloadSwim_PRIMARY      SUPERSHOTGUN_swim_reload		ACT_MP_RELOAD_SWIM_PRIMARY     layer_reload_swimming_arms_SUPERSHOTGUN 0 4 45 51
$MPGestureReload_IK ReloadAirwalk_PRIMARY   SUPERSHOTGUN_reload			ACT_MP_RELOAD_AIRWALK_PRIMARY  layer_reload_airwalk_arms_SUPERSHOTGUN 0 4 45 51

$sequence Stand_PRIMARY  SUPERSHOTGUN_idle loop alignto a_reference addlayer PRIMARY_aimmatrix_idle 					activity ACT_MP_STAND_PRIMARY 1
$sequence Crouch_PRIMARY SUPERSHOTGUN_crouch_idle loop alignto a_reference addlayer PRIMARY_aimmatrix_crouch_idle  	activity ACT_MP_CROUCH_PRIMARY 1

// swim
$MPAimLayer_lefthandIK PRIMARY_aimmatrix_swim        SUPERSHOTGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon PRIMARY 0 0 0 0 0 0 0 0 SUPERSHOTGUN_SwimN	SUPERSHOTGUN_SwimCenter	PRIMARY_aimmatrix_swim	ACT_MP_SWIM_PRIMARY $infonode$

//SUPERSHOTGUN jump
$sequence a_jumpStart_PRIMARY SUPERSHOTGUN_jump frames 0 25 addlayer PRIMARY_aimmatrix_swim alignto a_reference Z activity ACT_MP_JUMP_START_PRIMARY 1 LX LY
$sequence a_jumpfloat_PRIMARY SUPERSHOTGUN_jump frames 26 189 addlayer PRIMARY_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_PRIMARY 1 LX LY
$sequence jumpLandPose_PRIMARY SUPERSHOTGUN_jump frames 25 25 numframes 30 loop
$sequence jumpLand_PRIMARY { 
	PRIMARY_jump_land 
	subtract jumpLand_PRIMARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MP_JUMP_LAND_PRIMARY 1 
}

// run
$animation a_runCenter_SUPERSHOTGUN  SUPERSHOTGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_SUPERSHOTGUN SUPERSHOTGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_SUPERSHOTGUN SUPERSHOTGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_SUPERSHOTGUN SUPERSHOTGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_SUPERSHOTGUN SUPERSHOTGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_SUPERSHOTGUN SUPERSHOTGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_SUPERSHOTGUN SUPERSHOTGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_SUPERSHOTGUN SUPERSHOTGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_SUPERSHOTGUN SUPERSHOTGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_PRIMARY {
	a_runsw_SUPERSHOTGUN	a_runS_SUPERSHOTGUN		a_runSE_SUPERSHOTGUN
	a_runW_SUPERSHOTGUN	a_runCenter_SUPERSHOTGUN	a_runE_SUPERSHOTGUN
	a_runNW_SUPERSHOTGUN	a_runN_SUPERSHOTGUN		a_runNE_SUPERSHOTGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer PRIMARY_aimmatrix_run
	activity ACT_MP_RUN_PRIMARY 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_PRIMARY 0 0 0 0 0 0 0 0 SUPERSHOTGUN_crouch_walkN SUPERSHOTGUN_crouch_walkCenter PRIMARY_aimmatrix_crouch_idle ACT_MP_CROUCHWALK_PRIMARY $infoNode$

// airwalk
$sequence Airwalk_PRIMARY "SUPERSHOTGUN_airwalk.dmx" fps 30 loop {
	addlayer PRIMARY_aimmatrix_idle 
	activity ACT_MP_AIRWALK_PRIMARY 1
}
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// END OF PRIMARY
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
//SPACE
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// START OF SECONDARY
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// Pistol Mercenary
//-----------------------------------------------------------------------------------

$MPAimLayer_lefthandIK SECONDARY_aimmatrix_idle        PISTOL_MERCENARY_aimmatrix_idle        $infoNode$
$MPAimLayer_lefthandIK SECONDARY_aimmatrix_run         PISTOL_MERCENARY_aimmatrix_run         $infoNode$
$MPAimLayer_lefthandIK SECONDARY_aimmatrix_crouch_idle PISTOL_MERCENARY_aimmatrix_crouch_idle $infoNode$

$MPGestureAttack Attack_Stand_SECONDARY  PISTOL_MERCENARY_fire          ACT_MP_ATTACK_STAND_SECONDARY
$MPGestureAttack Attack_Crouch_SECONDARY PISTOL_MERCENARY_crouch_fire   ACT_MP_ATTACK_CROUCH_SECONDARY
$MPGestureAttack Attack_Swim_SECONDARY   PISTOL_MERCENARY_swim_fire     ACT_MP_ATTACK_SWIM_SECONDARY

$sequence layer_reload_standing_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden

}
$sequence layer_reload_crouching_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}	

$sequence layer_reload_swimming_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}

$sequence layer_reload_airwalk_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}

$MPGestureReload_IK ReloadStand_SECONDARY     PISTOL_MERCENARY_reload			ACT_MP_RELOAD_STAND_SECONDARY    layer_reload_standing_arms_PISTOL_MERCENARY 0 4 45 51
$MPGestureReload_IK ReloadCrouch_SECONDARY   PISTOL_MERCENARY_crouch_reload		ACT_MP_RELOAD_CROUCH_SECONDARY   layer_reload_crouching_arms_PISTOL_MERCENARY 0 4 45 51
$MPGestureReload_IK ReloadSwim_SECONDARY      PISTOL_MERCENARY_swim_reload		ACT_MP_RELOAD_SWIM_SECONDARY     layer_reload_swimming_arms_PISTOL_MERCENARY 0 4 45 51
$MPGestureReload_IK ReloadAirwalk_SECONDARY   PISTOL_MERCENARY_reload			ACT_MP_RELOAD_AIRWALK_SECONDARY  layer_reload_airwalk_arms_PISTOL_MERCENARY 0 4 45 51

$sequence Stand_SECONDARY  PISTOL_MERCENARY_idle loop alignto a_reference addlayer SECONDARY_aimmatrix_idle 					activity ACT_MP_STAND_SECONDARY 1
$sequence Crouch_SECONDARY PISTOL_MERCENARY_crouch_idle loop alignto a_reference addlayer SECONDARY_aimmatrix_crouch_idle  	activity ACT_MP_CROUCH_SECONDARY 1

// swim
$MPAimLayer_lefthandIK SECONDARY_aimmatrix_swim        PISTOL_MERCENARY_aimmatrix_idle        $infoNode$
$MPswimWithWeapon SECONDARY 0 0 0 0 0 0 0 0 PISTOL_MERCENARY_SwimN	PISTOL_MERCENARY_SwimCenter	SECONDARY_aimmatrix_swim	ACT_MP_SWIM_SECONDARY $infonode$

//PISTOL_MERCENARY jump
$sequence a_jumpStart_SECONDARY PISTOL_MERCENARY_jump frames 0 25 addlayer SECONDARY_aimmatrix_swim alignto a_reference Z activity ACT_MP_JUMP_START_SECONDARY 1 LX LY
$sequence a_jumpfloat_SECONDARY PISTOL_MERCENARY_jump frames 26 189 addlayer SECONDARY_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_SECONDARY 1 LX LY
$sequence jumpLandPose_SECONDARY PISTOL_MERCENARY_jump frames 25 25 numframes 30 loop
$sequence jumpLand_SECONDARY { 
	SECONDARY_jump_land 
	subtract jumpLand_SECONDARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MP_JUMP_LAND_SECONDARY 1 
}

// run
$animation a_runCenter_PISTOL_MERCENARY  PISTOL_MERCENARY_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_PISTOL_MERCENARY PISTOL_MERCENARY_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_PISTOL_MERCENARY PISTOL_MERCENARY_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_PISTOL_MERCENARY PISTOL_MERCENARY_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_PISTOL_MERCENARY PISTOL_MERCENARY_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_PISTOL_MERCENARY PISTOL_MERCENARY_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_PISTOL_MERCENARY PISTOL_MERCENARY_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_PISTOL_MERCENARY PISTOL_MERCENARY_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_PISTOL_MERCENARY PISTOL_MERCENARY_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_SECONDARY {
	a_runsw_PISTOL_MERCENARY	a_runS_PISTOL_MERCENARY		a_runSE_PISTOL_MERCENARY
	a_runW_PISTOL_MERCENARY	a_runCenter_PISTOL_MERCENARY	a_runE_PISTOL_MERCENARY
	a_runNW_PISTOL_MERCENARY	a_runN_PISTOL_MERCENARY		a_runNE_PISTOL_MERCENARY
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer SECONDARY_aimmatrix_run
	activity ACT_MP_RUN_SECONDARY 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_SECONDARY 0 0 0 0 0 0 0 0 PISTOL_MERCENARY_crouch_walkN PISTOL_MERCENARY_crouch_walkCenter SECONDARY_aimmatrix_crouch_idle ACT_MP_CROUCHWALK_SECONDARY $infoNode$

// airwalk
$sequence Airwalk_SECONDARY "PISTOL_MERCENARY_airwalk.dmx" fps 30 loop {
	addlayer SECONDARY_aimmatrix_idle 
	activity ACT_MP_AIRWALK_SECONDARY 1
}
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// END OF SECONDARY
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
$popd