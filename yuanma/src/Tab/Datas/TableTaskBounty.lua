--[[TableTaskBounty.lua
--]]

TableTaskBounty= 
{
	{ TaskID = 30001.0, TaskType = 3.0, Title = '悬赏：完美通关', Target = '取得1个5星关卡评价', TaskConfigure = {kind=3.0,  star=5, count=1}, Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 1.0, OperateQueues = 3.0, Vitality = 20.0, },
	{ TaskID = 30002.0, TaskType = 3.0, Title = '悬赏：宝石合成', Target = '完成1次宝石合成', TaskConfigure = {kind=1.0, count=1}, Exp = 1200.0, Reward = {{2.0,7000}}, RequiredLevel = 27.0, EventType = 4.0, OperateQueues = 7.0, Vitality = 20.0, },
	{ TaskID = 30003.0, TaskType = 3.0, Title = '悬赏：宝石合成', Target = '合成1次绿品质宝石', TaskConfigure = {kind=2.0, count=1, level=2}, Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 4.0, OperateQueues = 8.0, Vitality = 20.0, },
	{ TaskID = 30004.0, TaskType = 3.0, Title = '悬赏：宝石合成', Target = '合成1次蓝品质宝石', TaskConfigure = {kind=2.0, count=1, level=3}, Exp = 2000.0, Reward = {{2.0,8500}}, RequiredLevel = 33.0, EventType = 4.0, OperateQueues = 8.0, Vitality = 20.0, },
	{ TaskID = 30005.0, TaskType = 3.0, Title = '悬赏：宝石合成', Target = '合成1次紫品质宝石', TaskConfigure = {kind=2.0, count=1, level=4}, Exp = 2800.0, Reward = {{2.0,9000}}, RequiredLevel = 36.0, EventType = 4.0, OperateQueues = 8.0, Vitality = 20.0, },
	{ TaskID = 30006.0, TaskType = 3.0, Title = '悬赏：宝石合成', Target = '合成1次橙品质宝石', TaskConfigure = {kind=2.0, count=1, level=5}, Exp = 4200.0, Reward = {{2.0,10000}}, RequiredLevel = 40.0, EventType = 4.0, OperateQueues = 8.0, Vitality = 20.0, },
	{ TaskID = 30007.0, TaskType = 3.0, Title = '悬赏：装备锻造', Target = '完成1次锻造', TaskConfigure = {kind=1.0, count=1}, Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 6.0, OperateQueues = 10.0, Vitality = 20.0, },
	{ TaskID = 30008.0, TaskType = 3.0, Title = '悬赏：装备锻造', Target = '锻造任意30级装备1个', TaskConfigure = {kind=2.0, level=30, count=1}, Exp = 2600.0, Reward = {{2.0,9000}}, RequiredLevel = 35.0, EventType = 6.0, OperateQueues = 11.0, Vitality = 20.0, },
	{ TaskID = 30009.0, TaskType = 3.0, Title = '悬赏：装备锻造', Target = '锻造任意40级装备1个', TaskConfigure = {kind=2.0, level=40, count=1}, Exp = 5000.0, Reward = {{2.0,10000}}, RequiredLevel = 42.0, EventType = 6.0, OperateQueues = 11.0, Vitality = 20.0, },
	{ TaskID = 30010.0, TaskType = 3.0, Title = '悬赏：装备锻造', Target = '锻造任意50级装备1个', TaskConfigure = {kind=2.0, level=50, count=1}, Exp = 10800.0, Reward = {{2.0,12000}}, RequiredLevel = 50.0, EventType = 6.0, OperateQueues = 11.0, Vitality = 20.0, },
	{ TaskID = 30011.0, TaskType = 3.0, Title = '悬赏：结交好友', Target = '赠送礼物5次', TaskConfigure = {count=5.0}, Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 29.0, OperateQueues = 142.0, Vitality = 20.0, },
	{ TaskID = 30012.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成主线任务2次', TaskConfigure = {taskTp=1.0, count=2} , Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30013.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成支线任务2次', TaskConfigure = {taskTp=2.0, count=2} , Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30014.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成每日任务2次', TaskConfigure = {taskTp=4.0, count=2} , Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30015.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成家族任务1次', TaskConfigure = {taskTp=5.0, count=1} , Exp = 400.0, Reward = {{2.0,5500}}, RequiredLevel = 18.0, EventType = 32.0, OperateQueues = 145.0, Vitality = 20.0, },
	{ TaskID = 30016.0, TaskType = 3.0, Title = '悬赏：升级境界', Target = '升级5次境界丹', TaskConfigure = {kind=1.0, count=5} , Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 7.0, OperateQueues = 12.0, Vitality = 20.0, },
	{ TaskID = 30017.0, TaskType = 3.0, Title = '悬赏：战灵升级', Target = '给战灵喂食3次', TaskConfigure = {count=3.0}, Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 15.0, OperateQueues = 22.0, Vitality = 20.0, },
	{ TaskID = 30018.0, TaskType = 3.0, Title = '悬赏：美人亲密', Target = '与美人亲密5次', TaskConfigure = {count=1.0}, Exp = 400.0, Reward = {{2.0,5000}}, RequiredLevel = 16.0, EventType = 12.0, OperateQueues = 18.0, Vitality = 20.0, },
	{ TaskID = 30019.0, TaskType = 3.0, Title = '悬赏：好友酒坊', Target = '卖酒3次', TaskConfigure = {count=1.0} , Exp = 400.0, Reward = {{2.0,5500}}, RequiredLevel = 19.0, EventType = 33.0, OperateQueues = 146.0, Vitality = 20.0, },
	{ TaskID = 30020.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀红毛野猪1次', TaskConfigure = {kind=1.0, copyId=10002, count=1}, Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 1.0, OperateQueues = 120.0, Vitality = 20.0, },
	{ TaskID = 30021.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀白毛大熊1次', TaskConfigure = {kind=1.0, copyId=10003, count=1}, Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 1.0, OperateQueues = 121.0, Vitality = 20.0, },
	{ TaskID = 30022.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀黄风怪1次', TaskConfigure = {kind=1.0, copyId=10007, count=1}, Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 1.0, OperateQueues = 122.0, Vitality = 20.0, },
	{ TaskID = 30023.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀毒娘子1次', TaskConfigure = {kind=1.0, copyId=10021, count=1}, Exp = 200.0, Reward = {{2.0,5000}}, RequiredLevel = 15.0, EventType = 1.0, OperateQueues = 123.0, Vitality = 20.0, },
	{ TaskID = 30024.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀骷髅王1次', TaskConfigure = {kind=1.0, copyId=10041, count=1}, Exp = 1000.0, Reward = {{2.0,7000}}, RequiredLevel = 26.0, EventType = 1.0, OperateQueues = 124.0, Vitality = 20.0, },
	{ TaskID = 30025.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀阎王1次', TaskConfigure = {kind=1.0, copyId=10049, count=1}, Exp = 1000.0, Reward = {{2.0,7000}}, RequiredLevel = 26.0, EventType = 1.0, OperateQueues = 125.0, Vitality = 20.0, },
	{ TaskID = 30026.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀判官1次', TaskConfigure = {kind=1.0, copyId=10047, count=1}, Exp = 1000.0, Reward = {{2.0,7000}}, RequiredLevel = 26.0, EventType = 1.0, OperateQueues = 126.0, Vitality = 20.0, },
	{ TaskID = 30027.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀蚩尤1次', TaskConfigure = {kind=1.0, copyId=10076, count=1}, Exp = 6800.0, Reward = {{2.0,11000}}, RequiredLevel = 45.0, EventType = 1.0, OperateQueues = 127.0, Vitality = 20.0, },
	{ TaskID = 30028.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀妲己1次', TaskConfigure = {kind=1.0, copyId=10066, count=1}, Exp = 3400.0, Reward = {{2.0,9500}}, RequiredLevel = 38.0, EventType = 1.0, OperateQueues = 128.0, Vitality = 20.0, },
	{ TaskID = 30029.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀饕餮1次', TaskConfigure = {kind=1.0, copyId=603, count=1}, Exp = 8200.0, Reward = {{2.0,11000}}, RequiredLevel = 47.0, EventType = 1.0, OperateQueues = 129.0, Vitality = 20.0, },
	{ TaskID = 30030.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀穷奇王1次', TaskConfigure = {kind=1.0, copyId=10053, count=1}, Exp = 1800.0, Reward = {{2.0,8000}}, RequiredLevel = 32.0, EventType = 1.0, OperateQueues = 130.0, Vitality = 20.0, },
	{ TaskID = 30031.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀摩罗1次', TaskConfigure = {kind=1.0, copyId=10054, count=1}, Exp = 1800.0, Reward = {{2.0,8000}}, RequiredLevel = 32.0, EventType = 1.0, OperateQueues = 131.0, Vitality = 20.0, },
	{ TaskID = 30032.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀魔僧1次', TaskConfigure = {kind=1.0, copyId=10015, count=1}, Exp = 200.0, Reward = {{2.0,4000}}, RequiredLevel = 10.0, EventType = 1.0, OperateQueues = 132.0, Vitality = 20.0, },
	{ TaskID = 30033.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀浊狼1次', TaskConfigure = {kind=1.0, copyId=10062, count=1}, Exp = 3400.0, Reward = {{2.0,9500}}, RequiredLevel = 38.0, EventType = 1.0, OperateQueues = 133.0, Vitality = 20.0, },
	{ TaskID = 30034.0, TaskType = 3.0, Title = '悬赏：击杀boss', Target = '击杀牛魔王1次', TaskConfigure = {kind=1.0, copyId=10038, count=1}, Exp = 600.0, Reward = {{2.0,6000}}, RequiredLevel = 20.0, EventType = 1.0, OperateQueues = 134.0, Vitality = 20.0, },
	{ TaskID = 30035.0, TaskType = 3.0, Title = '悬赏：完美通关', Target = '取得1个5星关卡评价', TaskConfigure = {kind=3.0,  star=5, count=1}, Exp = 600.0, Reward = {{2.0,6000}}, RequiredLevel = 20.0, EventType = 1.0, OperateQueues = 3.0, Vitality = 20.0, },
	{ TaskID = 30036.0, TaskType = 3.0, Title = '悬赏：结交好友', Target = '赠送礼物5次', TaskConfigure = {count=5.0}, Exp = 600.0, Reward = {{2.0,6000}}, RequiredLevel = 20.0, EventType = 29.0, OperateQueues = 142.0, Vitality = 20.0, },
	{ TaskID = 30037.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成主线任务3次', TaskConfigure = {taskTp=1.0, count=3} , Exp = 600.0, Reward = {{2.0,6000}}, RequiredLevel = 20.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30038.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成支线任务3次', TaskConfigure = {taskTp=2.0, count=3} , Exp = 600.0, Reward = {{2.0,6000}}, RequiredLevel = 20.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30039.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成每日任务3次', TaskConfigure = {taskTp=4.0, count=3} , Exp = 600.0, Reward = {{2.0,6000}}, RequiredLevel = 20.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30040.0, TaskType = 3.0, Title = '悬赏：升级境界', Target = '升级5次境界丹', TaskConfigure = {kind=1.0, count=5} , Exp = 600.0, Reward = {{2.0,6000}}, RequiredLevel = 20.0, EventType = 7.0, OperateQueues = 12.0, Vitality = 20.0, },
	{ TaskID = 30041.0, TaskType = 3.0, Title = '悬赏：战灵升级', Target = '给战灵喂食3次', TaskConfigure = {count=3.0}, Exp = 600.0, Reward = {{2.0,6000}}, RequiredLevel = 20.0, EventType = 15.0, OperateQueues = 22.0, Vitality = 20.0, },
	{ TaskID = 30042.0, TaskType = 3.0, Title = '悬赏：美人亲密', Target = '与美人亲密5次', TaskConfigure = {count=1.0}, Exp = 1000.0, Reward = {{2.0,7000}}, RequiredLevel = 26.0, EventType = 12.0, OperateQueues = 18.0, Vitality = 20.0, },
	{ TaskID = 30043.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成家族任务2次', TaskConfigure = {taskTp=5.0, count=2} , Exp = 1200.0, Reward = {{2.0,7500}}, RequiredLevel = 28.0, EventType = 32.0, OperateQueues = 145.0, Vitality = 20.0, },
	{ TaskID = 30044.0, TaskType = 3.0, Title = '悬赏：好友酒坊', Target = '卖酒3次', TaskConfigure = {count=1.0} , Exp = 1400.0, Reward = {{2.0,7500}}, RequiredLevel = 29.0, EventType = 33.0, OperateQueues = 146.0, Vitality = 20.0, },
	{ TaskID = 30045.0, TaskType = 3.0, Title = '悬赏：完美通关', Target = '取得1个5星关卡评价', TaskConfigure = {kind=3.0,  star=5, count=1}, Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 1.0, OperateQueues = 3.0, Vitality = 20.0, },
	{ TaskID = 30046.0, TaskType = 3.0, Title = '悬赏：结交好友', Target = '赠送礼物5次', TaskConfigure = {count=5.0}, Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 29.0, OperateQueues = 142.0, Vitality = 20.0, },
	{ TaskID = 30047.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成主线任务3次', TaskConfigure = {taskTp=1.0, count=3} , Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30048.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成支线任务3次', TaskConfigure = {taskTp=2.0, count=3} , Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30049.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成每日任务3次', TaskConfigure = {taskTp=4.0, count=3} , Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30050.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成家族任务2次', TaskConfigure = {taskTp=5.0, count=2} , Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 32.0, OperateQueues = 145.0, Vitality = 20.0, },
	{ TaskID = 30051.0, TaskType = 3.0, Title = '悬赏：升级境界', Target = '升级5次境界丹', TaskConfigure = {kind=1.0, count=5} , Exp = 1600.0, Reward = {{2.0,8000}}, RequiredLevel = 30.0, EventType = 7.0, OperateQueues = 12.0, Vitality = 20.0, },
	{ TaskID = 30052.0, TaskType = 3.0, Title = '悬赏：战灵升级', Target = '给战灵喂食3次', TaskConfigure = {count=3.0}, Exp = 2800.0, Reward = {{2.0,9000}}, RequiredLevel = 36.0, EventType = 15.0, OperateQueues = 22.0, Vitality = 20.0, },
	{ TaskID = 30053.0, TaskType = 3.0, Title = '悬赏：美人亲密', Target = '与美人亲密5次', TaskConfigure = {count=1.0}, Exp = 3400.0, Reward = {{2.0,9500}}, RequiredLevel = 38.0, EventType = 12.0, OperateQueues = 18.0, Vitality = 20.0, },
	{ TaskID = 30054.0, TaskType = 3.0, Title = '悬赏：好友酒坊', Target = '卖酒3次', TaskConfigure = {count=1.0} , Exp = 3800.0, Reward = {{2.0,9500}}, RequiredLevel = 39.0, EventType = 33.0, OperateQueues = 146.0, Vitality = 20.0, },
	{ TaskID = 30055.0, TaskType = 3.0, Title = '悬赏：完美通关', Target = '取得1个5星关卡评价', TaskConfigure = {kind=3.0,  star=5, count=1}, Exp = 4200.0, Reward = {{2.0,10000}}, RequiredLevel = 40.0, EventType = 1.0, OperateQueues = 3.0, Vitality = 20.0, },
	{ TaskID = 30056.0, TaskType = 3.0, Title = '悬赏：结交好友', Target = '赠送礼物5次', TaskConfigure = {count=5.0}, Exp = 4200.0, Reward = {{2.0,10000}}, RequiredLevel = 40.0, EventType = 29.0, OperateQueues = 142.0, Vitality = 20.0, },
	{ TaskID = 30057.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成主线任务3次', TaskConfigure = {taskTp=1.0, count=3} , Exp = 4200.0, Reward = {{2.0,10000}}, RequiredLevel = 40.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30058.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成支线任务3次', TaskConfigure = {taskTp=2.0, count=3} , Exp = 4200.0, Reward = {{2.0,10000}}, RequiredLevel = 40.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30059.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成每日任务3次', TaskConfigure = {taskTp=4.0, count=3} , Exp = 4200.0, Reward = {{2.0,10000}}, RequiredLevel = 40.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30060.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成家族任务2次', TaskConfigure = {taskTp=5.0, count=2} , Exp = 4200.0, Reward = {{2.0,10000}}, RequiredLevel = 40.0, EventType = 32.0, OperateQueues = 145.0, Vitality = 20.0, },
	{ TaskID = 30061.0, TaskType = 3.0, Title = '悬赏：升级境界', Target = '升级5次境界丹', TaskConfigure = {kind=1.0, count=5} , Exp = 4200.0, Reward = {{2.0,10000}}, RequiredLevel = 40.0, EventType = 7.0, OperateQueues = 12.0, Vitality = 20.0, },
	{ TaskID = 30062.0, TaskType = 3.0, Title = '悬赏：战灵升级', Target = '给战灵喂食3次', TaskConfigure = {count=3.0}, Exp = 7400.0, Reward = {{2.0,11000}}, RequiredLevel = 46.0, EventType = 15.0, OperateQueues = 22.0, Vitality = 20.0, },
	{ TaskID = 30063.0, TaskType = 3.0, Title = '悬赏：美人亲密', Target = '与美人亲密5次', TaskConfigure = {count=1.0}, Exp = 9000.0, Reward = {{2.0,11500}}, RequiredLevel = 48.0, EventType = 12.0, OperateQueues = 18.0, Vitality = 20.0, },
	{ TaskID = 30064.0, TaskType = 3.0, Title = '悬赏：好友酒坊', Target = '卖酒3次', TaskConfigure = {count=1.0} , Exp = 9800.0, Reward = {{2.0,11500}}, RequiredLevel = 49.0, EventType = 33.0, OperateQueues = 146.0, Vitality = 20.0, },
	{ TaskID = 30065.0, TaskType = 3.0, Title = '悬赏：完美通关', Target = '取得1个5星关卡评价', TaskConfigure = {kind=3.0,  star=5, count=1}, Exp = 10800.0, Reward = {{2.0,12000}}, RequiredLevel = 50.0, EventType = 1.0, OperateQueues = 3.0, Vitality = 20.0, },
	{ TaskID = 30066.0, TaskType = 3.0, Title = '悬赏：结交好友', Target = '赠送礼物5次', TaskConfigure = {count=5.0}, Exp = 10800.0, Reward = {{2.0,12000}}, RequiredLevel = 50.0, EventType = 29.0, OperateQueues = 142.0, Vitality = 20.0, },
	{ TaskID = 30067.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成主线任务3次', TaskConfigure = {taskTp=1.0, count=3} , Exp = 10800.0, Reward = {{2.0,12000}}, RequiredLevel = 50.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30068.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成支线任务3次', TaskConfigure = {taskTp=2.0, count=3} , Exp = 10800.0, Reward = {{2.0,12000}}, RequiredLevel = 50.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30069.0, TaskType = 3.0, Title = '悬赏：清理任务', Target = '完成每日任务3次', TaskConfigure = {taskTp=4.0, count=3} , Exp = 10800.0, Reward = {{2.0,12000}}, RequiredLevel = 50.0, EventType = 32.0, OperateQueues = 144.0, Vitality = 20.0, },
	{ TaskID = 30070.0, TaskType = 3.0, Title = '悬赏：升级境界', Target = '升级5次境界丹', TaskConfigure = {kind=1.0, count=5} , Exp = 10800.0, Reward = {{2.0,12000}}, RequiredLevel = 50.0, EventType = 7.0, OperateQueues = 12.0, Vitality = 20.0, },
	{ TaskID = 30071.0, TaskType = 3.0, Title = '悬赏：战灵升级', Target = '给战灵喂食3次', TaskConfigure = {count=3.0}, Exp = 10800.0, Reward = {{2.0,12000}}, RequiredLevel = 50.0, EventType = 15.0, OperateQueues = 22.0, Vitality = 20.0, },
}
