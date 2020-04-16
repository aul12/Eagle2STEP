include <config.scad>

difference() {
    union() {
        color(color_place) translate([0,0,pcb_height]) {
            linear_extrude(height=text_height, center = false, convexity=convexity) {
                   import (file=file, layer=layer_place_top);
            }
        }

        color(color_place) translate([0,0,-text_height]) {
            linear_extrude(height=text_height, center = false, convexity=convexity) {
                   import (file=file, layer=layer_place_bottom);
            }
        }
    }

    translate([0,0,-pad_height*2]) linear_extrude(height=pcb_height+4*pad_height, center = false, convexity=convexity) {
           import (file=file, layer=layer_drill);
    }
}
