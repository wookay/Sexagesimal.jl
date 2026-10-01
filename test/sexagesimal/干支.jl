module test_sexagesimal_干支

using Test
using Sexagesimal.干支

@test 甲子 isa 六十甲子

@test 甲子 + 0 == 甲子
@test 甲子 + 1 == 乙丑
@test 甲子 + 2 == 丙寅
@test 甲子 + 59 == 癸亥
@test 甲子 + 60 == 甲子
@test 甲子 + 61 == 乙丑
@test 甲子 + 600 == 甲子

@test 甲子 - 1 == 癸亥
@test 甲子 - 2 == 壬戌
@test 甲子 - 59 == 乙丑
@test 甲子 - 60 == 甲子
@test 甲子 - 61 == 癸亥
@test 甲子 - 600 == 甲子

@test Int(甲子) == 1
@test Int(乙丑) == 2
@test Int(丙寅) == 3
@test Int(丁卯) == 4
@test Int(戊辰) == 5
@test Int(己巳) == 6
@test Int(庚午) == 7
@test Int(辛未) == 8
@test Int(壬申) == 9
@test Int(癸酉) == 10
@test Int(甲戌) == 11
@test Int(乙亥) == 12
@test Int(甲申) == 21
@test Int(甲午) == 31
@test Int(甲辰) == 41
@test Int(甲寅) == 51
@test Int(癸亥) == 60

@test Symbol(甲子) == :甲子
@test (String ∘ Symbol)(甲子) == "甲子"
@test (length ∘ instances)(六十甲子) == 60

@test_throws UndefVarError 甲丑

@test 六十(甲, 子) == 甲子
@test 六十(乙, 丑) == 乙丑
@test 六十(癸, 亥) == 癸亥
@test 六十(甲, 丑) === nothing

end # module test_sexagesimal_干支
