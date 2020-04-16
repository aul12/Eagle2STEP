include <config.scad>

echo(file);

difference() {
    color(color_pcb) {
        linear_extrude(height=pcb_height, center = false, convexity=convexity) {
               import (file=file, layer=layer_outline);
        }
    }

    translate([0,0,-pad_height*2]) linear_extrude(height=pcb_height+4*pad_height, center = false, convexity=convexity) {
        import (file=file, layer=layer_drill);
    }
}
