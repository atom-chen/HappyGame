--===================================================
-- (c) copyright 2014 - 2015, www.cfanim.cn
-- All Rights Reserved.
--==================================================
-- filename:  NewbieLayer.lua
-- author:    taoye
-- e-mail:    553681974@qq.com
-- created:   2015/6/17
-- descrip:   新手引导层
--===================================================
local NewbieLayer = class("NewbieLayer",function()
    return cc.Node:create()
end)

-- 构造函数
function NewbieLayer:ctor()
    self._strName = "NewbieLayer"        -- 层名称
    self._pTouchListener = nil           -- 触摸监听器
    self._pLayerBg = nil                 -- 黑色半透明背景
    self._bEatTouch = true               -- 吃掉触摸
    self._pClippingNode = nil            -- 剪切node
    self._pStencil = nil                 -- Stencil
    self._pArrow = nil                   -- 提示箭头
    self._pWordsFrame = nil              -- 九宫格文字背景框
    self._pTextArea = nil                -- 文本label
    self._pParicle = nil                 -- 粒子对象
    self._pParticleParent = nil          -- 粒子parent
    self._tTempleteInfo = nil            -- 3d人物的模板info
    self._pAni = nil                     -- 3d人物
    self._nTouchTimes = 0                -- 可以响应的点击次数
    
    self._bIsRunTime = false             -- 是否为即时操作（即时操作：点击到指定区域后即可跳至下一步，非即时操作：点击到指定区域后需要等到网络回应后才能跳至下一步）
    self._pos = nil                      -- 可点击的位置
    self._kDirection = nil               -- 箭头提示方向
    self._posText = nil                  -- 文字位置
    self._sTextFrame = nil               -- 文字的尺寸
    self._strText = nil                  -- 文字内容
    
    self._fTimeCounter = 0
    self._bSkip = false
    
    NetRespManager:dispatchEvent(kNetCmd.kWorldLayerTouch,{true})
end

-- 创建函数， 参数：pos有效触摸区域的位置 ,direction提示箭头的方向,posText文字区域左下角的位置,strText文字的内容
function NewbieLayer:create(isRunTime,adaptation,pos,direction,posText,sizeTextFrame,strText)
    local layer = NewbieLayer.new()
    layer:dispose(isRunTime,adaptation,pos,direction,posText,sizeTextFrame,strText)
    return layer
end

