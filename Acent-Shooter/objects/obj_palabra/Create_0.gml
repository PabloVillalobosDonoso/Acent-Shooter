/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


// Definir el tipo de palabra
// Asignar un tipo de palabra aleatorio
//var tipo_palabra = choose("agudas", "graves", "esdrujulas", "sobreesdrujulas");

// Lista de palabras por tipo
/*
switch (tipo_palabra) {
    case "agudas":
        palabra = choose("canción", "camión", "mamá", "café", "salón");
        break;
    case "graves":
        palabra = choose("mesa", "casa", "carro", "libro", "calle");
        break;
    case "esdrujulas":
        palabra = choose("rápido", "técnico", "lógico", "histórico", "pájaro");
        break;
    case "sobreesdrujulas":
        palabra = choose("mándamelo", "comprándoselo", "rápidamente", "fácilmente");
        break;
}*/
// Asignar una palabra dependiendo del tipo
/*
if (tipo_palabra == "agudas") {
    palabra = choose("canción", "camión", "mamá", "café", "salón");
} else if (tipo_palabra == "graves") {
    palabra = choose("mesa", "casa", "carro", "libro", "calle");
} else if (tipo_palabra == "esdrujulas") {
    palabra = choose("rápido", "técnico", "lógico", "histórico", "pájaro");
} else if (tipo_palabra == "sobreesdrujulas") {
    palabra = choose("mándamelo", "comprándoselo", "rápidamente", "fácilmente");
}
*/

// Variables iniciales
palabra = "";  // Será asignada desde el controlador
tipo = "";     // Será asignada desde el controlador
ancho_texto = 0;
altura_texto = 24;

/*
// Calcular el tamaño del texto
var ancho_texto = string_width(palabra); // Ancho del texto
var altura_texto = string_height(palabra); // Altura del texto
show_debug_message("ancho: " + string(palabra));
// Ajustar escala del sprite
image_xscale = (ancho_texto + margen * 2) / sprite_width;
image_yscale = (altura_texto + margen * 2) / sprite_height;
*/

vel_y = 2; // Velocidad de caída aleatoria

// Limitar la posición inicial al ancho de la pantalla
x = irandom_range(200, room_width - 200); // Dejar un margen adicional

//image_xscale = 1;
//image_yscale = 1;
