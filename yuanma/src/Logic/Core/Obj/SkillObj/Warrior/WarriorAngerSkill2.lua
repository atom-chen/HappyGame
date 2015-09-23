--===================================================
-- (c) copyright 2014 - 2015, www.cfanim.cn
-- All Rights Reserved.
--==================================================
-- filename:  WarriorAngerSkill2.lua
-- author:    taoye
-- e-mail:    870428198@qq.com
-- created:   2015/6/24
-- descrip:   刺客怒气技能2  绝剑·焚天
--===================================================
local WarriorAngerSkill2 = class("WarriorAngerSkill2",function(master, skillInfo)
    return require("SkillObj"):create(master, skillInfo)
end)

-- 构造函数
function WarriorAngerSkill2:ctor()
    self._strName = "WarriorAngerSkill2"                          -- 技能名称
    self._kTypeID = kType.kSkill.kID.kWarriorAngerSkill2          -- 技能对象类型
    self._pCurState = nil                                         -- 技能当前的状态机状态
    
    self._bStickAdd = false                                       -- 引用计数的标记
    self._bIgnoreHurtAdd = false                                  -- 引用计数的标记
    
    self._nRoleAttackActionIndex = 5                              -- 角色攻击动作index
    self._fChantDelayTime = 0.55                                  -- 吟唱动作持续时间s
    
end

-- 创建函数
function WarriorAngerSkill2:create(master, skillInfo)   
    local skill = WarriorAngerSkill2.new(master, skillInfo)
    skill:dispose()
    
    return skill
end

-- 处理函数
function WarriorAngerSkill2:dispose()
    ------------------- 初始化 ------------------------  
    -- 创建状态机
    self:initStateMachine()
    
    ------------------- 结点事件------------------------
    local function onNodeEvent(event)
        if event == "exit" then
            self:onExitWarriorAngerSkill2()
        end
    end
    self:registerScriptHandler(onNodeEvent)
    
    return
end

-- 退出函数
function WarriorAngerSkill2:onExitWarriorAngerSkill2()    
    self:onExitSkillObj()
end

-- 循环更新
function WarriorAngerSkill2:update(dt)
    self:updateSkillObj(dt)
end

-- 创建状态机
function WarriorAngerSkill2:initStateMachine()
    self._pStateMachineDelegate = require("StateMachineDelegate"):create()
    local pStateMachine = require("BattleSkillStateMachine"):create(self)
    self._pStateMachineDelegate:addStateMachine(pStateMachine)
end

-- 技能使用接口
function WarriorAngerSkill2:onUse() 
    -- 立即手动切换到吟唱状态
    if self._pCurState._kTypeID == kType.kState.kBattleSkill.kIdle then
        self._fCDCounter = 0   -- CD时间清空 
        self._pCurState._pOwnerMachine:setCurStateByTypeID(kType.kState.kBattleSkill.kChant)
    else  -- 如果当前技能正处于使用状态，则立即将角色切换回站立状态
        self:getMaster():getStateMachineByTypeID(kType.kStateMachine.kBattlePlayerRole):setCurStateByTypeID(kType.kState.kBattlePlayerRole.kStand)
    end
end

-- 初始化动作帧事件回调
function WarriorAngerSkill2:initActionsFrameEvents(index, action)
    if index == 1 then
        local function onFrameEvent1(frame)
            if nil == frame then
                return
            end
            self._strFrameEventName = frame:getEvent()
        end
        action:setFrameEventCallFunc(onFrameEvent1)
    end

end

-- 帧事件的处理
function WarriorAngerSkill2:procActionsFrameEvents()
    if self._strFrameEventName == "" then
    elseif self._strFrameEventName == "start1" then
    elseif self._strFrameEventName == "hurt1_1" then
        self:setCurAttackFrameEventInfo(1,1)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_2" then
        self:setCurAttackFrameEventInfo(1,2)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_3" then
        self:setCurAttackFrameEventInfo(1,3)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_4" then
        self:setCurAttackFrameEventInfo(1,4)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_5" then
        self:setCurAttackFrameEventInfo(1,5)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_6" then
        self:setCurAttackFrameEventInfo(1,6)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_7" then
        self:setCurAttackFrameEventInfo(1,7)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_8" then
        self:setCurAttackFrameEventInfo(1,8)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_9" then
        self:setCurAttackFrameEventInfo(1,9)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "end1" then
        self:clearCurAttackFrameEventInfo()
        self._pCurState._pOwnerMachine:setCurStateByTypeID(kType.kState.kBattleSkill.kIdle)
    end
    self._strFrameEventName = ""
end

-------------------------------------------------------------------------------------------------
-- 技能待机状态onEnter时技能操作
function WarriorAngerSkill2:onEnterIdleDo(state)
    --print("WarriorAngerSkill2:onEnterIdleDo()")
    self._pCurState = state
    self:setVisible(false)

end

-- 技能待机状态onExit时技能操作
function WarriorAngerSkill2:onExitIdleDo()
--print("WarriorAngerSkill2:onExitIdleDo()")
end

-- 技能待机状态onUpdate时技能操作
function WarriorAngerSkill2:onUpdateIdleDo(dt)

