--流程控制
--Lua 编程语言流程控制语句通过程序设定一个或多个条件语句来设定。在条件为 true 时执行指定程序代码，在条件为 false 时执行其他指定代码。
--控制结构的条件表达式结果可以是任何值，Lua认为false和nil为假，true和非nil为真。
if (0)
then
    print("0 为 true")
end

---
--- if 语句
---
print('\n------if 语句')
--if(布尔表达式)
--then
--    --[ 在布尔表达式为 true 时执行的语句 --]
--end
--[ 定义变量 --]
a = 10;

--[ 使用 if 语句 --]
if (a < 20)
then
    --[ if 条件为 true 时打印以下信息 --]
    print("a 小于 20");
end
print("a 的值为:", a);

---
--- if...else 语句
---
print('\n------if...else 语句')
--if(布尔表达式)
--then
--    --[ 布尔表达式为 true 时执行该语句块 --]
--else
--    --[ 布尔表达式为 false 时执行该语句块 --]
--end
--在布尔表达式为 true 时会if中的代码块会被执行，在布尔表达式为 false 时，else 的代码块会被执行。
--Lua认为false和nil为假，true 和非nil为真。要注意的是Lua中 0 为 true。
--[ 定义变量 --]
a = 100;
--[ 检查条件 --]
if (a < 20)
then
    --[ if 条件为 true 时执行该语句块 --]
    print("a 小于 20")
else
    --[ if 条件为 false 时执行该语句块 --]
    print("a 大于 20")
end
print("a 的值为 :", a)

---
--- if...elseif...else 语句
---
print('\n------if...elseif...else 语句')
--Lua if 语句可以与 elseif...else 语句搭配使用, 在 if 条件表达式为 false 时执行 elseif...else 语句代码块，用于检测多个条件语句。
--if( 布尔表达式 1)
--then
----[ 在布尔表达式 1 为 true 时执行该语句块 --]
--elseif( 布尔表达式 2)
--then
----[ 在布尔表达式 2 为 true 时执行该语句块 --]
--elseif( 布尔表达式 3)
--then
----[ 在布尔表达式 3 为 true 时执行该语句块 --]
--else
----[ 如果以上布尔表达式都不为 true 则执行该语句块 --]
--end
--[ 定义变量 --]
a = 100

--[ 检查布尔条件 --]
if (a == 10)
then
    --[ 如果条件为 true 打印以下信息 --]
    print("a 的值为 10")
elseif (a == 20)
then
    --[ if else if 条件为 true 时打印以下信息 --]
    print("a 的值为 20")
elseif (a == 30)
then
    --[ if else if condition 条件为 true 时打印以下信息 --]
    print("a 的值为 30")
else
    --[ 以上条件语句没有一个为 true 时打印以下信息 --]
    print("没有匹配 a 的值")
end
print("a 的真实值为: ", a)

---
--- if 嵌套语句
---
print('\n------if 嵌套语句')
--Lua if 语句允许嵌套, 这就意味着你可以在一个 if 或 else if 语句中插入其他的 if 或 else if 语句。
--if( 布尔表达式 1)
--then
--    --[ 布尔表达式 1 为 true 时执行该语句块 --]
--    if(布尔表达式 2)
--    then
--    --[ 布尔表达式 2 为 true 时执行该语句块 --]
--    end
--end
--[ 定义变量 --]
a = 100;
b = 200;

--[ 检查条件 --]
if( a == 100 )
then
    --[ if 条件为 true 时执行以下 if 条件判断 --]
    if( b == 200 )
    then
        --[ if 条件为 true 时执行该语句块 --]
        print("a 的值为 100 b 的值为 200" );
    end
end
print("a 的值为 :", a );
print("b 的值为 :", b );
