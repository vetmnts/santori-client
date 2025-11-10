windows = {main = false}
items = {
  {
    "Pacho\197\130ek",
    1238,
    {
      0,
      1.2,
      -0.65,
      90,
      0
    }
  },
  {
    "Barierka",
    1228,
    {
      0,
      1.2,
      -0.65,
      90,
      0
    }
  },
  {
    "Barierka 2",
    1424,
    {
      0,
      1.2,
      -0.35,
      0,
      0
    }
  },
  {
    "Kolczatka",
    2899,
    {
      0,
      2.7,
      -0.9,
      90,
      0
    }
  },
  {
    "Tr\195\179jk\196\133t ostrzegawczy",
    1425,
    {
      0,
      1,
      -0.65,
      -90,
      0
    }
  },
  {
    "Drabina",
    1437,
    {
      0,
      1,
      -1,
      0,
      -30
    }
  },
  {
    "Parawan Ochronny",
    9569,
    {
      0,
      1.2,
      -0.23,
      90,
      0
    }
  }
}
function window()
  if windows.main == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 250), false)
    dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 35 / _UPVALUE1_, tocolor(20, 20, 20, 190), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, _UPVALUE0_.w - 40 / _UPVALUE1_, 3 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    if isMouseIn(_UPVALUE0_.x + 484 / _UPVALUE1_, _UPVALUE0_.y + 27 / _UPVALUE1_, 34 / _UPVALUE1_, 34 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 484 / _UPVALUE1_, _UPVALUE0_.y + 27 / _UPVALUE1_, 34 / _UPVALUE1_, 34 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 485 / _UPVALUE1_, _UPVALUE0_.y + 28 / _UPVALUE1_, 32 / _UPVALUE1_, 32 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawText("WYPOSA\197\187ENIE", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(items) do
      if _FORV_7_ >= _UPVALUE2_ and _FORV_7_ <= _UPVALUE3_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 80 / _UPVALUE1_, 55 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(20, 20, 20, 120), false)
        dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 55 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        if isMouseIn(_UPVALUE0_.x + 455 / _UPVALUE1_, _UPVALUE0_.y + 113 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 45 / _UPVALUE1_, 47 / _UPVALUE1_) then
          dxDrawText("\226\135\167", _UPVALUE0_.x + 455 / _UPVALUE1_, _UPVALUE0_.y + 76 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
        else
          dxDrawText("\226\135\167", _UPVALUE0_.x + 455 / _UPVALUE1_, _UPVALUE0_.y + 76 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
        end
        if isMouseIn(_UPVALUE0_.x + 405 / _UPVALUE1_, _UPVALUE0_.y + 113 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 45 / _UPVALUE1_, 47 / _UPVALUE1_) then
          dxDrawText("\226\135\169", _UPVALUE0_.x + 412 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
        else
          dxDrawText("\226\135\169", _UPVALUE0_.x + 412 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
        end
      end
    end
  end
end
addCommandHandler("wyposa\197\188enie", function(_ARG_0_, _ARG_1_)
  if getElementData(localPlayer, "player:faction") then
    if isElement(object) then
      return
    end
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    createShaderBlur(true)
    addEventHandler("onClientRender", root, window)
    windows.main = true
    showCursor(true)
  end
end)
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_7_, _FORV_8_ in ipairs(items) do
        if _FORV_7_ >= _UPVALUE0_ and _FORV_7_ <= _UPVALUE1_ then
          if isMouseIn(_UPVALUE3_.x + 455 / _UPVALUE2_, _UPVALUE3_.y + 113 / _UPVALUE2_ + 63 / _UPVALUE2_ * (0 + 1 - 1), 45 / _UPVALUE2_, 47 / _UPVALUE2_) and windows.main == true then
            clickObjectGui(_FORV_8_[3], _FORV_8_[2])
          elseif isMouseIn(_UPVALUE3_.x + 405 / _UPVALUE2_, _UPVALUE3_.y + 113 / _UPVALUE2_ + 63 / _UPVALUE2_ * (0 + 1 - 1), 45 / _UPVALUE2_, 47 / _UPVALUE2_) and windows.main == true then
            clickObjectGui({
              _FORV_8_[3][1],
              -_FORV_8_[3][2],
              _FORV_8_[3][3]
            }, _FORV_8_[2])
          end
        end
      end
    end
    if isMouseIn(_UPVALUE3_.x + 484 / _UPVALUE2_, _UPVALUE3_.y + 27 / _UPVALUE2_, 34 / _UPVALUE2_, 34 / _UPVALUE2_) and windows.main == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      createShaderBlur(false)
      windows.main = false
      showCursor(false)
    end
  end
end)
function clickObjectGui(_ARG_0_, _ARG_1_)
  object = createObject(_ARG_1_, 0, 0, 0, 0, 0, 0)
  setElementCollisionsEnabled(object, false)
  attachElements(object, localPlayer, _ARG_0_[1], _ARG_0_[2], _ARG_0_[3], _ARG_0_[5], 0, _ARG_0_[4])
  removeEventHandler("onClientRender", root, window)
  createShaderBlur(false)
  windows.main = false
  showCursor(false)
  bindKey("h", "down", createObject_)
  bindKey("backspace", "down", stop)
  idObject = _ARG_1_
  outputChatBox(" ", 255, 175, 0, true)
  outputChatBox("\226\151\143 #ffea00H #ffffff- aby postawi\196\135 wybrany obiekt", 255, 175, 0, true)
  outputChatBox("\226\151\143 #ffea00BACKSPACE #ffffff- aby anulowa\196\135", 255, 175, 0, true)
  outputChatBox(" ", 255, 175, 0, true)
  for _FORV_7_, _FORV_8_ in pairs(textures) do
    if isElement(_FORV_8_) then
      destroyElement(_FORV_8_)
    end
  end
  textures = {}
end
function createShaderBlur(_ARG_0_)
  if _ARG_0_ == true then
    screenSource = dxCreateScreenSource(_UPVALUE0_, _UPVALUE1_, true)
    blurShader = dxCreateShader(":ST_blurUI/liquidGlass.fx")
    dxSetShaderValue(blurShader, "screenSize", _UPVALUE0_, _UPVALUE1_)
    dxSetShaderValue(blurShader, "opacity", 1)
    dxSetShaderValue(blurShader, "blurStrength", 2.6)
    dxSetShaderValue(blurShader, "tintColor", 0, 0, 0)
    dxSetShaderValue(blurShader, "tintAlpha", 0.05)
    dxSetShaderValue(blurShader, "rectLT", _UPVALUE3_.x / _UPVALUE0_, _UPVALUE3_.y / _UPVALUE1_)
    dxSetShaderValue(blurShader, "rectSize", _UPVALUE3_.w / _UPVALUE0_, _UPVALUE3_.h / _UPVALUE1_)
    dxSetShaderValue(blurShader, "radiusUV", 35 / _UPVALUE2_ / _UPVALUE3_.w, 35 / _UPVALUE2_ / _UPVALUE3_.h)
  else
    if isElement(blurShader) then
      destroyElement(blurShader)
    end
    if isElement(screenSource) then
      destroyElement(screenSource)
    end
  end
end
function createObject_()
  triggerServerEvent("evEwenciks_j6534jh", resourceRoot, "createObject", localPlayer, idObject, {
    getElementPosition(object)
  })
end
function stop()
  unbindKey("h", "down", createObject_)
  unbindKey("backspace", "down", stop)
  if isElement(object) then
    destroyElement(object)
  end
  outputChatBox("\226\151\143#ffffff Zako\197\132czono stawianie obiekt\195\179w", 255, 175, 0, true)
  outputChatBox("\226\151\143#ffffff U\197\188yj komendy /#ffea00usun #ffffffaby usun\196\133\196\135 obiekt", 255, 175, 0, true)
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
function isMouseIn(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not isCursorShowing() then
    return false
  end
  if _ARG_0_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_0_ + _ARG_2_ and _ARG_1_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_1_ + _ARG_3_ then
    return true
  else
    return false
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "activeLimit" then
    if _ARG_1_ then
      if not isEventHandlerAdded("onClientRender", root, renderLimitSpeed) then
        addEventHandler("onClientRender", root, renderLimitSpeed)
        speedLimit = 120
        outputChatBox("\226\151\143#ffffff Utrudnienia na ulicy. Ograniczenie: #FFC000" .. speedLimit .. " #ffffffkm/h", 255, 175, 0, true)
      end
    elseif isEventHandlerAdded("onClientRender", root, renderLimitSpeed) then
      removeEventHandler("onClientRender", root, renderLimitSpeed)
    end
  end
end)
function renderLimitSpeed()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if not speedLimit then
    return
  end
  if getVehicleController((getPedOccupiedVehicle(localPlayer))) ~= localPlayer then
    return
  end
  if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and getDistanceBetweenPoints2D(0, 0, getElementVelocity((getPedOccupiedVehicle(localPlayer)))) < 0.1 then
    setElementVelocity(getPedOccupiedVehicle(localPlayer), 0, 0, getElementVelocity((getPedOccupiedVehicle(localPlayer))))
    return
  end
  if speedLimit < (0 ^ 2 + 0 ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161 then
    setElementVelocity(getPedOccupiedVehicle(localPlayer), 0 * 0.9, 0 * 0.9, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9)
  end
end
addEventHandler("onClientPreRender", root, function()
  if isPlayerInVehicle(localPlayer) then
    if not getPedOccupiedVehicle(localPlayer) then
      return
    end
    for _FORV_17_, _FORV_18_ in ipairs((getElementsByType("object", getResourceRootElement(getThisResource())))) do
      if getElementData(_FORV_18_, "kolczatka") == true then
        if 1 >= getDistanceBetweenPoints3D(getVehiclePositionsWheels(getPedOccupiedVehicle(localPlayer), 1)) then
          triggerServerEvent("evEwenciks_j6534jh", resourceRoot, "punctureTheTire", localPlayer, 1, -1, -1, -1)
        end
        if 1 >= getDistanceBetweenPoints3D(getVehiclePositionsWheels(getPedOccupiedVehicle(localPlayer), 2)) then
          triggerServerEvent("evEwenciks_j6534jh", resourceRoot, "punctureTheTire", localPlayer, -1, 1, -1, -1)
        end
        if 1 >= getDistanceBetweenPoints3D(getVehiclePositionsWheels(getPedOccupiedVehicle(localPlayer), 3)) then
          triggerServerEvent("evEwenciks_j6534jh", resourceRoot, "punctureTheTire", localPlayer, -1, -1, 1, -1)
        end
        if 1 >= getDistanceBetweenPoints3D(getVehiclePositionsWheels(getPedOccupiedVehicle(localPlayer), 4)) then
          triggerServerEvent("evEwenciks_j6534jh", resourceRoot, "punctureTheTire", localPlayer, -1, -1, -1, 1)
        end
      end
    end
  end
end)
function getPositions(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not (_ARG_1_ and _ARG_2_) or not _ARG_3_ then
    return _ARG_1_, _ARG_2_, _ARG_3_
  end
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
function getVehiclePositionsWheels(_ARG_0_, _ARG_1_)
  if not _ARG_0_ then
    return
  end
  if _ARG_1_ == 1 then
  elseif _ARG_1_ == 2 then
  elseif _ARG_1_ == 3 then
  elseif _ARG_1_ == 4 then
  end
  return getPositions(_ARG_0_, getElementBoundingBox(_ARG_0_))
end
engineImportTXD(engineLoadTXD("kolczatka.txd"), 2899)
engineReplaceModel(engineLoadDFF("kolczatka.dff", 2899), 2899)
engineReplaceCOL(engineLoadCOL("barrier2.col"), 1424)
engineImportTXD(engineLoadTXD("barrier2.txd"), 1424)
engineReplaceModel(engineLoadDFF("barrier2.dff"), 1424, true)
engineReplaceCOL(engineLoadCOL("parawan.col"), 9569)
engineImportTXD(engineLoadTXD("parawan.txd"), 9569)
engineReplaceModel(engineLoadDFF("parawan.dff"), 9569, true)
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
getResourceName(getThisResource(), true, 246250916)
return
