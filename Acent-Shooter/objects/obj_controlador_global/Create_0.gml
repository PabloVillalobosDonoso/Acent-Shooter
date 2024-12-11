/// @description Carga palabras desde un archivo JSON

// Inicializar variables globales
global.puntaje = 0;
global.vidas = 3;
global.tipo_palabra = ""; // Será definido por los botones en rm_start
global.palabras = []; // Lista para almacenar palabras cargadas

// Ruta al archivo JSON
global.file_path = "palabras.json"; // Asegúrate de que el archivo esté en el directorio del juego

// Función para cargar y analizar el JSON
function cargar_json() {
    if (file_exists(global.file_path)) {
        // Abrir el archivo para leer
        var file_id = file_text_open_read(global.file_path);
        var json_string = "";

        // Leer el archivo línea por línea
        while (!file_text_eof(file_id)) {
            json_string += file_text_read_string(file_id);
            file_text_readln(file_id);
        }
        file_text_close(file_id);

        // Analizar el JSON
        var json_data = json_parse(json_string);

        // Validar que es un array
        if (is_array(json_data)) {
            global.palabras = json_data;
            show_debug_message("Palabras cargadas correctamente: " + string(global.palabras));
        } else {
            show_error("El archivo JSON no contiene un array válido.", true);
        }
    } else {
        show_error("El archivo JSON no existe.", true);
    }
}

// Llamar a la función para cargar datos
cargar_json();
