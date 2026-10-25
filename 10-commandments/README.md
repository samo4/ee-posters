# The Ten Commandments of Electrical Engineering

Ten ideas every electrical engineering student should leave university with, set out in King James English.
It opens with the shared maths (Euler, transforms, linear algebra, vector calculus, probability).
The ten commandments follow: circuit laws, feedback, convolution, sampling and Shannon, state-space,
noise and measurement, Maxwell, the power triangle, semiconductors, and logic timing.

[![The A1 poster](https://github.com/samo4/ee-posters/releases/latest/download/preview.png)](https://github.com/samo4/ee-posters/releases/latest/download/ee-ten-commandments.pdf)

A poster in three formats built from the same content; the PDFs of each are on the [latest release](https://github.com/samo4/ee-posters/releases/latest):

- `ee-ten-commandments.tex`: A1 portrait
- `ee-ten-commandments-16x9.tex`: 16:9 landscape
- `ee-ten-commandments-slides.tex`: 16:9 slides

## Build

Needs TeX Live and optionally [just](https://just.systems). VS Code works well too. Run these from this folder:

```sh
just                                   # all formats
just poster ee-ten-commandments-16x9   # one format
just watch                             # rebuild on save outside VS Code
just check                             # overfull boxes, missing glyphs
```
