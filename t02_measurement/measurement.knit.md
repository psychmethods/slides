---
title: "Measurement"
author: "S. Mason Garrison"
bibliography: "library.bib"
output:
  xaringan::moon_reader:
    css: "../slides.css"
    lib_dir: libs
    self_contained: TRUE
    nature:
      ratio: "16:9"
      highlightLines: true
      highlightStyle: solarized-light
      countIncrementalSlides: false
      slideNumberFormat: ""
---




layout: true
  
<div class="my-footer">
<span>
<a href="https://DataScience4Psych.github.io/DataScience4Psych/" target="_blank">Methods in Psychological Research</a>
</span>
</div> 

---



class: middle

# Measurement


---

## Roadmap

- Measurement
- Levels of measurement
- Goals of measurement


---

## Measurement

- 4th step in the research process
  - Def: assignment of numbers to characteristics of people or objects
--

- Examples: measurement scales
    - Speed $\rightarrow$ miles-per-hour
    - Temperature (kelvin)
    - Order of finishers
    - Numbers on the back of basketball jerseys
    
---

## Variables
- Variables contain the outcome of measurement processes
  - Qualitative: 
      - number represent qualities (not quantities)
  - Quantitative: 
      - numbers mean something in relation quantities in the real world
  
---

## Characterize each level of measurement   

- Levels of Measurement (Stevens, 1946)
    - Nominal, ordinal, interval, ratio
--
- Properties:
    - Have absolute zero
        - 0 indicated absence (origin means zero)
    - Equal intervals
         - An interval means the same value at any point on measurement scales
    - Order
        - Number means order
    - Identity
          - Different numbers mean different measurement outcomes (1 $\neq$ 2 )

---

class: middle

# Levels of Measurement


---

# Ratio (quantitative)


- All four properties
    - Have absolute zero
    - Equal intervals
    - Order
    - Identity
- Multiplication and Division are permissible transformations


---

# Example (Base R)



```r
# loads the HistData package
library(HistData)
# loads the Galton dataset
data("Galton")
# First 3n rows of data
head(Galton, n=3)
```

```
##   parent child
## 1   70.5  61.7
## 2   68.5  61.7
## 3   65.5  61.7
```


---

# Example (Base R)



.pull-left[
<img src="measurement_files/figure-html/unnamed-chunk-3-1.png" width="100%" style="display: block; margin: auto;" />

]
.pull-right[

```r
# Histogram
hist(Galton$child)
```
]

---

# Example (Base R)

.pull-left[
<img src="measurement_files/figure-html/unnamed-chunk-4-1.png" width="100%" style="display: block; margin: auto;" />
]
.pull-right[

```r
# Density Plot
plot(density(Galton$child))
```

]

---


# Bandwidth Aside

[Bandwidth: Smoothing Method](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/density.html)


```r
args(density.default)
```

```
## function (x, bw = "nrd0", adjust = 1, kernel = c("gaussian", 
##     "epanechnikov", "rectangular", "triangular", "biweight", 
##     "cosine", "optcosine"), weights = NULL, window = kernel, 
##     width, give.Rkern = FALSE, n = 512, from, to, cut = 3, na.rm = FALSE, 
##     ...) 
## NULL
```

```r
#?density # Gives you documentation
```

---
# Bandwidth Aside
<img src="img/density.png" width="90%" style="display: block; margin: auto;" />

---

# Bandwidth Aside

.pull-left[
<img src="measurement_files/figure-html/unnamed-chunk-7-1.png" width="100%" style="display: block; margin: auto;" />
]
.pull-right[

```r
set.seed(201010)
x <- rnorm(1000, 10, 2)
par(mfrow = c(2,2))

#A bit bumpy
plot(density(x))
#Very sooth
plot(density(x,adjust = 10))
 #Very bumpy
plot(density(x,adjust = .1))
```

]


---

# Interval
- Interval (quantitative)
    - Temperature in Fahrenheit is an example
    - Addition is a permissible transformation
    -	Has three features (all but absolute zero)
    

```r
# Interval Example
library(datasets)
data("nottem")
nottem[1:10] 			# First ten rows of data
```

```
##  [1] 40.6 40.8 44.4 46.7 54.1 58.5 57.7 56.4 54.3 50.5
```

---
.pull-left[

```r
# Histogram
hist(nottem)
```

<img src="measurement_files/figure-html/unnamed-chunk-9-1.png" width="90%" style="display: block; margin: auto;" />
]
.pull-right[

```r
# Density Plot
plot(density(nottem))
```

<img src="measurement_files/figure-html/unnamed-chunk-10-1.png" width="90%" style="display: block; margin: auto;" />
]

