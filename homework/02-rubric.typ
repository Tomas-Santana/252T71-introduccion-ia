#import "@preview/rubber-article:0.5.2": *

#show: article
#set text(lang: "es")
#set table(stroke: (x: none, y: 0.5pt))
#maketitle(
  title: "Rúbrica de evaluación. Actividad 2",
  authors: ("Tomas Santana",),
  date: "Noviembre, 2026",
)

$
"Nota" = ("Propuesta" + "Registro") times "Trazabilidad"
$

La propuesta y el registro suman hasta 20 puntos. La trazabilidad es un factor entre 0 y 1 que multiplica esa suma. Por ejemplo, $(9 + 8) times 0.8 = 13.6$.

#heading(numbering: none, level: 1)[Propuesta y registro (20 puntos)]

#[
  #set text(size: 0.85em)
  #set par(justify: false)
  #table(
    columns: (1.1fr, 1.3fr, 1.3fr, 1.3fr),
    align: left,
    [*Criterio*], [*Logrado*], [*Parcial*], [*Insuficiente*],

    table.cell(colspan: 4)[*Propuesta (10 puntos)*],
    [*Problema, destinatario y condiciones* (2 pts)],
    [*2.* El problema es concreto, y el destinatario y las restricciones son explícitos.],
    [*1.* Falta precisión en el problema, el destinatario o las restricciones.],
    [*0.* Tema general, sin destinatario ni restricciones.],

    [*Uso del material* (2 pts)],
    [*2.* Cita el material con precisión, declara lo que no dice y reúne en _Limitaciones_ lo no encontrado o no verificado.],
    [*1.* Usa el material, pero con imprecisiones, o sus limitaciones están incompletas.],
    [*0.* No usa el material, o completa lo que no dice como si fuera dato.],

    [*Propuesta* (4 pts)],
    [*4.* Acciones concretas y justificadas que respetan todas las condiciones.],
    [*2--3.* Decide algo, pero falta concreción o justificación, o desatiende alguna condición.],
    [*0--1.* Describe el tema sin decidir, o ignora las condiciones.],

    [*Fuentes y citas* (2 pts)],
    [*2.* Cada afirmación comprobable tiene cita APA 7, y las referencias coinciden con las citas.],
    [*1.* Hay citas faltantes, errores de formato o referencias que no coinciden.],
    [*0.* Sin citas ni referencias, o cita a la IA como fuente.],

    table.cell(colspan: 4)[*Registro de proceso (10 puntos)*],
    [*Autoverificación* (1 pt)],
    [*1.* Justifica cada restricción.],
    [*0.5.* Justifica solo algunas, o solo las marca.],
    [*0.* No la incluye.],

    [*Herramientas* (1 pt)],
    [*1.* Indica herramientas, usos, búsqueda web o adjuntos, y lo hecho sin IA.],
    [*0.5.* Falta parte de esa información.],
    [*0.* No las indica.],

    [*Momentos clave* (2 pts)],
    [*2.* 3 a 5 prompts textuales, explicando qué cambió y por qué, con el relevo si hubo chat nuevo.],
    [*1.* Menos de 3 prompts, no textuales, o explicaciones superficiales.],
    [*0.* No incluye prompts.],

    [*Tabla de verificación* (4 pts)],
    [*4.* Todas las cifras y al menos cinco afirmaciones, con fuente original revisada, resultado y acción.],
    [*2--3.* Faltan cifras, afirmaciones o columnas, o no se aprecia la revisión de alguna fuente.],
    [*0--1.* Tabla ausente o casi vacía, o se limita a repetir los enlaces de la IA.],

    [*Lo descartado* (1 pt)],
    [*1.* Lista ideas o datos descartados y explica por qué.],
    [*0.5.* Los lista sin explicar.],
    [*0.* No lo incluye.],

    [*Reflexión* (1 pt)],
    [*1.* Señala un dato concreto y qué cambió al verificarlo.],
    [*0.5.* Reflexión general, sin un dato concreto.],
    [*0.* No la incluye.],
  )
]

Si el tema no cumple las restricciones, el registro se califica sobre un máximo de 6 puntos.

#heading(numbering: none, level: 1)[Trazabilidad (factor de 0 a 1)]

El docente escoge dos filas de la tabla de verificación y un momento clave, y los comprueba contra las fuentes y las conversaciones entregadas.

#align(center)[
  #set text(size: 0.85em)
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
