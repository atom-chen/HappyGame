--===================================================
-- (c) copyright 2014 - 2015, www.cfanim.cn
-- All Rights Reserved.
--==================================================
-- filename:  AlertDialog.lua
-- author:    liyuhang
-- created:   2014/12/22
-- descrip:   alert 通用弹出框
--===================================================


local AlertDialog = class("AlertDialog",function()
    return require("Dialog"):create()
end)

-- 构造函数
function AlertDialog:ctor()
    self._strName = "AlertDialog"        -- 层名称
    self._pText = nil                    -- 显示文字
    self._pOkBtn = nil                   -- 确定按钮
    self._fOk = nil                      -- 确定按钮回调
    self._pCancelBtn = nil               -- 
end

-- 创建函数
function AlertDialog:create(alertContent , okCallbackFunc , cancelCallbackFunc)
    local dialog = AlertDialog.new()
    dialog:dispose(alertContent , okCallbackFunc,cancelCallbackFunc)
    return dialog
end

-- 处理函数
function AlertDialog:dispose(alertContent , okCallbackFunc, cancelCallbackFunc)
    -- 加载dialog组件
    ResPlistManager:getInstance():addSpriteFrames("PromptDialog.plist")
    
    local params = require("PromptDialogParams"):create()
    self._pCCS = params._pCCS
    self._pBg = params._pPromptDialog
    self._pCloseButton = params._pCloseButton
    self._pText = params._pPromptText
    self._pOkBtn = params._pOkButton
    self._pOkBtn:setZoomScale(nButtonZoomScale)  
    --self._pOkBtn:getTitleRenderer():enableShadow(cc.c4b(0, 0, 0, 255),cc.size(1,-2))
    self._pOkBtn:setPressedActionEnabled(true)
    self._pCancelBtn = params._pCancelButton
    self._pCancelBtn:setZoomScale(nButtonZoomScale)
    --self._pCancelBtn:getTitleRenderer():enableShadow(cc.c4b(0, 0, 0, 255),cc.size(1,-2))
    self._pCancelBtn:setPressedActionEnabled(true)
    -- 初始化dialog的基础组件
    self:disposeCSB()
    self._pCloseButton:setVisible(false)
    
    if type(alertContent) == "string" then
         -- 如果 alertContent 是字符串时
        self._pText:setString(alertContent)
        self._pText:setVisible(true)    
    elseif type(alertContent) == "table" then
         self._pText:setVisible(false)  
         -- 如果 alertContent 是表格（富文本）
         local labelSize = self._pText:getContentSize()
         local goodRichText = require("GoodRichText"):create(alertContent,labelSize)
         goodRichText:ignoreContentAdaptWithSize(false)
         local x,y = self._pText:getPosition()
         goodRichText:setPosition(cc.p(x,y))
         goodRichText:setAnchorPoint(0,1)
         self._pText:getParent():addChild(goodRichText)
    end
    -- ok按钮回调
    self._pOkBtn:addTouchEventListener(function(sender, eventType)
        if eventType == ccui.TouchEventType.ended then
            if okCallbackFunc ~= nil then
                okCallbackFunc()
            end
            self._pOkBtn:setTouchEnabled(false)
            self:close()
        elseif eventType == ccui.TouchEventType.began then
            AudioManager:getInstance():playEffect("ButtonClick")
        end
    end)
    -- 取消按钮回调
    self._pCancelBtn:addTouchEventListener(function(sender, eventType)
        if eventType == ccui.TouchEventType.ended then
            if cancelCallbackFunc ~= nil then
                cancelCallbackFunc()
            end
            self._pCancelBtn:setTouchEnabled(false)
            self:close()
        elseif eventType == ccui.TouchEventType.began then
            AudioManager:getInstance():playEffect("ButtonClick")
        end
    end)
    
    -- 触摸注册
    local function onTouchBegin(touch,event)
        local location = touch:getLocation()
        print("touch begin ".."x="..location.x.."  y="..location.y)
        if cc.rectContainsPoint(self._recBg,location) == false then
            --self:close()
        end
        return true
    end
    local function onTouchMoved(touch,event)
        local location = touch:getLocation()
        print("touch move ".."x="..location.x.."  y="..location.y)
    end
    local function onTouchEnded(touch,event)
        local location = touch:getLocation()
        print("touch end ".."x="..location.x.."  y="..location.y)
    end

    -- 添加监听器
    self._pTouchListener = cc.EventListenerTouchOneByOne:create()
    self._pTouchListener:setSwallowTouches(true)
    self._pTouchListener:registerScriptHandler(onTouchBegin,cc.Handler.EVENT_TOUCH_BEGAN )
    self._pTouchListener:registerScriptHandler(onTouchMoved,cc.Handler.EVENT_TOUCH_MOVED )
    self._pTouchListener:registerScriptHandler(onTouchEnded,cc.Handler.EVENT_TOUCH_ENDED )
    self:getEventDispatcher():addEventListenerWithSceneGraphPriority(self._pTouchListener, self)
    
    ------------------- 结点事件------------------------
    local function onNodeEvent(event)
        if event == "enter" then
            self:setPositionZ(5000)
            self._pOkBtn:setPositionZ(5000)
            self._pCancelBtn:setPositionZ(5000)
        elseif event == "exit" then
            self:onExitAlertDialog()
        end
    end
    self:registerScriptHandler(onNodeEvent)
    return
end

-- 去掉取消按钮
function AlertDialog:setNoCancelBtn()
    self._pCancelBtn:setVisible(false)

    local x,y = self._pOkBtn:getPosition()
    local bgSize = self._pBg:getContentSize()
    local btnSize = self._pOkBtn:getContentSize()

    self._pOkBtn:setAnchorPoint(cc.p(0, 0))
    self._pOkBtn:setPosition((bgSize.width-btnSize.width)/2 , y)
end

-- 退出函数
function AlertDialog:onExitAlertDialog()
    self:onExitDialog()
    ResPlistManager:getInstance():removeSpriteFrames("PromptDialog.plist")
end

-- 循环更新
function AlertDialog:update(dt)
    return
end

-- 显示结束时的回调
function AlertDialog:doWhenShowOver()
    return
end

-- 关闭结束时的回调
function AlertDialog:doWhenCloseOver()
    return
end



return AlertDialog
