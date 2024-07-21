clearscreen.
local doneyet is false.
local lcars is gui(516,688).
set lcars:style:height to 516.
set lcars:style:width to 688.
set lcars:style:bg to "gc/lcars_ufp.png".
local button_window is lcars:addhlayout().
set button_window:style:margin:top to 30.
button_window:addspacing(150).
local b1 is button_window:addbutton("info").
set b1:style:height to 48.
set b1:style:width to 138.88.
set b1:style:fontsize to 14.
set b1:style:bg to "gc/lcars_button_orange".
set b1:style:hover:bg to "gc/lcars_button_orange".
set b1:style:hover:textcolor to HSVA(240, 100, 54, 1).
set b1:style:active:bg to "gc/lcars_button_orange".
set b1:style:active:textcolor to green.
set b1:onclick to b1click@.
local b2 is button_window:addbutton("exit").
set b2:style:height to 48.
set b2:style:width to 138.88.
set b2:style:fontsize to 14.
set b2:style:bg to "gc/lcars_button_pink".
set b2:style:hover:bg to "gc/lcars_button_pink".
set b2:style:hover:textcolor to HSVA(240, 100, 54, 1).
set b2:style:active:bg to "gc/lcars_button_pink".
set b2:style:active:textcolor to green.
set b2:onclick to { set doneyet to true. }.
lcars:show().
wait until doneyet.
clearguis().
function b1click 
  {
    set lcars:style:bg to "gc/lcars.png".
    set v0 to getvoice(0).
    SET frequencies TO LIST(
    note (562.5, 0.0075), note (750.0, 0.0075), note (937.5, 0.0075), note (1125.0, 0.0075), 
    note (1312.5, 0.0075), note (1500.0, 0.0075), note (1687.5, 0.0075), note (1875.0, 0.0075), 
    note (2062.5, 0.0075), note (2250.0, 0.0075), note (2437.5, 0.0075), note (2625.0, 0.0075), 
    note (2812.5, 0.0075), note (3000.0, 0.0075), note (3187.5, 0.0075), note (3375.0, 0.0075), 
    note (3562.5, 0.0075), note (3750.0, 0.0075), note (3937.5, 0.0075), note (4125.0, 0.0075), 
    note (4312.5, 0.0075), note (4500.0, 0.0075), note (4687.5, 0.0075), note (4875.0, 0.0075), 
    note (5062.5, 0.0075), note (5250.0, 0.0075), note (5437.5, 0.0075), note (5625.0, 0.0075)).
    v0:play(frequencies).
    local info_window is lcars:addvlayout().
    set info_window:style:height to 300.
    set info_window:style:width to 525.
    set info_window:style:margin:top to 75.
    set info_window:style:margin:left to 150.
    set info_window:style:fontsize to 14.
    local info_text is list().
    info_text:add("Ship: " +shipname).
    info_text:add("Mass: " +ship:mass).
    info_text:add("Delta V: " +ship:deltav:current).
    set listAsString to "".
    for item in info_text {
    set listAsString to listAsString + item + "\n".
    }
    info_window:show().
    for item in info_text {
    local info_label is info_window:addlabel(item).
}
  }