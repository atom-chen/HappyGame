-- Date: 2015-10
-- File: msg_cg_common.lua
-- Auth: generated by auto tool 'lazybone'
-- Desc: message define


FinanceUnit = {
    ["name"] = "FinanceUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"finance", "uint16"},
        {"amount", "uint32"},
    },
}

AttrInfo = {
    ["name"] = "AttrInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"attrType", "uint16"},
        {"attrValue", "double"},
    },
}

VipAddBattle = {
    ["name"] = "VipAddBattle",
    ["id"] = 0,
    ["attribs"] = {
        {"copyId", "uint32"},
        {"copyTp", "uint16"},
        {"buyCount", "uint16"},
    },
}

VipInfo = {
    ["name"] = "VipInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"vipLevel", "uint32"},
        {"totalCharge", "uint32"},
        {"gainBox", "bool", "repeat"},
        {"addStrength", "uint16"},
        {"addBattles", "VipAddBattle", "repeat"},
    },
}

EquipmentExtInfo = {
    ["name"] = "EquipmentExtInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"fightingPower", "uint32"},
        {"majorAttr", "AttrInfo"},
        {"minorAttr", "AttrInfo", "repeat"},
        {"stones", "uint32", "repeat"},
    },
}

ItemInfo = {
    ["name"] = "ItemInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"value", "uint32"},
        {"position", "uint32"},
        {"baseType", "uint16"},
        {"equipment", "EquipmentExtInfo", "repeat"},
    },
}

PetInfo = {
    ["name"] = "PetInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"petId", "uint32"},
        {"level", "uint32"},
        {"step", "uint32"},
        {"exp", "uint32"},
    },
}

PetUnit = {
    ["name"] = "PetUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"index", "uint32"},
        {"petInfo", "PetInfo"},
    },
}

SkillUnit = {
    ["name"] = "SkillUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"level", "uint32"},
    },
}

RoleDisplayInfo = {
    ["name"] = "RoleDisplayInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"exp", "uint32"},
        {"level", "uint32"},
        {"roleName", "string"},
        {"roleCareer", "uint16"},
        {"fashionOptions", "bool", "repeat"},
        {"equipemts", "ItemInfo", "repeat"},
    },
}

RoleAttrInfo = {
    ["name"] = "RoleAttrInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"hp", "uint32"},
        {"attack", "uint32"},
        {"defend", "uint32"},
        {"critRate", "uint32"},
        {"critDmage", "uint32"},
        {"resilience", "uint32"},
        {"resistance", "uint32"},
        {"block", "uint32"},
        {"penetration", "uint32"},
        {"dodgeRate", "uint32"},
        {"attrEnhanced", "uint32"},
        {"fireAttack", "uint32"},
        {"coldAttack", "uint32"},
        {"lightningAttack", "uint32"},
        {"lifePerSecond", "uint32"},
        {"lifeSteal", "uint32"},
        {"speed", "uint32"},
        {"furyRegeneration", "uint32"},
        {"fightingPower", "uint32"},
    },
}

RoleDetailInfo = {
    ["name"] = "RoleDetailInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"roleName", "string"},
        {"exp", "uint32"},
        {"level", "uint32"},
        {"roleCareer", "uint16"},
        {"strength", "uint32"},
        {"reviveCount", "uint32"},
        {"vipInfo", "VipInfo"},
        {"finances", "FinanceUnit", "repeat"},
        {"roleAttrInfo", "RoleAttrInfo"},
        {"fashionOptions", "bool", "repeat"},
        {"equipemts", "ItemInfo", "repeat"},
        {"pets", "PetUnit", "repeat"},
    },
}

ShopTag = {
    ["name"] = "ShopTag",
    ["id"] = 0,
    ["attribs"] = {
        {"tagType", "uint16"},
        {"tagName", "string"},
    },
}

