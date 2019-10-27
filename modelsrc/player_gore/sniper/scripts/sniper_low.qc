$modelname player/sniper.mdl

// Define the variable that sniper.qci will use to load the dmx files for high and low end models.
$definevariable dmxFile "../parts/dmx/sniper_morphs_low.dmx"

$definevariable 01_lod "../parts/dmx/sniper_lod_01_low.dmx"
$definevariable 02_lod "../parts/dmx/sniper_lod_02_low.dmx"
$definevariable 03_lod "../parts/dmx/sniper_lod_03_low.dmx"
$definevariable 04_lod "../parts/dmx/sniper_lod_04_low.dmx"
$definevariable 05_lod "../parts/dmx/sniper_lod_05_low.dmx"

$alwayscollapse prp_glove_1_L
$alwayscollapse prp_glove_2_L
$alwayscollapse prp_glove_3_L
$alwayscollapse prp_glove_4_L
$alwayscollapse prp_glove_1_R
$alwayscollapse prp_glove_2_R
$alwayscollapse prp_glove_3_R
$alwayscollapse prp_glove_4_R

$alwayscollapse hlp_forearm_1_L
$alwayscollapse hlp_forearm_2_L
$alwayscollapse hlp_forearm_3_L
$alwayscollapse hlp_forearm_4_L
$alwayscollapse hlp_forearm_1_R
$alwayscollapse hlp_forearm_2_R
$alwayscollapse hlp_forearm_3_R
$alwayscollapse hlp_forearm_4_R

$alwayscollapse hlp_wristA_1_L
$alwayscollapse hlp_wristA_2_L
$alwayscollapse hlp_wristA_1_R
$alwayscollapse hlp_wristA_2_R

$alwayscollapse prp_watch

$include sniper.qci