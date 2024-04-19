-- 定义一个通用的方法，用于生成类
utils = {}

function utils.class(base)
    local cls = {}  -- 创建一个空表，用于存储类的成员

    -- 设置类的基类（父类）
    cls.__base = base

    -- 继承父类的属性和方法
    function cls.__index(self, key)
        local val = rawget(cls, key)  -- 首先在当前类中查找
        if val == nil and base then
            return base[key]  -- 如果当前类中不存在，则在父类中查找
        end
        return val
    end

    -- 创建一个新的对象实例
    function cls:new(...)
        local instance = setmetatable({}, cls)  -- 使用类作为元表，以便调用类的成员函数
        if instance.init then
            instance:init(...)  -- 如果类有初始化函数，则调用初始化函数
        end
        return instance
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

return utils
