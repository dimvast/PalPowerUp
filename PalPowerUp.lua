localPath = scriptPath()
setImagePath(localPath .. "images")
Settings:setScriptDimension(true, 1920)
Settings:setCompareDimension(true, 1920)
commonLib = loadstring(httpGet("https://raw.githubusercontent.com/AnkuLua/commonLib/master/commonLib.lua"))()

        --- This checks the version number on github to see if an update is needed ---
getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/Paladiex/PalPowerUp/master/version.lua"))
latestVersion = getNewestVersion()
currentVersion = dofile(localPath .."version.lua")
print (currentVersion)
print (latestVersion)
if currentVersion == latestVersion then
    toast ("You are running the most current version!")
else
    httpDownload("https://raw.githubusercontent.com/Paladiex/PalPowerUp/master/version.lua", localPath .."version.lua")
    httpDownload("https://raw.githubusercontent.com/Paladiex/PalPowerUp/master/PalPowerUp.lua", localPath .."PalPowerUp.lua")
    httpDownload("https://raw.githubusercontent.com/Paladiex/PalPowerUp/master/imageupdater.lua", localPath .."imageupdater.lua")
    scriptExit("You have Updated PalPowerUp bot!")
end

--- These are the regions at the "Rune Power-up" screen ---
mainStatRegion = Region(1230, 350, 90, 50)
subStat1Region = Region(1230, 410, 90, 50)
subStat2Region = Region(1230, 460, 90, 50)
subStat3Region = Region(1230, 510, 90, 50)
subStat4Region = Region(1230, 560, 90, 50)
subStat5Region = Region(1230, 610, 90, 50)
mainStatValueRegion = Region(1330, 350, 200, 50)
subStatValue1Region = Region(1330, 410, 200, 50)
subStatValue2Region = Region(1330, 460, 200, 50)
subStatValue3Region = Region(1330, 510, 200, 50)
subStatValue4Region = Region(1330, 560, 200, 50)
subStatValue5Region = Region(1330, 610, 200, 50)
runeRankRegion = Region(660, 310, 160, 30)
runeLvlRegion = Region(770, 770, 130, 60)


--- These are the possible Rune Rank Images ---
starRuneImages = {  "6starRunePowerUp.png", "5starRunePowerUp.png", "4starRunePowerUp.png",
                    "3starRunePowerUp.png", "2starRunePowerUp.png", "1starRunePowerUp.png"}

--- These are the possible Rune Level Images ---
sixStarImages = {   "6starLvl0.png", "6starLvl1.png", "6starLvl2.png", "6starLvl3.png",
                    "6starLvl4.png", "6starLvl5.png", "6starLvl6.png", "6starLvl7.png",
                    "6starLvl8.png", "6starLvl9.png", "6starLvl10.png", "6starLvl11.png",
                    "6starLvl12.png", "6starLvl13.png", "6starLvl14.png", "6starLvl15.png"}
fiveStarImages ={   "5starLvl0.png", "5starLvl1.png", "5starLvl2.png", "5starLvl3.png",
                    "5starLvl4.png", "5starLvl5.png", "5starLvl6.png", "5starLvl7.png",
                    "5starLvl8.png", "5starLvl9.png", "5starLvl10.png", "5starLvl11.png",
                    "5starLvl12.png", "5starLvl13.png", "5starLvl14.png", "5starLvl15.png" }
fourStarImages ={   "4starLvl0.png", "4starLvl1.png", "4starLvl2.png", "4starLvl3.png",
                    "4starLvl4.png", "4starLvl5.png", "4starLvl6.png", "4starLvl7.png",
                    "4starLvl8.png", "4starLvl9.png", "4starLvl10.png", "4starLvl11.png",
                    "4starLvl12.png", "4starLvl13.png", "4starLvl14.png", "4starLvl15.png" }
threeStarImages ={   "3starLvl0.png", "3starLvl1.png", "3starLvl2.png", "3starLvl3.png",
                    "3starLvl4.png", "3starLvl5.png", "3starLvl6.png", "3starLvl7.png",
                    "3starLvl8.png", "3starLvl9.png", "3starLvl10.png", "3starLvl11.png",
                    "3starLvl12.png", "3starLvl13.png", "3starLvl14.png", "3starLvl15.png" }
