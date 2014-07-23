local Edge = class("Edge", function()
    return cc.Node:create()
end)

function Edge:init()
    getmetatable(self):init()

    local width = cc.Director:getInstance():getVisibleSize().width
    local height = cc.Director:getInstance():getVisibleSize().height
    
    self:setContentSize(width,height)
    
    self:setPhysicsBody(cc.PhysicsBody:createEdgeBox(cc.size(width, height)))
end

return Edge