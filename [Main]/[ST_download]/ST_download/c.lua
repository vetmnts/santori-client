sx, sy = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
function renderTransferBox()
  if not isTransferBoxActive() then
    removeEventHandler("onClientRender", root, renderTransferBox)
    transferBoxVisible = false
  end
  if not transferBoxVisible then
    return
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x - 1 / zoom, _UPVALUE0_.y - 181 / zoom, _UPVALUE0_.w + 2 / zoom, _UPVALUE0_.h + 2 / zoom, 20 / zoom, tocolor(255, 196, 0, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y - 180 / zoom, _UPVALUE0_.w, _UPVALUE0_.h, 20 / zoom, tocolor(25, 25, 25, 255))
  dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.w - 30 / zoom, 24 / zoom, 8 / zoom, tocolor(20, 20, 20, 255))
  if transferProgress / 100 * (_UPVALUE0_.w - 30 / zoom) > 16 / zoom then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y - 135 / zoom, transferProgress / 100 * (_UPVALUE0_.w - 30 / zoom) / zoom, 24 / zoom, 8 / zoom, tocolor(255, 196, 0, 255))
  else
    dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y - 135 / zoom, 16 / zoom, 24 / zoom, 8 / zoom, tocolor(255, 196, 0, 255))
  end
  dxDrawText("#fcba03" .. ("%.2f"):format(downloadedSize1 / 1000000) .. " #ffffffMB Z #fcba03" .. ("%.2f"):format(totalSize1 / 1000000) .. " #ffffffMB", _UPVALUE0_.x + 1 / zoom, math.floor(_UPVALUE0_.y) - 388 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, math.floor(_UPVALUE0_.y) + _UPVALUE0_.h, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, true, true, false)
  dxDrawText("Trwa pobieranie zasob\195\179w", _UPVALUE0_.x + 1 / zoom, math.floor(_UPVALUE0_.y) - 322 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, math.floor(_UPVALUE0_.y) + _UPVALUE0_.h, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, true, false, false)
end
addEventHandler("onClientTransferBoxProgressChange", root, function(_ARG_0_, _ARG_1_)
  transferProgress = math.min(_ARG_0_ / _ARG_1_ * 100, 100)
  downloadedSize1 = _ARG_0_
  totalSize1 = _ARG_1_
  if 100 > transferProgress and not transferBoxVisible then
    transferBoxVisible = true
    addEventHandler("onClientRender", root, renderTransferBox)
  elseif 100 <= transferProgress then
    removeEventHandler("onClientRender", root, renderTransferBox)
    transferBoxVisible = false
  end
end)
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, true)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1, true)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1, true)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1, true)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1, true)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, true)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, true)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, true)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, true)
end
setTransferBoxVisible(false)
if getElementData(localPlayer, "player:sid") then
  return
