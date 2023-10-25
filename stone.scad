include <constants.scad>

linear_extrude(STONE_ARM_HEIGHT) {
  square([STONE_LENGTH - TOLERANCE/2, STONE_WIDTH - TOLERANCE/2], center=true);
  square([STONE_WIDTH - TOLERANCE/2, STONE_LENGTH - TOLERANCE/2], center=true);
  rotate([0, 0, 45])
    square(STONE_BASE_WIDTH - TOLERANCE/2, center=true);
}

SHEATH_BASE = (STONE_BASE_WIDTH - TOLERANCE/2)/sqrt(2);

translate([0, 0, STONE_ARM_HEIGHT])
  linear_extrude(STONE_NUB_SHEATH_HEIGHT,
                 scale=(STONE_WIDTH - TOLERANCE/2)/SHEATH_BASE)
  square(SHEATH_BASE, center=true);
  
linear_extrude(STONE_ARM_HEIGHT + STONE_NUB_HEIGHT)
  square(STONE_WIDTH - TOLERANCE/2, center=true);
