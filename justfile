# Poster builds. latexmkrc holds the engine and the build/ dir; the finished PDF is copied
# next to the source so an open viewer tab (vscode-pdf) reloads it in place.
# Both formats share preamble.tex and blocks/; each top file only does the layout.
main := "ee-ten-commandments"
wide := "ee-ten-commandments-16x9"

default: (poster main) (poster wide)

poster file=main:
    latexmk {{file}}.tex
    cp build/{{file}}.pdf {{file}}.pdf

# Rebuild on every save outside VS Code.
watch file=main:
    latexmk -pvc -view=none {{file}}.tex

# Overfull boxes and missing glyphs: on a poster these are visible defects.
check file=main:
    grep -n -A1 'Overfull\|Font Warning\|undefined' build/{{file}}.log || echo "clean"

clean:
    latexmk -C
    rm -f preview.png
