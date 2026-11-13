# cv

LaTeX source for my CV. CI builds the PDF on every push to `main` and publishes it to:

- https://zackphillips.com/cv/phillips_cv.pdf (GitHub Pages, opens inline)
- the [`latest` release](https://github.com/zackphillips/cv/releases/tag/latest) (download)

Pull requests build the PDF as a workflow artifact without publishing.

## Build locally

```bash
./compile.sh
```

Uses [Tectonic](https://tectonic-typesetting.github.io/) if installed (same engine as CI), otherwise two passes of `xelatex`. The CV uses the Optima font, which ships with macOS, so CI runs on a macOS runner and local builds on Linux need Optima installed or will fall back to a substitute.
