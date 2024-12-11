/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

mask_index = spr_palabra; // Un sprite con un rectángulo del tamaño adecuado.


// Configurar alineación y fuente
draw_set_font(fnt_palabra);
//draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_self();
//draw_set_color(c_black);
//draw_text(x, y, palabra);


// Dibujar borde negro (contorno)
draw_set_color(c_black);
draw_text(x - 1, y, palabra); // Izquierda
draw_text(x + 1, y, palabra); // Derecha
draw_text(x, y - 1, palabra); // Arriba
draw_text(x, y + 1, palabra); // Abajo
/*
// Dibujar texto principal
draw_set_color(c_white);
draw_text(x, y, palabra);*/

// Dibujar el rectángulo negro detrás del texto
draw_set_color(c_black);
draw_set_alpha(0);
draw_rectangle(x - ancho_texto / 2, y - altura_texto / 2, x + ancho_texto / 2, y + altura_texto / 2, false);

// Dibujar la palabra encima
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(x , y , palabra);
image_xscale = ancho_texto;

