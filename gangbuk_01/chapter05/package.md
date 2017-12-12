Packages
================

목록
----

``` r
library()

installed.packages()
installed.packages()[,c("Package","Version")]
```

설치
----

``` r
install.packages("dplyr")
```

``` r
install.packages("devtools")
# devtools::install_github("username/packagename")
devtools::install_github("tidyverse/dplyr")
```

삭제
----

``` r
remove.packages("dplyr")
```

사용
----

``` r
library(dplyr)
```

``` r
if(!require(dplyr)) {
  install.packages("dplyr")
  library(dplyr)
}
```

업데이트
--------

``` r
old.packages()
#update.packages()
update.packages(ask = FALSE)
```

확인
----

``` r
available.packages()
```
