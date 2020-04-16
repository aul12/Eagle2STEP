include <config.scad>

color(color_pin) translate([0,0,-pin_height]) {
    linear_extrude(height=pin_height+pcb_height+pin_top, center=false, convexity=convexity) {
        offset(0.25) offset(-min_pin_radius) { // Removed small pins
            import (file=file, layer=layer_drill);
        }
    }
}
