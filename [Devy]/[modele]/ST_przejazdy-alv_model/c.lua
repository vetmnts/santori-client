addEventHandler("onClientResourceStop", getRootElement(), function(_ARG_0_)
  for _FORV_4_, _FORV_5_ in pairs(_UPVALUE0_) do
    if getResourceName(_ARG_0_) == _FORV_5_ then
      triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog2", "@everyone Stop Resource " .. getPlayerName(localPlayer) .. "")
    end
  end
end)
addDebugHook("preFunction", function(_ARG_0_)
  if _ARG_0_ == getThisResource() then
    return
  end
  return "skip"
end, {
  "addDebugHook"
})
addEventHandler("onClientResourceStop", resourceRoot, function(_ARG_0_)
  if string.lower(getResourceName(_ARG_0_)) == string.lower(getThisResource().name) then
    triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "@everyone Stop Resource " .. getPlayerName(localPlayer) .. "", "b")
  end
end)
function SaveCode(_ARG_0_)
  triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "saveCode", _ARG_0_)
end
function clientCheatScan()
  if isWorldSpecialPropertyEnabled("hovercars") then
    clientCheat()
    triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "HOVERCARS " .. getPlayerName(localPlayer))
  end
  if isWorldSpecialPropertyEnabled("extrabunny") then
    clientCheat()
    triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "EXTRA BUNNY " .. getPlayerName(localPlayer))
  end
  if isWorldSpecialPropertyEnabled("extrajump") then
    clientCheat()
    triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "EXTRA JUMP " .. getPlayerName(localPlayer))
  end
  if getGameSpeed() > 1.05 and not getElementData(localPlayer, "player:nacpany") then
    clientCheat()
    triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "GAMESPEED CHEAT " .. getPlayerName(localPlayer))
  end
end
setTimer(clientCheatScan, 1000, 0)
function clientCheat()
  setGameSpeed(1)
  triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "jetpack", "HOVERCARS " .. getPlayerName(localPlayer))
  for _FORV_4_, _FORV_5_ in pairs({
    hovercars = false,
    aircars = false,
    extrabunny = false,
    extrajump = false,
    randomfoliage = true,
    snipermoon = false,
    extraairresistance = true,
    underworldwarp = true,
    vehiclesunglare = false,
    coronaztest = true,
    watercreatures = true,
    burnflippedcars = true,
    fireballdestruct = true
  }) do
    setWorldSpecialPropertyEnabled(_FORV_4_, _FORV_5_)
  end
end
function CheckLuaFile(_ARG_0_)
  if type(_ARG_0_) == "string" and not _ARG_0_:find(".lua") and _ARG_0_ ~= "[string \"...\"]" and _ARG_0_ ~= "[string \"?\"]" then
    triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "@everyone Lua Execute " .. getPlayerName(localPlayer), "k")
    return true
  end
  return false
end
DebugHook = addDebugHook("preFunction", function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, ...)
  if CheckLuaFile(nil) then
    return "skip"
  end
end, {
  "addDebugHook",
  "removeDebugHook",
  "triggerServerEvent"
})
if not DebugHook then
  triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "@everyone DebugHook Skip " .. getPlayerName(localPlayer) .. "", "b")
end
addDebugHook("preFunction", function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, ...)
  if CheckLuaFile(_ARG_3_) then
    return
  end
  SaveCode(({
    ...
  })[1])
  triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "@everyone Lua Execute2 " .. getPlayerName(localPlayer) .. "", "k")
  return "skip"
end, {
  "loadstring",
  "pcall",
  "load"
})
Cache = {}
function AntiAimBot(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == getLocalPlayer() and _ARG_2_ == 9 then
    for _FORV_7_, _FORV_8_ in ipairs(ADMIN_LEVEL_DATANAMES) do
      if 0 < (getElementData(localPlayer, _FORV_8_) or 0) or isPedInVehicle(localPlayer) == true then
        return
      end
    end
    if not Cache.Numbers then
      Cache.Numbers = 0
    end
    if Cache then
      Cache.Numbers = Cache.Numbers + 1
      setTimer(function()
        Cache.Numbers = 0
      end, 3000, 1)
      if Cache.Numbers == 5 then
        triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "aimbot " .. getPlayerName(localPlayer) .. "")
      end
    end
  end
end
addEventHandler("onClientPedDamage", getRootElement(), AntiAimBot)
addEventHandler("onClientPlayerDamage", getRootElement(), AntiAimBot)
function projectileCreation(_ARG_0_)
  if getElementType(_ARG_0_) == "player" and getProjectileType(source) ~= 17 then
    setElementPosition(source, getElementPosition(source))
    destroyElement(source)
    triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "created a Projectile ID: " .. getProjectileType(source) .. " - " .. getPlayerName(localPlayer) .. "")
  end
end
addEventHandler("onClientProjectileCreation", root, projectileCreation)
addEventHandler("onClientVehicleExplode", getRootElement(), cancelEvent)
function consoleCheck(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
    if _ARG_0_ == _FORV_5_ then
      return
    end
  end
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE1_) do
    if string.sub(_ARG_0_, 1, _FORV_5_[2]) == _FORV_5_[1] then
      return
    end
  end
  triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "cs", "" .. _ARG_0_ .. "  " .. getPlayerName(localPlayer) .. "")
end
addEventHandler("onClientConsole", localPlayer, consoleCheck)
addEvent("receiveServerToken", true)
addEventHandler("receiveServerToken", resourceRoot, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
  sendClientKey()
end)
function generateClientKey()
  if not _UPVALUE0_ then
    return nil
  end
  return (hash("sha256", getPlayerSerial() .. (getVersion().number .. "-" .. getVersion().sortable) .. _UPVALUE0_))
end
function sendClientKey()
  if generateClientKey() then
    triggerServerEvent("verifyClientKey", resourceRoot, (generateClientKey()))
  end
end
addEventHandler("onClientResourceStart", resourceRoot, function()
  triggerServerEvent("requestServerToken", resourceRoot)
end)
setTimer(sendClientKey, 60000, 0)
