#import "@preview/rubber-article:0.5.2": *

#show: article
#set text(lang: "es")
#set table(stroke: (x: none, y: 0.5pt))
#show link: set text(fill: rgb("#0000ee"))
#show link: underline
#maketitle(
  title: "Proyecto final",
  authors: ("Tomas Santana",),
  date: "Noviembre, 2026",
)

Desarrollar, en equipos de 3 a 4 integrantes, un proyecto que use la IA para resolver un problema real de la carrera. No se busca el proyecto más complejo, sino uno que muestre cómo aprovechar la IA en algo que le importe a un profesional del área: programar con su ayuda, analizar datos y verificar lo que produce. Se puede usar IA en cualquier parte del trabajo, incluido todo el código. Si el equipo tiene integrantes de distintas carreras, el problema puede ser de una sola de ellas o combinar varias.

#heading(numbering: none, level: 1)[Requisitos mínimos]

Todo proyecto, sin importar la ruta elegida, debe incluir:

- *Un problema real de la carrera*, con un destinatario claro: quién usaría el resultado y para qué decisión o tarea.
- *Python con pandas* en Google Colab / Jupyter Lite para cargar, limpiar, transformar o resumir datos. El código puede pedirse completo a la IA; el notebook debe ejecutarse de principio a fin sin errores y terminar exportando los datos procesados a un archivo `.csv`, que es el que se carga en Power BI.
- *Power BI* con visualizaciones que respondan al problema planteado, no solo que muestren los datos.
- *Una bitácora de verificación* que documente cómo se usó la IA y qué se comprobó (ver _Qué entregar_).

#heading(numbering: none, level: 1)[Rutas]

Elegir una de las siguientes rutas. La ruta define dónde se concentra el peso del proyecto; los requisitos mínimos aplican a todas.

- *A. Análisis de datos.* Responder una pregunta de la carrera con datos de una encuesta propia o de un conjunto de datos público. Python prepara los datos y Power BI es la pieza central, con al menos 3 visualizaciones que respondan la pregunta.
- *B. Herramienta para la profesión.* Construir un programa en Python que resuelva una tarea concreta del área (calcular, clasificar, organizar o resumir algo) trabajando con datos mediante pandas. Power BI se usa para analizar los resultados que produce la herramienta o los datos que procesa.
- *C. Propuesta libre.* Otra idea que cumpla los requisitos mínimos. Requiere aprobación del docente antes de comenzar.

#align(center)[
  #set text(size: 0.9em)
  #table(
    columns: (auto, auto, 1fr),
    align: left,
    [*Carrera*], [*Ruta*], [*Ejemplo*],
    [Administración], [A], [Identificar qué factores influyen en dónde compran los estudiantes alrededor del campus, con una encuesta propia],
    [Contaduría], [B], [Clasificar los movimientos de un estado de cuenta en categorías de gasto y resumirlos por mes],
    [Derecho], [A], [Analizar qué tipos de casos predominan en datos abiertos de tribunales o defensorías],
    [Ingeniería], [B], [Calcular el consumo eléctrico estimado de un edificio a partir de un inventario de equipos y horarios de uso],
    [Psicología], [A], [Relacionar las horas de sueño en semana de exámenes con el rendimiento percibido, con una encuesta anónima],
    [Producción Animal], [B], [Organizar un inventario de animales por especie, edad y peso, y calcular la cantidad de alimento necesaria para un período dado]
  )
]

#heading(numbering: none, level: 1)[Qué entregar]

- Notebook (`.ipynb`), junto con los datos de origen (`.csv` o `.xlsx`) o el enlace a ellos.
- Archivo `.csv` exportado por el notebook y usado en Power BI.
- Archivo de Power BI (`.pbix`).
- Bitácora de verificación en PDF, con las secciones siguientes:
  + *Problema y ruta:* problema, destinatario, ruta elegida y fuente de los datos.
  + *Herramientas:* qué herramientas de IA se usaron y para qué.
  + *Prompts clave:* 3 a 5 prompts decisivos, copiados tal cual, con una línea sobre lo que se obtuvo.
  + *Errores / inconsistencias de la IA:* al menos dos errores o respuestas dudosas de la IA (código que falló, cálculo incorrecto, interpretación sin sustento), cómo se detectaron y cómo se corrigieron.
- Diapositivas de la exposición.

#heading(numbering: none, level: 1)[Exposición]

Presentar el proyecto en clase en 12 a 15 minutos, con la siguiente estructura:

+ *Problema:* qué se resolvió y por qué importa en la carrera.
+ *Proceso:* qué datos se usaron y qué se hizo con ellos en Python.
+ *Demostración:* recorrido en vivo por Power BI o la herramienta desarrollada.
+ *Dónde se equivocó la IA:* los errores encontrados y cómo se resolvieron.
+ *Conclusión:* cómo debería usar la IA un profesional del área y con qué cuidados.

Al final, el docente hará preguntas a cualquier integrante sobre cualquier parte del proyecto. Todos deben poder explicarlo completo. La nota de exposición y respuestas es individual: cada integrante recibe la suya según su participación y sus respuestas.

#heading(numbering: none, level: 1)[Evaluación]

#align(center)[
  #set text(size: 0.9em)
  #table(
    columns: (1fr, auto),
    align: (left, center),
    [*Criterio*], [*Puntos*],
    [Aplicación a la carrera], [3],
    [Verificación y bitácora], [4],
    [Python con pandas], [4],
    [Power BI], [4],
    [Exposición y respuestas individuales], [5],
    [Total], [20]
  )
]
