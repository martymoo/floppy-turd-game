// place the particle in the center of the room
// x = room_width / 2;

// define the particle system
FirstParticleSystem = part_system_create()

// define the depth of the particle system
part_system_depth(FirstParticleSystem,0);

// define the particle
first_particle = part_type_create();
part_type_shape(first_particle,pt_shape_square);
part_type_size(first_particle,0.10,0.15,-.001,0);
part_type_scale(first_particle,1,1);
part_type_color2(first_particle,8454143,65280);
part_type_alpha2(first_particle,1,0.75);
part_type_speed(first_particle,.1,.5,0,0);
part_type_direction(first_particle,0,359,0,0);
part_type_gravity(first_particle,0.02,90);
part_type_orientation(first_particle,0,359,10,0,true);
part_type_blend(first_particle,true);
part_type_life(first_particle,100,150);

// define the emitter
first_emitter = part_emitter_create(FirstParticleSystem);

//define the emitter region
part_emitter_region(FirstParticleSystem,first_emitter,x-20,x+20,y-20,y+20,ps_shape_ellipse,ps_distr_gaussian);

//start the emitter
part_emitter_stream(FirstParticleSystem,first_emitter,first_particle,1)