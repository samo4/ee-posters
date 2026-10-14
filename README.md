# The Ten Commandments of Electrical Engineering

A poster in two formats built from the same content:

- `ee-ten-commandments.tex`: A1 portrait (594 × 841 mm)
- `ee-ten-commandments-16x9.tex`: 16:9 landscape, for a monitor

Content lives in `blocks/` (one file per commandment, plus title, motto, chapter i and the gutter notes);
`preamble.tex` holds the packages, palette and macros. The two top files only do the layout.

## Build

Needs TeX Live (tikz, pgfplots, circuitikz, tcolorbox, mathpazo), latexmk and [just](https://just.systems).

```sh
just                                   # both formats
just poster ee-ten-commandments-16x9   # one format
just watch                             # rebuild on save outside VS Code
just check                             # overfull boxes, missing glyphs
```

Build files go to `build/`; the finished PDF is copied next to its source. Pushing a tag attaches both PDFs to a GitHub release.