-- 创建函数
function NewbieLayer:dispose(isRunTime,adaptation,pos,direction,posText,sizeTextFrame,strText)
    self._bIsRunTime = isRunTime
    
    if adaptation == 1 then -- 屏幕中心
        self._pos = cc.p(mmo.VisibleRect:width()/2 + pos.x, mmo.VisibleRect:height()/2 + pos.y)
    elseif adaptation == 2 then -- 左上
        self._pos = cc.p(mmo.VisibleRect:leftTop().x + pos.x, mmo.VisibleRect:leftTop().y + pos.y)
    elseif adaptation == 3 then -- 左下
        self._pos = cc.p(mmo.VisibleRect:leftBottom().x + pos.x, mmo.VisibleRect:leftBottom().y + pos.y)
    elseif adaptation == 4 then -- 右上
        self._pos = cc.p(mmo.VisibleRect:rightTop().x + pos.x, mmo.VisibleRect:rightTop().y + pos.y)
    elseif adaptation == 5 then -- 右下
        self._pos = cc.p(mmo.VisibleRect:rightBottom().x + pos.x, mmo.VisibleRect:rightBottom().y + pos.y)
    end
    
    self._kDirection = direction
    self._posText = cc.p(mmo.VisibleRect:width()/2 + posText.x, mmo.VisibleRect:height()/2 + posText.y)
    self._sTextFrame = sizeTextFrame
    self._strText = strText

    -- 初始化控件参数
    self._pClippingNode = cc.ClippingNode:create()
    self:addChild(self._pClippingNode)
    
    --添加了一个背景层  
    self._pLayerBg = cc.LayerColor:create(cc.c4b(0,0,0,0))
    self._pClippingNode:addChild(self._pLayerBg)

    -- 添加遮罩
    self._pStencil = cc.Sprite:createWithSpriteFrameName("ccsComRes/BagItem.png")
    self._pStencil:setAnchorPoint(cc.p(0.5,0.5))
    self._pStencil:setPosition(self._pos)
 
    -- 设置
    self._pClippingNode:setStencil(self._pStencil)
    self._pClippingNode:setInverted(true)
    self._pClippingNode:setAlphaThreshold(0.05)
    
    -- 提示箭头
    self._pArrow = cc.Sprite:createWithSpriteFrameName("ccsComRes/talksArrow.png")
    self._pArrow:setAnchorPoint(cc.p(0.5,0))
    self._pClippingNode:addChild(self._pArrow)
    
    -- 设置箭头方向
    if self._kDirection == kDirection.kUp then
        self._pArrow:setRotation(180)
        self._pArrow:setPosition(cc.p(self._pos.x, self._pos.y-self._pStencil:getBoundingBox().height/2))
        self._pArrow:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.MoveBy:create(0.5,cc.p(0, -50)), cc.MoveBy:create(0.5,cc.p(0, 50)))))
    elseif self._kDirection == kDirection.kDown then
        self._pArrow:setRotation(0)
        self._pArrow:setPosition(cc.p(self._pos.x, self._pos.y+self._pStencil:getBoundingBox().height/2))
        self._pArrow:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.MoveBy:create(0.5,cc.p(0, 50)), cc.MoveBy:create(0.5,cc.p(0, -50)))))
    elseif self._kDirection == kDirection.kLeft then
        self._pArrow:setRotation(90)
        self._pArrow:setPosition(cc.p(self._pos.x+self._pStencil:getBoundingBox().width/2, self._pos.y))
        self._pArrow:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.MoveBy:create(0.5,cc.p(50, 0)), cc.MoveBy:create(0.5,cc.p(-50, 0)))))
    elseif self._kDirection == kDirection.kRight then
        self._pArrow:setRotation(270)
        self._pArrow:setPosition(cc.p(self._pos.x-self._pStencil:getBoundingBox().width/2, self._pos.y))
        self._pArrow:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.MoveBy:create(0.5,cc.p(-50, 0)), cc.MoveBy:create(0.5,cc.p(50, 0)))))
    elseif self._kDirection == kDirection.kLeftUp then
        self._pArrow:setRotation(135)
        self._pArrow:setPosition(cc.p(self._pos.x+self._pStencil:getBoundingBox().width/3, self._pos.y-self._pStencil:getBoundingBox().height/3))
        self._pArrow:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.MoveBy:create(0.5,cc.p(50*1.414, -50*1.414)), cc.MoveBy:create(0.5,cc.p(-50*1.414, 50*1.414)))))
    elseif self._kDirection == kDirection.kLeftDown then
        self._pArrow:setRotation(45)
        self._pArrow:setPosition(cc.p(self._pos.x+self._pStencil:getBoundingBox().width/3, self._pos.y+self._pStencil:getBoundingBox().height/3))
        self._pArrow:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.MoveBy:create(0.5,cc.p(50*1.414, 50*1.414)), cc.MoveBy:create(0.5,cc.p(-50*1.414, -50*1.414)))))
    elseif self._kDirection == kDirection.kRightUp then
        self._pArrow:setRotation(215)
        self._pArrow:setPosition(cc.p(self._pos.x-self._pStencil:getBoundingBox().width/3, self._pos.y-self._pStencil:getBoundingBox().height/3))
        self._pArrow:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.MoveBy:create(0.5,cc.p(-50*1.414, -50*1.414)), cc.MoveBy:create(0.5,cc.p(50*1.414, 50*1.414)))))
    elseif self._kDirection == kDirection.kRightDown then
        self._pArrow:setRotation(315)
        self._pArrow:setPosition(cc.p(self._pos.x-self._pStencil:getBoundingBox().width/3, self._pos.y+self._pStencil:getBoundingBox().height/3))
        self._pArrow:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.MoveBy:create(0.5,cc.p(-50*1.414, 50*1.414)), cc.MoveBy:create(0.5,cc.p(50*1.414, -50*1.414)))))
    end
    
    -- 初始化文字背景框
    self._pWordsFrame = ccui.Scale9Sprite:createWithSpriteFrameName("ccsComRes/dhjm2.png",cc.rect(50, 20, 60, 20))
    self._pWordsFrame:setContentSize(self._sTextFrame)
    self._pWordsFrame:setAnchorPoint(cc.p(0,0))
    self._pWordsFrame:setPosition(cc.p(self._posText.x + 100, self._posText.y))
    self._pWordsFrame:setOpacity(0)
    self._pClippingNode:addChild(self._pWordsFrame)

    -- 初始化文本区域
    self._pTextArea = cc.Label:createWithTTF(self._strText, strCommonFontName, 30, cc.size(self._pWordsFrame:getContentSize().width - 60, self._pWordsFrame:getContentSize().height - 60), cc.TEXT_ALIGNMENT_LEFT)
    self._pTextArea:setPosition(cc.p(60/2, 60/2))
    self._pTextArea:setAnchorPoint(cc.p(0, 0))
    self._pTextArea:disableEffect()
    self._pTextArea:setOpacity(0)
    self._pTextArea:setColor(cBlack)
    self._pWordsFrame:addChild(self._pTextArea)
    
    -- 3D人物  
    self._tTempleteInfo = TableTempleteNpcRoles[1]
    local strAniName = self._tTempleteInfo.AniResName
    local fullAniName = strAniName..".c3b"
    local fullTextureName = self._tTempleteInfo.Texture..".pvr.ccz"
    
    -- 记录并加载到纹理缓存中
    ResPlistManager:getInstance():addPvrNameToColllectorAndLoadPvr(self._tTempleteInfo.Texture)
    self._pAni = cc.Sprite3D:create(fullAniName)
    self._pAni:setTexture(fullTextureName)
    self._pAni:setPosition(cc.p(self._pWordsFrame:getContentSize().width+100,-220))
    self._pAni:setScale(self._tTempleteInfo.Scale*3)
    self._pWordsFrame:addChild(self._pAni)

    -- 粒子
    self._pParicle = cc.ParticleSystemQuad:create("ParticleStar05.plist")
    self._pParticleParent = cc.ParticleBatchNode:createWithTexture(self._pParicle:getTexture())
    self._pParticleParent:addChild(self._pParicle)
    self._pParticleParent:setPosition(cc.p(self._pAni:getPositionX(), self._pAni:getPositionY() + 150))
    self._pWordsFrame:addChild(self._pParticleParent)
    
    -- 显示开始
    self:showIn()
    
    -- 判断可见性
    if NewbieManager:getInstance()._pCurInfo.IsArrowVisible == 0 then
        self._pArrow:setVisible(false)
    end
    if NewbieManager:getInstance()._pCurInfo.IsTextVisible == 0 then
        self._pTextArea:setVisible(false)
        self._pWordsFrame:setVisible(false)
    end
    if NewbieManager:getInstance()._pCurInfo.IsPeopleVisible == 0 then
        self._pAni:setVisible(false)
    end
    if NewbieManager:getInstance()._pCurInfo.IsStencilVisible == 0 then
        self._pStencil:setVisible(false)
    end
    
    -- 遮罩的scale大小
    self._pStencil:setScaleX(NewbieManager:getInstance()._pCurInfo.TouchScaleX)
    self._pStencil:setScaleY(NewbieManager:getInstance()._pCurInfo.TouchScaleY)
    self._pStencil:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.ScaleBy:create(0.5,1/1.2),cc.ScaleBy:create(0.5,1.2))))
    
    MonstersManager:getInstance():setForceMinPositionZ(true,-10000)
    RolesManager:getInstance():setForceMinPositionZ(true,-10000)
    PetsManager:getInstance():setForceMinPositionZ(true,-10000)
    SkillsManager:getInstance():setForceMinPositionZ(true,-10000)
    
    -- 显示延时
    if NewbieManager:getInstance()._pCurInfo.ShowDelay ~= 0 and self._bIsRunTime == 1 then
        local showDelayTimeUp = function()
            print("时间到，界面移除！")
            self:showOutAndRemove()
        end
        print(NewbieManager:getInstance()._pCurInfo.ShowDelay.."秒延时开始...")
        self:runAction(cc.Sequence:create(cc.DelayTime:create(NewbieManager:getInstance()._pCurInfo.ShowDelay),cc.CallFunc:create(showDelayTimeUp)))
    end
    self:setPositionZ(5000)
    
    local update = function(dt)
        self._fTimeCounter = self._fTimeCounter + dt
    end
    -- 注册定时器
    self._nScheduleID = cc.Director:getInstance():getScheduler():scheduleScriptFunc(update,0,false)
    
    -- 触摸注册
    local function onTouchBegin(touch,event)
        local location = touch:getLocation()
        if cc.Director:getInstance():getRunningScene():getLayerByName("LoadingLayer") then
            print("点击无效1！")
            self._bSkip = true
            self._pTouchListener:setSwallowTouches(true)  -- 禁止触摸事件向下传递
            return true
        end
        
        if self._fTimeCounter < 0.2 then
            self._bSkip = true
            print("点击无效2！")
            self._pTouchListener:setSwallowTouches(true)  -- 禁止触摸事件向下传递
            return true    
        end
        self._fTimeCounter = 0
        self._bSkip = false
        
        if self._bEatTouch == true then
            print("点击无效3！")
            self._pTouchListener:setSwallowTouches(true)  -- 禁止触摸事件向下传递
            return true
        end
        if cc.rectContainsPoint(cc.rect(self._pos.x - self._pStencil:getBoundingBox().width/2, self._pos.y - self._pStencil:getBoundingBox().height/2, self._pStencil:getBoundingBox().width, self._pStencil:getBoundingBox().height*2), location) == true then
            print("点击生效!!!")
            self._pTouchListener:setSwallowTouches(false)  -- 触摸事件向下传递
            return true
        end
        print("点击无效4！")
        self._pTouchListener:setSwallowTouches(true)  -- 禁止触摸事件向下传递
        return true
    end
    local function onTouchMoved(touch,event)
    end
    local function onTouchEnded(touch,event)
        local location = touch:getLocation()
        if cc.Director:getInstance():getRunningScene():getLayerByName("LoadingLayer") then
            return
        end
        if self._bEatTouch == true then
            return
        end
        if self._bSkip == true then
            self._bSkip = false
            return
        end
        if cc.rectContainsPoint(cc.rect(self._pos.x - self._pStencil:getBoundingBox().width/2, self._pos.y - self._pStencil:getBoundingBox().height/2, self._pStencil:getBoundingBox().width, self._pStencil:getBoundingBox().height*2), location) == true then
            -- 显示结束，并且换到下一个界面(即时操作，直接响应即可)
            if self._bIsRunTime == 1 then
                if NewbieManager:getInstance()._pCurInfo.WaitDelay == 0 then
                    if self._nTouchTimes > 0 then
                        self._nTouchTimes = self._nTouchTimes - 1
                        cclog("点击一次")
                    end
                    if self._nTouchTimes <= 0 then
                        print("界面移除！")
                        self:showOutAndRemove()
                        self._bEatTouch = true      -- 防止多次点击
                    end
                else
                    local waitDelayTimeUp = function()
                        print("时间到，界面移除！")
                        self:showOutAndRemove()
                    end
                    print(NewbieManager:getInstance()._pCurInfo.WaitDelay.."秒延时开始...")
                    self:runAction(cc.Sequence:create(cc.DelayTime:create(NewbieManager:getInstance()._pCurInfo.WaitDelay),cc.CallFunc:create(waitDelayTimeUp)))
                    self._bEatTouch = true      -- 防止多次点击
                end
            end
        end
        return
    end
    -- 添加监听器
    self._pTouchListener = cc.EventListenerTouchOneByOne:create()
    self._pTouchListener:setSwallowTouches(true)
    self._pTouchListener:registerScriptHandler(onTouchBegin,cc.Handler.EVENT_TOUCH_BEGAN )
    self._pTouchListener:registerScriptHandler(onTouchMoved,cc.Handler.EVENT_TOUCH_MOVED )
    self._pTouchListener:registerScriptHandler(onTouchEnded,cc.Handler.EVENT_TOUCH_ENDED )
    self:getEventDispatcher():addEventListenerWithSceneGraphPriority(self._pTouchListener, self)    
    self._bEatTouch = true
    
    ------------------- 结点事件------------------------
    local function onNodeEvent(event)
        if event == "exit" then
            self:onExitNewbieLayer()
        end
    end
    self:registerScriptHandler(onNodeEvent)
    
    return   
