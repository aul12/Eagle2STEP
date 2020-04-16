include <config.scad>

difference() {
    union() {
        color(color_pad) translate([0,0,pcb_height]) {
            linear_extrude(height=pad_height, center = false, convexity=convexity) {
                   import (file=file, layer=layer_stop_top);
            }
        }

        color(color_pad) translate([0,0,-pad_height]) {
            linear_extrude(height=pad_height, center = false, convexity=convexity) {
                   import (file=file, layer=layer_stop_bottom);
            }
        }
    }

    translate([0,0,-pad_height*2]) linear_extrude(height=pcb_height+4*pad_height, center = false, convexity=convexity) {
           import (file=file, layer=layer_drill);
    }
}
