/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

show_debug_message("Tipo de palabra disparada: " + string(other.tipo));
show_debug_message("Tipo de palabra esperada: " + string(global.tipo_palabra));


// Verificar si la palabra es del tipo correcto
if (other.tipo == global.tipo_palabra) {
    global.puntaje += 10; // Sumar puntos
    show_debug_message("Palabra correcta: " + other.palabra + " (" + other.tipo + ")");
} else {
	ds_list_add(obj_controlador.palabras_erroneas, other)
    global.vidas -= 1; // Restar una vida
    show_debug_message("Palabra incorrecta: " + other.palabra + " (" + other.tipo + ")");
	
}

// Destruir la palabra y el proyectil
instance_destroy(other); // Destruir la palabra
instance_destroy();      // Destruir el proyectil
