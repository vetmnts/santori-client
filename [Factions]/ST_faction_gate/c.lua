addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showGui" then
    if _ARG_1_ then
      windows = {main = false}
      object = _ARG_2_
      createShaderBlur(true)
      addEventHandler("onClientRender", root, window)
      windows.main = true
      bindKey("h", "down", action)
      posClose = _ARG_3_
      posOpen = _ARG_4_
      name = _ARG_5_
      gateIndex = _ARG_6_
    else
      createShaderBlur(false)
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      unbindKey("h", "down", action)
    end
  end
end)
function window()
  if windows.main == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 67 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 150), false)
    dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, 20 / _UPVALUE1_, tocolor(12, 12, 12, 190), false)
    dxDrawText(name, _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 200 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    if getElementData(object, "gatesFactionOpen") == 1 then
      dxDrawText("Aby zamkn\196\133\196\135, kliknij #ffa200H", _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("Aby otworzy\196\135, kliknij #ffa200H", _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "center", "center", false, false, false, true, false)
    end
  end
end
function action()
  if getElementData(object, "gatesFactionOpen") == 1 then
    triggerServerEvent("ev_bramyfrakcje", resourceRoot, "closeOpen", localPlayer, false, object, posClose, gateIndex)
  else
    triggerServerEvent("ev_bramyfrakcje", resourceRoot, "closeOpen", localPlayer, true, object, posOpen, gateIndex)
  end
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
    dxSetShaderValue(blurShader, "rectLT", _UPVALUE2_.x / _UPVALUE0_, (_UPVALUE2_.y - 65 / _UPVALUE3_) / _UPVALUE1_)
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
getResourceName(getThisResource(), true, 894757211)
return
