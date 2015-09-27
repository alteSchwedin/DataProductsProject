---
title       : Project Pitch
subtitle    : Developing Data Products
author      : Silvia Bahmann
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## The Puromycin dataset

- holds data on the velocity of an enzymatic reaction with and without Puromycin
- was measured by Treloar in 1974 [1]


```r
str(Puromycin)
```

```
## 'data.frame':	23 obs. of  3 variables:
##  $ conc : num  0.02 0.02 0.06 0.06 0.11 0.11 0.22 0.22 0.56 0.56 ...
##  $ rate : num  76 47 97 107 123 139 159 152 191 201 ...
##  $ state: Factor w/ 2 levels "treated","untreated": 1 1 1 1 1 1 1 1 1 1 ...
##  - attr(*, "reference")= chr "A1.3, p. 269"
```

[1] Treloar, M. A. (1974), Effects of Puromycin on Galactosyltransferase in Golgi Membranes, M.Sc. Thesis, U. of Toronto.

--- 

## The shiny app

A shiny app was created that allows some insight into the Puromycin dataset. It is available on shinyapps.io:

<a href="https://silviabahmann.shinyapps.io/DataProductsProject">Shiny app</a>

<img src="./screenshot.png" width = "900"/>

---

## Plot tab

The user may choose the category of the data ("treated", "untreated", "both") which changes the data points shown in the plot.

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 

---

## Information tab

Furthermore, there is a tab with some more information on the Puromycin dataset including a summary of the dataset.


```r
summary(Puromycin)
```

```
##       conc             rate             state   
##  Min.   :0.0200   Min.   : 47.0   treated  :12  
##  1st Qu.:0.0600   1st Qu.: 91.5   untreated:11  
##  Median :0.1100   Median :124.0                 
##  Mean   :0.3122   Mean   :126.8                 
##  3rd Qu.:0.5600   3rd Qu.:158.5                 
##  Max.   :1.1000   Max.   :207.0
```