end

-- 退出函数
function NewbieLayer:onExitNewbieLayer()    
    MonstersManager:getInstance():setForceMinPositionZ(false)
    RolesManager:getInstance():setForceMinPositionZ(false)
    PetsManager:getInstance():setForceMinPositionZ(false)
    SkillsManager:getInstance():setForceMinPositionZ(false)
    
    NetRespManager:dispatchEvent(kNetCmd.kWorldLayerTouch,{false})
    
    cc.Director:getInstance():getScheduler():unscheduleScriptEntry(self._nScheduleID)
end

-- 显示开始
function NewbieLayer:showIn()
    local showOver = function()
        -- 判断是否显示对话
        if NewbieManager:getInstance()._pCurInfo.TalkID ~= -1 then
            TalksManager:getInstance():setCurTalks(NewbieManager:getInstance()._pCurInfo.TalkID)
            self._nTouchTimes = table.getn(TalksManager:getInstance()._tCurContents)
        end
        self._bEatTouch = false
        NetRespManager:dispatchEvent(kNetCmd.kWorldLayerTouch,{false})
    end
    -- 背景渐黑
    self._pLayerBg:runAction(cc.Sequence:create(cc.FadeTo:create(0.2,120),cc.CallFunc:create(showOver)))
    --self._pLayerBg:runAction(cc.Sequence:create(cc.FadeTo:create(0.2,0),cc.CallFunc:create(showOver)))
    -- 箭头出场动画
    self._pArrow:setScale(2.0)
    self._pArrow:setOpacity(0)
    self._pArrow:runAction(cc.Spawn:create(cc.EaseSineInOut:create(cc.ScaleTo:create(0.1,1.0)),cc.FadeIn:create(1.0)))
    -- 文字框的出场动画
    self._pWordsFrame:runAction(cc.Spawn:create(cc.FadeIn:create(0.2),cc.EaseSineInOut:create(cc.MoveBy:create(0.2,cc.p(-100,0)))))
    self._pTextArea:runAction(cc.FadeIn:create(0.2))
    -- 人物现身
    self:playAppearAction()
    
