# Sexagesimal ♒️

|  **Build Status**               |
|:-------------------------------:|
|  [![][travis-img]][travis-url]  |


```julia
julia> using Sexagesimal.干支

julia> 甲子
甲子::六十甲子 = 1

julia> 甲子 + 1
乙丑::六十甲子 = 2

julia> 甲子 - 1
癸亥::六十甲子 = 60

julia> Int(甲子)
1

julia> Symbol(甲子)
:甲子
```


[travis-img]: https://api.travis-ci.org/wookay/Sexagesimal.jl.svg?branch=master
[travis-url]: https://travis-ci.org/wookay/Sexagesimal.jl