GoodsInfo = {
    ["name"] = "GoodsInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"goodsId", "uint32"},
        {"itemInfo", "ItemInfo"},
        {"financeType", "uint16"},
        {"currentPrice", "uint32"},
        {"originalPrice", "uint32"},
        {"flag", "uint16"},
        {"saleIcon", "string"},
        {"maxBuy", "int32"},
        {"remainBuy", "int32"},
        {"plural", "bool"},
    },
}

FairyPill = {
    ["name"] = "FairyPill",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"level", "uint32"},
        {"exp", "uint32"},
        {"index", "uint32"},
    },
}

FairyDish = {
    ["name"] = "FairyDish",
    ["id"] = 0,
    ["attribs"] = {
        {"level", "uint32"},
        {"exp", "uint32"},
        {"pillList", "FairyPill", "repeat"},
        {"addAttr", "AttrInfo", "repeat"},
    },
}

BeautyInfo = {
    ["name"] = "BeautyInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"num", "uint32"},
        {"level", "uint32"},
        {"expValue", "uint32"},
    },
}

BeautyGroup = {
    ["name"] = "BeautyGroup",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"beautyStates", "bool", "repeat"},
    },
}

RefineUnit = {
    ["name"] = "RefineUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"baseType", "uint16"},
        {"remain", "uint32"},
        {"total", "uint32"},
        {"state", "uint16"},
    },
}

BladeSoul = {
    ["name"] = "BladeSoul",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"price", "uint32"},
        {"attrbs", "AttrInfo", "repeat"},
    },
}

BattleExtData = {
    ["name"] = "BattleExtData",
    ["id"] = 0,
    ["attribs"] = {
        {"battleId", "uint32"},
        {"extCount", "uint32"},
        {"currentCount", "uint32"},
        {"bestStar", "uint32"},
    },
}

KillMonster = {
    ["name"] = "KillMonster",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"count", "uint32"},
    },
}

BattleWinData = {
    ["name"] = "BattleWinData",
    ["id"] = 0,
    ["attribs"] = {
        {"scoreDepend", "uint32"},
        {"monsters", "KillMonster", "repeat"},
    },
}

PickCardUnit = {
    ["name"] = "PickCardUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"index", "uint32"},
        {"item", "ItemInfo", "repeat"},
        {"finance", "FinanceUnit", "repeat"},
    },
}

TowerBattle = {
    ["name"] = "TowerBattle",
    ["id"] = 0,
    ["attribs"] = {
        {"towerId", "uint32"},
        {"currId", "uint32"},
        {"copyType", "uint32"},
        {"currCount", "uint32"},
        {"extCount", "uint32"},
    },
}

StoryBattle = {
    ["name"] = "StoryBattle",
    ["id"] = 0,
    ["attribs"] = {
        {"storyId", "uint32"},
        {"draw", "bool", "repeat"},
        {"btInfos", "BattleExtData", "repeat"},
    },
}

ArenaPageInfo = {
    ["name"] = "ArenaPageInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"boxCount", "uint32"},
        {"rank", "uint32"},
        {"winStreak", "uint32"},
        {"remainCount", "uint32"},
        {"remainTime", "uint32"},
        {"remainRefresh", "uint32"},
        {"diamondRefresh", "uint32"},
    },
}

RoleArenaInfo = {
    ["name"] = "RoleArenaInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"level", "uint32"},
        {"name", "string"},
        {"rank", "uint32"},
        {"fightingPower", "uint32"},
        {"roleCareer", "uint16"},
    },
}

RoleFightInfo = {
    ["name"] = "RoleFightInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"roleName", "string"},
        {"level", "uint32"},
        {"vipLevel", "uint32"},
        {"roleCareer", "uint16"},
        {"roleAttrInfo", "RoleAttrInfo"},
        {"fashionOptions", "bool", "repeat"},
        {"equipemts", "ItemInfo", "repeat"},
        {"pasvSkills", "SkillUnit", "repeat"},
        {"mountSkills", "SkillUnit", "repeat"},
        {"pets", "PetUnit", "repeat"},
    },
}

