# MarkdownEditor para Cuis

Soporte de Markdown en el editor de texto de Cuis:
- Resaltado de sintaxis mientras se escribe.
- Vista previa que se actualiza en vivo, con imágenes, tablas, fórmulas y código coloreado.
- Atajos de teclado.
- Links, incluidos links a secciones del mismo documento.
- Exportación a HTML.

Soporta CommonMark y las extensiones de GitHub (tablas, tareas, tachado, links automáticos y notas al pie), más emojis y fórmulas.

## Instalación

Arrastrar `MarkdownEditor.pck.st` a la ventana de Cuis y elegir *Install package*, o evaluar:

```smalltalk
CodePackageFile installPackage: 'ruta/a/MarkdownEditor.pck.st' asFileEntry.
```

Requiere el paquete `Graphics-Files-Additional` de Cuis (para leer imágenes PNG y GIF), que viene en `Packages/Features` y se instala automáticamente junto con este.

## Uso

- **World menu > Open > Markdown Editor** abre un editor vacío.
- En el **File List**, los archivos `.md` y `.markdown` tienen el botón *Markdown Editor*. Al guardar desde el menú de la ventana, se escribe el mismo archivo.
- Desde código: `MarkdownTextModel open` o `MarkdownTextModel openOn: 'README.md' asFileEntry`.

## Guardar como Markdown o HTML

- **Save As Markdown...** (clic derecho) guarda el texto como un archivo `.md`.
  - Propone guardarlo en la carpeta **FileOuts**, la misma donde Cuis guarda los file outs de código.
  - El nombre sale del primer título del documento (por ejemplo `Mis notas.md`).
  - Se puede cambiar la ruta en el mismo diálogo. Si el archivo ya existe, pide confirmación antes de reemplazarlo.
  - Después de guardar, la ventana toma el nombre del archivo y el *Save* del menú de la ventana escribe en ese mismo archivo.
- **Save As HTML...** guarda el documento como una página web, para abrirla en cualquier navegador.
  - Los títulos tienen `id`, así que los links a secciones funcionan.
  - Las notas al pie van al final.
  - El código tiene colores.
  - Las imágenes locales se enlazan con su ruta completa.

## Tutorial

La primera vez que se abre un Markdown Editor aparece un tutorial interactivo: un documento Markdown con ejercicios para probar cada función ahí mismo. Después se puede volver a abrir desde el menú del clic derecho (*Markdown Tutorial*). Para que vuelva a aparecer solo: `MarkdownTextModel resetTutorial`.

## Atajos de teclado

Con **Alt** en Windows y Linux, o **Cmd** en Mac. También están en el menú del clic derecho.

| Atajo | Acción |
|---|---|
| `b` | Negrita: encierra la selección entre `**`, o los saca si ya estaban |
| `i` | Itálica (`*`) |
| `Shift+S` | Tachado (`~~`) |
| `` ` `` | Código inline |
| `Shift+L` | Link: la selección pasa a ser el texto y queda seleccionado `url` para escribirla |
| `t` | Título: la línea actual pasa por normal → `#` → `##` → `###` → normal |
| `Shift+T` | Tarea: convierte la línea en `- [ ]` y alterna entre `[ ]` y `[x]` |
| `o` | Abre el link donde está el cursor (los links a secciones saltan a ese título) |
| `p` | Abre la vista previa |

## Vista previa

Muestra el documento sin los símbolos de Markdown y se actualiza mientras se escribe en el editor:
- **Texto:** títulos grandes y párrafos unidos como en GitHub.
- **Listas:** viñetas distintas para cada nivel de lista anidada (`•` `◦` `▪`) y casillas `☐`/`☑`.
- **Citas:** marcadas con una barra `┃`.
- **Imágenes:** las de archivos locales se muestran. Las rutas relativas se buscan desde la carpeta del archivo editado; en un texto sin archivo (como el tutorial), en el directorio actual y en la carpeta de Cuis. Las imágenes web no se descargan: se muestra su texto alternativo.
- **Notas al pie:** numeradas.
- **Emojis y fórmulas:** se muestran como símbolos.
- **Código:** coloreado según el lenguaje.

Las tablas se dibujan con bordes y con las columnas alineadas:

```
┌───────────┬────────────┬──────┐
│ Lenguaje  │ Paradigma  │  Año │
├───────────┼────────────┼──────┤
│ Smalltalk │  Objetos   │ 1972 │
│ Haskell   │ Funcional  │ 1990 │
└───────────┴────────────┴──────┘
```

- Cada columna es tan ancha como su celda más larga. La markup oculta (`**`, links, etc.) no cuenta.
- La fila de separación define la alineación: `|:---|` a la izquierda, `|:---:|` centrada y `|---:|` a la derecha.
- A las filas con menos celdas se les agregan celdas vacías.
- Para que las columnas queden alineadas, la tabla se muestra con una fuente monoespaciada: JetBrains Mono, que viene con Cuis en `TrueTypeFonts` y se carga automáticamente.

