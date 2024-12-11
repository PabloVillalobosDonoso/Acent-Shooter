/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Definir funciones externas

// Inicializar temporizador y lista de palabras
tiempo_generacion = 120; // Generar una palabra cada 60 frames (1 segundo a 60 FPS)
temporizador = tiempo_generacion;

palabras_erroneas = ds_list_create(); //Lista para almacenar las palabras erroneas

// Tiempo máximo de la partida (en segundos)
global.tiempo_restante = 60;

// Variable para saber si el juego terminó
global.juego_terminado = false;
