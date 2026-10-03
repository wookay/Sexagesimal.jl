# Sexagesimal.jl ♒️

|  **Build Status**                 |
|:---------------------------------:|
|  [![][actions-img]][actions-url]  |

```julia
julia> using Sexagesimal.干支

julia> 甲子
甲子::六十甲子 = 1

julia> 乙丑
乙丑::六十甲子 = 2

julia> 六十(甲, 子) == 甲子
true

julia> 六十(甲, 丑) === nothing
true
```

### repositories
 - Hexagrams.jl ☯  https://github.com/wookay/Hexagrams.jl
 - Sexagesimal.jl ♒️  https://github.com/wookay/Sexagesimal.jl


[actions-img]: https://github.com/wookay/Sexagesimal.jl/workflows/CI/badge.svg
[actions-url]: https://github.com/wookay/Sexagesimal.jl/actions
