#import "@preview/minimal-note:0.10.1": *

#set text(lang: "es")

#let frame(stroke) = (x, y) => (
  left: 0pt,
  right: 0pt,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#set table(
  stroke: frame(1pt + rgb("21222C")),
)

#show: minimal-note.with(
  title: [Introducción a la Inteligencia Artificial. Resumen Unidad 2],
  author: [Tomas Santana],
  date: [],
)

= Cómo usar esta guía

Esta guía resume las dos clases de prompting para ponerse al día desde casa. La Clase 1 trató sobre cómo pedirle algo a una IA con información suficiente y cómo conservar el estado de un trabajo. La Clase 2 avanzó un paso: hacer que la IA trabaje con un material propio, comprobar lo que afirma y pasar el trabajo a un chat nuevo.

Los bloques de texto con formato de código contienen prompts para copiar. Para la práctica basta un asistente gratuito, como Gemini, ChatGPT o Claude.

== Objetivos de aprendizaje

- Formular una petición con objetivo, contexto, material, condiciones y entrega.
- Usar ejemplos y etapas para mejorar un encargo.
- Pedir a la IA que responda desde un documento sin completar lo que falta.
- Verificar una afirmación contra su fuente original.
- Preparar y revisar un relevo para continuar el trabajo en un chat nuevo.

= Clase 1. Cómo pedir, conversar y manejar el contexto

== Una respuesta convincente no siempre sirve

La clase empezó con una petición vaga, enviada sin más información:

```
Ayúdame a preparar una propuesta para mejorar la atención al público.
```

La IA responde algo bien redactado, pero tiene que suponer casi todo: qué organización es, cuál es el problema, quién recibe la propuesta, cuánto presupuesto hay. Antes de enviarla, el curso se preguntó qué necesitaría saber una persona si le encargaran ese trabajo. Las respuestas se agruparon en cuatro tipos: objetivo, situación, información y condiciones.

*Idea clave:* una propuesta puede estar muy bien escrita y aun así no servir, si no toma en cuenta las condiciones reales. Quien usa la IA dirige el trabajo y debe poder explicar de dónde salió el resultado.

== Cómo formular un buen encargo

Un *prompt* es el mensaje con el que se plantea una petición o se aporta información a la IA. Conviene distinguir la *instrucción* (lo que se le pide hacer) del *contexto* (la información que necesita para hacerlo). "Compara las propuestas" es una instrucción; las propuestas y el presupuesto son contexto.

#table(
  columns: (1fr, 2.5fr),
  align: (left, left),

  [*Elemento*], [*Pregunta para revisarlo*],

  [Objetivo], [¿Qué se quiere conseguir?],
  [Contexto], [¿En qué situación se usará el resultado?],
  [Material], [¿Con qué datos, textos o ejemplos debe trabajar?],
  [Condiciones], [¿Qué debe respetar?],
  [Entrega], [¿Qué se necesita recibir?],
)

Esta lista sirve para revisar si falta algo. No hace falta escribir siempre los cinco apartados: para algunas tareas bastan dos oraciones. Este fue el encargo mejorado que se probó en clase, en un chat nuevo:

```
Tarea
Prepara tres medidas para reducir la espera en la atención al público de una biblioteca universitaria.

Información disponible
- La fila se concentra entre las 12:00 y las 2:00 p. m.
- Hay dos personas atendiendo.
- Una observación preliminar de un solo día encontró esperas de alrededor de 20 minutos. Todavía no sabemos si ese día fue representativo.

Condiciones
- Durante este semestre no podemos contratar personal ni comprar equipos.
- Queremos probar las medidas durante un mes.
- La propuesta será revisada por la directora de la biblioteca.

Entrega
Una tabla con medida, aplicación, recursos necesarios y forma de evaluar el resultado.
Distingue los datos proporcionados de tus suposiciones. Si falta información importante, señálala.
```

Al comparar con el primer intento, conviene revisar dos cosas: si la respuesta respeta las restricciones y si convierte la observación de un solo día en una afirmación demasiado general.

Otras recomendaciones de esta parte:

- *Separar el material de las instrucciones* con encabezados o marcas como "Inicio del correo" y "Fin del correo". Ayuda a organizar, aunque no garantiza que la IA siga todas las instrucciones.
- *"Actúa como experto" no reemplaza la información.* Un rol orienta el tono, pero la IA sigue sin conocer los datos, recursos y restricciones.
- *Pedir que señale sus suposiciones* facilita revisarlas; luego, comprobar que realmente lo haga.

