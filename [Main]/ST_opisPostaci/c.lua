windows = {main = false, podglad = false}
function window()
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 25 / _UPVALUE1_, tocolor(33, 33, 33, 245))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / _UPVALUE1_, _UPVALUE0_.y + 40 / _UPVALUE1_, _UPVALUE0_.w - 30 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
    dxDrawText("OPIS POSTACI", _UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y - 155 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 45 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("MO\197\187ESZ U\197\187Y\196\134 KOLOR\195\147W #7300ffH#c800ffT#ff00e1M#ff005dL", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y - 60 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("KOSZT", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("#ffa60010,000 #ffffffPLN", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("PODGL\196\132D", _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 235 / _UPVALUE1_, 120 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
    if getElementData(localPlayer, "player:opis") then
      exports.ST_buttons:dxCreateButton("USU\197\131", _UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 235 / _UPVALUE1_, 120 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
    else
      exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 235 / _UPVALUE1_, 120 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
    end
  end
  if windows.podglad == true then
    dxDrawText(textPod, getScreenFromWorldPosition(getPedBonePosition(localPlayer, 8)))
  end
end
function showGui(_ARG_0_)
  if getElementData(localPlayer, "player:level") or getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "player:faction") then
    if windows.podglad == true then
      return
    end
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    exports.ST_gui:destroyCustomEditbox("editboxVopis")
    addEventHandler("onClientRender", root, window)
    windows.main = true
    windows.podglad = false
    showCursor(true)
    exports.ST_gui:createCustomEditbox("editboxOpis", "Wpisz tekst...", _UPVALUE0_.x + 50, _UPVALUE0_.y + 175 / _UPVALUE1_, _UPVALUE0_.w - 100, 50 / _UPVALUE1_, false, "", "", 1)
  end
end
addCommandHandler("opis.postaci", showGui)
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(_UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 235 / _UPVALUE1_, 120 / _UPVALUE1_, 60 / _UPVALUE1_) and windows.main == true then
      if exports.ST_gui:getCustomEditboxText("editboxOpis"):len() > 2 and exports.ST_gui:getCustomEditboxText("editboxOpis"):len() < 80 then
        textPod = exports.ST_gui:getCustomEditboxText("editboxOpis")
        exports.ST_gui:destroyCustomEditbox("editboxOpis")
        windows.main = false
        windows.podglad = true
        showCursor(false)
        setTimer(function()
          windows.main = true
          windows.podglad = false
          showCursor(true)
          exports.ST_gui:createCustomEditbox("editboxOpis", "Wpisz tekst...", _UPVALUE0_.x + 50, _UPVALUE0_.y + 175 / _UPVALUE1_, _UPVALUE0_.w - 100, 50 / _UPVALUE1_, false, "", "", 1)
        end, 7000, 1)
      else
        exports.st_gui:showPlayerNotification("Opis postaci powinien zawiera\196\135 od 2 do 80 znak\195\179w", "error")
      end
    elseif isMouseIn(_UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 235 / _UPVALUE1_, 120 / _UPVALUE1_, 60 / _UPVALUE1_) and windows.main == true then
      if getElementData(localPlayer, "player:opis") then
        triggerServerEvent("ev", resourceRoot, "setOpis", localPlayer)
      elseif exports.ST_gui:getCustomEditboxText("editboxOpis"):len() > 2 and exports.ST_gui:getCustomEditboxText("editboxOpis"):len() < 80 then
        textPod = exports.ST_gui:getCustomEditboxText("editboxOpis")
        exports.ST_gui:destroyCustomEditbox("editboxOpis")
        removeEventHandler("onClientRender", root, window)
        windows.main = false
        windows.podglad = false
        showCursor(false)
        triggerServerEvent("ev", resourceRoot, "setOpis", localPlayer, textPod)
      else
        exports.st_gui:showPlayerNotification("Opis postaci powinien zawiera\196\135 od 2 do 80 znak\195\179w", "error")
      end
    elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 45 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_) and windows.main == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("editboxOpis")
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end
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
getResourceName(getThisResource(), true, 815987099)
return
