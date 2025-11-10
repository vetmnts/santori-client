function window()
  if _UPVALUE0_.main == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(_UPVALUE1_.x - 2 / _UPVALUE2_, _UPVALUE1_.y - 2 / _UPVALUE2_, _UPVALUE1_.w + 4 / _UPVALUE2_, _UPVALUE1_.h + 4 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(255, 187, 0, 150), false)
    dxDrawImageSection(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, _UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, 20 / _UPVALUE2_, tocolor(12, 12, 12, 190), false)
    dxDrawText("EVENT HALLOWEEN |", _UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y - 130 / _UPVALUE2_, _UPVALUE1_.x + math.floor(362 / _UPVALUE2_), _UPVALUE1_.y + math.floor(204 / _UPVALUE2_), tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText("przypisane znajd\197\186ki: #ffbb00" .. assignedLoot .. "", _UPVALUE1_.x + 250 / _UPVALUE2_, _UPVALUE1_.y - 130 / _UPVALUE2_, _UPVALUE1_.x + math.floor(362 / _UPVALUE2_), _UPVALUE1_.y + math.floor(204 / _UPVALUE2_), tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    dxDrawText("| znalezione znajd\197\186ki: #ffbb00" .. ilosc_paczek, _UPVALUE1_.x + 490 / _UPVALUE2_, _UPVALUE1_.y - 130 / _UPVALUE2_, _UPVALUE1_.x + math.floor(362 / _UPVALUE2_), _UPVALUE1_.y + math.floor(204 / _UPVALUE2_), tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 15 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 850 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawText("NA MAPIE UKRYTO #ffbb00300#ffffff ZNAJDZIEK.\n" .. "SYSTEM PRZYPISA\197\129 CI #ffbb00100#ffffff ZNAJDZIEK TYPU #ffbb00" .. assignedLoot .. "#ffffff.\n" .. "LICZ\196\132 SI\196\152 TYLKO TWOJE ZNAJD\197\185KI - POZOSTA\197\129E IGNORUJ.\n" .. "PO ZEBRANIU #ffbb00100#ffffff/#ffbb00100#ffffff ODBIERZESZ NAGROD\196\152.", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 80 / _UPVALUE2_, _UPVALUE1_.x + math.floor(362 / _UPVALUE2_), _UPVALUE1_.y + math.floor(204 / _UPVALUE2_), tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, true, false)
    dxDrawText("NAGRODY:", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 300 / _UPVALUE2_, _UPVALUE1_.x + math.floor(362 / _UPVALUE2_), _UPVALUE1_.y + math.floor(204 / _UPVALUE2_), tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE3_) do
      if 2 < 0 + 1 then
      end
      dxDrawText(_FORV_10_[1], _UPVALUE1_.x + math.floor(455 / _UPVALUE2_) * (1 - 1) + 20 / _UPVALUE2_, _UPVALUE1_.y + 400 / _UPVALUE2_ + math.floor(70 / _UPVALUE2_) * (1 + 1 - 1), _UPVALUE1_.x + math.floor(362 / _UPVALUE2_), _UPVALUE1_.y + math.floor(204 / _UPVALUE2_), tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h) then
      dxDrawImage(_UPVALUE4_.x - 1 / _UPVALUE2_, _UPVALUE4_.y - 1 / _UPVALUE2_, _UPVALUE4_.w + 2 / _UPVALUE2_, _UPVALUE4_.h + 2 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h) and _UPVALUE1_.main == true then
    createShaderBlur(false)
    removeEventHandler("onClientRender", root, window)
    _UPVALUE1_.main = false
    showCursor(false)
    for _FORV_5_, _FORV_6_ in pairs(textures) do
      if isElement(_FORV_6_) then
        destroyElement(_FORV_6_)
      end
    end
    textures = {}
  end
end)
addEvent("showGuiEventPrezenty", true)
addEventHandler("showGuiEventPrezenty", resourceRoot, function(_ARG_0_, _ARG_1_)
  ilosc_paczek = _ARG_0_
  assignedLoot = _ARG_1_
  textures = {
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    cross = dxCreateTexture(":ST_gui/img/cross.png")
  }
  createShaderBlur(true)
  addEventHandler("onClientRender", root, window)
  _UPVALUE0_.main = true
  showCursor(true)
end)
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
function createShaderBlur(_ARG_0_)
  if _ARG_0_ == true then
    screenSource = dxCreateScreenSource(_UPVALUE0_, _UPVALUE1_, true)
    blurShader = dxCreateShader(":ST_blurUI/liquidGlass.fx")
    dxSetShaderValue(blurShader, "screenSize", _UPVALUE0_, _UPVALUE1_)
    dxSetShaderValue(blurShader, "opacity", 1)
    dxSetShaderValue(blurShader, "blurStrength", 2.6)
    dxSetShaderValue(blurShader, "tintColor", 0, 0, 0)
    dxSetShaderValue(blurShader, "tintAlpha", 0.05)
    dxSetShaderValue(blurShader, "rectLT", _UPVALUE2_.x / _UPVALUE0_, _UPVALUE2_.y / _UPVALUE1_)
    dxSetShaderValue(blurShader, "rectSize", _UPVALUE2_.w / _UPVALUE0_, _UPVALUE2_.h / _UPVALUE1_)
    dxSetShaderValue(blurShader, "radiusUV", 20 / _UPVALUE3_ / _UPVALUE2_.w, 20 / _UPVALUE3_ / _UPVALUE2_.h)
  else
    if isElement(blurShader) then
      destroyElement(blurShader)
    end
    if isElement(screenSource) then
      destroyElement(screenSource)
    end
  end
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
getResourceName(getThisResource(), true, 588449966)
return
