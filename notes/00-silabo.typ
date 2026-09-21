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
  title: [252T19. Inteligencia Artificial. Sílabo],
  author: [Tomas Santana],
  date: [], 
)

= Información del profesor
- Nombre: Tomas Santana
- Correo electrónico: tomas.santana.205635\@uru.edu
- Dudas y consultas: En clase o por correo electrónico. 

= Descripción del curso

Durante este curso, se diseñan, implementan y evalúan algoritmos de aprendizaje automático (ML) y aprendizaje profundo (DL) para resolver problemas a través de datos, aplicando técnicas de aprendizaje supervisado y no supervisado, y redes neuronales. Se estudian los fundamentos matemáticos que intervienen en la construcción de estos algoritmos de inteligencia artificial (IA). El curso aborda el proceso completo de modelado, desde la formulación del problema y la preparación de datos, hasta el entrenamiento, y la evaluación de modelos; e introduce aplicaciones modernas como los sistemas de recomendación y las bases de datos vectoriales, así como principios de ética e inteligencia artificial responsable. Es un curso teórico, pero con metodología de evaluación proyectiva.

= Unidades de aprendizaje
#table(
  columns: (0.5fr, 2.5fr, 1.3fr),
  align: (center, left, left),

  [*Unidad*], [*Contenido*], [*Evaluación*],

  [1],
  [*Fundamentos de Inteligencia Artificial.* Evolución conceptual de la Inteligencia Artificial: sistemas basados en reglas e instrucciones, aprendizaje automático, aprendizaje profundo, IA generativa y modelos de lenguaje. Distinción entre IA, aprendizaje automático, aprendizaje profundo, IA generativa y modelos de lenguaje. Fundamentos de la IA generativa y funcionamiento de los modelos de lenguaje: entrenamiento, tokens, contexto, atención y arquitectura Transformer. Capacidades y limitaciones de los sistemas actuales. Alucinaciones, sesgos, privacidad, dependencia tecnológica, ética y uso responsable de la IA.],
  [Exposición: Inteligencia Artificial aplicada al área profesional],

  [2],
  [*Uso efectivo y crítico de sistemas de IA.* Formulación de instrucciones, definición de objetivos, restricciones, formatos de salida y uso de ejemplos. Manejo y administración del contexto, iteración y refinamiento de respuestas. Limitaciones asociadas a conversaciones extensas y acumulación de información. Uso de capacidades especializadas, herramientas y conexiones con fuentes y servicios externos. IA aplicada a investigación, búsqueda de información, contraste de fuentes, verificación, trazabilidad y detección de información fabricada.],
  [Actividad de investigación y verificación asistida por IA],

  [3],
  [*Resolución computacional de problemas asistida por IA.* Fundamentos de lógica computacional: algoritmos, datos, variables, operaciones, estructuras de decisión, repetición y funciones. Uso de sistemas de IA para generar, explicar, modificar y depurar soluciones computacionales sencillas. Interpretación de código y mensajes de error. Procesamiento básico de archivos y datos estructurados. Principios para el uso responsable de código generado por IA.],
  [Proyecto práctico de programación asistida por IA],

  [4],
  [*Análisis de datos y diseño de soluciones con IA.* Fundamentos del análisis de datos: datos estructurados, variables, calidad, limpieza y transformación de información. Exploración mediante tablas, métricas y visualizaciones. Uso de IA para apoyar el análisis, interpretación y comunicación de resultados. Verificación de conclusiones. Diseño, evaluación y presentación de soluciones basadas en IA aplicadas a problemas del área profesional.],
  [Proyecto final: desarrollo, presentación y defensa de una solución basada en IA],
)

= Evaluación

Todas las semanas se asignará material de estudio para la siguiente clase, que podrá incluir lecturas, videos y ejercicios prácticos. Se evaluará la participación en clase en base al contenido de estudio asignado. La intervención dentro de la clase configura el 15% de la nota final. 

Cada unidad de aprendizaje incluye una actividad evaluativa, que puede ser una exposición, un proyecto o una actividad de investigación. La nota de cada actividad evaluativa (exceptuando el proyecto final) constituye el 10% de la nota final.

== Distribución de la nota final

- Evaluación 1-3: 15% cada una (45% en total)
- Proyecto final: 30%
- Participación en clase: 15%
- Apreciación del profesor: 10%

= Honestidad académica

Todas las actividades de los estudiantes deben ser originales. De ocurrir una falta o plagio se recibirá automáticamente la nota de cero en dicha evaluación, se citará a los responsables a la Coordinación de Pregrado y se elevará el informe respectivo a la Facultad con copia a la Dirección Académica. El uso de herramientas de IA generativa, cuando se permita, debe ser declarado explícitamente.

= Política de entregas

== Para trabajos y tareas entregadas virtualmente

- Las tareas deben ser entregadas en la fecha y hora establecida, con un periodo de gracia de 4 horas sin penalización.
- Se aplicará una penalización del 10% entre las 4 y 24 horas siguientes a la fecha de entrega.
- Se aplicará una penalización del 30% entre las 24 y 48 horas siguientes a la fecha de entrega.
- Pasado este periodo, no se aceptarán entregas tardías y la nota será cero.

== Para trabajos y tareas entregadas en clase

- Las tareas y trabajos deben ser entregadas durante la clase a la que fueron asignadas.

== Para exposiciones, presentaciones, talleres y exámenes

- Las exposiciones y presentaciones deben realizarse en la fecha y hora establecida.

== Comodín

Los estudiantes tendrán derecho a retrasar la fecha de entrega de una única tarea o trabajo, siguiendo las siguientes normas:
- Para entregas virtuales, el comodín puede ser utilizado para retrasar la entrega de una tarea o trabajo hasta 48 horas después de la fecha de entrega original, sin penalización. No se extenderá la fecha límite de entrega más allá de las 48 horas posteriores a la fecha original.
- Para entregas en clase, el comodín puede ser utilizado para retrasar la entrega de una tarea o trabajo hasta la clase siguiente, sin penalización. No será posible utilizar el comodín para retrasar la entrega en la última clase del periodo académico.
- Para exposiciones, presentaciones, talleres y exámenes, el comodín puede ser utilizado para retrasar la presentación hasta la clase siguiente. Para este caso, el uso debe ser aprobado previamente por el profesor.
- Para trabajos en grupo, podrá aplicarse siempre que al menos un integrante del equipo lo tenga disponible. Su uso consumirá el comodín de todos los miembros del grupo que aún lo conserven.


== Sobre retrasos justificados

En caso de retrasos en la entrega debido a causas justificables, el estudiante debe comunicarse previamente (o en la brevedad posible una vez superada la eventualidad) con el profesor por correo electrónico. El profesor evaluará la situación y podrá otorgar una extensión de tiempo para la entrega sin penalización, según corresponda.

