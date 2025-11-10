windows = {main = false, podglad = false}
function window()
  if windows.main == true then
    if getPedOccupiedVehicle(localPlayer) then
      dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 25 / _UPVALUE1_, tocolor(33, 33, 33, 245))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / _UPVALUE1_, _UPVALUE0_.y + 40 / _UPVALUE1_, _UPVALUE0_.w - 30 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
      dxDrawText("OPIS POJAZDU", _UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y - 155 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 45 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("MO\197\187ESZ U\197\187Y\196\134 KOLOR\195\147W #7300ffH#c800ffT#ff00e1M#ff005dL", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y - 75 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawText("PRZYK\197\129AD: #ff0000BMW #ff0062M5 #ff00b3F90", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
      dxDrawText("WYNIK: #ff0000BMW #ff0062M5 #ff00b3F90", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 100 / _UPVALUE1_, 50 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(26, 26, 26, 255), false)
        dxDrawText("PODGL\196\132D", _UPVALUE0_.x - 222 / _UPVALUE1_, _UPVALUE0_.y + 332 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(28, 28, 28, 255), false)
        dxDrawText("PODGL\196\132D", _UPVALUE0_.x - 222 / _UPVALUE1_, _UPVALUE0_.y + 332 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      end
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:desc") then
        dxDrawText("KOSZT ZMIANY", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffa6001,000 #ffffffPP", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 440 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 70 / _UPVALUE1_, 50 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 440 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 70 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(36, 26, 26, 255), false)
          dxDrawText("USU\197\131", _UPVALUE0_.x + 590 / _UPVALUE1_, _UPVALUE0_.y + 332 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 440 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 70 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(38, 28, 28, 255), false)
          dxDrawText("USU\197\131", _UPVALUE0_.x + 590 / _UPVALUE1_, _UPVALUE0_.y + 332 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        end
        if isMouseIn(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 70 / _UPVALUE1_, 50 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 70 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(26, 26, 26, 255), false)
          dxDrawText("ZMIE\197\131", _UPVALUE0_.x + 750 / _UPVALUE1_, _UPVALUE0_.y + 332 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 70 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(28, 28, 28, 255), false)
          dxDrawText("ZMIE\197\131", _UPVALUE0_.x + 750 / _UPVALUE1_, _UPVALUE0_.y + 332 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        end
      else
        dxDrawText("KOSZT", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffa6002,500 #ffffffPP", _UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 100 / _UPVALUE1_, 50 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(26, 26, 26, 255), false)
          dxDrawText("ZAKUP", _UPVALUE0_.x + 700 / _UPVALUE1_, _UPVALUE0_.y + 332 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 470, _UPVALUE0_.y + 240 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(28, 28, 28, 255), false)
          dxDrawText("ZAKUP", _UPVALUE0_.x + 700 / _UPVALUE1_, _UPVALUE0_.y + 332 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        end
      end
    else
      exports.ST_gui:destroyCustomEditbox("editboxVopis")
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      showCursor(false)
    end
  end
  if windows.podglad == true then
    for _FORV_7_, _FORV_8_ in pairs(getElementsByType("vehicle")) do
      if getElementData(_FORV_8_, "vehicle:id") and getElementData(_FORV_8_, "vehicle:id") == getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") and textPod and getScreenFromWorldPosition(getElementPosition(_FORV_8_)) and getScreenFromWorldPosition(getElementPosition(_FORV_8_)) and 10 >= getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
        dxDrawText(textPod:gsub("#%x%x%x%x%x%x", ""), getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 1, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 1, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 1, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 1, tocolor(0, 0, 0, 255), scale, exports.ST_gui:getGUIFont("normal11"), "center", "center", false, false, false, true)
        dxDrawText(textPod, getScreenFromWorldPosition(getElementPosition(_FORV_8_)))
      end
    end
  end
end
function showGui(_ARG_0_)
  if getPedOccupiedVehicle(localPlayer) then
    if windows.podglad == true then
      return
    end
    if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
      return
    end
    if getElementData(localPlayer, "player:sid") ~= getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:ownedPlayer") then
      exports.st_gui:showPlayerNotification("To nie jest tw\195\179j pojazd!", "error")
      return
    end
    if getVehicleController((getPedOccupiedVehicle(localPlayer))) == localPlayer then
      textures = {
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      exports.ST_gui:destroyCustomEditbox("editboxVopis")
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      windows.main = true
      windows.podglad = false
      showCursor(true, false)
      exports.ST_gui:createCustomEditbox("editboxVopis", "Wpisz tekst...", _UPVALUE0_.x + 50, _UPVALUE0_.y + 180 / _UPVALUE1_, _UPVALUE0_.w - 100, 50 / _UPVALUE1_, false, "", "", 1)
    end
  else
    exports.st_gui:showPlayerNotification("Musisz siedzie\196\135 w poje\197\186dzie", "error")
  end
end
addCommandHandler("vopis", showGui)
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:desc") then
        if isMouseIn(_UPVALUE0_.x + 440 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 70 / _UPVALUE1_, 50 / _UPVALUE1_) then
          exports.ST_gui:destroyCustomEditbox("editboxVopis")
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          windows.main = false
          windows.podglad = false
          showCursor(false)
          triggerServerEvent("evEwenciks_456jdghfk", resourceRoot, "removeVopis", localPlayer, editbox)
        elseif isMouseIn(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 70 / _UPVALUE1_, 50 / _UPVALUE1_) then
          if exports.ST_gui:getCustomEditboxText("editboxVopis"):len() > 2 and exports.ST_gui:getCustomEditboxText("editboxVopis"):len() < 60 then
            if getElementData(localPlayer, "player:pp") < 1000 then
              exports.st_gui:showPlayerNotification("Aby zmieni\196\135 vopis potrzebujesz 1000 PP", "error")
              return
            end
            textPod = exports.ST_gui:getCustomEditboxText("editboxVopis")
            exports.ST_gui:destroyCustomEditbox("editboxVopis")
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientClick", root, click)
            windows.main = false
            windows.podglad = false
            showCursor(false)
            triggerServerEvent("evEwenciks_456jdghfk", resourceRoot, "setVopis", localPlayer, exports.ST_gui:getCustomEditboxText("editboxVopis"), true)
          else
            exports.st_gui:showPlayerNotification("Opis pojazdu powinien zawiera\196\135 od 2 do 30 znak\195\179w", "error")
          end
        end
      elseif isMouseIn(_UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 100 / _UPVALUE1_, 50 / _UPVALUE1_) and getPedOccupiedVehicle(localPlayer) and getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
        if exports.ST_gui:getCustomEditboxText("editboxVopis"):len() > 2 and exports.ST_gui:getCustomEditboxText("editboxVopis"):len() < 60 then
          if getElementData(localPlayer, "player:pp") < 2500 then
            exports.st_gui:showPlayerNotification("Aby zakupi\196\135 vopis potrzebujesz 2500 PP", "error")
            return
          end
          textPod = exports.ST_gui:getCustomEditboxText("editboxVopis")
          exports.ST_gui:destroyCustomEditbox("editboxVopis")
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          windows.main = false
          windows.podglad = false
          showCursor(false)
          triggerServerEvent("evEwenciks_456jdghfk", resourceRoot, "setVopis", localPlayer, (exports.ST_gui:getCustomEditboxText("editboxVopis")))
        else
          exports.st_gui:showPlayerNotification("Opis pojazdu powinien zawiera\196\135 od 2 do 30 znak\195\179w", "error")
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, 100 / _UPVALUE1_, 60 / _UPVALUE1_) and windows.main == true then
      if exports.ST_gui:getCustomEditboxText("editboxVopis"):len() > 2 and exports.ST_gui:getCustomEditboxText("editboxVopis"):len() < 60 then
        textPod = exports.ST_gui:getCustomEditboxText("editboxVopis")
        exports.ST_gui:destroyCustomEditbox("editboxVopis")
        windows.main = false
        windows.podglad = true
        showCursor(false)
        setTimer(function()
          windows.main = true
          windows.podglad = false
          showCursor(true, false)
          exports.ST_gui:createCustomEditbox("editboxVopis", "Wpisz tekst...", _UPVALUE0_.x + 110, _UPVALUE0_.y + 180 / _UPVALUE1_, _UPVALUE0_.w - 220, 50 / _UPVALUE1_, false, textPod, "", 1)
        end, 7000, 1)
      else
        exports.st_gui:showPlayerNotification("Opis pojazdu powinien zawiera\196\135 od 2 do 30 znak\195\179w", "error")
      end
    elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 45 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_) and windows.main == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.main = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("editboxVopis")
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
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
getResourceName(getThisResource(), true, 412517530)
return
