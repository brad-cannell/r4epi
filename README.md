<img align="left" src="r4epi_icon.png" alt="R4Epi hex logo" width="250" height="289">

# R4Epi Quarto

A repository for the Quarto version of [R4Epi](www.r4epi.com).

## Useful websites:

-   [Quarto book documentation](https://quarto.org/docs/books/)
-   [My test Quarto book repository](https://github.com/brad-cannell/test_quarto_book)
-   [My test Quarto book](https://brad-cannell.github.io/test_quarto_book/)

## Rendering

We can render the files by clicking the Render button in RStudio. To render the HTML and PDF files at the same time, type `quarto render` into the terminal. 

````
```{bash}
quarto render
```
````

You can also render Quarto files with a native R code chunk.

- The input argument: The input file or project directory to be rendered (defaults to rendering the project in the current working directory).

- The output_format argument: Target output format (defaults to "html"). The option "all" will render all formats defined within the file or project.

````
```{r}
#| Render with R
#| eval: false
quarto::quarto_render(output_format = "all")
```
````

## Publishing to GitHub pages

[This article is great](https://quarto.org/docs/publishing/github-pages.html). After committing, and making sure you are on the main branch, type `quarto publish gh-pages` in the terminal.

````
```{bash}
quarto publish gh-pages
```
````

## Publishing to Netlify

[This article is great](https://quarto.org/docs/publishing/netlify.html). After committing, and making sure you are on the main branch, type `quarto publish netlify` in the terminal.

````
```{bash}
quarto publish netlify
```
````
## Where to publish

I've used Netlify in the past and have been happy with it. However, I'm not sure that it is necessary or efficient to add the extra layer of using Netlify in GitHub Pages will work just as well. Why introduce a third site into the mix if we don't have to? For now, I may just stick with GitHub Pages.

## Textbook version Notes:
- Major: physical copy editions
- Minor: new chapters, deletion of chapters, chapter reordering.
- 3rd level: significant edits to existing chapters
- Version number doesn’t change with typo (I.e., spelling and grammar) corrections. 

<br clear="left"/>

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a>.