end
loadingPos = {
  x = math.floor(sx / 2 - 1900 / zoom / 2),
  y = 0,
  w = math.floor(70 / zoom),
  h = math.floor(70 / zoom)
}
loadingPos.y = sy - loadingPos.h
loadingPos1 = {
  x = math.floor(sx / 2 - 720 / zoom / 2),
  y = 0,
  w = math.floor(55 / zoom),
  h = math.floor(55 / zoom)
}
loadingPos1.y = sy - loadingPos1.h + 7 / zoom
LOAD = {}
LOAD.dots = 0
LOAD.alpha = 0
LOAD.alphaALL = 0
LOAD.tick1 = getTickCount()
anims = {}
rendering = false
function animate(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if #anims == 0 and not rendering then
    addEventHandler("onClientRender", root, _UPVALUE0_)
    rendering = true
  end
  assert(type(_ARG_0_) == "number", "Bad argument @ 'animate' [expected number at argument 1, got " .. type(_ARG_0_) .. "]")
  assert(type(_ARG_1_) == "number", "Bad argument @ 'animate' [expected number at argument 2, got " .. type(_ARG_1_) .. "]")
  assert(type(_ARG_2_) == "string", "Bad argument @ 'animate' [Invalid easing at argument 3]")
  assert(type(_ARG_3_) == "number", "Bad argument @ 'animate' [expected number at argument 4, got " .. type(_ARG_3_) .. "]")
  assert(type(_ARG_4_) == "function", "Bad argument @ 'animate' [expected function at argument 5, got " .. type(_ARG_4_) .. "]")
  table.insert(anims, {
    from = _ARG_0_,
    to = _ARG_1_,
    easing = _ARG_2_,
    duration = _ARG_3_,
    start = getTickCount(),
    onChange = _ARG_4_,
    onEnd = _ARG_5_
  })
  return #anims
end
function destroyAnimation(_ARG_0_)
  if anims[_ARG_0_] then
    anims[_ARG_0_] = nil
  end
end
function windows()
  dxDrawImage(0, 0, sx, sy, "1.png", 0, 0, 0, tocolor(255, 255, 255, LOAD.alphaALL))
  dxDrawRectangle(0, 0, sx, 60 / zoom, tocolor(0, 0, 0, LOAD.alphaALL), false)
  dxDrawRectangle(0, sy - 60 / zoom, sx, 60 / zoom, tocolor(0, 0, 0, LOAD.alphaALL), false)
  dxDrawImage(loadingPos1.x, loadingPos1.y - math.floor(10 / zoom), loadingPos1.w, loadingPos1.h, "loading.png", math.cos((interpolateBetween(-9, 0, 0, 0, 0, 0, (getTickCount() - LOAD.tick1) / 6500, "SineCurve"))) * 250, 0, 0, tocolor(255, 255, 255, LOAD.alphaALL), false)
  LOAD.dots = LOAD.dots + 0.1
  if 0 <= LOAD.dots and LOAD.dots < 1 then
    przecinekText = ""
  elseif LOAD.dots >= 1 and LOAD.dots < 2 then
    przecinekText = "."
  elseif LOAD.dots >= 2 and LOAD.dots < 3 then
    przecinekText = ".."
  elseif LOAD.dots >= 3 and LOAD.dots < 4 then
    przecinekText = "..."
  elseif LOAD.dots >= 4 then
    LOAD.dots = 0
  end
  dxDrawText("Trwa pobieranie zasob\195\179w serwera na tw\195\179j komputer" .. przecinekText, loadingPos.x + math.floor(655 / zoom), math.floor(loadingPos.y) + 10 / zoom, loadingPos.x + loadingPos.w, math.floor(loadingPos.y) + loadingPos.h, tocolor(255, 255, 255, LOAD.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "left", "center", false, false, false, false, false)
  dxDrawText("Serwerowy discord: #ffbb00https://discord.gg/2BFEuSW #ffffff- u\197\188yj #ffbb00CTRL + V #ffffffw przegl\196\133darce", loadingPos.x + math.floor(1825 / zoom), -3 / zoom, loadingPos.x + loadingPos.w, -3 / zoom + loadingPos.h, tocolor(255, 255, 255, LOAD.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, true, false)
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "downloadStopClient" then
    for _FORV_17_, _FORV_18_ in pairs((dxGetStatus())) do
      if _FORV_17_ == "VideoCardName" then
      end
      if _FORV_17_ == "TotalPhysicalMemory" then
      end
      if _FORV_17_ == "VideoCardRAM" then
      end
    end
    triggerServerEvent("ev", resourceRoot, "downloadStop", {
      isDiscordRichPresenceConnected(),
      "321564002634282268",
      getDiscordRichPresenceUserID(),
      "118229002637124290"
    }, {
      _FORV_18_,
      _FORV_18_,
      _FORV_18_,
      (getVersion())
    })
  end
end)
for _FORV_14_, _FORV_15_ in pairs((dxGetStatus())) do
  if _FORV_14_ == "VideoCardName" then
  end
  if _FORV_14_ == "TotalPhysicalMemory" then
  end
  if _FORV_14_ == "VideoCardRAM" then
  end
end
setClipboard("https://discord.gg/2BFEuSW")
setPlayerHudComponentVisible("radar", false)
triggerEvent("radar:onClientHudComponent", localPlayer, "radar", false)
setPlayerHudComponentVisible("ammo", false)
setPlayerHudComponentVisible("armour", false)
setPlayerHudComponentVisible("clock", false)
setPlayerHudComponentVisible("health", false)
setPlayerHudComponentVisible("money", false)
setPlayerHudComponentVisible("vehicle_name", false)
setPlayerHudComponentVisible("weapon", false)
setPlayerHudComponentVisible("breath", false)
setPlayerHudComponentVisible("wanted", false)
triggerEvent("voiceSetVolume", localPlayer, localPlayer, 0)
setTimer(function()
  addEventHandler("onClientRender", root, windows)
end, 100, 1)
showChat(false)
if not alpha then
  animate(LOAD.alpha, 255, "InQuad", 1000, function(_ARG_0_)
    LOAD.alpha = _ARG_0_
  end)
  animate(LOAD.alphaALL, 255, "InQuad", 1000, function(_ARG_0_)
    LOAD.alphaALL = _ARG_0_
  end)
else
  LOAD.alpha = alpha
end
addEvent("gui:downloading:off", true)
addEventHandler("gui:downloading:off", root, function()
  setTimer(function()
    animate(LOAD.alpha, 0, "InQuad", 1000, function(_ARG_0_)
      LOAD.alpha = _ARG_0_
    end)
    animate(LOAD.alphaALL, 0, "InQuad", 1000, function(_ARG_0_)
      LOAD.alphaALL = _ARG_0_
    end)
    setTimer(function()
      removeEventHandler("onClientRender", root, windows)
      setPlayerHudComponentVisible("radar", false)
      triggerEvent("radar:onClientHudComponent", localPlayer, "radar", false)
      setPlayerHudComponentVisible("ammo", false)
      setPlayerHudComponentVisible("armour", false)
      setPlayerHudComponentVisible("clock", false)
      setPlayerHudComponentVisible("health", false)
      setPlayerHudComponentVisible("money", false)
      setPlayerHudComponentVisible("vehicle_name", false)
      setPlayerHudComponentVisible("weapon", false)
      setPlayerHudComponentVisible("breath", false)
      setPlayerHudComponentVisible("wanted", false)
    end, 1000, 1)
  end, 1000, 1)
end)
getResourceName(getThisResource(), true, 792120205)
return