twoStarImages ={   "2starLvl0.png", "2starLvl1.png", "2starLvl2.png", "2starLvl3.png",
                    "2starLvl4.png", "2starLvl5.png", "2starLvl6.png", "2starLvl7.png",
                    "2starLvl8.png", "2starLvl9.png", "2starLvl10.png", "2starLvl11.png",
                    "2starLvl12.png", "2starLvl13.png", "2starLvl14.png", "2starLvl15.png" }
oneStarImages ={   "1starLvl0.png", "1starLvl1.png", "1starLvl2.png", "1starLvl3.png",
                    "1starLvl4.png", "1starLvl5.png", "1starLvl6.png", "1starLvl7.png",
                    "1starLvl8.png", "1starLvl9.png", "1starLvl10.png", "1starLvl11.png",
                    "1starLvl12.png", "1starLvl13.png", "1starLvl14.png", "1starLvl15.png" }

--- These are the possible Mainstat Images ---
mainStatImages = {  "hpMain.png", "defMain.png", "atkMain.png", "spdMain.png", "criRateMain.png",
                    "criDmgMain.png", "resMain.png", "accMain.png"}

--- These are the possible Substat Images ---
subStatImages = {   "hpSub.png", "defSub.png", "atkSub.png", "spdSub.png", "criRateSub.png",
                    "criDmgSub.png", "resSub.png", "accSub.png"}

--- These are the Stats/Variables we want the bot to find ---
mainStat = "Unknown"
mainStatValue = "Unknown"
subStat1 = "Unknown"
subStatValue1 = "Unknown"
subStat2 = "Unknown"
subStatValue2 = "Unknown"
subStat3 = "Unknown"
subStatValue3 = "Unknown"
subStat4 = "Unknown"
subStatValue4 = "Unknown"

--- This scans the pixels at the location to determine the rarity of the rune ---
function findRuneRarity()
    (Region(645, 315, 195, 195)):highlight()
    local loc = Location(800, 480)
    local r,g,b = getColor(loc)
    if (r == 134 and b == 23 and g == 16) then
        runeRarity = "Legendary"
    elseif (r == 83 and b == 60 and g == 15) then
        runeRarity = "Hero"
    elseif (r == 19 and b == 70 and g == 45) then
        runeRarity = "Rare"
    elseif (r == 29 and b == 27 and g == 57) then
        runeRarity = "Magic"
    elseif (r ==57 and b == 38 and g == 45) then
        runeRarity = "Normal"
    else
        runeRarity = "Unknown"
    end
    (Region(645, 315, 195, 195)):highlight()
    statRegion9:highlight("Rune Rarity: " .. runeRarity)
end

--- This scans the rank/stars of the rune ---
function findRuneRank()
    runeRankRegion:highlight()
    local bestMatchIndex = existsMultiMax(starRuneImages, runeRankRegion)
    if bestMatchIndex == 1 then
        runeRank = 6
    elseif bestMatchIndex == 2 then
        runeRank = 5
    elseif bestMatchIndex == 3 then
        runeRank = 4
    elseif bestMatchIndex == 4 then
        runeRank = 3
    elseif bestMatchIndex == 5 then
        runeRank = 2
    elseif bestMatchIndex == 6 then
        runeRank = 1
    end
    runeRankRegion:highlight()
    statRegion7:highlight("Rune Rank: " .. runeRank)
end

--- This scans the cost to upgrade the rune in order to determine it's level ---
function findRuneLvl()
    runeLvlRegion:highlight()
    if runeRank == 6 then
        local bestMatchIndex = existsMultiMax(sixStarImages, runeLvlRegion)
        runeLvl = (bestMatchIndex - 1)
    end
    if runeRank == 5 then
        local bestMatchIndex = existsMultiMax(fiveStarImages, runeLvlRegion)
        runeLvl = (bestMatchIndex - 1)
    end
    if runeRank == 4 then
        local bestMatchIndex = existsMultiMax(fourStarImages, runeLvlRegion)
        runeLvl = (bestMatchIndex - 1)
    end
    if runeRank == 3 then
        local bestMatchIndex = existsMultiMax(threeStarImages, runeLvlRegion)
        runeLvl = (bestMatchIndex - 1)
    end
    if runeRank == 2 then
        local bestMatchIndex = existsMultiMax(twoStarImages, runeLvlRegion)
        runeLvl = (bestMatchIndex - 1)
    end
    if runeRank == 1 then
        local bestMatchIndex = existsMultiMax(oneStarImages, runeLvlRegion)
        runeLvl = (bestMatchIndex - 1)
    end
    runeLvlRegion:highlight()
    statRegion8:highlight("Rune Lvl: " .. runeLvl)
