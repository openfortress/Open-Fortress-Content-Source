$modelname "player/engineer.mdl"

// Define the variable that engineer.qci will use to load the dmx files for high and low end models.
$definevariable dmxFile "../parts/dmx/engineer_morphs_low.dmx"

$definevariable 01_lod "../parts/dmx/engineer_lod_01_low.dmx"
$definevariable 02_lod "../parts/dmx/engineer_lod_02_low.dmx"
$definevariable 03_lod "../parts/dmx/engineer_lod_03_low.dmx"
$definevariable 04_lod "../parts/dmx/engineer_lod_04_low.dmx"
$definevariable 05_lod "../parts/dmx/engineer_lod_05_low.dmx"

$include engineer.qci

$alwayscollapse def_shoulder_strap_deform_L
$alwayscollapse def_shoulder_strap_deform_R

$alwayscollapse def_bicep_twist_01_L
$alwayscollapse def_bicep_twist_01_R

$alwayscollapse def_upper_glove_corrector_L
$alwayscollapse def_elbow_twist_02_L
$alwayscollapse def_elbow_twist_01_L
$alwayscollapse def_lower_glove_corrector_L

$alwayscollapse def_upper_glove_corrector_R
$alwayscollapse def_elbow_twist_02_R
$alwayscollapse def_elbow_twist_01_R
$alwayscollapse def_lower_glove_corrector_R
