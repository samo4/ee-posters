# Poster builds. latexmkrc holds the engine and the build/ dir; the finished PDF is copied
# next to the source so an open viewer tab (vscode-pdf) reloads it in place.
# All formats share preamble.tex and blocks/; each top file only does the layout.
main := "ee-ten-commandments"
wide := "ee-ten-commandments-16x9"
slides := "ee-ten-commandments-slides"

default: (poster main) (poster wide) (poster slides)

poster file=main:
    latexmk {{file}}.tex
    cp build/{{file}}.pdf {{file}}.pdf

# Rebuild on every save outside VS Code.
watch file=main:
    latexmk -pvc -view=none {{file}}.tex

# Overfull boxes and missing glyphs: on a poster these are visible defects.
check file=main:
    grep -n -A1 'Overfull\|Font Warning\|undefined' build/{{file}}.log || echo "clean"

# Small PNG of the A1 poster for the README; releases attach it next to the PDFs.
preview: (poster main)
    pdftoppm -png -singlefile -scale-to-x 1000 -scale-to-y -1 {{main}}.pdf preview

clean:
    latexmk -C
    rm -f preview.png
