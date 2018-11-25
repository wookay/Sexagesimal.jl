# Sexagesimal ♒️

|  **Build Status**               |
|:-------------------------------:|
|  [![][travis-img]][travis-url]  |


```julia
using Sexagesimal.干支
using Test

@test 甲子 isa 六十甲子
@test 甲子 + 1 == 乙丑
@test 癸亥 + 1 == 甲子
@test 癸亥 + 2 == 乙丑
@test 壬戌 + 2 == 甲子
@test 甲子 - 2 == 壬戌
```


[travis-img]: https://api.travis-ci.org/wookay/Sexagesimal.jl.svg?branch=master
[travis-url]: https://travis-ci.org/wookay/Sexagesimal.jl
