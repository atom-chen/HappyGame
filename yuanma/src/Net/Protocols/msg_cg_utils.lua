-- Date: 2015-8
-- File: msg_cg_utils.lua
-- Auth: generated by auto tool 'lazybone'
-- Desc: message define
--// 定义了客户端与游戏服务间的部分协议
--// 定义用户工具类信息
--// 协议号分配：21300 ~ 21399


HeartBeatReqBody = {
    ["name"] = "HeartBeatReqBody",
    ["id"] = 21300,
}

HeartBeatRespBody = {
    ["name"] = "HeartBeatRespBody",
    ["id"] = 21301,
    ["attribs"] = {
        {"strength", "uint32"},
        {"shopFlag", "bool"},
        {"fairyFlag", "bool"},
        {"wineryFlag", "bool"},
        {"fortuneFlag", "bool"},
        {"experFlag", "bool"},
        {"bladeFlag", "bool"},
        {"beautyFlag", "bool"},
    },
}

ChatReqBody = {
    ["name"] = "ChatReqBody",
    ["id"] = 21302,
    ["attribs"] = {
        {"desRoleId", "uint32"},
        {"useHorn", "bool"},
        {"chatType", "uint16"},
        {"contentType", "uint16"},
        {"content", "string"},
    },
}

ChatRespBody = {
    ["name"] = "ChatRespBody",
    ["id"] = 21303,
    ["attribs"] = {
        {"timestamp", "uint32"},
        {"content", "string"},
    },
}

QueryBlackListReqBody = {
    ["name"] = "QueryBlackListReqBody",
    ["id"] = 21304,
}

QueryBlackListRespBody = {
    ["name"] = "QueryBlackListRespBody",
    ["id"] = 21305,
    ["attribs"] = {
        {"blacklist", "BlackUnit", "repeat"},
    },
}

SetBlackListReqBody = {
    ["name"] = "SetBlackListReqBody",
    ["id"] = 21306,
    ["attribs"] = {
        {"roleId", "uint32"},
    },
}

SetBlackListRespBody = {
    ["name"] = "SetBlackListRespBody",
    ["id"] = 21307,
    ["attribs"] = {
        {"blacklist", "BlackUnit", "repeat"},
    },
}

SaveNewerProReqBody = {
    ["name"] = "SaveNewerProReqBody",
    ["id"] = 21308,
    ["attribs"] = {
        {"progress", "string"},
    },
}

SaveNewerProRespBody = {
    ["name"] = "SaveNewerProRespBody",
    ["id"] = 21309,
}

QueryNewerProReqBody = {
    ["name"] = "QueryNewerProReqBody",
    ["id"] = 21310,
}

QueryNewerProRespBody = {
    ["name"] = "QueryNewerProRespBody",
    ["id"] = 21311,
    ["attribs"] = {
        {"progress", "string"},
    },
}

MarkChatReqBody = {
    ["name"] = "MarkChatReqBody",
    ["id"] = 21312,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"isAgree", "bool"},
    },
}

MarkChatRespBody = {
    ["name"] = "MarkChatRespBody",
    ["id"] = 21313,
}

