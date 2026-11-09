# Read to Remember · 读文章 记单词

A5 two-sided annotated English reader (60 lessons), typeset with XeLaTeX.

- `Read-to-Remember.pdf` — final book (cover + blank back + inner block)
- `reader.tex` (inner block), `coverpair.tex` (cover), `reader.sty` (layout) — main files
- `chapters/` — front matter, glossary and lessons 01–60
- `fonts/` — all fonts used (loaded by path, no system install needed)

## Build

Requires TeX Live (XeLaTeX) and poppler (`pdfunite`, `pdfseparate`).

```sh
make          # -> build/Read-to-Remember.pdf, build/reader.pdf, build/cover.pdf
make clean
```

## Font licenses

Literata, Charis SIL, Source Sans 3, Source Han Serif/Sans SC and LXGW WenKai are all
distributed under the SIL Open Font License 1.1.
