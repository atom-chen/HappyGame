--===================================================
-- (c) copyright 2014 - 2015, www.cfanim.cn
-- All Rights Reserved.
--==================================================
-- filename:  paths.lua
-- author:    taoye
-- e-mail:    553681974@qq.com
-- created:   2014/12/24
-- descrip:   代码+资源的默认搜索路径
--===================================================

-- 添加搜索路径
local instFileUtils = cc.FileUtils:getInstance()

-- 添加资源目录默认搜索路径
instFileUtils:addSearchPath("res")
instFileUtils:addSearchPath("res/ani2ds")
instFileUtils:addSearchPath("res/ani3ds")
instFileUtils:addSearchPath("res/ani3ds/textures")
instFileUtils:addSearchPath("res/fnts")
instFileUtils:addSearchPath("res/fonts")
instFileUtils:addSearchPath("res/maps")
instFileUtils:addSearchPath("res/mp4")
instFileUtils:addSearchPath("res/particles")
instFileUtils:addSearchPath("res/pics")
instFileUtils:addSearchPath("res/shaders")
instFileUtils:addSearchPath("res/sounds")
instFileUtils:addSearchPath("res/sounds/android")
instFileUtils:addSearchPath("res/sounds/ios-win32-mac")
instFileUtils:addSearchPath("res/ui")

