comentarios = [
    "No tengo tiempo ni para almorzar, menos para hacer ejercicio.",
    "Al final del día me duele la espalda de estar sentado en esas sillas.",
    "Entre clase y clase solo tengo diez minutos para cambiar de edificio.",
    "Me daría pena hacer ejercicios delante de mis compañeros.",
    "El patio a mediodía es un horno, nadie va a ir.",
    "Trabajo en las tardes y llego a clase ya cansada.",
    "Las sillas del edificio de ingeniería son terribles para la postura.",
    "Si el profesor lo hace con nosotros, yo me animo.",
    "Paso todo el día sentado: clases, biblioteca y luego el autobús.",
    "No sé qué ejercicios hacer sin parecer ridículo.",
    "Tengo dolor de cuello por estar todo el día con la laptop.",
    "Los horarios están tan apretados que no hay pausas.",
    "No hay un lugar techado para hacer algo de actividad.",
    "Me duele la espalda baja casi todos los días.",
    "Estoy muy cansado por los traslados, vivo lejos.",
    "Prefiero algo corto que se pueda hacer en el salón.",
    "Con la carga de trabajos no me queda tiempo para nada.",
    "Me da vergüenza, la verdad.",
    "La cancha siempre está ocupada por los equipos.",
    "Postura horrible todo el día, termino con contracturas.",
]

contador = 0
for comentario in comentarios:
    if "espalda" in comentario.lower() or "postura" in comentario.lower() or "cuello" in comentario.lower():
        contador = contador + 1
        print("Contado:", comentario)

print("Comentarios sobre espalda o postura:", contador)