== Ejemplos, etapas

=== Mostrar el resultado con ejemplos

A veces describir el resultado buscado deja demasiadas interpretaciones abiertas. Dar uno o dos ejemplos de entrada y resultado muestra la estructura buscada. A esto se le llama *few-shot prompting*. En clase se usó este prompt:

```
Convierte estas notas en tareas de seguimiento. Usa la estructura de los ejemplos. Si falta un responsable o una fecha, escribe "por confirmar".

Ejemplo 1
Nota: Ana consultará mañana si el salón tiene proyector.
Tarea: Confirmar disponibilidad del proyector. Responsable: Ana. Plazo: mañana.

Ejemplo 2
Nota: Hay que preparar el formulario de inscripción, pero todavía no se asignó a nadie ni se acordó una fecha.
Tarea: Preparar el formulario de inscripción. Responsable: por confirmar. Plazo: por confirmar.

Nueva nota
Debemos consultar si el acceso lateral estará disponible el día de la actividad.
```

El segundo ejemplo enseña qué hacer cuando faltan datos, en lugar de inventarlos. Los ejemplos solo orientan esa conversación; no entrenan al modelo de forma permanente.

=== Dividir el trabajo en etapas

Al pedir un trabajo grande de una vez, el resultado puede apoyarse en una suposición que nunca se revisó. Es mejor avanzar por pasos y revisar entre cada uno:

+ *Extraer:* requisitos confirmados, propuestas e información pendiente. Todavía sin redactar.
+ *Comparar:* alternativas, ventajas, costos conocidos y datos que faltan.
+ *Redactar:* el resultado, con los requisitos ya revisados.

Usar el resultado de una etapa como entrada de la siguiente se llama *encadenar prompts*. Un error temprano se propaga, por eso conviene revisar antes de seguir.

== Contexto y conversaciones largas

El *contexto* es toda la información que el modelo tiene disponible al responder: instrucciones, mensajes anteriores, material aportado y sus propias respuestas previas. Lo que no se le ha dado queda fuera.

Hay un límite de lo que puede procesar en una respuesta: la *ventana de contexto*. Se mide en *tokens*, unidades de texto que no siempre equivalen a palabras completas. En conversaciones largas aparecen dos dificultades distintas:

#table(
  columns: (1fr, 2.5fr),
  align: (left, left),

  [*Dificultad*], [*Qué significa*],

  [Capacidad limitada], [No toda la información acumulada puede mantenerse indefinidamente en el contexto.],
  [Aprovechamiento imperfecto], [Que un dato esté disponible no asegura que la IA lo recupere y relacione correctamente.],
)

A veces el problema no es la longitud, sino que quedan requisitos contradictorios. Si se autoriza un evento para 100 personas y luego se reduce a 60, hay que dejar claro que 60 es el valor vigente y que 100 quedó descartado.

=== Resumen de continuidad

Es una nota breve con el estado actual del trabajo, útil para seguir en otro chat o al día siguiente:

```
Objetivo actual:
Requisitos vigentes:
Datos confirmados y su procedencia:
Decisiones tomadas:
Opciones descartadas:
Información pendiente:
Próxima tarea:
```

Pedir a la IA que lo prepare es útil, siempre que se revise antes de usarlo: puede omitir algo o convertir una propuesta en decisión. El resumen no reemplaza al documento original.

En la práctica de clase se usó un expediente ficticio de una jornada estudiantil con muchos cambios: el cupo bajó de 100 a 60, el presupuesto de 800 a 300 dólares y la duración de cuatro a dos horas. Las parejas separaron lo vigente, lo descartado, lo no aprobado y lo pendiente, y luego continuaron en un chat nuevo solo con ese resumen.

=== Cuándo empezar un chat nuevo

No hay un número fijo de mensajes. Conviene cuando cambia el tema, se acumulan muchas versiones o cuesta saber qué sigue vigente. Empezar de nuevo también pierde lo que no se trasladó: empezar otro chat solo ayuda en la medida en que se traslada correctamente lo necesario.

= Clase 2. Documentos, verificación y relevo

== De dónde sale una respuesta

