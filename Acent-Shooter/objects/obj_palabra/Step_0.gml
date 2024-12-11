/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Movimiento hacia abajo
y += vel_y;

// Destruir si salen de la pantalla
if (y > room_height) {
    instance_destroy();
	if(tipo == global.tipo_palabra && global.puntaje > 0){
		global.puntaje-=3;
	}
}

/*
// Dibujar fondo para la palabra
draw_set_color(c_black);
draw_rectangle(x, y, x + ancho_texto + 10, y + altura_texto + 10, false); // +10 para márgenes

// Calcular el ancho del texto
var texto_ancho = string_width(palabra);

// Ajustar la escala del sprite para coincidir con el ancho del texto
var sprite_ancho_original = sprite_width; // Ancho original del sprite
image_xscale = texto_ancho;*/