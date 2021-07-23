
$fn=200;
nothing=0.01;

rmf150_base_diameter = 100;
rmf150_base_height = 25;

rmf150_socket_base_thickness = 2;
rmf150_socket_base_expansion = 10;
rmf150_socket_mantle_height = 10;
rmf150_socket_mantle_expansion = 1;
rmf150_socket_mantle_thickness = 2;

module rmf150()
{
}

module rmf150_socket()
{
    // Base plate
    cylinder(
        r=(rmf150_base_diameter+rmf150_socket_base_expansion)/2,
        h=rmf150_socket_base_thickness
    );

    // Mantle
    translate(0, 0, rmf150_socket_base_thickness)
    difference()
    {
        cylinder(
            r=(rmf150_base_diameter+rmf150_socket_mantle_expansion)/2+rmf150_socket_mantle_thickness,
            h=rmf150_socket_mantle_height
        );
        //translate(0, 0, -nothing)
        cylinder(
            r=(rmf150_base_diameter+rmf150_socket_mantle_expansion)/2,
            h=rmf150_socket_mantle_height+3*nothing
        );
    }
}

color("cyan")
rmf150_socket();
