module test_sexagesimal_干支

using Sexagesimal.干支
using Test

@test 甲子 isa 六十甲子
@test 甲子 + 1 == 乙丑
@test 甲子 + 2 == 丙寅
@test 甲子 - 1 == 癸亥
@test 甲子 - 2 == 壬戌
@test 甲子 + 60 == 甲子
@test 甲子 + 600 == 甲子
@test 甲子 + 61 == 乙丑
@test 甲子 - 60 == 甲子
@test 甲子 - 600 == 甲子
@test 甲子 - 61 == 癸亥

@test Int(甲子) == 1
@test Symbol(甲子) == :甲子
@test String(Symbol(甲子)) == "甲子"
@test length(instances(六十甲子)) == 60

end # module test_sexagesimal_干支
