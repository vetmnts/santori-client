textures = {
  background = dxCreateTexture("images/hud/background.png"),
  circle = dxCreateTexture("images/hud/circle.png"),
  heart_icon = dxCreateTexture("images/hud/health_icon.png"),
  bar0_oldhud = dxCreateTexture("images/hud/bar0_oldhud.png")
}
tableInfo = {}
tableInfo.uid = 0
bindKey("f7", "down", function()
  if not getElementData(localPlayer, "player:sid") then
    return
  end
  if getElementData(localPlayer, "player:bw") then
    toggleControl("fire", false)
    toggleControl("aim_weapon", false)
    return
  end
  if isEventHandlerAdded("onClientRender", root, renderHud1) or isEventHandlerAdded("onClientRender", root, renderHud2) then
    triggerEvent("radar:onClientHudComponent", localPlayer, "radar", false)
    setElementData(localPlayer, "notshowhud", true)
    setPlayerHudComponentVisible("radar", false)
    showChat(false)
    enableHud(false)
  else
    triggerEvent("radar:onClientHudComponent", localPlayer, "radar", true)
    setPlayerHudComponentVisible("radar", true)
    setElementData(localPlayer, "notshowhud", false)
    showChat(true)
    enableHud(true)
  end
end)
bindKey("f3", "up", function()
  if isCursorShowing() then
    showCursor(false)
  else
    showCursor(true)
  end
end)
setTimer(function()
  _UPVALUE0_ = _UPVALUE1_
  _UPVALUE1_ = 0
  ping = getPlayerPing(localPlayer)
end, 1000, 0)
cpuText = ""
setTimer(function()
  tableInfo.fire_block = getElementData(localPlayer, "fire_block") or false
  tableInfo.strefaDM = getElementData(localPlayer, "player:strefaDM") or false
  tableInfo.faction = getElementData(localPlayer, "player:faction") or false
  tableInfo.admin = getElementData(localPlayer, "player:level") or false
  tableInfo.przestepcza = getElementData(localPlayer, "org:przestepcza") or false
  tableInfo.exp = getElementData(localPlayer, "player:exp")
  tableInfo.lvl = getElementData(localPlayer, "player:lvl")
  tableInfo.maxExpLvl = getElementData(localPlayer, "player:maxExpLvl")
  tableInfo.czyMaSprawdzicFPs = getElementData(localPlayer, "czyMaSprawdzicFPs")
  tableInfo.street = getZoneName(getElementPosition(localPlayer)) or "Nie znaleziono"
  tableInfo.street2 = getZoneName(getElementPosition(localPlayer)) or "Nie znaleziono"
  tableInfo.antykill = getElementData(localPlayer, "admin:antykill")
  if tableInfo.street == "Unknown" then
    tableInfo.street = "Nie znaleziono"
  end
  if tableInfo.street2 == "Unknown" then
    tableInfo.street2 = "Nie znaleziono"
  end
  if tableInfo.settings_ping == 1 then
    if not ping then
      ping = 0
    end
    pingText = "| PING " .. ping .. ""
  else
    pingText = ""
  end
  if tableInfo.settings_packet == 1 then
    if 0 < getNetworkStats().packetlossLastSecond then
      packetText = "| " .. ("%.2f"):format(getNetworkStats().packetlossLastSecond) .. "% UTRATA PAKIET\195\147W"
    else
      packetText = "| " .. math.floor(getNetworkStats().packetlossLastSecond) .. "% UTRATA PAKIET\195\147W"
    end
  else
    packetText = ""
  end
  if tableInfo.settings_cpu == 1 then
    cpuText = "| " .. getCpuUsage() .. "% CPU"
  else
    cpuText = ""
  end
  if tableInfo.antykill then
    godMode = "| GM"
  else
    godMode = ""
  end
  formattedTime = string.format([[
%02d:%02d
%02d.%02d.2025]], getRealTime().hour, getRealTime().minute, getRealTime().monthday, getRealTime().month + 1)
  if dxGetStatus().SettingStreamingVideoMemoryForGTA < 256 then
    triggerServerEvent("evEwenciks_kjhgd5gh", resourceRoot, "kickStreaming", localPlayer, dxGetStatus().SettingStreamingVideoMemoryForGTA)
  end
end, 5000, 0)
function unBugDM()
  if getPlayerWeapon(localPlayer) == 43 then
    toggleControl("aim_weapon", true)
  elseif not tableInfo.fire_block then
    if tableInfo.przestepcza == true or tableInfo.faction ~= false or tableInfo.admin then
      toggleControl("fire", true)
      toggleControl("aim_weapon", true)
    elseif tableInfo.strefaDM == true then
      toggleControl("fire", true)
      toggleControl("aim_weapon", true)
    else
      toggleControl("fire", false)
      toggleControl("aim_weapon", false)
    end
  else
    toggleControl("fire", false)
    toggleControl("aim_weapon", false)
  end
