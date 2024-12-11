/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Movimiento del proyectil
y -= 10;

// Destruir si sale de la pantalla
if (y < 0) {
    instance_destroy();
}
