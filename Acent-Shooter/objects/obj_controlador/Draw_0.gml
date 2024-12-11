/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Configurar el color y la fuente
draw_set_color(c_white);
draw_set_font(-1); // Fuente predeterminada

// Dibujar el puntaje
draw_text(10, 10, "Puntaje: " + string(global.puntaje));

// Dibujar las vidas
draw_text(10, 30, "Vidas: " + string(global.vidas));

// Dibujar el tiempo restante en la parte superior de la pantalla
draw_set_color(c_white);
draw_text(10, 50, "Tiempo restante: " + string(ceil(global.tiempo_restante)) + "s");

if (global.tiempo_restante <= 10) {
    draw_set_color(c_red);
}
