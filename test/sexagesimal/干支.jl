module test_sexagesimal_干支

using Test
using Sexagesimal.干支

@test 甲   isa 天干
@test 子   isa 地支
@test 甲子 isa 六十甲子

@test 甲子 + 0   == 甲子
@test 甲子 + 1   == 乙丑
@test 甲子 + 2   == 丙寅
@test 甲子 + 59  == 癸亥
@test 甲子 + 60  == 甲子
@test 甲子 + 61  == 乙丑
@test 甲子 + 600 == 甲子

@test 甲子 - 1   == 癸亥
@test 甲子 - 2   == 壬戌
@test 甲子 - 59  == 乙丑
@test 甲子 - 60  == 甲子
@test 甲子 - 61  == 癸亥
@test 甲子 - 600 == 甲子

@test Int.((甲子, 乙丑, 丙寅, 丁卯, 戊辰, 己巳, 庚午, 辛未, 壬申, 癸酉, 甲戌, 乙亥)) ==
           (   1,    2,    3,    4,    5,    6,   7,     8,    9,   10,   11,   12)
@test Int(甲申) == 21
@test Int(甲午) == 31
@test Int(甲辰) == 41
@test Int(甲寅) == 51
@test Int(癸亥) == 60

@test 六十甲子(1) == 甲子
@test 六十甲子(60) == 癸亥
@test_throws ArgumentError 六十甲子(0)
@test_throws UndefVarError 甲丑
@test Symbol(甲子) == :甲子
@test (String ∘ Symbol)(甲子) == "甲子"
@test (length ∘ instances)(六十甲子) == 60

@test 六十(甲, 子) == 甲子
@test 六十(乙, 丑) == 乙丑
@test 六十(癸, 亥) == 癸亥
@test 六十(甲, 丑) === nothing

end # module test_sexagesimal_干支