Los links de la vista previa se pueden clickear:
- Los links a secciones (`[ver](#tablas)`) llevan a ese título.
- Los links a archivos `.md` se abren en otro Markdown Editor. Las rutas relativas se resuelven desde la carpeta del archivo editado.
- Los links web se copian al portapapeles, porque Cuis no puede abrir el navegador.

## Sintaxis soportada

| Elemento | Ejemplo |
|---|---|
| Títulos | `# Título` … `###### Título`, o el texto subrayado con `===` / `---` |
| Párrafos y saltos de línea | Las líneas seguidas forman un párrafo. Terminar la línea con dos espacios o `\` la corta |
| Negrita / itálica / ambas | `**negrita**`, `*itálica*`, `_itálica_`, `***ambas***` (pueden abarcar varias líneas) |
| Tachado | `~~tachado~~` |
| Código inline | `` `código` `` |
| Bloques de código | Con <code>```</code> (y el lenguaje: <code>```smalltalk</code>, <code>```python</code>…), o con cuatro espacios de sangría |
| Listas | `- item`, `* item`, `1. item`, anidadas con sangría |
| Listas de tareas | `- [ ] pendiente`, `- [x] hecha` (se muestra tachada) |
| Tablas | `\| a \| b \|`, y una fila `\|---\|:---:\|` marca la de arriba como encabezado y la alineación |
| Citas | `> cita`, anidadas (`> > cita`) y con listas o títulos adentro |
| Links | `[texto](url "título")`, `[texto][ref]` con `[ref]: url`, `<https://...>`, URLs sueltas y `[ir](#un-titulo)` |
| Imágenes | `![alt](logo.png)`, `<img src="logo.png">` |
| Notas al pie | `texto[^1]` y `[^1]: la nota` |
| HTML | `<b>`, `<i>`, `<u>`, `<mark>`, `<sub>`, `<sup>`, `<code>`, `<kbd>`, `<br>`, comentarios `<!-- -->`; las demás etiquetas se ocultan |
| Emojis | `:smile:`, `:heart:`, `:warning:`, `:coffee:`… (los que pueden mostrar las fuentes de Cuis) |
| Fórmulas | `$x^2 + \alpha$` y bloques entre `$$`. Notación de LaTeX: símbolos, `^`, `_`, `\frac`, `\sqrt`, `\mathbb` |
| Línea horizontal | `---` |
| Escapes | `\*no es itálica\*` |

Smalltalk en los bloques de código se colorea con Shout, igual que en un Workspace. Para el resto de los lenguajes se colorean palabras clave, strings, números y comentarios.

## Diseño

| Clase | Responsabilidad |
|---|---|
| `MarkdownParser` | Recorre el texto línea por línea y devuelve `MarkdownRange`s (tipo, inicio, fin). No arma un árbol: alcanza con saber dónde empieza y termina cada elemento. Junta las líneas de cada párrafo, porque los elementos inline pueden abarcar varias. Antes busca las definiciones de links, que pueden estar después de usarse. |
| `MarkdownCodeHighlighter` | Colorea los bloques de código según su lenguaje: Smalltalk con el parser de Shout, y el resto con palabras clave, strings, números y comentarios. |
| `MarkdownMath` | Convierte fórmulas en notación de LaTeX a texto con símbolos, superíndices y subíndices (o a HTML). |
| `MarkdownTextStyler` | Subclase de `SHTextStyler`, el framework de resaltado de Cuis ("Shout"). Traduce cada rango a `TextAttribute`s usando una tabla de estilos. |
| `MarkdownRenderer` | Arma la vista previa: aplica los mismos estilos y después reemplaza o esconde la sintaxis, todo en una sola pasada. Lee y guarda en caché las imágenes. |
| `MarkdownTable` / `MarkdownTableRow` | Agrupan las líneas de cada tabla y calculan el ancho y la alineación de cada columna, para dibujar los bordes y alinear las celdas en la vista previa. |
| `MarkdownHtmlExporter` | Exporta el documento como página HTML. Las citas se exportan como un documento aparte, así pueden tener cualquier bloque adentro. |
| `MarkdownTextModel` | Modelo del editor: define el estilador y el editor, y mantiene actualizada la vista previa. |
| `MarkdownTextEditor` | Subclase de `TextEditor` con los comandos y atajos de Markdown, *Save As Markdown* y *Save As HTML*. |
| `MarkdownLinkAction` | `TextAction` que abre un link al hacer clic, o salta al título si es un link a una sección. |
| `MarkdownFontSize` / `MarkdownFontFamily` | Atributos de fuente que responden `true` a `#isForShout`, para que se borren y recalculen en cada cambio sin modificar lo que escribió el usuario. |

## Tests

158 tests en `MarkdownParserTest`, `MarkdownTextStylerTest`, `MarkdownRendererTest`, `MarkdownLinkActionTest`, `MarkdownTextEditorTest`, `MarkdownTutorialTest`, `MarkdownHtmlExporterTest`, `MarkdownMathTest` y `MarkdownCodeHighlighterTest`. Los de `MarkdownTextEditorTest` y `MarkdownTutorialTest` abren una ventana real del editor y la cierran al terminar.

## Licencia

MIT. Ver [LICENSE](LICENSE).