AwardInfo = {
    ["name"] = "AwardInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"items", "ItemInfo", "repeat"},
        {"finances", "FinanceUnit", "repeat"},
    },
}

TaskInfo = {
    ["name"] = "TaskInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"taskId", "uint32"},
        {"state", "uint16"},
        {"progress", "uint32"},
    },
}

HuaShanRoleInfo = {
    ["name"] = "HuaShanRoleInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"roleName", "string"},
        {"roleLevel", "uint32"},
        {"vipLevel", "uint32"},
        {"fightingPower", "uint32"},
        {"roleCareer", "uint16"},
        {"fashionOptions", "bool", "repeat"},
        {"equipemts", "ItemInfo", "repeat"},
        {"isKo", "bool"},
        {"award", "AwardInfo"},
    },
}

VitalityInfo = {
    ["name"] = "VitalityInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"vitality", "uint32"},
        {"boxState", "bool", "repeat"},
    },
}

FriendInfo = {
    ["name"] = "FriendInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"level", "uint32"},
        {"vipLevel", "uint32"},
        {"roleCareer", "uint16"},
        {"fightingPower", "uint32"},
        {"roleName", "string"},
        {"offlineTime", "uint32"},
        {"friendship", "uint32"},
        {"cheerTime", "uint32"},
    },
}

ApplyFriendInfo = {
    ["name"] = "ApplyFriendInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"level", "uint32"},
        {"vipLevel", "uint32"},
        {"roleCareer", "uint16"},
        {"fightingPower", "uint32"},
        {"roleName", "string"},
        {"applyTime", "uint32"},
    },
}

FriendSkillInfo = {
    ["name"] = "FriendSkillInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"friendShip", "uint32"},
        {"level", "uint32"},
        {"roleCareer", "uint16"},
        {"roleAttrInfo", "RoleAttrInfo"},
    },
}

GiftInfo = {
    ["name"] = "GiftInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"timestamp", "uint32"},
        {"roleName", "string"},
        {"giftItem", "ItemInfo"},
        {"isSend", "bool"},
    },
}

BuffInfo = {
    ["name"] = "BuffInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"id", "uint32"},
        {"remainTime", "uint32"},
    },
}

MailDemo = {
    ["name"] = "MailDemo",
    ["id"] = 0,
    ["attribs"] = {
        {"index", "uint32"},
        {"isRead", "bool"},
        {"hasGot", "bool"},
        {"title", "string"},
        {"type", "string"},
        {"date", "uint32"},
    },
}

MailInfo = {
    ["name"] = "MailInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"index", "uint32"},
        {"isRead", "bool"},
        {"hasGot", "bool"},
        {"title", "string"},
        {"date", "uint32"},
        {"type", "string"},
        {"sender", "string"},
        {"contents", "string"},
        {"goods", "AwardInfo"},
    },
}

ChatUnit = {
    ["name"] = "ChatUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"vipLv", "uint32"},
        {"level", "uint32"},
        {"roleCareer", "uint16"},
        {"name", "string"},
        {"useHorn", "bool"},
        {"timestamp", "uint32"},
        {"chatType", "uint16"},
        {"contentType", "uint16"},
        {"content", "string"},
    },
}

BlackUnit = {
    ["name"] = "BlackUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"name", "string"},
        {"roleCareer", "uint16"},
    },
}

TeamUnit = {
    ["name"] = "TeamUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"teamId", "uint32"},
        {"copyId", "uint32"},
        {"copyTp", "uint16"},
        {"roleId", "uint32"},
        {"vipLv", "uint32"},
        {"level", "uint32"},
        {"roleCareer", "uint16"},
        {"name", "string"},
        {"timestamp", "uint32"},
    },
}