end
-------------------------------------------------------------------------------------------------
-- 技能吟唱状态onEnter时技能操作
function WarriorAngerSkill2:onEnterChantDo(state)
    --print("WarriorAngerSkill2:onEnterChantDo()")
    self._pCurState = state
    local info = self._pSkillInfo
    -- 播放人物动作
    self:getMaster():playAttackAction(self._nRoleAttackActionIndex)
    
    -- 技能吼叫音效
    AudioManager:getInstance():playEffect(self._tTempleteInfo.SkillRoarVoice)

    ---人物吟唱动作播放到一段时间时进入到process阶段------------------------------------------------------------------------------
    local chantOver = function()
        --self:setScale(0.1)
        self._pCurState._pOwnerMachine:setCurStateByTypeID(kType.kState.kBattleSkill.kProcess)
    end
    self._pChantOverActionNode:stopAllActions()
    self._pChantOverActionNode:runAction(cc.Sequence:create(cc.DelayTime:create(self._fChantDelayTime), cc.CallFunc:create(chantOver)))  -- 0.1秒动作后放出技能  
    
    local skillActOver = function()
        -- 摇杆解禁
        self:getMaster()._refStick:sub()
        self._bStickAdd = false
        if self:getMaster():isUnusualState() == false then     -- 正常状态
            self:getMaster():getStateMachineByTypeID(kType.kStateMachine.kBattlePlayerRole):setCurStateByTypeID(kType.kState.kBattlePlayerRole.kStand)
        end
    end
    -- 摇杆禁用
    self:getMaster()._refStick:add()
    self._bStickAdd = true
    self:getMaster()._refStick._nWaitingSkillActOverToSubCount = self:getMaster()._refStick._nWaitingSkillActOverToSubCount + 1
    
    -- 【开始忽略一切伤害】
    self:getMaster()._pRefRoleIgnoreHurt:add()
    self._bIgnoreHurtAdd = true
    
    local duration = self:getMaster():getAttackActionTime(self._nRoleAttackActionIndex)
    self._pSkillActOverActionNode:stopAllActions()
    self._pSkillActOverActionNode:runAction(cc.Sequence:create(cc.DelayTime:create(duration), cc.CallFunc:create(skillActOver)))
    
end

-- 技能吟唱状态onExit时技能操作
function WarriorAngerSkill2:onExitChantDo()
--print("WarriorAngerSkill2:onExitChantDo()")
end

-- 技能吟唱状态onUpdate时技能操作
function WarriorAngerSkill2:onUpdateChantDo(dt)

end
-------------------------------------------------------------------------------------------------
-- 技能执行状态onEnter时技能操作
function WarriorAngerSkill2:onEnterProcessDo(state)
    --print("WarriorAngerSkill2:onEnterProcessDo()")
    self._pCurState = state 
    self._pCurState._pOwnerMachine:setCurStateByTypeID(kType.kState.kBattleSkill.kRelease)
end

-- 技能执行状态onExit时技能操作
function WarriorAngerSkill2:onExitProcessDo()
    --print("WarriorAngerSkill2:onExitProcessDo()")   
end

-- 技能执行状态onUpdate时技能操作
function WarriorAngerSkill2:onUpdateProcessDo(dt)
    
end
-----------------------------------------------------------------------------------------------------
-- 技能释放状态onEnter时技能操作
function WarriorAngerSkill2:onEnterReleaseDo(state)
    --print("WarriorAngerSkill2:onEnterReleaseDo()")
    self._pCurState = state
 
    self:setVisible(true)        
    self:playActionByIndex(1)
    
    -- 给技能指定施展时的zorder
    self._nSettledZorder = kZorder.kMaxSkill
    
    -- 搜索目标
    self:getAIManager():roleRefreshDirectionWhenAttackEnemys(self:getMaster(), self)  --刷新方向
    local tTargets = self:getAIManager():objSearchNearestEnemysInRangeForDamage(self:getMaster(), self._pSkillInfo.WarnRange, nil, self._pSkillInfo.TargetGroupType)
    -- 记录所有目标的位置
    if table.getn(tTargets) == 0 then
        local offsetY = self._pSkillInfo.WarnRange*math.sin(math.rad(self:getMaster():getAngle3D()))
        local offsetX = self._pSkillInfo.WarnRange*math.cos(math.rad(self:getMaster():getAngle3D()))
        self._posTargetsPos = cc.p(self:getMaster():getPositionX()+offsetX, self:getMaster():getPositionY()+offsetY)
    else
        self._posTargetsPos = cc.p(tTargets[1].enemy:getPositionX(),tTargets[1].enemy:getPositionY())
    end
    self:setPosition(cc.p(self._posTargetsPos.x, self._posTargetsPos.y))
    
    
    -- 技能释放音效
    AudioManager:getInstance():playEffect(self._tTempleteInfo.SkillReleaseSound)

end

-- 技能释放状态onExit时技能操作
function WarriorAngerSkill2:onExitReleaseDo()
    --print("WarriorAngerSkill2:onExitReleaseDo()")
    -- 【恢复忽略一切伤害】
    self:getMaster()._pRefRoleIgnoreHurt:sub()
    self._bIgnoreHurtAdd = false
    
end

-- 技能释放状态onUpdate时技能操作
function WarriorAngerSkill2:onUpdateReleaseDo(dt)

end

-- 技能结束时的复位操作
function WarriorAngerSkill2:reset()
    -- 恢复技能指定施展时的zorder
    self._nSettledZorder = nil
    self:clearCurAttackFrameEventInfo()
    self:stopActionByIndex(1)
    
    -- 检测 相关引用计数
    if self._bStickAdd == true then
        self:getMaster()._refStick:sub()
        self._bStickAdd = false
    end
    if self._bIgnoreHurtAdd == true then
        self:getMaster()._pRefRoleIgnoreHurt:sub()
        self._bIgnoreHurtAdd = false
    end
    
end

---------------------------------------------------------------------------------------------------------
return WarriorAngerSkill2