---

# Ordinal (qualitative)
.pull-left[
-	Has order and identity
- Monotonic transformations are permissible
- These variables maintain the order of the values
]


```r
# Ordinal Example
library(ggplot2movies)
data(movies)
variable<-movies$rating
head(movies[!is.na(movies$budget),], n=5) 		# First 5 rows of data, with a non-missing budget
```

```
## # A tibble: 5 x 24
##   title   year length budget rating votes    r1    r2    r3    r4
##   <chr>  <int>  <int>  <int>  <dbl> <int> <dbl> <dbl> <dbl> <dbl>
## 1 'G' M~  1935     85  4.5e5    7.2   281   0     4.5   4.5   4.5
## 2 'Mano~  1966     74  1.9e4    1.6  7996  74.5   4.5   4.5   4.5
## 3 'Til ~  1997    113  2.3e7    4.8   799   4.5   4.5   4.5  14.5
## 4 .com ~  2002     96  5  e6    3.7   271  64.5   4.5   4.5   4.5
## 5 10 Th~  1999     97  1.6e7    6.7 19095   4.5   4.5   4.5   4.5
## # ... with 14 more variables: r5 <dbl>, r6 <dbl>, r7 <dbl>,
## #   r8 <dbl>, r9 <dbl>, r10 <dbl>, mpaa <chr>, Action <int>,
## #   Animation <int>, Comedy <int>, Drama <int>,
## #   Documentary <int>, Romance <int>, Short <int>
```
---
.pull-left[

```r
# Histogram
hist(variable) 
```

<img src="measurement_files/figure-html/unnamed-chunk-12-1.png" width="90%" style="display: block; margin: auto;" />
]
.pull-right[

```r
# Density Plot
plot(density(variable)) 
```

<img src="measurement_files/figure-html/unnamed-chunk-13-1.png" width="90%" style="display: block; margin: auto;" />
]

---

# Nominal

.pull-left[
- Only has identity
- Any identity preserving transformation is permissible
]



```r
# Nominal Example
library(vcd)
data(Arthritis)
# First 8  rows of data
Arthritis[1:8, ]
```

```
##   ID Treatment  Sex Age Improved
## 1 57   Treated Male  27     Some
## 2 46   Treated Male  29     None
## 3 77   Treated Male  30     None
## 4 17   Treated Male  32   Marked
## 5 36   Treated Male  46   Marked
## 6 23   Treated Male  58   Marked
## 7 75   Treated Male  59     None
## 8 39   Treated Male  59   Marked
```

---
.pull-left[
<img src="measurement_files/figure-html/unnamed-chunk-15-1.png" width="100%" style="display: block; margin: auto;" />
]
.pull-right[

```r
variable<-Arthritis$Treatment
#hist(variable) # error

barplot_fix <-
     prop.table(table(variable))
# Sometimes, R is silly
barplot(barplot_fix)
```
]
---

# More complex measurement level taxomony

- Missing (considered nominal under the Stevens taxonomy)
- Binary (considered nominal under the Stevens taxonomy)
- Nominal (considered nominal under the Stevens taxonomy)
- Partially ordered (considered ordinal under Stevens)
- Fully ordered (considered ordinal under Stevens)
- Interval
- Ratio
- Absolute measurement (has no permissible transformation)
    - $6.02$ x $10^{23}$
    - $\pi$
    
---

## Could measurement level be itself on a continuum?

.pull-left[
- Example: IQ
    - Falls between interval and ratio?
    - Or falls between ordinal and interval?
![](img/iq_curves.gif)
]

--
.pull-right[
 ![](img/iq_fail.png)
]

---



# Goals of Measurement

- Reliable
  - "…the degree to which a test or measure produces the same scores when applied in the same circumstances…" (Thomas and Nelson 1996)
  - In other words, if you take the measure again, will you get the same result?

--

- (Internal) Validity
  - "Degree to which a test or instrument measures what it purports to measure"  (Thomas and Nelson 1996)
  - In other words, does your measure measure what is it supposed to measure?

---

## More on this later...

- Two Major Areas within Validity
  - Internal Validity
    - Is this evidence supportive of our claim, within this study?
  
  - External Validity
    - Is this evidence supportive of our claim beyond this study?
    - Does this finding generalize to outside this study?

---

# Wrapping Up...

<br><br>
![](img/validreliable.gif)




