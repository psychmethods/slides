# Copilot Instructions for Slides Repository

## Repository Overview

This repository contains course slides for **Methods in Psychological Research (PSY 210)** taught by S. Mason Garrison. The slides are built using the **xaringan** R package, which creates presentation slides from R Markdown files.

## Technology Stack

- **R**: Primary programming language
- **xaringan**: R package for creating HTML presentation slides from R Markdown
- **R Markdown (.Rmd)**: Source format for slides
- **tidyverse**: Collection of R packages for data manipulation and visualization
- **ggplot2**: Graphics and visualization
- **knitr**: Dynamic report generation

## Project Structure

```
.
├── slides.css              # Custom CSS for slide styling
├── setup.Rmd               # Common setup chunk included in all slides
├── index.Rmd              # Main sitemap for all slides
├── tXX_<topic>/           # Topic-specific slide directories
│   ├── <topic>.Rmd        # Slide source file
│   ├── <topic>.html       # Compiled HTML output
│   ├── content/           # Supporting content
│   └── img/               # Topic-specific images
├── wXX_template/          # Template for new slides
└── dat/                   # Shared data files
```

## Development Workflow

### Creating/Editing Slides

1. Each slide deck lives in its own `tXX_<topic>/` directory
2. Slide source files are R Markdown (.Rmd) files
3. All slides include the common `setup.Rmd` file via `{r child = "../setup.Rmd"}`
4. Slides reference the custom CSS: `css: "../slides.css"`

### Compiling Slides

To compile and preview slides with live reload:
```r
xaringan::inf_mr(cast_from = "..")
```

This launches slides in the RStudio Viewer and auto-updates on save.

### Slide Configuration

Standard YAML header for slides:
```yaml
---
title: "Title <br> `r emo::ji('emoji_name')`"
author: "S. Mason Garrison"
output:
  xaringan::moon_reader:
    css: "../slides.css"
    lib_dir: libs
    nature:
      ratio: "16:9"
      highlightLines: true
      highlightStyle: solarized-light
      countIncrementalSlides: false
      slideNumberFormat: ""
---
```

## Code Style and Conventions

### R Code
- Use tidyverse conventions
- Prefer `dplyr` for data manipulation
- Use `ggplot2` for visualizations
- Set `message=FALSE, warning=FALSE` for package loading chunks
- Use meaningful variable names
- Include comments for complex logic

### R Markdown
- Use `class: middle` for centered content
- Use `.pull-left[]` and `.pull-right[]` for two-column layouts
- Use `.question[]` for highlighted questions
- Use `--` for incremental reveals
- Images should be referenced with relative paths

### File Naming
- Topic directories: `tXX_<topic_name>/` (e.g., `t01_sampling/`)
- Slide files: `<topic_name>.Rmd` (e.g., `sampling.Rmd`)
- Use lowercase with underscores for file names

## Common Setup (setup.Rmd)

The shared setup file includes:
- R options configuration (width, printing options)
- knitr chunk options (figure dimensions, DPI, output width)
- ggplot2 theme settings
- Common package conflicts resolution
- Custom knitr hooks for output truncation
- Helper functions (e.g., `crop_bottom_percent()` for image processing)

## Key Dependencies

Common packages used across slides:
- `tidyverse`: Data manipulation and visualization
- `emo`: Emoji support in titles
- `xaringan`: Slide generation
- `knitr`: Dynamic documents
- `ggplot2`: Graphics
- `magick`: Image processing
- `conflicted`: Handle package conflicts

## Best Practices

1. **Don't modify setup.Rmd** unless changes are needed across all slides
2. **Use relative paths** for CSS and image references (`../slides.css`, `../img/`)
3. **Keep slide chunks small** for better compilation performance
4. **Test compilation** after making changes using `xaringan::inf_mr(cast_from = "..")`
5. **Include alt text** for images where appropriate
6. **Use consistent formatting** - follow existing slide patterns
7. **Mobile-friendly** - slides should work on mobile devices

## Template Usage

Use `wXX_template/wXX_demo.Rmd` as a starting point for new slides:
1. Copy the template directory
2. Rename to `tXX_<topic>/`
3. Update the .Rmd file with topic content
4. Update title, emoji, and author information

## Output

- HTML files are generated from .Rmd sources
- Slides are self-contained (CSS/JS embedded when `self_contained: TRUE`)
- Published to GitHub Pages at `https://psychmethods.github.io/slides/`

## Ignored Files

Check `.gitignore` - the following are not tracked:
- `*.RData`, `.Rhistory`, `.Rproj.user/`
- `*/libs/*` (generated libraries)
- `*.js` files (generated)
- `setup.html` (compiled setup)
- Various development/debug files

## When Making Changes

1. **Maintain consistency** with existing slide structure
2. **Test compilation** to ensure slides render correctly
3. **Check mobile responsiveness** if making CSS changes
4. **Preserve working examples** - don't break existing slides
5. **Follow xaringan conventions** for slide markup
6. **Keep educational context** - slides are for teaching statistics/methods
