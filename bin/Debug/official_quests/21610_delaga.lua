
-- [±â»ç´Ü¼­±â°ü]µ¨¶ó°¡ 

-- EVENT ´Â 100¹ø ÀÌ»ó ºÎÅÍ »ç¿ëÇÏ¶ó

-- UID : ¼­¹ö¿¡¼­ Á¦°øÇÏ´Â À¯Àú¹øÈ£
-- EVENT : ¼­¹ö¿¡¼­ Á¦°øÇÏ´Â Äù½ºÆ® ¹øÈ£
-- STEP : ¼­¹ö¿¡¼­ Á¦°øÇÏ´Â Äù½ºÆ® ³»ºÎ ´Ü°è

-- À§ÀÇ ¼¼°¡Áö ÆÄ¶ó¸ŞÅ¸´Â ·ç¾Æ ½ÇÇà½Ã Ç×»ó Àü¿ªº¯¼ö·Î Á¦°ø?

-- Áö¿ªº¯¼ö ¼±¾ğ...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 21610
local savenum = -1


-- [±â»ç´Ü¼­±â°ü]µ¨¶ó°¡  Å¬¸¯½Ã Äù½ºÆ® Ã¼Å©  


if EVENT == 240 then
ShowNpcEffect(UID, 31033);
	--SelectMsg(UID, 2, -1, 4470, NPC, 4200, 166, 4199, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);        
   SelectMsg(UID, 3, savenum, 4150, NPC, 4150, 100, 4151, 360, 4155, 370, 4156, 380, 4154, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 241 then
	Ret = 1;
end

-----------------------------------------------------------
-- ±â»ç´Ü ½Â°İ ½ÃÀÛ 
-----------------------------------------------------------
local Knight
local ClanGrade
local Chief

if EVENT == 100 then
	SelectMsg(UID, 3, savenum, 4150, NPC, 4333, 280, 4334, 110, 4335, 120, 4154, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

--## ACRICATED START
if EVENT == 110 then
Knight = CheckKnight(UID)
print(Knight," : Knight");
    if Knight == 2 then -- Å¬·£ 
    ClanGrade = CheckClanGrade(UID)
print(ClanGrade," : ClanGrade");
	if ClanGrade == 1 then -- Å¬·£ 3µî±Ş ÀÌ»ó
        --Chief = CheckChief(UID)
            --f Chief == 1 then -- Å¬·£´ÜÀåÀÏ¶§ 
                SelectMsg(UID, 3, savenum, 6393, NPC, 4157, 111, 4158, 114, 4159, 115, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            --else-- Å¬·£´ÜÀå ¾Æ´Ò¶§
            --SelectMsg(UID, 2, savenum, 6384, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            --end
        else-- Å¬·£ 3µî±Ş ÀÌ»ó ¾Æ´Ò¶§
        SelectMsg(UID, 2, savenum, 6385, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    else-- Å¬·£ ¾Æ´Ò¶§
    SelectMsg(UID, 2, savenum, 6386, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 111 then
    SelectMsg(UID, 2, savenum, 6387, NPC, 4160, 112, 27, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 112 then
    SelectMsg(UID, 2, savenum, 6388, NPC, 4160, 113, 27, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 113 then
    SelectMsg(UID, 2, savenum, 6389, NPC, 27, 241, -1, -1,  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 114 then
    SelectMsg(UID, 3, 953, 6390, NPC, 4161, 116, 4162, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 115 then
-- ¸í·É¾î ³ª¿À¸é ±×°É·Î ¼öÁ¤ÇØ¾ß µÉºÎºĞ
	ZoneChangeClan(UID, 54, 150, 150) -- ¼öÁ¤ÇßÀ½
end

if EVENT == 116 then
    ItemA = HowmuchItem(UID, 900000000);  --³ë¾Æ
    ItemB = HowmuchItem(UID, 389221000);  -- ÄËÅ¸¸ñ 
    if ItemA < 10000000 then -- ³ë¾Æ
    SelectMsg(UID, 2, savenum, 6391, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif ItemB == 0 then
    SelectMsg(UID, 2, savenum, 6392, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- ok
	RobItem(UID,389221000)
    RunExchange(UID, 467);
    PromoteKnight(UID,3)
    end
end
--## ACRICATED END

--## ROYAL START
if EVENT == 120 then
 Knight = CheckKnight(UID)
    if Knight == 2 then -- Å¬·£ 
       -- Chief = CheckChief(UID)
            --if Chief == 1 then -- Å¬·£´ÜÀåÀÏ¶§ 
                SelectMsg(UID, 3, savenum, 6392, NPC, 4157, 121, 4158, 124, 4159, 125, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
           -- else-- Å¬·£´ÜÀå ¾Æ´Ò¶§
           -- SelectMsg(UID, 2, savenum, 6393, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            --end
    else-- Å¬·£ ¾Æ´Ò¶§
    SelectMsg(UID, 2, savenum, 6395, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 121 then
    SelectMsg(UID, 2, savenum, 6396, NPC, 4160, 122, 27, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 122 then
    SelectMsg(UID, 2, savenum, 6397, NPC, 4160, 123, 27, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 123 then
    SelectMsg(UID, 2, savenum, 6398, NPC, 27, 241, -1, -1,  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 124 then
    SelectMsg(UID, 3, 954, 6399, NPC, 4161, 126, 4162, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 125 then
-- ¸í·É¾î ³ª¿À¸é ±×°É·Î ¼öÁ¤ÇØ¾ß µÉºÎºĞ
	ZoneClanChange(UID, 94, 110, 20) -- ¼öÁ¤ÇßÀ½
end

if EVENT == 126 then
    ItemA = HowmuchItem(UID, 900000000);  --³ë¾Æ
    ItemB = HowmuchItem(UID, 389222000);  -- ÄËÅ¸¸ñ 
    if ItemA < 100000000 then -- ³ë¾Æ
    SelectMsg(UID, 2, savenum, 6400, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif ItemB == 0 then
    SelectMsg(UID, 2, savenum, 6401, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- ok
	RobItem(UID,389222000)
    RunExchange(UID, 467);
    PromoteKnight(UID,8)
    end
end
--## ROYAL END

if EVENT == 280 then
Knight = CheckKnight(UID)
print(Knight," : Knight");
    if Knight == 1 then -- Å¬·£ 
    ClanGrade = CheckClanGrade(UID)
	print(ClanGrade," : ClanGrade");
        if ClanGrade < 4 then -- Å¬·£ 3µî±Ş ÀÌ»ó
        --Chief = CheckChief(UID)
		print(Chief," : Chief");
            --if Chief == 1 then -- Å¬·£´ÜÀåÀÏ¶§ 
                SelectMsg(UID, 3, savenum, 4165, NPC, 4157, 281, 4158, 286, 4159, 285, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            --else-- Å¬·£´ÜÀå ¾Æ´Ò¶§
            --SelectMsg(UID, 2, savenum, 4164, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            --end
        else-- Å¬·£ 3µî±Ş ÀÌ»ó ¾Æ´Ò¶§
        SelectMsg(UID, 2, savenum, 4163, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    else-- Å¬·£ ¾Æ´Ò¶§
    SelectMsg(UID, 2, savenum, 4162, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 281 then
    SelectMsg(UID, 2, savenum, 4166, NPC, 4160, 282, 27, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 282 then
    SelectMsg(UID, 2, savenum, 4167, NPC, 4160, 283, 27, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 283 then
    SelectMsg(UID, 2, savenum, 4168, NPC, 27, 241, -1, -1,  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 285 then
-- ¸í·É¾î ³ª¿À¸é ±×°É·Î ¼öÁ¤ÇØ¾ß µÉºÎºĞ
ZoneClanChange(UID, 54, 150, 150) -- ¼öÁ¤ÇßÀ½
end


local ItemA
local ItemB


if EVENT == 286 then
    SelectMsg(UID, 4, 415, 4172, NPC, 4161, 287, 4162, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 287 then
    ItemA = HowmuchItem(UID, 900000000);  --³ë¾Æ
    ItemB = HowmuchItem(UID, 910045000);  -- ÄËÅ¸¸ñ 
    if ItemA < 10000000 then -- ³ë¾Æ
    SelectMsg(UID, 2, savenum, 4170, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif ItemB == 0 then
    SelectMsg(UID, 2, savenum, 4171, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- ok
	RobItem(UID,910045000)
    RunExchange(UID, 467);
    PromoteKnight(UID,2)
    end
end

-----------------------------------------------------------
-- ±â»ç´Ü ½Â°İ ³¡ 
-----------------------------------------------------------


local Loyalty
-----------------------------------------------------------
-- ±âº» ±¹°¡ ±â¿©µµ ½ÃÀÛ
-----------------------------------------------------------

if EVENT == 360 then
Loyalty = CheckLoyalty(UID)
	  if  Loyalty > 100  then -- ±â¿©µµ°¡ 100ÀÌ»óÀÏ¶§ 
	   SelectMsg(UID, 2, savenum, 4155, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	  else-- ±â¿©µµ°¡ 100ÀÌÇÏ·Î ÃæÀü °¡´ÉÇÒ¶§ 
      SelectMsg(UID, 2, savenum, 4156, NPC, 4152, 361, 4153, 363, 4154, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	  end
end

if EVENT == 361 then --500ÃæÀü 
ITEM_COUNT = HowmuchItem(UID, 900000000);
    if ITEM_COUNT < 1500000 then --³ë¾Æ°¡ 1500000¾øÀ»¶§
    SelectMsg(UID, 2, savenum, 4160, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	  else-- ±â¿©µµ ÃæÀü °¡´ÉÇÒ¶§ 
    SelectMsg(UID, 4, 413, 4157, NPC, 22, 465, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end


if EVENT == 362 then --¼ö¶ô 
    RunExchange(UID, 465);
 end

if EVENT == 363 then --100ÃæÀü 
ITEM_COUNT = HowmuchItem(UID, 900000000);
    if ITEM_COUNT < 350000 then --³ë¾Æ°¡ 350000¾øÀ»¶§
    SelectMsg(UID, 2, savenum, 4161, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	  else-- ±â¿©µµ ÃæÀü °¡´ÉÇÒ¶§ 
    SelectMsg(UID, 4, 414, 4159, NPC, 22, 466, 23, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 364 then --¼ö¶ô 
    CheckExchange(UID, 466)
 end
if EVENT == 465 then --¼ö¶ô 
	GiveLoyalty(UID,500)
	GoldLose(UID,1500000)
 end
 if EVENT == 466 then --¼ö¶ô 
    GoldLose(UID,350000)
	GiveLoyalty(UID,100)
 end
-----------------------------------------------------------
-- ±âº» ±¹°¡ ±â¿©µµ ³¡ ?
-----------------------------------------------------------



-- 0: ¸ñ·Ï¿¡ ¾øÀ½
-- 1: ³ìºÀÁö±Ş
-- 2: ÀÌ¹Ì ¹ŞÀ½

local Reward

-----------------------------------------------------------
-- ¿ù°£ ±â»ç ³ìºÀ ½ÃÀÛ
-----------------------------------------------------------

if EVENT == 370 then
Reward = RequestPersonalRankReward(UID)
    if  Reward == 0 then -- ¸ñ·Ï¿¡ ¾øÀ½
    SelectMsg(UID, 2, savenum, 4153, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif Reward == 2 then-- ÀÌ¹Ì ¹ŞÀ½
    SelectMsg(UID, 2, savenum, 4154, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- ³ìºÀÁö±Ş
    Ret = 1; 
    end
end

-----------------------------------------------------------
-- ¿ù°£ ±â»ç ³ìºÀ ³¡ ?
-----------------------------------------------------------

-----------------------------------------------------------
-- Àü¸®Ç° Àü´Ş ½ÃÀÛ
-----------------------------------------------------------

if EVENT == 470 then
Reward = MonthPersonalRankRequestReward(UID)
    if  Reward == 0 then -- ¸ñ·Ï¿¡ ¾øÀ½
    SelectMsg(UID, 2, savenum, 4802, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif Reward == 2 then-- ÀÌ¹Ì ¹ŞÀ½
    SelectMsg(UID, 2, savenum, 4803, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- ³ìºÀÁö±Ş
    Ret = 1; 
    end
end

-----------------------------------------------------------
-- Àü¸®Ç° Àü´Ş ³¡ 
-----------------------------------------------------------


-----------------------------------------------------------
-- ±¹°¡ ±â»çÀÇ ³ìºÀ ½ÃÀÛ
-----------------------------------------------------------
local Reward;

if EVENT == 380 then
Reward = RequestReward(UID)
    if  Reward == 0 then -- ¸ñ·Ï¿¡ ¾øÀ½
    SelectMsg(UID, 2, savenum, 4151, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif Reward == 2 then-- ÀÌ¹Ì ¹ŞÀ½
    SelectMsg(UID, 2, savenum, 4152, NPC, 10, 241, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- ³ìºÀÁö±Ş
    Ret = 1; 
    end
end
-----------------------------------------------------------
-- ±¹°¡ ±â»çÀÇ ³ìºÀ ³¡ ?
-----------------------------------------------------------

return Ret;