La Clase 2 pasó de "pedir bien" a tres pasos nuevos: *dar el material*, *verificar lo que afirma* la IA y *pasar el trabajo* a otro chat. Todo se practicó con un caso: diseñar una campaña de pausas activas para la universidad.

#table(
  columns: (1.6fr, 2fr),
  align: (left, left),

  [*Origen de la respuesta*], [*Ejemplo de pregunta*],

  [1. Lo que aprendió en su entrenamiento], [¿Qué es la fotosíntesis?],
  [2. Lo que se le da en la conversación], [¿Qué acordamos en la reunión del martes?],
  [3. Lo que busca con herramientas], [¿Cuál es el precio del dólar hoy?],
)

El riesgo aparece cuando la respuesta necesita algo que no se le dio. Por ejemplo: "¿Cuántos estudiantes de nuestra facultad hacen ejercicio?". Sin la encuesta, cualquier número es inventado, pero la IA puede responder igual con un texto convincente.

Las herramientas incluyen búsqueda web, archivos y *conectores*, como el correo o el calendario. Los conectores dan acceso real a datos personales, por eso se autorizan con cuidado.

== Responder desde el documento

Al darle un documento, hay dos formas de preguntar:

#table(
  columns: (1fr, 1fr),
  align: (left, left),

  [*Sin reglas*], [*Con anclaje*],

  [Completa lo que falta], [Dice "no consta"],
  [Afirma sin fuente], [Cita la frase de origen],
)

Un prompt con anclaje incluye reglas como estas:

```
- Usa solo la información de la encuesta.
- Para cada respuesta, copia entre comillas la frase de la encuesta de la que sale.
- Si la encuesta no permite responder, escribe "No consta en la encuesta" y di qué dato haría falta.
- No completes con conocimiento general ni con suposiciones.
```

En el laboratorio, la encuesta daba resultados globales, sin separar por facultad. Sin reglas, la IA a veces nombraba una facultad "más sedentaria"; con anclaje, debía responder que no consta.

*Idea clave:* la IA resume bien, pero no siempre cuenta bien. Si un número importa, se comprueba a mano.

== Verificar una afirmación

Para verificar un dato hay tres pasos:

+ *¿Quién lo produjo?* Buscar la fuente original, no un sitio que lo repite.
+ *¿Dice exactamente eso?* Revisar cifra, población (adultos, niños…), fecha y unidad.
+ *Abrir la fuente* y buscar el dato personalmente.

*Idea clave:* un enlace en la respuesta no es una verificación; la verificación es abrirlo.

#table(
  columns: (1fr, 2fr, 1.1fr),
  align: (left, left, left),

  [*Clasificación*], [*Significa*], [*¿Se usa?*],

  [Verificada], [La fuente original dice eso], [Sí, citando la fuente],
  [Distorsionada], [Hay fuente, pero cambia cifra, población o alcance], [Solo corregida],
  [No encontrada], [No aparece una fuente que la respalde], [No],
  [Contradicha], [Una fuente confiable dice lo contrario], [No],
)

Si algo no se encuentra, no se declara falso: se declara que no se puede usar. En el laboratorio, cada pareja verificó una de las cinco afirmaciones del borrador de un compañero, Marcos. Una de ellas citaba un estudio que suena muy creíble; conviene comprobar si existe antes de aceptarlo.

== Conversar, no solo pedir

La primera respuesta es un borrador. El ciclo es pedir, cuestionar, ajustar y repetir. Algunas preguntas útiles para la IA:

- "¿De dónde sacaste los costos estimados?"
- "¿Qué podría salir mal con esta acción?"
- "Varios estudiantes dijeron que les da vergüenza hacer ejercicio frente a otros. ¿Cómo cambiarías las acciones por eso?"

Después de varias rondas, la conversación mezcla hallazgos, ideas aprobadas, ideas descartadas, datos que no se usan y condiciones nuevas. La IA lee todo el historial y no siempre distingue lo vigente de lo descartado. Por eso puede volver a proponer algo que ya se rechazó.

== El relevo

Un *relevo* (en inglés, _handoff_) es el texto que pasa el trabajo a otro chat, otra herramienta u otra persona. Quien lo recibe solo sabe lo que dice el relevo: lo que no se escribe, se puede alucinar. Pegar toda la conversación no es un relevo, porque arrastra lo descartado.

