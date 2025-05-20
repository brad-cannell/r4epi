[![Netlify Status](https://api.netlify.com/api/v1/badges/aa9881ba-321a-42b1-b274-283786675eef/deploy-status)](https://app.netlify.com/projects/inspiring-lamarr-72eb9f/deploys)

<img align="left" src="r4epi_icon.png" alt="R4Epi hex logo" width="250" height="289">

# [R4Epi Electronic Textbook](www.r4epi.com)
This repository is for the R for Epidemiology electronic textbook. This electronic book was originally created to accompany my Introduction to R Programming for Epidemiologic Research course at the [University of Texas Health Science Center School of Public Health](https://sph.uth.edu/). However, I hope it will be useful to anyone who is interested in R and epidemiology.

<br clear="left"/>

## Useful websites:

-   [R4Epi Project Board](https://github.com/orgs/brad-cannell/projects/3)
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

## Publishing to Netlify pages

[This article is great](https://quarto.org/docs/publishing/netlify.html). After committing, and making sure you are on the main branch, type `quarto publish netlify` in the terminal. The [Wiki](https://github.com/brad-cannell/r4epi/wiki/Publishing) contains additional details about publishing.

## Textbook version Notes:
- Major: physical copy editions
- Minor: new chapters, deletion of chapters, chapter reordering.
- 3rd level: significant edits to existing chapters
- Version number doesn’t change with typo (I.e., spelling and grammar) corrections. 

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a>.
