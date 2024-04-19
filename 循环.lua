--循环
--一组被重复执行的语句称之为循环体，能否继续重复，决定循环的终止条件。
--循环结构是在一定条件下反复执行某段程序的流程结构，被反复执行的程序被称为循环体。
--循环语句是由循环体及循环的终止条件两部分组成的。

---
--- while 循环
---
print('\n------while 循环')
a = 10
while (a < 20)
do
    print("a 的值为:", a)
    a = a + 1
end

print('------')
--无限循环
--while (true)
--do
--    print("循环将永远执行下去")
--end

---
--- 数值for循环
---
print('\n------数值for循环')
--Lua 编程语言中数值 for 循环语法格式:
--for var=exp1,exp2,exp3 do
--    <执行体>
--end

--var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次 "执行体"。exp3 是可选的，如果不指定，默认为1。
print('------i')
for i = 10, 1, -1 do
    print(i)
end

print('------f')
--for的三个表达式在循环开始前一次性求值，以后不再进行求值。比如上面的f(x)只会在循环开始前执行一次，其结果用在后面的循环中。
function f(x)
    print("function")
    return x * 2
end
for i = 1, f(5) do
    print(i)
end

---
--- 泛型for循环
---
print('\n------泛型for循环')
--泛型 for 循环通过一个迭代器函数来遍历所有值，类似 java 中的 foreach 语句。
--Lua 编程语言中泛型 for 循环语法格式:
--i是数组索引值，v是对应索引的数组元素值。ipairs是Lua提供的一个迭代器函数，用来迭代数组。
a = { "one", "two", "three" }
for i, v in ipairs(a) do
    print(i, v)
end

---
--- repeat...until 循环
---
print('\n------repeat...until 循环')
--Lua 编程语言中 repeat...until 循环语句不同于 for 和 while循环，for 和 while 循环的条件语句在当前循环执行开始时判断，
--而 repeat...until 循环的条件语句在当前循环结束后判断。
--Lua 编程语言中 repeat...until 循环语法格式:
--repeat
--    statements
--until( condition )
--我们注意到循环条件判断语句（condition）在循环体末尾部分，所以在条件进行判断前循环体都会执行一次。
--如果条件判断语句（condition）为 false，循环会重新开始执行，直到条件判断语句（condition）为 true 才会停止执行。
a = 10
repeat
    print("a的值为:", a)
    a = a + 1
until (a > 15)

---
--- 循环嵌套
---
print('\n------循环嵌套')
--Lua 编程语言中 for 循环嵌套语法格式:
--for init, max/min value, increment
--do
--    for init, max/min value, increment
--    do
--        statements
--    end
--    statements
--end

j = 2
for i = 2, 10 do
    for j = 2, (i / j), 2 do
        if (not (i % j)) then
            print('not %', i, j)
            break
        end
        if (j > (i / j)) then
            print("i 的值为：", i)
        end
    end
end

--Lua 编程语言中 while 循环嵌套语法格式:
--while(condition)
--do
--    while(condition)
--    do
--        statements
--    end
--    statements
--end

--Lua 编程语言中 repeat...until 循环嵌套语法格式:
--repeat
--    statements
--    repeat
--        statements
--    until( condition )
--until( condition )

--除了以上同类型循环嵌套外，我们还可以使用不同的循环类型来嵌套，如 for 循环体中嵌套 while 循环。

---
--- break 语句
---
print('\n------break 语句')
--Lua 编程语言 break 语句插入在循环体中，用于退出当前循环或语句，并开始脚本执行紧接着的语句。
--如果你使用循环嵌套，break语句将停止最内层循环的执行，并开始执行的外层的循环语句。
a=10
while( a < 20 )
do
    print("a 的值为:", a)
    a=a+1
    if( a > 15)
    then
        break
    end
end

---
--- goto 语句
---
print('\n------goto 语句')
--Lua 语言中的 goto 语句允许将控制流程无条件地转到被标记的语句处。
--语法格式如下所示：goto Label
--Label 的格式为：:: Label ::

--demo1
local a = 1
::label:: print("--- goto label ---")

a = a+1
if a < 3 then
    goto label   -- a 小于 3 的时候跳转到标签 label
end

print('------')
--demo2
--i = 0
--::s1:: do
--    print(i)
--    i = i+1
--end
--if i>3 then
--    os.exit()   -- i 大于 3 时退出
--end
--goto s1

print('------')
--有了 goto，我们可以实现 continue 的功能：
for i=1, 3 do
    if i <= 2 then
        print(i, "yes continue")
        goto continue
    end
    print(i, " no continue")
    ::continue::
    print([[i'm end]])
end
