/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


/*
// Inicializar variables globales si no existen
if (!variable_global_exists("tiempo_generacion")) {
    global.tiempo_generacion = 60; // Iniciar con 1 palabra por segundo
    global.tiempo_actual = 0;
}

// Incrementar el contador
global.tiempo_actual++;*/

/*
// Crear una palabra cuando se cumpla el tiempo
if (global.tiempo_actual >= global.tiempo_generacion) {
    // Crear la palabra
    var palabra = instance_create_layer(irandom_range(50, room_width - 50), 0, "Instances", obj_palabra);
    palabra.tipo_palabra = choose("agudas", "graves", "esdrujulas", "sobreesdrujulas");
	switch (palabra.tipo_palabra) {
    case "agudas":
        palabra.palabra = choose("canción", "camión", "mamá", "café", "salón");
        break;
    case "graves":
        palabra.palabra = choose("mesa", "casa", "carro", "libro", "calle");
        break;
    case "esdrujulas":
        palabra.palabra = choose("rápido", "técnico", "lógico", "histórico", "pájaro");
        break;
    case "sobreesdrujulas":
        palabra.palabra = choose("mándamelo", "comprándoselo", "rápidamente", "fácilmente");
        break;
}
    show_debug_message("Palabra palabra generada: " + palabra.palabra + palabra.tipo_palabra);
	global.tiempo_actual = 0; // Reiniciar el contador
}*/

// Reducir el temporizador
temporizador -= 1;

// Si el temporizador llega a 0, generar una nueva palabra
if (temporizador <= 0) {
    generar_palabra();
    temporizador = tiempo_generacion; // Reiniciar el temporizador
}/*
var indice = irandom(array_length(global.palabras) - 1);
        var palabra_data = global.palabras[indice];


    show_debug_message("palabra_data no es un mapa válido: " + string(palabra_data.tipo));*/


// Función para generar palabras aleatorias
function generar_palabra() {
    // Verificar que hay palabras en la lista
    if (array_length(global.palabras) > 0) {
        // Elegir una palabra aleatoria
        var indice = irandom(array_length(global.palabras) - 1);
        var palabra_data = global.palabras[indice];

        // Validar que palabra_data es un mapa
        if (is_struct(palabra_data)) {
            var nueva_palabra = instance_create_layer(irandom(room_width), -75, "Instances", obj_palabra);
			 
            // Acceso directo a las claves del mapa
            nueva_palabra.palabra = palabra_data.palabra;
            nueva_palabra.tipo = palabra_data.tipo;
			nueva_palabra.ancho_texto  = string_width(nueva_palabra.palabra) + 100;
			//nueva_palabra.sprite_width = nueva_palabra.ancho_texto;
			//nueva_palabra.image_xscale = (nueva_palabra.ancho_texto);
			//nueva_palabra.image_yscale = (nueva_palabra.altura_texto);
			//show_debug_message("Ancho sprite :" + string(nueva_palabra.ancho_texto) + " palabra: " + string(nueva_palabra.palabra));
			
        } else {
            show_debug_message("palabra_data no es un objeto válido: " + string(palabra_data));
        }
    }
}


/*
if (room_speed mod 120 == 0) { // Cada 2 segundos
    var tipo_actual = global.tipo_palabra; // Tipo seleccionado globalmente
    var nueva_palabra = obtener_palabra(tipo_actual);

    // Crear la instancia de palabra
    var palabra_instancia = instance_create_layer(random(room_width), -50, "Palabras", obj_palabra);
    palabra_instancia.texto = nueva_palabra;
    palabra_instancia.tipo = tipo_actual; // Para verificar colisiones después
}


// Reducir el tiempo de generación cada 3 segundos
if (current_time mod (room_speed * 3) == 0 && global.tiempo_generacion > 20) {
    global.tiempo_generacion--;
}*/

// Reducir el tiempo restante
if (!global.juego_terminado) {
    global.tiempo_restante -= 1 / room_speed;

    // Si el tiempo se termina
    if (global.tiempo_restante <= 0) {
        global.tiempo_restante = 0;
        global.juego_terminado = true;

        // Llamar a una función que finalice el juego
        finalizar_juego();
    }
}


// Terminar el juego si las vidas llegan a 0
if (global.vidas <= 0) {
	// Mostrar lista completa en show_debug_message
	mensaje ="";
	for (var i = 0; i < ds_list_size(palabras_erroneas); i++) {
		palabra_lista_erronea = ds_list_find_value(palabras_erroneas, i);
		mensaje += string( "Palabra: " + palabra_lista_erronea.palabra + " \t tipo: " + palabra_lista_erronea.tipo); // Agregar la palabra al mensaje
		if (i < ds_list_size(palabras_erroneas) - 1) {
        mensaje += "\n"; // Agregar una coma entre palabras
		}
	}
	//show_debug_message("Palabras erroenas: " + mensaje);
	show_message("¡Juego terminado! Puntaje final: " + string(global.puntaje) + "\n\nPalabras erroneas: \n" + mensaje );
    room_restart(); // Reinicia el juego (puedes cambiar esto por una pantalla de fin)
	room_goto(rm_start)
}
 
 
 function finalizar_juego() {
    // Detener las mecánicas de juego
    instance_deactivate_all(true); // Desactiva todo excepto el objeto controlador

    // Mostrar un mensaje de fin de partida
    show_message("¡Se acabó el tiempo! Puntaje: " + string(global.puntaje));

    // Reiniciar la partida o ir a una sala de resultados
    room_goto(rm_start); // Cambiar de sala (ajústalo según tu juego)
}