end

-- 显示结束
function NewbieLayer:showOutAndRemove()
    -- 停止所有挂接的动作
    self:stopAllActions()
    -- 停止粒子
    self._pParicle:stopSystem()
    -- 背景渐亮
    self._pLayerBg:runAction(cc.FadeTo:create(0.1,0))
    -- 箭头离场动画
    self._pArrow:runAction(cc.FadeOut:create(0.1))
    -- self._pStencil 离场动画
    self._pStencil:stopAllActions()
    self._pStencil:runAction(cc.EaseSineInOut:create(cc.ScaleTo:create(0.1,0)))
    -- 文字框的离场动画
    self._pWordsFrame:runAction(cc.Spawn:create(cc.FadeOut:create(0.1),cc.EaseSineInOut:create(cc.MoveBy:create(0.1,cc.p(100,0)))))
    self._pTextArea:runAction(cc.FadeOut:create(0.1))
    -- 人物离场
    self:playDisAppearAction()
    -- 移除
    local toRemove = function()
        -- 显示下一个引导界面
        NewbieManager:getInstance():showNextNewbie()
    end
    self:runAction(cc.Sequence:create(cc.DelayTime:create(0.2),cc.CallFunc:create(toRemove)))
    -- 防止多次点击
    self._bEatTouch = true
    NetRespManager:dispatchEvent(kNetCmd.kWorldLayerTouch,{true})
    