end

--- This scans each region for a stat, then the stat value ---
function findMainStat()
    mainStatRegion:highlight()
    local bestMatchIndex = existsMultiMax(mainStatImages, mainStatRegion)
    if (bestMatchIndex == 1) then
        if  mainStatValueRegion:exists(Pattern("percentMain.png"):similar(.70)) then
            mainStat = ("HP%")
        else
            mainStat = ("HP")
        end
    end
    if (bestMatchIndex == 2) then
        if  mainStatValueRegion:exists(Pattern("percentMain.png"):similar(.70)) then
            mainStat = ("DEF%")
        else
            mainStat = ("DEF")
        end
    end
    if (bestMatchIndex == 3) then
        if  mainStatValueRegion:exists(Pattern("percentMain.png"):similar(.70)) then
            mainStat = ("ATK%")
        else
            mainStat = ("ATK")
        end
    end
    if (bestMatchIndex == 4) then
        mainStat = ("SPD")
    end
    if (bestMatchIndex == 5) then
        mainStat = ("CRI Rate")
    end
    if (bestMatchIndex == 6) then
        mainStat = ("CRI DMG")
    end
    if (bestMatchIndex == 7) then
        mainStat = ("RES")
    end
    if (bestMatchIndex == 8) then
        mainStat = ("ACC")
    end
    mainStatRegion:highlight()
    statRegion1:highlight("Main Stat: " .. mainStat)
end
function findSubStat1()
    subStat1Region:highlight()
    local bestMatchIndex = existsMultiMax(subStatImages, subStat1Region)
    if (bestMatchIndex == 1) then
        if  subStatValue1Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat1 = ("HP%")
        else
            subStat1 = ("HP")
        end
    end
    if (bestMatchIndex == 2) then
        if  subStatValue1Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat1 = ("DEF%")
        else
            subStat1 = ("DEF")
        end
    end
    if (bestMatchIndex == 3) then
        if  subStatValue1Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat1 = ("ATK%")
        else
            subStat1 = ("ATK")
        end
    end
    if (bestMatchIndex == 4) then
        subStat1 = ("SPD")
    end
    if (bestMatchIndex == 5) then
        subStat1 = ("CRI Rate")
    end
    if (bestMatchIndex == 6) then
        subStat1 = ("CRI DMG")
    end
    if (bestMatchIndex == 7) then
        subStat1 = ("RES")
    end
    if (bestMatchIndex == 8) then
        subStat1 = ("ACC")
    end
    subStat1Region:highlight()
    statRegion2:highlight("Substat 1: " .. subStat1)
end
function findSubStat2()
    subStat2Region:highlight()
    local bestMatchIndex = existsMultiMax(subStatImages, subStat2Region)
    if (bestMatchIndex == 1) then
        if  subStatValue2Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat2 = ("HP%")
        else
            subStat2 = ("HP")
        end
    end
    if (bestMatchIndex == 2) then
        if  subStatValue2Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat2 = ("DEF%")
        else
            subStat2 = ("DEF")
        end
    end
    if (bestMatchIndex == 3) then
        if  subStatValue2Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat2 = ("ATK%")
        else
            subStat2 = ("ATK")
        end
    end
    if (bestMatchIndex == 4) then
        subStat2 = ("SPD")
    end
    if (bestMatchIndex == 5) then
        subStat2 = ("CRI Rate")
    end
    if (bestMatchIndex == 6) then
        subStat2 = ("CRI DMG")
    end
    if (bestMatchIndex == 7) then
        subStat2 = ("RES")
    end
    if (bestMatchIndex == 8) then
        subStat2 = ("ACC")
    end
    subStat2Region:highlight()
    statRegion3:highlight("Substat 2: " .. subStat2)
