/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Movimiento lateral
if (keyboard_check(vk_left)) x -= velocidad;
if (keyboard_check(vk_right)) x += velocidad;

// Limitar al área de juego
x = clamp(x, 0, room_width);

// Disparar proyectiles
if (keyboard_check_pressed(vk_space)) {
    var proyectil = instance_create_layer(x, y - 20, "Instances", obj_proyectil);
}
