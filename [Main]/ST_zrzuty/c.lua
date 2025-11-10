function renderTarget(_ARG_0_)
  dxSetRenderTarget(_UPVALUE0_[1], false)
  dxDrawRoundedRectangle(0, 0, 350, 190, 20, tocolor(255, 187, 0, 255))
  dxDrawRoundedRectangle(2, 2, 346, 186, 20, tocolor(25, 25, 25, 255))
  if _UPVALUE1_.infoDrop.crime == true then
    dxDrawText("ZRZUT - #d60000CRIME", 0, 20, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font26"), "center", "top", false, false, false, true, false)
  else
    dxDrawText("ZRZUT - #d60000STREFA DM", 0, 20, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font26"), "center", "top", false, false, false, true, false)
  end
  if _UPVALUE1_.infoDrop.time ~= 0 then
    dxDrawText([[
ZRZUT PRZEJMOWANY PRZEZ:
#ffd100]] .. _UPVALUE1_.infoDrop.organization, 0, 65, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false, 0, 0, 0)
    dxDrawText(secondsToClock(_UPVALUE1_.infoDrop.time), 0, 130, 350, 350, tocolor(255, 187, 0, 255), 1, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, true, false, 0, 0, 0)
  elseif _UPVALUE1_.enterPlayer then
    dxDrawText("PRZYRZYMAJ #ffbb00R #ffffffABY ROZPOCZ\196\132\196\134\nPRZEJMOWANIE ZRZUTU", 0, 65, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
    dxDrawCircle(174, 154, 25, 270, 270 + _UPVALUE1_.progressDropR * 3.6, tocolor(255, 187, 0, 255))
    dxDrawCircle(174, 154, 23, 0, 360, tocolor(35, 35, 35, 255))
    dxDrawText("R", 0, 133, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font26"), "center", "top", false, false, false, true, false)
  else
    dxDrawText("PODEJD\197\185 BLI\197\187EJ, ABY\nPRZEJ\196\132\196\134 ZRZUT", 0, 80, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font22"), "center", "top", false, false, false, true, false)
  end
  dxSetRenderTarget()
end
function renderXD()
  if isElement(_UPVALUE0_.infoDrop.skrzynia) and getElementBoundingBox(_UPVALUE0_.infoDrop.skrzynia) then
    x1, y1, z1 = getPositionFromElementOffset(_UPVALUE0_.infoDrop.skrzynia, 0, getElementBoundingBox(_UPVALUE0_.infoDrop.skrzynia) - 1.5, 3.3)
    dxDrawMaterialLine3D(x1, y1, z1 + 0.35, x1, y1, z1 - 0.65, _UPVALUE1_[1], 2, tocolor(255, 255, 255, 255), false, getElementPosition(localPlayer))
    if _UPVALUE0_.enterPlayer then
      if getElementData(localPlayer, "player:bw") then
        _UPVALUE0_.progressDropR = 0
        renderTarget(_UPVALUE0_.infoDrop.skrzynia)
      end
      if getKeyState("R") then
        _UPVALUE0_.progressDropR = _UPVALUE0_.progressDropR + 0.2
        if _UPVALUE0_.progressDropR >= 100 then
          _UPVALUE0_.enterPlayer = false
          triggerServerEvent("ev", resourceRoot, "dropOpenStart", localPlayer, _UPVALUE0_.infoDrop.skrzynia)
          przejmowanieDropu()
        end
        renderTarget(_UPVALUE0_.infoDrop.skrzynia)
      else
        _UPVALUE0_.progressDropR = 0
        renderTarget(_UPVALUE0_.infoDrop.skrzynia)
      end
    end
  end
end
function przejmowanieDropu()
  _UPVALUE0_.isTaking = true
  timerPlayer = setTimer(function()
    triggerServerEvent("ev", resourceRoot, "time", localPlayer, _UPVALUE0_.infoDrop.skrzynia)
    if getTimerDetails(timerPlayer) == 1 then
      triggerServerEvent("ev", resourceRoot, "successTake", localPlayer, _UPVALUE0_.infoDrop.skrzynia)
      _UPVALUE0_.isTaking = false
      if isTimer(timerPlayer) then
        killTimer(timerPlayer)
      end
      if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
        removeEventHandler("onClientRender", root, drawCircleArea)
      end
      removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
    end
  end, 2000, 150)
  centerXCircle, centerYCircle, centerZCircle = getElementPosition(_UPVALUE0_.infoDrop.skrzynia)
  addEventHandler("onClientRender", root, drawCircleArea)
  addEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
  exports.st_gui:showPlayerNotification("Rozpocz\196\153to przejmowanie zrzutu\nNie wychod\197\186 poza pomara\197\132czowy okr\196\133g!", "info")
end
function drawCircleArea()
  for _FORV_6_ = 1, 100 do
    dxDrawLine3D(centerXCircle + math.cos((_FORV_6_ - 1) * (math.pi * 2 / 100)) * 30, centerYCircle + math.sin((_FORV_6_ - 1) * (math.pi * 2 / 100)) * 30, centerZCircle + 1, centerXCircle + math.cos(_FORV_6_ * (math.pi * 2 / 100)) * 30, centerYCircle + math.sin(_FORV_6_ * (math.pi * 2 / 100)) * 30, centerZCircle + 1, tocolor(252, 86, 3, 255), 3)
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "renderInfo" then
    if _ARG_2_ then
      _UPVALUE0_.infoDrop = _ARG_1_
      if isElement(_UPVALUE0_.infoDrop.skrzynia) then
        _UPVALUE1_[1] = dxCreateRenderTarget(350, 190, true)
        renderTarget(_UPVALUE0_.infoDrop.skrzynia)
      end
      addEventHandler("onClientPreRender", root, renderXD)
    else
      removeEventHandler("onClientPreRender", root, renderXD)
      if isElement(_UPVALUE1_[1]) then
        destroyElement(_UPVALUE1_[1])
        _UPVALUE1_[1] = nil
      end
      if _UPVALUE0_.isTaking then
        triggerServerEvent("ev", resourceRoot, "stopTake", localPlayer, _UPVALUE0_.infoDrop.skrzynia)
        if isTimer(timerPlayer) then
          killTimer(timerPlayer)
        end
        if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
          removeEventHandler("onClientRender", root, drawCircleArea)
        end
        removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
      end
      _UPVALUE0_.isTaking = false
    end
  elseif _ARG_0_ == "enterPlayerColMini" then
    if _ARG_2_ then
      _UPVALUE0_.progressDropR = 0
      _UPVALUE0_.enterPlayer = true
      renderTarget(_UPVALUE0_.infoDrop.skrzynia)
    else
      _UPVALUE0_.enterPlayer = false
      renderTarget(_UPVALUE0_.infoDrop.skrzynia)
    end
  elseif _ARG_0_ == "reloadRender" and isElement(_UPVALUE1_[1]) then
    _UPVALUE0_.infoDrop = _ARG_1_
    renderTarget(_UPVALUE0_.infoDrop.skrzynia)
  end
end)
function onPlayerWasted()
  if _UPVALUE0_.isTaking then
    _UPVALUE0_.isTaking = false
    if isTimer(timerPlayer) then
      killTimer(timerPlayer)
    end
    if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
      removeEventHandler("onClientRender", root, drawCircleArea)
    end
    removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
    triggerServerEvent("ev", resourceRoot, "stopTake", localPlayer, _UPVALUE0_.infoDrop.skrzynia)
  end
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
function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "" .. mins .. ":" .. secs
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
getResourceName(getThisResource(), true, 917806549)
return