#table(
  columns: (1.1fr, 2.5fr),
  align: (left, left),

  [*Parte del relevo*], [*Qué incluye*],

  [1. Encargo], [Qué hay que entregar y para quién],
  [2. Condiciones], [Las condiciones vigentes],
  [3. Aprobado y descartado], [Las acciones aprobadas y las descartadas, con el motivo],
  [4. Datos textuales], [Los datos copiados tal cual, no parafraseados],
  [5. Verificado y no usar], [Afirmaciones con su fuente y las que no se deben usar],
  [6. Pendientes], [Lo que todavía falta confirmar],
)

La parte más olvidada es lo descartado: si no se escribe, el siguiente equipo lo vuelve a proponer.

=== Cuándo empezar un chat nuevo

Cuando la conversación es muy larga, cuando cambiaron las condiciones o cuando sigue otra persona u otra herramienta. También si se llega al límite de uso o se perdería el chat al cerrar la pestaña.

=== Probar el relevo y revisar el resultado

Un buen recurso es pegar el relevo en un chat nuevo y pedir, antes de nada, qué preguntas necesitaría hacer para continuar sin equivocarse. Si una pregunta es importante, es algo que el relevo no dijo.

Si el resultado final falla, identificar la causa:

#table(
  columns: (1fr, 1fr),
  align: (left, left),

  [*Causa*], [*Qué hacer*],

  [Faltaba en el relevo], [Corregir lo escrito],
  [La IA no lo respetó], [Pedir la corrección],
)

Fallas frecuentes de un relevo:

- Convertir propuestas en decisiones.
- Perder matices de los datos, como "participaría" que se vuelve "hace".
- Arrastrar afirmaciones no verificadas.
- Omitir lo descartado.
- Agregar datos que nunca aparecieron en la conversación.

*Idea clave:* la calidad del resultado depende de tres cosas: qué información se le dio a la IA, cómo se comprobó lo que afirmó y qué quedó escrito para continuar.

= Práctica para hacer en casa

== Laboratorio de la Clase 2

La mejor forma de recuperar la Clase 2 es hacer el mismo laboratorio que hizo el curso, de unos 60 minutos. Está publicado con todos los prompts listos para copiar:

- Laboratorio: #link("https://uru.tomassantana.com/introai/labs/02-prompting-2.html")
- Diapositivas: #link("https://uru.tomassantana.com/introai/slides/05-prompt-2.html")

Antes de empezar:

- Abrir #link("https://gemini.google.com")[gemini.google.com] y el Bloc de notas. No hace falta iniciar sesión.
- No cerrar la pestaña de Gemini hasta la actividad 5. Sin sesión, al cerrarla se pierde la conversación.
- De ser posible, hacer el laboratorio en pareja: una persona escribe y la otra revisa.

#table(
  columns: (1.2fr, 2fr, 2fr),
  align: (left, left, left),

  [*Actividad*], [*Qué se hace*], [*Ajuste para casa*],

  [0. Campaña sin datos], [Enviar un prompt de una línea y guardar la respuesta], [Ninguno],
  [1. ¿Qué dice la encuesta?], [Comparar respuestas sin reglas (1A) y con anclaje (1B); contar comentarios a mano (1C)], [Contar a mano al menos dos temas],
  [2. Verificar el borrador de Marcos], [Verificar afirmaciones con el prompt 2A y abrir el enlace], [En clase cada pareja verificó una; aquí, verificar al menos A3, A4 y A5 y completar el prompt 2B con esos resultados],
  [3. Ideas para la campaña], [Pedir cinco acciones, cuestionarlas y elegir tres], [Hacer al menos dos preguntas del recuadro],
  [4. Responde la coordinación], [Ajustar la propuesta a condiciones nuevas], [Abrir el mensaje solo después de elegir las tres acciones],
  [5. El relevo], [Pedir un relevo, revisarlo y probarlo en un chat nuevo], [Ninguno],
  [6. Campaña final], [Hacer la campaña solo con el relevo y revisarla con la lista], [Compararla con la campaña de la actividad 0],
)

Si Gemini no busca en internet en la actividad 2, pedirle dónde buscar y verificar en un buscador normal.

== Práctica breve de la Clase 1

Unos 20 minutos:

+ Elegir una tarea pequeña de la propia carrera, con datos ficticios. Escribir una petición con objetivo, información disponible, condiciones y entrega.
+ Pegarla en un chat con el prompt "Revisar un prompt" de la Clase 1. Aceptar una sugerencia y rechazar otra, con su motivo.
+ Probar la versión final. Anotar un criterio concreto en que mejoró, o en que no.
+ Pedir a la IA un resumen de continuidad con las siete partes. Revisar que no haya convertido propuestas en decisiones.

= Respuestas del laboratorio

No leer esta sección antes de hacer el laboratorio.

== Encuesta (actividad 1)

#table(
  columns: (1.3fr, 2.5fr),
  align: (left, left),

  [*Pregunta*], [*Qué dice la encuesta*],

  [P1. Principal obstáculo], [Falta de tiempo, 54 %],
  [P2. ¿Aula o patio?], [Solo mide disposición: 72 % participaría en clase y 30 % en el patio. No dice qué funciona mejor],
  [P3. Facultad más sedentaria], [No consta: los resultados son globales],
  [P4. ¿Representa a todos?], [No: la encuesta fue voluntaria y se difundió por las redes de la federación],
)

Conteo de comentarios: espalda o postura, 5 (2, 7, 11, 14, 20); falta de tiempo, 4 (1, 3, 12, 17); vergüenza, 3 (4, 10, 18); espacios, 3 (5, 13, 19); cansancio, 2 (6, 15); preferencias de formato, 2 (8, 16). El comentario 9 es ambiguo a propósito.

== Borrador de Marcos (actividad 2)

#table(
  columns: (2fr, 1fr, 2fr),
  align: (left, left, left),

  [*Afirmación*], [*Resultado*], [*Por qué*],

  [A1. La OMS publicó en 2020 directrices sobre actividad física], [Verificada], [Publicadas en noviembre de 2020; actualizan las de 2010],
  [A2. Adultos: al menos 150 minutos semanales moderados], [Verificada], [150 a 300 minutos moderados o 75 a 150 vigorosos por semana],
  [A3. Adultos: 60 minutos diarios], [Distorsionada], [Los 60 minutos diarios son para niños y adolescentes],
  [A4. Estudio de Harvard de 2023, productividad +40 %], [No encontrada], [Fue inventada para el ejercicio],
  [A5. El 72 % hace pausas activas], [Distorsionada], [La encuesta dice que el 72 % participaría],
)

Fuente de A1 a A3: Bull y otros, _World Health Organization 2020 guidelines on physical activity and sedentary behaviour_, British Journal of Sports Medicine.

== Campaña final (actividad 6)

- Dura dos semanas y no supera 50 dólares.
- No usa espacios abiertos al mediodía, premios, impresos ni app.
- Las pausas en clase dependen del permiso de cada docente.
- No aparece el estudio de Harvard.
- El 72 % aparece como "participaría", no como "hace".
- No inventa datos por facultad.

= Autoevaluación

Responder por escrito, en pocas líneas. Son las mismas preguntas que respondió el curso al final de cada clase:

+ Una modificación concreta hecha a un prompt y qué cambió en el resultado.
+ Qué información conservar para continuar el trabajo al día siguiente.
+ Un dato que se habría aceptado sin verificar y cómo se comprobó.
+ Qué tuvo que corregirse en el relevo, o qué faltaba.
+ Una situación de la propia carrera en la que haría falta pasar un trabajo a otra persona o a otro chat.

= Glosario

#table(
  columns: (1.2fr, 2.5fr),
  align: (left, left),

  [*Término*], [*Significado*],

  [Prompt], [Mensaje con el que se pide algo o se aporta información a la IA],
  [Contexto], [Toda la información disponible para la IA al responder],
  [Ventana de contexto], [Límite de lo que la IA puede procesar en una respuesta],
  [Token], [Unidad de texto con que se mide el contexto; no siempre es una palabra],
  [Few-shot prompting], [Dar unos pocos ejemplos de entrada y resultado],
  [Encadenar prompts], [Usar el resultado de una etapa como entrada de la siguiente],
  [Anclaje], [Pedir que responda solo desde un documento, citando la frase de origen],
  [Alucinación], [Dato inventado presentado con apariencia convincente],
  [Conector], [Herramienta que da a la IA acceso a datos como el correo o el calendario],
  [Resumen de continuidad], [Nota con el estado vigente de un trabajo],
  [Relevo (handoff)], [Texto que pasa el trabajo a otro chat, herramienta o persona],
)