end
addEventHandler("onClientPreRender", root, unBugDM)
function renderHud1()
  if tableInfo.settings_fps == 1 then
    fpsText = "" .. _UPVALUE0_ .. " FPS"
    _UPVALUE1_ = _UPVALUE1_ + 1
    if tableInfo.czyMaSprawdzicFPs then
      setElementData(localPlayer, "player:ileFps", _UPVALUE0_)
    end
  else
    if tableInfo.czyMaSprawdzicFPs then
      _UPVALUE1_ = _UPVALUE1_ + 1
      setElementData(localPlayer, "player:ileFps", _UPVALUE0_)
    end
    fpsText = ""
  end
  dxDrawText(fpsText .. " " .. pingText .. " " .. packetText .. " " .. cpuText, _UPVALUE2_.x, _UPVALUE2_.y + posYfps + 2 / _UPVALUE3_, _UPVALUE2_.x + _UPVALUE2_.w - posXfps + 1 / _UPVALUE3_, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(0, 0, 0, 255), 1 / _UPVALUE3_, font15, "right", "center", false, false, true, false, false)
  dxDrawText(fpsText .. " " .. pingText .. " " .. packetText .. " " .. cpuText, _UPVALUE2_.x, _UPVALUE2_.y + posYfps, _UPVALUE2_.x + _UPVALUE2_.w - posXfps, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, font15, "right", "center", false, false, true, false, false)
  dxDrawText(tableInfo.street2, _UPVALUE4_.x + 392 / _UPVALUE3_, _UPVALUE4_.y - 148 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(0, 0, 0, 255), 1 / _UPVALUE3_, normal20, "left", "center", false, false, false, false, false)
  dxDrawText(tableInfo.street2, _UPVALUE4_.x + 390 / _UPVALUE3_, _UPVALUE4_.y - 150 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(250, 250, 250, 255), 1 / _UPVALUE3_, normal20, "left", "center", false, false, false, false, false)
  dxDrawText(tableInfo.street, _UPVALUE4_.x + 372 / _UPVALUE3_, _UPVALUE4_.y - 88 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(0, 0, 0, 255), 1 / _UPVALUE3_, normal19, "left", "center", false, false, false, false, false)
  dxDrawText(tableInfo.street, _UPVALUE4_.x + 370 / _UPVALUE3_, _UPVALUE4_.y - 90 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE3_, normal19, "left", "center", false, false, false, false, false)
  dxDrawImage(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 230), false)
  dxDrawImage(_UPVALUE5_.x + 292 / _UPVALUE3_, _UPVALUE4_.y + 8 / _UPVALUE3_, 420 / _UPVALUE3_, 29 / _UPVALUE3_, textures.bar0_oldhud, 0, 0, 0, tocolor(30, 30, 30, 255), false)
  if 30 < 420 / tableInfo.maxExpLvl * tableInfo.exp / _UPVALUE3_ then
    dxDrawRoundedRectangle(_UPVALUE5_.x + 292 / _UPVALUE3_, _UPVALUE4_.y + 8 / _UPVALUE3_, 420 / tableInfo.maxExpLvl * tableInfo.exp / _UPVALUE3_, 29 / _UPVALUE3_, 12 / _UPVALUE3_, tocolor(255, 172, 0, 230))
  else
    dxDrawRoundedRectangle(_UPVALUE5_.x + 292 / _UPVALUE3_, _UPVALUE4_.y + 8 / _UPVALUE3_, 30 / _UPVALUE3_, 29 / _UPVALUE3_, 12 / _UPVALUE3_, tocolor(255, 172, 0, 230))
  end
  dxDrawText("SantoriRPG - " .. tableInfo.uid .. " #38b04e" .. godMode, _UPVALUE4_.x + 115 / _UPVALUE3_, _UPVALUE4_.y + 3 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(150, 150, 150, 250), 1 / _UPVALUE3_, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
  dxDrawText(tableInfo.exp .. "/" .. tableInfo.maxExpLvl .. " EXP", _UPVALUE5_.x - 1 / _UPVALUE3_, _UPVALUE4_.y + 4.5 / _UPVALUE3_, _UPVALUE5_.x + _UPVALUE5_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(220, 220, 220, 255), 1 / _UPVALUE3_, font17, "center", "center", false, false, false, false, false)
  dxDrawText(formattedTime, _UPVALUE6_.x + 90 / _UPVALUE3_, _UPVALUE4_.y + 4 / _UPVALUE3_, _UPVALUE6_.x + 362 / _UPVALUE3_, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(210, 210, 210, 250), 1 / _UPVALUE3_, font13, "center", "center", false, false, false, false, false)
  if getPedWeapon(localPlayer) ~= 0 then
    dxDrawText("Amunicja: " .. getPedTotalAmmo(localPlayer) .. "/#747474" .. getPedAmmoInClip(localPlayer), _UPVALUE6_.x + 1360 / _UPVALUE3_, _UPVALUE4_.y + 6 / _UPVALUE3_, _UPVALUE6_.x + 362 / _UPVALUE3_ - 320 / _UPVALUE3_, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(210, 210, 210, 250), 1 / _UPVALUE3_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
  else
    dxDrawText(przecinek((getElementData(localPlayer, "player:moneyMNn"))) .. " #00c946PLN", _UPVALUE6_.x + 1370 / _UPVALUE3_, _UPVALUE4_.y + 6 / _UPVALUE3_, _UPVALUE6_.x + 362 / _UPVALUE3_ - 320 / _UPVALUE3_, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(210, 210, 210, 250), 1 / _UPVALUE3_, font18, "right", "center", false, false, false, true, false)
  end
  dxDrawCircle(background_circle_pos[1], background_circle_pos[2], background_circle_pos[3], 0, 360, tocolor(30, 30, 30, 255))
  exports.ST_avatars:dxCreateAvatar(avatar_pos[1], avatar_pos[2], avatar_pos[3], avatar_pos[4])
  dxDrawImage(circle_pos[1], circle_pos[2], circle_pos[3], circle_pos[4], textures.circle, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  if getPedArmor(localPlayer) > 1 then
    armorText = "#0307fc/" .. string.format("%.0f", (getPedArmor(localPlayer))) .. ""
    health_pos[7] = font15
  else
    armorText = " HP"
  end
  dxDrawImage(heart_pos[1], heart_pos[2], heart_pos[3], heart_pos[4], textures.heart_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  dxDrawText(string.format("%.0f", (getElementHealth(localPlayer))) .. "" .. armorText, health_pos[1], health_pos[2], health_pos[3], health_pos[4], tocolor(health_pos[6][1], health_pos[6][2], health_pos[6][3], 255), 1 / _UPVALUE3_, health_pos[7], health_pos[5], "center", false, false, false, true, false)
  dxDrawText(tableInfo.lvl, level_pos[1], level_pos[2], level_pos[3], level_pos[4], tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, level_pos[6], level_pos[5], "center", false, false, false, false, false)
  dxDrawText(tableInfo.lvl + 1, level1_pos[1], level1_pos[2], level1_pos[3], level1_pos[4], tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, level1_pos[6], level1_pos[5], "center", false, false, false, false, false)
end
function renderHud2()
  if tableInfo.settings_fps == 1 then
    fpsText = "" .. _UPVALUE0_ .. " FPS"
    _UPVALUE1_ = _UPVALUE1_ + 1
    if tableInfo.czyMaSprawdzicFPs then
      setElementData(localPlayer, "player:ileFps", _UPVALUE0_)
    end
  else
    if tableInfo.czyMaSprawdzicFPs then
      _UPVALUE1_ = _UPVALUE1_ + 1
      setElementData(localPlayer, "player:ileFps", _UPVALUE0_)
    end
    fpsText = ""
  end
  dxDrawText(fpsText .. " " .. pingText .. " " .. packetText .. " " .. cpuText .. " " .. godMode, _UPVALUE2_.x, _UPVALUE2_.y + posYfps + 2 / _UPVALUE3_, _UPVALUE2_.x + _UPVALUE2_.w - posXfps + 1 / _UPVALUE3_, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(0, 0, 0, 255), 1 / _UPVALUE3_, font15, "right", "center", false, false, true, true, false)
  dxDrawText(fpsText .. " " .. pingText .. " " .. packetText .. " " .. cpuText .. " #38b04e" .. godMode, _UPVALUE2_.x, _UPVALUE2_.y + posYfps, _UPVALUE2_.x + _UPVALUE2_.w - posXfps, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, font15, "right", "center", false, false, true, true, false)
  dxDrawText(tableInfo.street2, _UPVALUE4_.x + 392 / _UPVALUE3_, _UPVALUE4_.y - 148 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(0, 0, 0, 255), 1 / _UPVALUE3_, normal20, "left", "center", false, false, false, false, false)
  dxDrawText(tableInfo.street2, _UPVALUE4_.x + 390 / _UPVALUE3_, _UPVALUE4_.y - 150 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(250, 250, 250, 255), 1 / _UPVALUE3_, normal20, "left", "center", false, false, false, false, false)
  dxDrawText(tableInfo.street, _UPVALUE4_.x + 372 / _UPVALUE3_, _UPVALUE4_.y - 88 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(0, 0, 0, 255), 1 / _UPVALUE3_, normal19, "left", "center", false, false, false, false, false)
  dxDrawText(tableInfo.street, _UPVALUE4_.x + 370 / _UPVALUE3_, _UPVALUE4_.y - 90 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE3_, normal19, "left", "center", false, false, false, false, false)
  dxDrawRoundedRectangle(_UPVALUE2_.x - 275 / _UPVALUE3_, _UPVALUE2_.y + 36 / _UPVALUE3_, 310 / _UPVALUE3_, 34 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(35, 35, 35, 235), false)
  if getElementHealth(localPlayer) * 3 / _UPVALUE3_ > 30 then
    dxDrawRoundedRectangle(_UPVALUE2_.x - 273 / _UPVALUE3_, _UPVALUE2_.y + 38 / _UPVALUE3_, getElementHealth(localPlayer) * 3 / _UPVALUE3_, 31 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(210, 0, 0, 235), false)
  else
    dxDrawRoundedRectangle(_UPVALUE2_.x - 273 / _UPVALUE3_, _UPVALUE2_.y + 38 / _UPVALUE3_, 30 / _UPVALUE3_, 31 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(210, 0, 0, 230), false)
  end
  dxDrawRoundedRectangle(_UPVALUE2_.x - 275 / _UPVALUE3_, _UPVALUE2_.y + 88 / _UPVALUE3_, 300 / _UPVALUE3_, 35 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(35, 35, 35, 235), false)
  if 30 < 300 / tableInfo.maxExpLvl * tableInfo.exp / _UPVALUE3_ then
    dxDrawRoundedRectangle(_UPVALUE2_.x - 273 / _UPVALUE3_, _UPVALUE2_.y + 90 / _UPVALUE3_, 300 / tableInfo.maxExpLvl * tableInfo.exp / _UPVALUE3_, 31 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(255, 172, 0, 230), false)
  else
    dxDrawRoundedRectangle(_UPVALUE2_.x - 273 / _UPVALUE3_, _UPVALUE2_.y + 90 / _UPVALUE3_, 30 / _UPVALUE3_, 31 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(255, 172, 0, 230), false)
  end
  dxDrawText(przecinek((getElementData(localPlayer, "player:moneyMNn"))) .. " PLN", _UPVALUE2_.x, _UPVALUE2_.y + 128 / _UPVALUE3_, _UPVALUE2_.x + _UPVALUE2_.w - 143 / _UPVALUE3_, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(0, 0, 0, 250), 1 / _UPVALUE3_, font19, "right", "center", false, false, false, true, false)
  dxDrawText("#00a600" .. przecinek((getElementData(localPlayer, "player:moneyMNn"))) .. " #ffffffPLN", _UPVALUE2_.x, _UPVALUE2_.y + 126 / _UPVALUE3_, _UPVALUE2_.x + _UPVALUE2_.w - 145 / _UPVALUE3_, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(200, 200, 200, 250), 1 / _UPVALUE3_, font19, "right", "center", false, false, false, true, false)
  if getPedWeapon(localPlayer) ~= 0 then
    dxDrawText("AMUNICJA: " .. getPedTotalAmmo(localPlayer) .. " / #000000" .. getPedAmmoInClip(localPlayer), _UPVALUE2_.x, _UPVALUE2_.y + 180 / _UPVALUE3_, _UPVALUE2_.x + _UPVALUE2_.w - 98 / _UPVALUE3_, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(0, 0, 0, 250), 1 / _UPVALUE3_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("AMUNICJA: " .. getPedTotalAmmo(localPlayer) .. " / #747474" .. getPedAmmoInClip(localPlayer), _UPVALUE2_.x, _UPVALUE2_.y + 178 / _UPVALUE3_, _UPVALUE2_.x + _UPVALUE2_.w - 100 / _UPVALUE3_, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(230, 230, 230, 250), 1 / _UPVALUE3_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
  end
  dxDrawText(tableInfo.exp .. "/" .. tableInfo.maxExpLvl .. "", _UPVALUE2_.x - 425 / _UPVALUE3_, _UPVALUE2_.y + 55 / _UPVALUE3_, _UPVALUE2_.x + _UPVALUE2_.w, _UPVALUE2_.y + _UPVALUE2_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, font16, "center", "center", false, false, false, false, false)
  dxDrawCircle(background_circle_pos[1], background_circle_pos[2], background_circle_pos[3], 0, 360, tocolor(30, 30, 30, 255))
  exports.ST_avatars:dxCreateAvatar(avatar_pos[1], avatar_pos[2], avatar_pos[3], avatar_pos[4])
  dxDrawImage(circle_pos[1], circle_pos[2], circle_pos[3], circle_pos[4], textures.circle, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  if getPedArmor(localPlayer) > 1 then
    armorText = "#0307fc/" .. string.format("%.0f", (getPedArmor(localPlayer))) .. ""
    health_pos[7] = font15
  else
    armorText = " HP"
  end
  dxDrawImage(heart_pos[1], heart_pos[2], heart_pos[3], heart_pos[4], textures.heart_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  dxDrawText(string.format("%.0f", (getElementHealth(localPlayer))) .. "" .. armorText, health_pos[1], health_pos[2], health_pos[3], health_pos[4], tocolor(health_pos[6][1], health_pos[6][2], health_pos[6][3], 255), 1 / _UPVALUE3_, health_pos[7], health_pos[5], "center", false, false, false, true, false)
  dxDrawText(tableInfo.lvl, level_pos[1], level_pos[2], level_pos[3], level_pos[4], tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, level_pos[6], level_pos[5], "center", false, false, false, false, false)
  dxDrawText(tableInfo.lvl + 1, level1_pos[1], level1_pos[2], level1_pos[3], level1_pos[4], tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, level1_pos[6], level1_pos[5], "center", false, false, false, false, false)
end
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function getCpuUsage(...)
  for _FORV_7_, _FORV_8_ in pairs(getPerformanceStats("Lua timing")) do
  end
  return string.format("%.2f", (0 + (tonumber(string.sub(_FORV_8_[2], 1, string.len(_FORV_8_[2]) - 1)) and tonumber(string.sub(_FORV_8_[2], 1, string.len(_FORV_8_[2]) - 1)) or 0)) / 2)
end
addEventHandler("onClientResourceStart", resourceRoot, function(_ARG_0_)
  triggerServerEvent("evEwenciks_kjhgd5gh", resourceRoot, "showInfo", localPlayer)
  tableInfo = {
    uid = getElementData(localPlayer, "player:sid") or 0,
    settings_cpu = 0,
    settings_fps = 0,
    settings_ping = 0,
    settings_packet = 0,
    settings_oldhud = 0,
    fire_block = getElementData(localPlayer, "fire_block"),
    strefaDM = getElementData(localPlayer, "player:strefaDM"),
    faction = getElementData(localPlayer, "player:faction"),
    admin = getElementData(localPlayer, "player:level"),
    przestepcza = getElementData(localPlayer, "org:przestepcza"),
    exp = getElementData(localPlayer, "player:exp"),
    lvl = getElementData(localPlayer, "player:lvl"),
    maxExpLvl = getElementData(localPlayer, "player:maxExpLvl"),
    czyMaSprawdzicFPs = getElementData(localPlayer, "czyMaSprawdzicFPs"),
    street = getZoneName(getElementPosition(localPlayer)) or "Nie znaleziono",
    street2 = getZoneName(getElementPosition(localPlayer)) or "Nie znaleziono",
    antykill = getElementData(localPlayer, "admin:antykill")
  }
  if tableInfo.street == "Unknown" then
    tableInfo.street = "Nie znaleziono"
  end
  if tableInfo.street2 == "Unknown" then
    tableInfo.street2 = "Nie znaleziono"
  end
  if settings_fps == 1 then
    cpuText = "| " .. getCpuUsage() .. "% CPU"
  else
    cpuText = ""
  end
  if tableInfo.settings_fps == 1 then
    fpsText = "" .. _UPVALUE0_ .. " FPS"
    _UPVALUE1_ = _UPVALUE1_ + 1
    if getElementData(localPlayer, "czyMaSprawdzicFPs") then
      setElementData(localPlayer, "player:ileFps", _UPVALUE0_)
    end
  else
    if getElementData(localPlayer, "czyMaSprawdzicFPs") then
      _UPVALUE1_ = _UPVALUE1_ + 1
      setElementData(localPlayer, "player:ileFps", _UPVALUE0_)
    end
    fpsText = ""
  end
  if tableInfo.antykill then
    godMode = "| GM"
  else
    godMode = ""
  end
  if tableInfo.settings_ping == 1 then
    if not ping then
      ping = 0
    end
    pingText = "| PING " .. ping .. ""
  else
    pingText = ""
  end
  if tableInfo.settings_packet == 1 then
    if 0 < getNetworkStats().packetlossLastSecond then
      packetText = "| " .. ("%.2f"):format(getNetworkStats().packetlossLastSecond) .. "% UTRATA PAKIET\195\147W"
    else
      packetText = "| " .. math.floor(getNetworkStats().packetlossLastSecond) .. "% UTRATA PAKIET\195\147W"
    end
  else
    packetText = ""
  end
  formattedTime = string.format([[
%02d:%02d
%02d.%02d.2025]], getRealTime().hour, getRealTime().minute, getRealTime().monthday, getRealTime().month + 1)
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showInfoClient" then
    for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
      enableHud(true, _FORV_10_.settings_oldhud, _FORV_10_.settings_cpu, _FORV_10_.settings_fps, _FORV_10_.settings_ping, _FORV_10_.settings_packet)
    end
  end
end)
function enableHud(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ then
    if not _ARG_1_ then
      _ARG_1_ = tableInfo.settings_oldhud
      _ARG_2_ = tableInfo.settings_cpu
      _ARG_3_ = tableInfo.settings_fps
      _ARG_4_ = tableInfo.settings_ping
      _ARG_5_ = tableInfo.settings_packet
    end
    if isEventHandlerAdded("onClientRender", root, renderHud1) then
      removeEventHandler("onClientRender", root, renderHud1)
    elseif isEventHandlerAdded("onClientRender", root, renderHud2) then
      removeEventHandler("onClientRender", root, renderHud2)
    end
    if _ARG_1_ == 1 then
      posXfps = -15 / _UPVALUE0_
      posYfps = -151 / _UPVALUE0_
      background_circle_pos = {
        _UPVALUE1_.x + 55 / _UPVALUE0_,
        _UPVALUE1_.y + 50 / _UPVALUE0_,
        51 / _UPVALUE0_
      }
      avatar_pos = {
        _UPVALUE1_.x + 2 / _UPVALUE0_,
        _UPVALUE1_.y - 2 / _UPVALUE0_,
        _UPVALUE1_.w - 4 / _UPVALUE0_,
        _UPVALUE1_.h - 4 / _UPVALUE0_
      }
      circle_pos = {
        _UPVALUE1_.x,
        _UPVALUE1_.y - 5 / _UPVALUE0_,
        _UPVALUE1_.w,
        _UPVALUE1_.h
      }
      heart_pos = {
        _UPVALUE2_.x + 75 / _UPVALUE0_,
        _UPVALUE3_.y - 6 / _UPVALUE0_,
        _UPVALUE3_.w,
        _UPVALUE3_.h
      }
      level_pos = {
        _UPVALUE4_.x - 475 / _UPVALUE0_,
        _UPVALUE5_.y + 3 / _UPVALUE0_,
        _UPVALUE4_.x + _UPVALUE4_.w,
        _UPVALUE5_.y + _UPVALUE5_.h,
        "center",
        exports.ST_gui:getGUIFont("light16")
      }
      level1_pos = {
        _UPVALUE4_.x + 475 / _UPVALUE0_,
        _UPVALUE5_.y + 3 / _UPVALUE0_,
        _UPVALUE4_.x + _UPVALUE4_.w,
        _UPVALUE5_.y + _UPVALUE5_.h,
        "center",
        exports.ST_gui:getGUIFont("light16")
      }
      health_pos = {
        _UPVALUE2_.x + 115 / _UPVALUE0_,
        _UPVALUE5_.y + 6 / _UPVALUE0_,
        _UPVALUE2_.x + math.floor(362 / _UPVALUE0_),
        _UPVALUE5_.y + _UPVALUE5_.h,
        "left",
        {
          210,
          210,
          210
        },
        exports.ST_gui:getGUIFont("font18")
      }
      normal20 = exports.ST_gui:getGUIFont("normal20")
      normal19 = exports.ST_gui:getGUIFont("normal19")
      font17 = exports.ST_gui:getGUIFont("font17")
      font15 = exports.ST_gui:getGUIFont("font15")
      font13 = exports.ST_gui:getGUIFont("font13")
      font18 = exports.ST_gui:getGUIFont("font18")
      light15 = exports.ST_gui:getGUIFont("light15")
      addEventHandler("onClientRender", root, renderHud1)
    else
      posXfps = 140 / _UPVALUE0_
      posYfps = -120 / _UPVALUE0_
      background_circle_pos = {
        _UPVALUE6_.x + 79 / _UPVALUE0_,
        _UPVALUE6_.y + 83 / _UPVALUE0_,
        75 / _UPVALUE0_
      }
      avatar_pos = {
        _UPVALUE6_.x + 3 / _UPVALUE0_,
        _UPVALUE6_.y + 6 / _UPVALUE0_,
        _UPVALUE6_.w - 6 / _UPVALUE0_,
        _UPVALUE6_.h - 6 / _UPVALUE0_
      }
      circle_pos = {
        _UPVALUE6_.x,
        _UPVALUE6_.y + 3 / _UPVALUE0_,
        _UPVALUE6_.w,
        _UPVALUE6_.h
      }
      heart_pos = {
        _UPVALUE6_.x - 260 / _UPVALUE0_,
        _UPVALUE6_.y + 41 / _UPVALUE0_,
        25 / _UPVALUE0_,
        25 / _UPVALUE0_
      }
      health_pos = {
        _UPVALUE6_.x - 225 / _UPVALUE0_,
        _UPVALUE6_.y - 50 / _UPVALUE0_,
        _UPVALUE6_.x + _UPVALUE6_.w,
        _UPVALUE6_.y + _UPVALUE6_.h,
        "left",
        {
          255,
          255,
          255
        },
        exports.ST_gui:getGUIFont("font16")
      }
      level_pos = {
        _UPVALUE6_.x - 265 / _UPVALUE0_,
        _UPVALUE6_.y + 55 / _UPVALUE0_,
        _UPVALUE6_.x + _UPVALUE6_.w,
        _UPVALUE6_.y + _UPVALUE6_.h,
        "left",
        exports.ST_gui:getGUIFont("font18")
      }
      level1_pos = {
        _UPVALUE6_.x,
        _UPVALUE6_.y + 55 / _UPVALUE0_,
        _UPVALUE6_.x + _UPVALUE6_.w - 165 / _UPVALUE0_,
        _UPVALUE6_.y + _UPVALUE6_.h,
        "right",
        exports.ST_gui:getGUIFont("font18")
      }
      font19 = exports.ST_gui:getGUIFont("font19")
      font16 = exports.ST_gui:getGUIFont("font16")
      font15 = exports.ST_gui:getGUIFont("font15")
      font14 = exports.ST_gui:getGUIFont("font14")
      normal20 = exports.ST_gui:getGUIFont("normal20")
      normal19 = exports.ST_gui:getGUIFont("normal19")
      addEventHandler("onClientRender", root, renderHud2)
    end
    if _ARG_2_ == 1 then
      cpuText = "| " .. getCpuUsage() .. "% CPU"
    else
      cpuText = ""
    end
    tableInfo = {
      uid = getElementData(localPlayer, "player:sid"),
      settings_cpu = _ARG_2_,
      settings_fps = _ARG_3_,
      settings_ping = _ARG_4_,
      settings_packet = _ARG_5_,
      settings_oldhud = _ARG_1_,
      fire_block = getElementData(localPlayer, "fire_block"),
      strefaDM = getElementData(localPlayer, "player:strefaDM"),
      faction = getElementData(localPlayer, "player:faction"),
      admin = getElementData(localPlayer, "player:level"),
      przestepcza = getElementData(localPlayer, "org:przestepcza"),
      exp = getElementData(localPlayer, "player:exp"),
      lvl = getElementData(localPlayer, "player:lvl"),
      maxExpLvl = getElementData(localPlayer, "player:maxExpLvl"),
      czyMaSprawdzicFPs = getElementData(localPlayer, "czyMaSprawdzicFPs"),
      street = getZoneName(getElementPosition(localPlayer)) or "Nie znaleziono",
      street2 = getZoneName(getElementPosition(localPlayer)) or "Nie znaleziono",
      antykill = getElementData(localPlayer, "admin:antykill")
    }
  elseif isEventHandlerAdded("onClientRender", root, renderHud1) then
    removeEventHandler("onClientRender", root, renderHud1)
  elseif isEventHandlerAdded("onClientRender", root, renderHud2) then
    removeEventHandler("onClientRender", root, renderHud2)
  end
end
function isEventHandlerAdded(_ARG_0_, _ARG_1_, _ARG_2_)
  if type(_ARG_0_) == "string" and isElement(_ARG_1_) and type(_ARG_2_) == "function" and type((getEventHandlers(_ARG_0_, _ARG_1_))) == "table" and #getEventHandlers(_ARG_0_, _ARG_1_) > 0 then
    for _FORV_7_, _FORV_8_ in ipairs((getEventHandlers(_ARG_0_, _ARG_1_))) do
      if _FORV_8_ == _ARG_2_ then
        return true
      end
    end
  end
  return false
end
setPlayerHudComponentVisible("ammo", false)
setPlayerHudComponentVisible("armour", false)
setPlayerHudComponentVisible("clock", false)
setPlayerHudComponentVisible("health", false)
setPlayerHudComponentVisible("money", false)
setPlayerHudComponentVisible("vehicle_name", false)
setPlayerHudComponentVisible("weapon", false)
setPlayerHudComponentVisible("breath", false)
setPlayerHudComponentVisible("wanted", false)
getResourceName(getThisResource(), true, 176118426)
return