FriendWineryUnit = {
    ["name"] = "FriendWineryUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"friendId", "uint32"},
        {"wineId", "uint32"},
        {"drink", "bool"},
    },
}

FamilyUnit = {
    ["name"] = "FamilyUnit",
    ["id"] = 0,
    ["attribs"] = {
        {"familyId", "uint32"},
        {"rank", "uint32"},
        {"level", "uint32"},
        {"score", "uint32"},
        {"cash", "uint32"},
        {"memCount", "uint32"},
        {"memTotal", "uint32"},
        {"createTime", "uint32"},
        {"familyName", "string"},
        {"purpose", "string"},
        {"leaderName", "string"},
    },
}

FamilyMemberInfo = {
    ["name"] = "FamilyMemberInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"roleName", "string"},
        {"level", "uint32"},
        {"roleCareer", "uint16"},
        {"fightingPower", "uint32"},
        {"offlineTime", "uint32"},
        {"totalScore", "uint32"},
        {"weekScore", "uint32"},
        {"position", "uint16"},
    },
}

FamilyNews = {
    ["name"] = "FamilyNews",
    ["id"] = 0,
    ["attribs"] = {
        {"roleName", "string"},
        {"level", "uint32"},
        {"roleCareer", "uint16"},
        {"position", "uint16"},
        {"newsTime", "uint32"},
        {"content", "string"},
    },
}

FamilyTech = {
    ["name"] = "FamilyTech",
    ["id"] = 0,
    ["attribs"] = {
        {"techId", "uint32"},
        {"level", "uint32"},
        {"remainTime", "uint32"},
    },
}

ChargeItem = {
    ["name"] = "ChargeItem",
    ["id"] = 0,
    ["attribs"] = {
        {"productId", "uint32"},
        {"rmb", "uint32"},
        {"diamond", "uint32"},
        {"productName", "string"},
        {"exchageRate", "uint32"},
        {"moneyName", "string"},
        {"isMonthCard", "bool"},
    },
}

BookInfo = {
    ["name"] = "BookInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"bookId", "uint32"},
        {"pages", "uint32", "repeat"},
    },
}

ActivityInfo = {
    ["name"] = "ActivityInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"actType", "uint16"},
        {"startTime", "string"},
        {"endTime", "string"},
        {"remainTime", "uint32"},
        {"openLevel", "uint32"},
    },
}

ActivityOnlineInfo = {
    ["name"] = "ActivityOnlineInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"onlineTime", "uint32"},
        {"getAwardList", "uint32", "repeat"},
    },
}

ActivityAmassInfo = {
    ["name"] = "ActivityAmassInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"amassPay", "uint32"},
        {"gainAwards", "uint32", "repeat"},
    },
}

ActivityLevelInfo = {
    ["name"] = "ActivityLevelInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"getAwardList", "uint32", "repeat"},
    },
}

ActivityFirstRecharge = {
    ["name"] = "ActivityFirstRecharge",
    ["id"] = 0,
    ["attribs"] = {
        {"state", "uint16"},
    },
}

ActivityMonthSignInfo = {
    ["name"] = "ActivityMonthSignInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"month", "uint32"},
        {"monthDays", "uint32"},
        {"theDay", "uint32"},
        {"signCount", "uint32"},
        {"addSignCount", "uint32"},
        {"daySign", "uint16"},
    },
}

ActivityPowerGiveInfo = {
    ["name"] = "ActivityPowerGiveInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"stateList", "uint16", "repeat"},
    },
}

RankInfo = {
    ["name"] = "RankInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"rank", "uint32"},
        {"roleId", "uint32"},
        {"name", "string"},
        {"roleTp", "uint32"},
        {"keyWord", "uint32"},
    },
}

FormMemberInfo = {
    ["name"] = "FormMemberInfo",
    ["id"] = 0,
    ["attribs"] = {
        {"fightInfo", "RoleFightInfo"},
    },
}

