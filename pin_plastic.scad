include <config.scad>

color(color_pin_plastic) translate([0,0,-pin_plastic_height*3/4]) {
    minkowski() {
        linear_extrude(height=pin_plastic_height/2, center=false, convexity=convexity) {
            offset(min_pin_radius) offset(-min_pin_radius) { // Removed small pins
                import (file=file, layer=layer_drill);
            }
        }
        cube([pin_plastic_radius, pin_plastic_radius, pin_plastic_height/2], center=true);

    }
}
