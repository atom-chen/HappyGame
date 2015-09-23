-- Date: 2015-7
-- File: msg_cg_winery.lua
-- Auth: generated by auto tool 'lazybone'
-- Desc: message define
--// 定义了客户端与游戏服务间的部分协议
--// 定义宠物系统协议
--// 协议号分配：22100 ~ 22199


GetWineryInfoReqBody = {
    ["name"] = "GetWineryInfoReqBody",
    ["id"] = 22100,
}

GetWineryInfoRespBody = {
    ["name"] = "GetWineryInfoRespBody",
    ["id"] = 22101,
    ["attribs"] = {
        {"wineId", "uint32"},
        {"remainTime", "uint32"},
        {"visitorCount", "uint32"},
        {"remainDrink", "uint32"},
        {"visitors", "string", "repeat"},
        {"girls", "BeautyInfo", "repeat"},
    },
}

GetRewardReqBody = {
    ["name"] = "GetRewardReqBody",
    ["id"] = 22102,
}

GetRewardRespBody = {
    ["name"] = "GetRewardRespBody",
    ["id"] = 22103,
    ["attribs"] = {
        {"visitCount", "uint32"},
        {"curExp", "uint32"},
    },
}

OnceCompleteReqBody = {
    ["name"] = "OnceCompleteReqBody",
    ["id"] = 22104,
}

OnceCompleteRespBody = {
    ["name"] = "OnceCompleteRespBody",
    ["id"] = 22105,
    ["attribs"] = {
        {"visitCount", "uint32"},
        {"curExp", "uint32"},
    },
}

SellWineReqBody = {
    ["name"] = "SellWineReqBody",
    ["id"] = 22106,
    ["attribs"] = {
        {"id", "uint32"},
    },
}

SellWineRespBody = {
    ["name"] = "SellWineRespBody",
    ["id"] = 22107,
}

GetFriendWineryReqBody = {
    ["name"] = "GetFriendWineryReqBody",
    ["id"] = 22108,
}

GetFriendWineryRespBody = {
    ["name"] = "GetFriendWineryRespBody",
    ["id"] = 22109,
    ["attribs"] = {
        {"remainDrink", "uint32"},
        {"wineryList", "FriendWineryUnit", "repeat"},
    },
}

DrinkReqBody = {
    ["name"] = "DrinkReqBody",
    ["id"] = 22110,
    ["attribs"] = {
        {"friendId", "uint32"},
    },
}

DrinkRespBody = {
    ["name"] = "DrinkRespBody",
    ["id"] = 22111,
    ["attribs"] = {
        {"curExp", "uint32"},
    },
}

AllDrinkReqBody = {
    ["name"] = "AllDrinkReqBody",
    ["id"] = 22112,
    ["attribs"] = {
        {"friendIds", "uint32", "repeat"},
    },
}

AllDrinkRespBody = {
    ["name"] = "AllDrinkRespBody",
    ["id"] = 22113,
    ["attribs"] = {
        {"curExp", "uint32"},
        {"wineryList", "FriendWineryUnit", "repeat"},
    },
}