-- 添加代码目录默认搜索路径
instFileUtils:addSearchPath("src")
instFileUtils:addSearchPath("src/CsbParam")
instFileUtils:addSearchPath("src/Tab")
instFileUtils:addSearchPath("src/Tab/Datas")
instFileUtils:addSearchPath("src/Tab/Templetes")
instFileUtils:addSearchPath("src/Logic/Core/Controller/Buff")
instFileUtils:addSearchPath("src/Logic/Core/Controller/Passive")
instFileUtils:addSearchPath("src/Logic/Core/Manager")
instFileUtils:addSearchPath("src/Logic/Core/Obj/GameObj/Entity")
instFileUtils:addSearchPath("src/Logic/Core/Obj/GameObj/Role")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Entity")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Friend")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Monster")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Monster/MonsterSkill1_9")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Monster/MonsterSkill10_19")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Monster/MonsterSkill20_29")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Monster/MonsterSkill30_39")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Monster/MonsterSkill40_49")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Monster/MonsterSkill50_59")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Pet")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Pet/PetSkill1_9")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Pet/PetSkill10_19")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Pet/PetSkill20_29")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Pet/PetSkill30_39")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Mage")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Thug")
instFileUtils:addSearchPath("src/Logic/Core/Obj/SkillObj/Warrior")
instFileUtils:addSearchPath("src/Logic/Core/Ref")
instFileUtils:addSearchPath("src/Logic/Core/State/Battle/BattleEntityState")
instFileUtils:addSearchPath("src/Logic/Core/State/Battle/BattlePlayerRoleState")
instFileUtils:addSearchPath("src/Logic/Core/State/Battle/BattlePetRoleState")
instFileUtils:addSearchPath("src/Logic/Core/State/Battle/BattleMonsterState")
instFileUtils:addSearchPath("src/Logic/Core/State/Battle/BattleFriendRoleState")
instFileUtils:addSearchPath("src/Logic/Core/State/Battle/BattleSkillState")
instFileUtils:addSearchPath("src/Logic/Core/State/World/WorldEntityState")
instFileUtils:addSearchPath("src/Logic/Core/State/World/WorldNpcRoleState")
instFileUtils:addSearchPath("src/Logic/Core/State/World/WorldPetRoleState")
instFileUtils:addSearchPath("src/Logic/Core/State/World/WorldPlayerRoleState")
instFileUtils:addSearchPath("src/Logic/Core/State/World/WorldOtherPlayerRoleState")
instFileUtils:addSearchPath("src/Logic/Core/State/World/WorldOtherPetRoleState")
instFileUtils:addSearchPath("src/Logic/Core/Support/Controller")
instFileUtils:addSearchPath("src/Logic/Core/Support/Obj")
instFileUtils:addSearchPath("src/Logic/Core/Support/ObjCmd")
instFileUtils:addSearchPath("src/Logic/Core/Support/Ref")
instFileUtils:addSearchPath("src/Logic/Core/Support/State")
instFileUtils:addSearchPath("src/Logic/Core/Support/Trigger")
instFileUtils:addSearchPath("src/Logic/Core/Trigger")
instFileUtils:addSearchPath("src/Logic/Com")
instFileUtils:addSearchPath("src/Logic/Com/Manager")
instFileUtils:addSearchPath("src/Logic/Login")
instFileUtils:addSearchPath("src/Logic/Login/Manager")
instFileUtils:addSearchPath("src/Logic/Task")
instFileUtils:addSearchPath("src/Logic/Task/Manager")
instFileUtils:addSearchPath("src/Logic/Task/Operate")
instFileUtils:addSearchPath("src/Logic/Task/purpose")
instFileUtils:addSearchPath("src/Logic/Task/Task")
instFileUtils:addSearchPath("src/Net")
instFileUtils:addSearchPath("src/Net/Handlers")
instFileUtils:addSearchPath("src/Net/Managers")
instFileUtils:addSearchPath("src/Net/Protocols")
instFileUtils:addSearchPath("src/Net/Messages")
instFileUtils:addSearchPath("src/Net/Controllers")
instFileUtils:addSearchPath("src/Launch")
instFileUtils:addSearchPath("src/Util")
instFileUtils:addSearchPath("src/View")
instFileUtils:addSearchPath("src/View/test")
instFileUtils:addSearchPath("src/View/Debug")
instFileUtils:addSearchPath("src/View/Loading")
instFileUtils:addSearchPath("src/View/Login")
instFileUtils:addSearchPath("src/View/Managers")
instFileUtils:addSearchPath("src/View/Support/Assis")
instFileUtils:addSearchPath("src/View/Support/Base")
instFileUtils:addSearchPath("src/View/World")
instFileUtils:addSearchPath("src/View/World/Bag")
instFileUtils:addSearchPath("src/View/World/BladeSoul")
instFileUtils:addSearchPath("src/View/World/Chat")
instFileUtils:addSearchPath("src/View/World/FairyLand")
instFileUtils:addSearchPath("src/View/World/Equipment")
instFileUtils:addSearchPath("src/View/World/RolesInfo")
instFileUtils:addSearchPath("src/View/World/Shop")
instFileUtils:addSearchPath("src/View/World/GameCopys")
instFileUtils:addSearchPath("src/View/World/GetItems")
instFileUtils:addSearchPath("src/View/World/HomeBuff")
instFileUtils:addSearchPath("src/View/World/Marquee")
instFileUtils:addSearchPath("src/View/World/FuncButton")
instFileUtils:addSearchPath("src/View/World/BeautyClub")
instFileUtils:addSearchPath("src/View/World/StoryCopy")
instFileUtils:addSearchPath("src/View/World/Skill")
instFileUtils:addSearchPath("src/View/World/Pet")
instFileUtils:addSearchPath("src/View/World/TowerCopy")
instFileUtils:addSearchPath("src/View/World/Arena")
instFileUtils:addSearchPath("src/View/World/Task")
instFileUtils:addSearchPath("src/View/World/Friend")
instFileUtils:addSearchPath("src/View/World/HuaShanPvp")
instFileUtils:addSearchPath("src/View/World/NetError")
instFileUtils:addSearchPath("src/View/World/NpcDialogue")
instFileUtils:addSearchPath("src/View/World/Email")
instFileUtils:addSearchPath("src/View/World/Option")
instFileUtils:addSearchPath("src/View/World/Help")
instFileUtils:addSearchPath("src/View/World/Drunkery")
instFileUtils:addSearchPath("src/View/World/Family")
instFileUtils:addSearchPath("src/View/World/Charge")
instFileUtils:addSearchPath("src/View/World/SutraLibrary")
instFileUtils:addSearchPath("src/View/World/Activity")
instFileUtils:addSearchPath("src/View/World/Stronger")
instFileUtils:addSearchPath("src/View/Battle")
instFileUtils:addSearchPath("src/View/Battle/BattleAccount")
instFileUtils:addSearchPath("src/View/Battle/BattleUIWidget")
