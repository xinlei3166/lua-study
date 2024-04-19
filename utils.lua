-- 定义一个通用的方法，用于生成类
utils = {}

function utils.class(base)
    local cls = {}  -- 创建一个空表，用于存储类的成员

    function cls.__index(t, key)
        local val = rawget(cls, key)  -- 首先在当前类中查找
        if val == nil and base then
            return base[key]  -- 如果当前类中不存在，则在父类中查找
        end
        return val
    end

    -- 初始化
    function cls:init(...) end

    -- 创建一个新的对象实例
    function cls:new(...)
        local self = setmetatable({}, cls)  -- 为每个实例创建一个新的表
        if base then
            base.init(self, ...)  -- 调用父类的初始化函数
        end
        cls.init(self, ...)  -- 调用当前类的初始化函数
        return self
    end

    return cls
end

--获取对象的 keys
function utils.getKeys(tbl)
    local keys = {}
    for key, _ in pairs(tbl) do
        table.insert(keys, key)
    end
    return keys
end

--获取表格长度
function utils.getTableLength(t)
    local length = 0
    for k, v in pairs(t) do
        length = length + 1
    end
    return length
end

return utils
