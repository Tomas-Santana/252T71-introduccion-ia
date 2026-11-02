#import "@preview/rubber-article:0.5.2": *

#show: article
#set text(lang: "es")
#set table(stroke: (x: none, y: 0.5pt))
#show link: set text(fill: rgb("#0000ee"))
#show link: underline
#maketitle(
  title: "Actividad 2. Diseño de una propuesta con registro de proceso",
  authors: ("Tomas Santana",),
  date: "Noviembre, 2026",
)

En parejas, elaboren una propuesta breve para resolver un problema concreto y un anexo, el _Registro de proceso_, que muestre cómo llegaron a ella. Pueden usar IA en cualquier parte, incluida la redacción, siempre que lo documenten. También se evalúa el proceso: qué material recibió la IA, cómo se comprobó lo que afirmó contra las fuentes originales y qué se conservó o descartó.

#heading(numbering: none, level: 1)[Restricciones del tema]

El tema es libre, pero debe tener:

- *Un problema concreto y cercano* de la universidad, la comunidad o la carrera.
- *Un destinatario y condiciones*: quién lee la propuesta y qué debe respetar (presupuesto, plazo, personas, normas).
- *Un material específico entregado a la IA*: un documento público (reglamento, ley, informe, plan de estudios), datos públicos (estadísticas oficiales, encuestas publicadas, datos abiertos) o una observación propia, declarada como tal y no como dato general. Opcionalmente, una mini encuesta o entrevista propia.
- *Al menos tres fuentes externas*, una de ellas original (organismo oficial, artículo académico, ley o base de datos pública). Noticias y blogs solo sirven de apoyo.
- *Al menos cinco afirmaciones comprobables*: cifras, fechas, citas o resultados.
- *Un resultado que decida algo*: propuesta, recomendación o comparación, no una descripción.

Prueba rápida: *si la IA pudiera hacer todo el trabajo sin hacer ninguna pregunta, el tema no sirve.*

#align(center)[
  #set text(size: 0.9em)
  #table(
    columns: (auto, auto, 1fr),
    align: left,
    [*Carrera*], [*No funciona*], [*Funciona*],
    [Administración], [Emprendimiento en América Latina], [Comparar dos formas de cobro para la cafetería de la universidad, según sus precios y horarios publicados],
    [Comunicación], [Redes sociales y jóvenes], [Mejorar el alcance de la cuenta de un centro de estudiantes, con datos de sus publicaciones],
    [Derecho], [Derechos del consumidor], [Guía para reclamar un cobro indebido como estudiante, verificada contra la ley vigente],
    [Ingeniería], [Energías renovables], [Evaluar si conviene cambiar la iluminación del Módulo 7 de la URU, con una observación de uso real],
    [Psicología o Salud], [Estrés en universitarios], [Medidas para la semana de exámenes, contrastadas con estudios publicados],
  )
]

#heading(numbering: none, level: 1)[Qué entregar]

Un PDF con las secciones siguientes, en este orden, y las conversaciones con la IA citadas en el anexo (enlaces compartidos o archivos de texto).

*Propuesta (10 puntos).* Portada (título, integrantes, carrera y fecha), secciones 1 a 4 en 3 a 5 páginas, y referencias.

+ *Introducción:* problema, destinatario y condiciones.
+ *Material y fuentes:* qué dice el material, citado con precisión, y qué aportan las fuentes. Lo que el material no dice se declara, sin completarlo.
+ *Propuesta:* acciones o recomendaciones concretas y justificadas que respeten las condiciones.
+ *Limitaciones:* datos no encontrados o no verificados, y qué confirmar antes de aplicar la propuesta.
+ *Citas y referencias:* formato APA 7. Cada afirmación tomada de una fuente lleva autor y año, por ejemplo (Bull et al., 2020); las citas textuales van entre comillas y con página. Las referencias incluyen todas las fuentes citadas y solo esas. La IA no es fuente: se cita el original de cada dato.

*Anexo: Registro de proceso (10 puntos).*

+ *Autoverificación:* justificar que el tema cumple cada restricción.
+ *Herramientas:* cuáles se usaron y para qué, si la IA tenía búsqueda web o archivos adjuntos, y qué se hizo sin IA.
+ *Momentos clave:* 3 a 5 prompts decisivos, copiados tal cual, con una línea sobre qué cambió en la respuesta y por qué. Si se pasó a un chat nuevo, incluir el relevo y lo que hubo que corregir en él.
+ *Tabla de verificación:* todas las cifras del trabajo y al menos cinco afirmaciones. Un enlace de la IA no es una verificación: hay que abrir la fuente y leerla.
+ *Lo descartado:* ideas o datos de la IA que no se usaron, y por qué.
+ *Reflexión:* qué dato se habría aceptado sin verificar y qué cambió al verificarlo.


Ejemplo de una entrada en la tabla de verificación:
#align(center)[
  #set text(size: 0.9em)
  #block(breakable: false)[#table(
    columns: (1.2fr, 1fr, 1fr, auto, 1.3fr),
    align: (left, left, left, center, left),
    [*Afirmación*], [*Según la IA*], [*Fuente revisada*], [*Resultado*], [*Acción*],
    [El 72 % de los estudiantes hace pausas activas], [Encuesta de Bienestar Académico de la URU], [La misma encuesta, pregunta 2], [Distorsionada], [Dice que el 72 % _participaría_. Se corrigió la redacción],
  )]
]

Resultados posibles: *Verificada* (la fuente dice exactamente eso), *Distorsionada* (algo parecido, pero con otro alcance, población o cifra) o *No encontrada* (no se localizó la fuente o el dato en ella).

#heading(numbering: none, level: 1)[Evaluación]

$
"Nota" = ("Propuesta" + "Registro") times "Trazabilidad"
$

La trazabilidad mide si el registro corresponde al proceso real. El docente escogerá dos filas de la tabla y un momento clave, y los comprobará contra las fuentes y las conversaciones entregadas:

#align(center)[
  #set text(size: 0.9em)
  #table(
    columns: (auto, 1fr),
    align: (center, left),
    [*Factor*], [*Criterio*],
    [1.0], [Las dos filas y el momento clave coinciden.],
    [0.8], [Hay una diferencia menor (página equivocada, cita imprecisa) que no cambia el resultado reportado.],
    [0.5], [Una fila no se sostiene: la fuente no dice lo indicado o no corresponde a la afirmación.],
    [0], [Ninguna fila se sostiene, o las conversaciones no corresponden a lo descrito en el registro.],
  )
]

Si el tema no cumple las restricciones, el registro se califica sobre un máximo de 6 puntos.

Usar IA no resta puntos. Se valora la *trazabilidad* (se puede seguir de dónde sale cada dato), la *verificación* (se abrieron las fuentes y se reportan distorsiones y datos no encontrados), el *juicio propio* (decisiones y descartes justificados) y la *honestidad* (el registro coincide con la evidencia y reconoce lo que no se pudo confirmar).
