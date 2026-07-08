starscrop
================

This is a demonstration package to show the error when trying to use
stars::st_crop() in a package context.

> Error: ‘st_crop’ is not an exported object from ‘namespace:stars’

# Installation

`remotes::install_github("BigelowLab/starscrop")`

# Usage

First, read data without cropping.

``` r
library(starscrop)
x = read_data(crop = NULL)
plot(x)
```

![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

Next, read the data with cropping.

``` r
x = try(read_data(crop = get_bb()))
```

    ## Error : 'st_crop' is not an exported object from 'namespace:stars'

``` r
if (!inherits(x, "try-error")) plot(x)
```

# Session Info

``` r
sessionInfo()
```

    ## R version 4.5.3 (2026-03-11)
    ## Platform: x86_64-redhat-linux-gnu
    ## Running under: Rocky Linux 8.10 (Green Obsidian)
    ## 
    ## Matrix products: default
    ## BLAS/LAPACK: /usr/lib64/libopenblaso-r0.3.15.so;  LAPACK version 3.9.0
    ## 
    ## locale:
    ##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
    ##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
    ##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
    ##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
    ##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
    ## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
    ## 
    ## time zone: America/New_York
    ## tzcode source: system (glibc)
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ## [1] starscrop_0.0.1
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] digest_0.6.39     fastmap_1.2.0     xfun_0.59         abind_1.4-8      
    ##  [5] parallel_4.5.3    knitr_1.51        htmltools_0.5.9   rmarkdown_2.31   
    ##  [9] sf_1.1-2          cli_3.6.6         grid_4.5.3        DBI_1.3.0        
    ## [13] compiler_4.5.3    rstudioapi_0.19.0 tools_4.5.3       stars_0.7-3      
    ## [17] evaluate_1.0.5    Rcpp_1.1.2        yaml_2.3.12       otel_0.2.0       
    ## [21] rlang_1.3.0       units_1.0-1