end

-- 出场动画
function NewbieLayer:playAppearAction()
    -- 站立动画
    local animation = cc.Animation3D:create(self._tTempleteInfo.AniResName..".c3b")
    local fStartFrame = self._tTempleteInfo.StandActFrameRegion[1]
    local fEndFrame = self._tTempleteInfo.StandActFrameRegion[2]
    local temp = cc.Animate3D:createWithFrames(animation, fStartFrame, fEndFrame)
    temp:setSpeed(self._tTempleteInfo.StandActFrameRegion[3])
    local pStandAction = cc.RepeatForever:create(temp)    
    self._pAni:runAction(pStandAction)
    
end

-- 离场动画
function NewbieLayer:playDisAppearAction()
    self._pAni:runAction(cc.FadeOut:create(0.1))
    self._pParticleParent:runAction(cc.FadeOut:create(0.1))
end

-- 判断指定的点是否在可点击区域
function NewbieLayer:isPointInTouchArea(pos)
	if cc.rectContainsPoint(cc.rect(self._pos.x - self._pStencil:getBoundingBox().width/2, self._pos.y - self._pStencil:getBoundingBox().height/2, self._pStencil:getBoundingBox().width, self._pStencil:getBoundingBox().height*2), pos) == true then
	   return true
	end
	return false
end

return NewbieLayer