end
function findSubStat3()
    subStat3Region:highlight()
    local bestMatchIndex = existsMultiMax(subStatImages, subStat3Region)
    if (bestMatchIndex == 1) then
        if  subStatValue3Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat3 = ("HP%")
        else
            subStat3 = ("HP")
        end
    end
    if (bestMatchIndex == 2) then
        if  subStatValue3Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat3 = ("DEF%")
        else
            subStat3 = ("DEF")
        end
    end
    if (bestMatchIndex == 3) then
        if  subStatValue3Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat3 = ("ATK%")
        else
            subStat3 = ("ATK")
        end
    end
    if (bestMatchIndex == 4) then
        subStat3 = ("SPD")
    end
    if (bestMatchIndex == 5) then
        subStat3 = ("CRI Rate")
    end
    if (bestMatchIndex == 6) then
        subStat3 = ("CRI DMG")
    end
    if (bestMatchIndex == 7) then
        subStat3 = ("RES")
    end
    if (bestMatchIndex == 8) then
        subStat3 = ("ACC")
    end
    subStat3Region:highlight()
    statRegion4:highlight("Substat 3: " .. subStat3)
end
function findSubStat4()
    subStat4Region:highlight()
    local bestMatchIndex = existsMultiMax(subStatImages, subStat4Region)
    if (bestMatchIndex == 1) then
        if  subStatValue4Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat4 = ("HP%")
        else
            subStat4 = ("HP")
        end
    end
    if (bestMatchIndex == 2) then
        if  subStatValue4Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat4 = ("DEF%")
        else
            subStat4 = ("DEF")
        end
    end
    if (bestMatchIndex == 3) then
        if  subStatValue4Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat4 = ("ATK%")
        else
            subStat4 = ("ATK")
        end
    end
    if (bestMatchIndex == 4) then
        subStat4 = ("SPD")
    end
    if (bestMatchIndex == 5) then
        subStat4 = ("CRI Rate")
    end
    if (bestMatchIndex == 6) then
        subStat4 = ("CRI DMG")
    end
    if (bestMatchIndex == 7) then
        subStat4 = ("RES")
    end
    if (bestMatchIndex == 8) then
        subStat4 = ("ACC")
    end
    subStat4Region:highlight()
    statRegion5:highlight("Substat 4: " .. subStat4)
end
function findSubStat5()
    subStat5Region:highlight()
    local bestMatchIndex = existsMultiMax(subStatImages, subStat5Region)
    if (bestMatchIndex == 1) then
        if  subStatValue5Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat5 = ("HP%")
        else
            subStat5 = ("HP")
        end
    end
    if (bestMatchIndex == 2) then
        if  subStatValue5Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat5 = ("DEF%")
        else
            subStat5 = ("DEF")
        end
    end
    if (bestMatchIndex == 3) then
        if  subStatValue5Region:exists(Pattern("percentSub.png"):similar(.70)) then
            subStat5 = ("ATK%")
        else
            subStat5 = ("ATK")
        end
    end
    if (bestMatchIndex == 4) then
        subStat5 = ("SPD")
    end
    if (bestMatchIndex == 5) then
        subStat5 = ("CRI Rate")
    end
    if (bestMatchIndex == 6) then
        subStat5 = ("CRI DMG")
    end
    if (bestMatchIndex == 7) then
        subStat5 = ("RES")
    end
    if (bestMatchIndex == 8) then
        subStat5 = ("ACC")
    end
    subStat5Region:highlight()
    statRegion6:highlight("Substat 5: " .. subStat5)
end

--- This is a specified region that displays what the bot thinks it can see ---
statRegion1 = Region(720, 350, 400, 60)
statRegion2 = Region(720, 410, 400, 50)
statRegion3 = Region(720, 460, 400, 50)
statRegion4 = Region(720, 510, 400, 50)
statRegion5 = Region(720, 560, 400, 50)
statRegion6 = Region(720, 610, 400, 50)
statRegion7 = Region(720, 250, 400, 50)
statRegion8 = Region(720, 300, 400, 50)
statRegion9 = Region(720, 200, 400, 50)

--- This calls the functions in order that we posted earlier ---
while true do
    findRuneRarity()
    findRuneRank()
    findRuneLvl()
    findMainStat()
    findSubStat1()
    findSubStat2()
    findSubStat3()
    findSubStat4()
    findSubStat5()
end