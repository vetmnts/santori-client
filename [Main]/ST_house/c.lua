screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
zablokowanyInterior = {
  [741] = true
}
windows = {
  main = false,
  extension = false,
  preview = false,
  roommate = false,
  freeHome = false,
  editSize = false,
  kategoriaBudowania = false
}
function window()
  dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
  dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 80 / zoom, 70 / zoom, 400 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
  if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) then
    dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    if isCursorShowing() then
      cxs, cys = getCursorPosition()
      cxs, cys = screenW * cxs, screenH * cys
      dxDrawText("ZAMKNIJ", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      dxDrawText("ZAMKNIJ", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
    end
  else
    dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if windows.main == true then
    if data.isGarage then
      dxDrawText("POSIAD\197\129O\197\154\196\134: #ffbb00" .. data.name .. " z gara\197\188em", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("POSIAD\197\129O\197\154\196\134: #ffbb00" .. data.name .. "", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("INFORMACJE", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("INFORMACJE", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if selfHouse.owner == true or selfHouse.rentPlayer == true then
      if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom) then
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("OP\197\129ATY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("OP\197\129ATY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom) then
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("TRYB BUDOWANIA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("TRYB BUDOWANIA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(_UPVALUE0_.x + 742.5 / zoom, _UPVALUE0_.y + 8 / zoom, 50 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 740 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(33, 33, 33, 230))
        if data.state == 0 then
          dxDrawImage(_UPVALUE0_.x + 742.5 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.open_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("ZAMKNIJ ZAMEK", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
            dxDrawText("ZAMKNIJ ZAMEK", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawImage(_UPVALUE0_.x + 742.5 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.close_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("OTW\195\147RZ ZAMEK", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
            dxDrawText("OTW\195\147RZ ZAMEK", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          end
        end
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 740 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        if data.state == 0 then
          dxDrawImage(_UPVALUE0_.x + 742.5 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.open_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        else
          dxDrawImage(_UPVALUE0_.x + 742.5 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.close_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom) then
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("LOKATORZY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("LOKATORZY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if data.isGarage then
        if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom) then
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("GARA\197\187", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
            dxDrawText("GARA\197\187", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          end
          dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
        else
          dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      if selfHouse.owner == true then
        if isMouseIn(_UPVALUE0_.x + 680 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 680 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
          dxDrawImage(_UPVALUE0_.x + 682.5 / zoom, _UPVALUE0_.y + 14 / zoom, 42 / zoom, 42 / zoom, textures.out_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("WYPROWAD\197\185 SI\196\152", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
            dxDrawText("WYPROWAD\197\185 SI\196\152", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 680 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
          dxDrawImage(_UPVALUE0_.x + 682.5 / zoom, _UPVALUE0_.y + 14 / zoom, 42 / zoom, 42 / zoom, textures.out_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
    end
    if data.id == (getElementData(localPlayer, "player:napadyDomek") or false) then
      if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(33, 33, 33, 230))
        dxDrawImage(_UPVALUE0_.x + 801 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("NAPAD", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("NAPAD", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 801 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    elseif isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(33, 33, 33, 230))
      dxDrawImage(_UPVALUE0_.x + 801 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("WEJD\197\185 DO \197\154RODKA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("WEJD\197\185 DO \197\154RODKA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawImage(_UPVALUE0_.x + 801 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 80 / zoom, 370 / zoom, 400 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 114 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("INFORMACJE", _UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y - 5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawText("ID", _UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    dxDrawText(data.id, _UPVALUE0_.x, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
    dxDrawText("TYP", _UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 190 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    dxDrawText(data.name, _UPVALUE0_.x, _UPVALUE0_.y + 190 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
    dxDrawText("WA\197\187NO\197\154\196\134", _UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 290 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    dxDrawText(data.paid, _UPVALUE0_.x, _UPVALUE0_.y + 290 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
    dxDrawText("OP\197\129ATY", _UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 390 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    dxDrawText("#ffbb00" .. przecinek(selfHouse.priceMoney) .. " #e6e6e6PLN", _UPVALUE0_.x, _UPVALUE0_.y + 390 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
    dxDrawText("POWIERZCHNIA", _UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 490 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    if selfHouse.owner == true then
      if isMouseIn(_UPVALUE0_.x + 325 / zoom, _UPVALUE0_.y + 335 / zoom, 135 / zoom, 19 / zoom) then
        dxDrawText("" .. data.interiorSize .. "x" .. data.interiorSize .. " #ffffff[ #fcdb00POWI\196\152KSZ #ffffff]", _UPVALUE0_.x, _UPVALUE0_.y + 490 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 150), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("" .. data.interiorSize .. "x" .. data.interiorSize .. " #ffffff[ #fcdb00POWI\196\152KSZ #ffffff]", _UPVALUE0_.x, _UPVALUE0_.y + 490 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
      end
    else
      dxDrawText("" .. data.interiorSize .. "x" .. data.interiorSize, _UPVALUE0_.x, _UPVALUE0_.y + 490 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
    end
    dxDrawText("W\197\129A\197\154CICIEL", _UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 590 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    dxDrawText("" .. data.ownername .. "", _UPVALUE0_.x, _UPVALUE0_.y + 590 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
    dxDrawText("ZAMEK", _UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 690 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    if data.state == 1 then
      dxDrawText("ZAMKNI\196\152TY", _UPVALUE0_.x, _UPVALUE0_.y + 690 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
    else
      dxDrawText("OTWARTY", _UPVALUE0_.x, _UPVALUE0_.y + 690 / zoom, _UPVALUE0_.x + 362 / zoom + 100 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 480 / zoom, _UPVALUE0_.y + 80 / zoom, 370 / zoom, 400 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 114 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("LOKATORZY", _UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y - 5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 130 / zoom, 350 / zoom, 105 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 245 / zoom, 350 / zoom, 105 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 360 / zoom, 350 / zoom, 105 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(rent_table) do
      xY = xY + 1
      dxDrawText(_FORV_9_[2], _UPVALUE0_.x + 600 / zoom, _UPVALUE0_.y + 100 / zoom + 230 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("UID: #ffbb00" .. _FORV_9_[1], _UPVALUE0_.x + 600 / zoom, _UPVALUE0_.y + 170 / zoom + 230 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      if _FORV_9_[3] then
        dxDrawImage(_UPVALUE0_.x + 500 / zoom, _UPVALUE0_.y + 140 / zoom + 115 / zoom * (xY - 1), 85 / zoom, 85 / zoom, _FORV_9_[3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 500 / zoom, _UPVALUE0_.y + 140 / zoom + 115 / zoom * (xY - 1), 85 / zoom, 85 / zoom, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
  end
  if windows.editSize == true then
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("INFORMACJE", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("INFORMACJE", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("OP\197\129ATY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("OP\197\129ATY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("TRYB BUDOWANIA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("TRYB BUDOWANIA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("LOKATORZY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("LOKATORZY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if data.isGarage then
      if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom) then
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("GARA\197\187", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("GARA\197\187", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    dxDrawText("POWI\196\152KSZANIE POWIERZCHNI", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    size_table = {
      {
        {3, 100},
        {50, 80},
        1000000,
        "PLN"
      },
      {
        {4, 150},
        {37, 70},
        2000000,
        "PLN"
      },
      {
        {5, 200},
        {23, 57.5},
        4000000,
        "PLN"
      },
      {
        {6, 250},
        {10, 45},
        5000,
        "PP"
      }
    }
    for _FORV_9_, _FORV_10_ in ipairs(size_table) do
      if _FORV_10_[1][1] > data.interiorSize then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom * (0 + 1 - 1) + 99 / zoom, _UPVALUE0_.y + 79 / zoom, 182 / zoom, 402 / zoom, 20 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom * (0 + 1 - 1) + 100 / zoom, _UPVALUE0_.y + 80 / zoom, 180 / zoom, 400 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom * (0 + 1 - 1) + 110 / zoom, _UPVALUE0_.y + 110 / zoom, 160 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 150))
        dxDrawText("" .. _FORV_10_[1][1] .. "x" .. _FORV_10_[1][1] .. "", _UPVALUE0_.x + 110 / zoom + 190 / zoom * (0 + 1 - 1), _UPVALUE0_.y - 8 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom * (0 + 1 - 1) + 105 / zoom, _UPVALUE0_.y + 122 / zoom, 170 / zoom, 170 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
        dxDrawText("LIMIT OBIEKT\195\147W\n#ffbb00" .. _FORV_10_[1][2] .. "", _UPVALUE0_.x + 10 / zoom + 190 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 470 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
        dxDrawText("" .. przecinek(_FORV_10_[3]) .. " " .. _FORV_10_[4] .. "", _UPVALUE0_.x + 10 / zoom + 190 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 600 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        for _FORV_17_ = 1, _FORV_10_[1][1] * _FORV_10_[1][1] do
          if 0 + 1 > _FORV_10_[1][1] then
          end
          dxDrawRoundedRectangle(_UPVALUE0_.x + 27 / zoom * (1 - 1) + 100 / zoom + 190 / zoom * (0 + 1 - 1) + _FORV_10_[2][1], _UPVALUE0_.y + 27 / zoom * (1 + 1 - 1) + 80 / zoom + _FORV_10_[2][2], 25 / zoom, 25 / zoom, 3 / zoom, tocolor(255, 128, 0, 200))
        end
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 115 / zoom + 190 / zoom * (0 + 1 - 1), _UPVALUE0_.y + 425 / zoom, 150 / zoom, 41 / zoom, 255, 1)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom * (0 + 1 - 1) + 99 / zoom, _UPVALUE0_.y + 79 / zoom, 182 / zoom, 402 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom * (0 + 1 - 1) + 100 / zoom, _UPVALUE0_.y + 80 / zoom, 180 / zoom, 400 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom * (0 + 1 - 1) + 110 / zoom, _UPVALUE0_.y + 110 / zoom, 160 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 100))
        dxDrawText("" .. _FORV_10_[1][1] .. "x" .. _FORV_10_[1][1] .. "", _UPVALUE0_.x + 110 / zoom + 190 / zoom * (0 + 1 - 1), _UPVALUE0_.y - 8 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 100), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom * (0 + 1 - 1) + 105 / zoom, _UPVALUE0_.y + 122 / zoom, 170 / zoom, 170 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
        dxDrawText("LIMIT OBIEKT\195\147W\n#ffbb00" .. _FORV_10_[1][2] .. "", _UPVALUE0_.x + 10 / zoom + 190 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 470 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
        dxDrawText("" .. przecinek(_FORV_10_[3]) .. " " .. _FORV_10_[4] .. "", _UPVALUE0_.x + 10 / zoom + 190 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 600 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 100), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        for _FORV_17_ = 1, _FORV_10_[1][1] * _FORV_10_[1][1] do
          if 0 + 1 > _FORV_10_[1][1] then
          end
          dxDrawRoundedRectangle(_UPVALUE0_.x + 27 / zoom * (1 - 1) + 100 / zoom + 190 / zoom * (0 + 1 - 1) + _FORV_10_[2][1], _UPVALUE0_.y + 27 / zoom * (1 + 1 - 1) + 80 / zoom + _FORV_10_[2][2], 25 / zoom, 25 / zoom, 3 / zoom, tocolor(100, 100, 100, 50))
        end
      end
    end
  end
  if windows.roommate == true then
    dxDrawText("LOKATORZY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("INFORMACJE", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("INFORMACJE", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("OP\197\129ATY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("OP\197\129ATY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("TRYB BUDOWANIA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("TRYB BUDOWANIA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("LOKATORZY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("LOKATORZY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if data.isGarage then
      if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom) then
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("GARA\197\187", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("GARA\197\187", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 280 / zoom, _UPVALUE0_.y + 80 / zoom, 350 / zoom, 320 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 290 / zoom, _UPVALUE0_.y + 120 / zoom, 330 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("ILO\197\154\196\134 LOKATOR\195\147W: " .. #rent_table, _UPVALUE0_.x + 290 / zoom, _UPVALUE0_.y + 10 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(rent_table) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 290 / zoom, _UPVALUE0_.y + 135 / zoom + 70 / zoom * (xY - 1), 330 / zoom, 65 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawText(_FORV_8_[2], _UPVALUE0_.x + 360 / zoom, _UPVALUE0_.y + 100 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawText("UID: #ffbb00" .. _FORV_8_[1], _UPVALUE0_.x + 360 / zoom, _UPVALUE0_.y + 160 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      if _FORV_8_[3] then
        dxDrawImage(_UPVALUE0_.x + 295 / zoom, _UPVALUE0_.y + 137.5 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_[3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 295 / zoom, _UPVALUE0_.y + 137.5 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 140 / zoom + 70 / zoom * (xY - 1), 55 / zoom, 55 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 140 / zoom + 70 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 15 / zoom, tocolor(22, 22, 22, 230))
        dxDrawText("\226\156\152", _UPVALUE0_.x + 573 / zoom, _UPVALUE0_.y + 130 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(150, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 140 / zoom + 70 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
        dxDrawText("\226\156\152", _UPVALUE0_.x + 573 / zoom, _UPVALUE0_.y + 130 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, false, false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 282 / zoom, _UPVALUE0_.y + 352 / zoom, 346 / zoom, 46 / zoom, 15 / zoom, tocolor(22, 22, 22, 255))
    if 0 < exports.ST_gui:getCustomEditboxText("roommate_house"):len() then
      if isMouseIn(_UPVALUE0_.x + 580 / zoom, _UPVALUE0_.y + 352 / zoom, 46 / zoom, 46 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 580 / zoom, _UPVALUE0_.y + 352 / zoom, 46 / zoom, 46 / zoom, 15 / zoom, tocolor(15, 15, 15, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 587 / zoom, _UPVALUE0_.y + 550 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 200, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 580 / zoom, _UPVALUE0_.y + 352 / zoom, 46 / zoom, 46 / zoom, 15 / zoom, tocolor(19, 19, 19, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 587 / zoom, _UPVALUE0_.y + 550 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      end
    end
    dxDrawText("UPRAWNIENIA LOKATOR\195\147W", _UPVALUE0_.x + 540 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    if tonumber(split(data.permissions_rent, ",")[1]) == 1 then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 349 / zoom, _UPVALUE0_.y + 449 / zoom, 57 / zoom, 57 / zoom, 15 / zoom, tocolor(0, 150, 0, 255))
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 349 / zoom, _UPVALUE0_.y + 449 / zoom, 57 / zoom, 57 / zoom, 15 / zoom, tocolor(150, 0, 0, 255))
    end
    if isMouseIn(_UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
      dxDrawImage(_UPVALUE0_.x + 355 / zoom, _UPVALUE0_.y + 455 / zoom, 45 / zoom, 45 / zoom, textures.edit_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("TRYB BUDOWANIA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("TRYB BUDOWANIA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom, 15 / zoom, tocolor(40, 40, 40, 255))
      dxDrawImage(_UPVALUE0_.x + 355 / zoom, _UPVALUE0_.y + 455 / zoom, 45 / zoom, 45 / zoom, textures.edit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if tonumber(split(data.permissions_rent, ",")[2]) == 1 then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 419 / zoom, _UPVALUE0_.y + 449 / zoom, 57 / zoom, 57 / zoom, 15 / zoom, tocolor(0, 150, 0, 255))
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 419 / zoom, _UPVALUE0_.y + 449 / zoom, 57 / zoom, 57 / zoom, 15 / zoom, tocolor(150, 0, 0, 255))
    end
    if isMouseIn(_UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
      dxDrawImage(_UPVALUE0_.x + 425 / zoom, _UPVALUE0_.y + 455 / zoom, 45 / zoom, 45 / zoom, textures.pay_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("OP\197\129ACANIE", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("OP\197\129ACANIE", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom, 15 / zoom, tocolor(40, 40, 40, 255))
      dxDrawImage(_UPVALUE0_.x + 425 / zoom, _UPVALUE0_.y + 455 / zoom, 45 / zoom, 45 / zoom, textures.pay_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if tonumber(split(data.permissions_rent, ",")[3]) == 1 then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 489 / zoom, _UPVALUE0_.y + 449 / zoom, 57 / zoom, 57 / zoom, 15 / zoom, tocolor(0, 150, 0, 255))
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 489 / zoom, _UPVALUE0_.y + 449 / zoom, 57 / zoom, 57 / zoom, 15 / zoom, tocolor(150, 0, 0, 255))
    end
    if isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
      dxDrawImage(_UPVALUE0_.x + 492 / zoom, _UPVALUE0_.y + 455 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("OTWIERANIE / ZAMYKANIE ZAMKA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("OTWIERANIE / ZAMYKANIE ZAMKA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom, 15 / zoom, tocolor(40, 40, 40, 255))
      dxDrawImage(_UPVALUE0_.x + 492 / zoom, _UPVALUE0_.y + 455 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.extension == true then
    dxDrawText("OP\197\129ATY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("INFORMACJE", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("INFORMACJE", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("OP\197\129ATY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("OP\197\129ATY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("TRYB BUDOWANIA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("TRYB BUDOWANIA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("LOKATORZY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("LOKATORZY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if data.isGarage then
      if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom) then
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("GARA\197\187", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("GARA\197\187", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    if typePayment == "pp" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 548 / zoom, _UPVALUE0_.y + 88 / zoom, 204 / zoom, 254 / zoom, 15 / zoom, tocolor(0, 255, 0, 255))
    elseif typePayment == "money" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 188 / zoom, _UPVALUE0_.y + 88 / zoom, 204 / zoom, 254 / zoom, 15 / zoom, tocolor(0, 255, 0, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 189 / zoom, _UPVALUE0_.y + 89 / zoom, 202 / zoom, 252 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
    if isMouseIn(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
      dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 100 / zoom, 180 / zoom, 180 / zoom, textures.cash_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      dxDrawText("GOT\195\147WKA", _UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 100 / zoom, 180 / zoom, 180 / zoom, textures.cash_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("GOT\195\147WKA", _UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 549 / zoom, _UPVALUE0_.y + 89 / zoom, 202 / zoom, 252 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
    if isMouseIn(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
      dxDrawText("PP", _UPVALUE0_.x + 950 / zoom, _UPVALUE0_.y + 180 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(188, 191, 2, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold77"), "center", "center", false, false, false, false, false)
      dxDrawText("PUNKTY PREMIUM", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("PP", _UPVALUE0_.x + 950 / zoom, _UPVALUE0_.y + 180 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(251, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold77"), "center", "center", false, false, false, false, false)
      dxDrawText("PUNKTY PREMIUM", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    end
    if typePayment then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 369 / zoom, _UPVALUE0_.y + 394 / zoom, 52 / zoom, 52 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 370 / zoom, _UPVALUE0_.y + 395 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("<", _UPVALUE0_.x + 428 / zoom, _UPVALUE0_.y + 640 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal30"), "center", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 519 / zoom, _UPVALUE0_.y + 394 / zoom, 52 / zoom, 52 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 395 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText(">", _UPVALUE0_.x + 730 / zoom, _UPVALUE0_.y + 640 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal30"), "center", "center", false, false, false, false, false)
      dxDrawText(houseDay, _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 643 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
      if typePayment == "pp" then
        dxDrawText("#fc5d00" .. przecinek(houseDay * selfHouse.pricePP) .. " #ffffffPP", _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 730 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("#009c03" .. przecinek(houseDay * selfHouse.priceMoney) .. " #ffffffPLN", _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 730 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      end
      exports.ST_buttons:dxCreateButton("Op\197\130a\196\135", _UPVALUE0_.x + 380 / zoom, _UPVALUE0_.y + 490 / zoom, 180 / zoom, 61 / zoom, 255, 1)
    end
  end
  if windows.freeHome == true then
    if data.isGarage then
      dxDrawText("POSIAD\197\129O\197\154\196\134 Z GARA\197\187EM - " .. data.name .. " " .. data.interiorSize .. "x" .. data.interiorSize .. " id: " .. data.id, _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    else
      dxDrawText("POSIAD\197\129O\197\154\196\134 - " .. data.name .. " " .. data.interiorSize .. "x" .. data.interiorSize .. " id: " .. data.id, _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    end
    if data.id == (getElementData(localPlayer, "player:napadyDomek") or false) then
      if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(33, 33, 33, 230))
        dxDrawImage(_UPVALUE0_.x + 801 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("NAPAD", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("NAPAD", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 801 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    elseif isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(33, 33, 33, 230))
      dxDrawImage(_UPVALUE0_.x + 801 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("WEJD\197\185 DO \197\154RODKA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("WEJD\197\185 DO \197\154RODKA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawImage(_UPVALUE0_.x + 801 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom, textures.door_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if typePayment == "pp" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 548 / zoom, _UPVALUE0_.y + 88 / zoom, 204 / zoom, 254 / zoom, 15 / zoom, tocolor(0, 255, 0, 255))
    elseif typePayment == "money" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 188 / zoom, _UPVALUE0_.y + 88 / zoom, 204 / zoom, 254 / zoom, 15 / zoom, tocolor(0, 255, 0, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 189 / zoom, _UPVALUE0_.y + 89 / zoom, 202 / zoom, 252 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
    if isMouseIn(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
      dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 100 / zoom, 180 / zoom, 180 / zoom, textures.cash_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      dxDrawText("GOT\195\147WKA", _UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 100 / zoom, 180 / zoom, 180 / zoom, textures.cash_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("GOT\195\147WKA", _UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 549 / zoom, _UPVALUE0_.y + 89 / zoom, 202 / zoom, 252 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
    if isMouseIn(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
      dxDrawText("PP", _UPVALUE0_.x + 950 / zoom, _UPVALUE0_.y + 180 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(188, 191, 2, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold77"), "center", "center", false, false, false, false, false)
      dxDrawText("PUNKTY PREMIUM", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("PP", _UPVALUE0_.x + 950 / zoom, _UPVALUE0_.y + 180 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(251, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold77"), "center", "center", false, false, false, false, false)
      dxDrawText("PUNKTY PREMIUM", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    end
    if typePayment then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 369 / zoom, _UPVALUE0_.y + 394 / zoom, 52 / zoom, 52 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 370 / zoom, _UPVALUE0_.y + 395 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("<", _UPVALUE0_.x + 428 / zoom, _UPVALUE0_.y + 640 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal30"), "center", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 519 / zoom, _UPVALUE0_.y + 394 / zoom, 52 / zoom, 52 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 395 / zoom, 50 / zoom, 50 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText(">", _UPVALUE0_.x + 730 / zoom, _UPVALUE0_.y + 640 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal30"), "center", "center", false, false, false, false, false)
      dxDrawText(houseDay, _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 643 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
      if typePayment == "pp" then
        dxDrawText("#fc5d00" .. przecinek(houseDay * selfHouse.pricePP) .. " #ffffffPP", _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 730 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("#009c03" .. przecinek(houseDay * selfHouse.priceMoney) .. " #ffffffPLN", _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 730 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      end
      exports.ST_buttons:dxCreateButton("Op\197\130a\196\135", _UPVALUE0_.x + 380 / zoom, _UPVALUE0_.y + 490 / zoom, 180 / zoom, 61 / zoom, 255, 1)
    end
  end
  if windows.kategoriaBudowania == true then
    dxDrawText("TRYB BUDOWANIA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("INFORMACJE", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("INFORMACJE", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("OP\197\129ATY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("OP\197\129ATY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("TRYB BUDOWANIA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("TRYB BUDOWANIA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("LOKATORZY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("LOKATORZY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if data.isGarage then
      if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom) then
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("GARA\197\187", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          dxDrawText("GARA\197\187", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        end
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    dxDrawText("WYBIERZ CO BUDOWA\196\134", _UPVALUE0_.x + 585 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 169 / zoom, _UPVALUE0_.y + 139 / zoom, 258 / zoom, 322 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
    if isMouseIn(_UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y + 140 / zoom, 256 / zoom, 320 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y + 140 / zoom, 256 / zoom, 320 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + (256 / zoom - 150 / zoom) / 2, _UPVALUE0_.y + 160 / zoom, 150 / zoom, 150 / zoom, textures.house_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      dxDrawText("BUDOWANIE DOMKU", _UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 580 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y + 140 / zoom, 256 / zoom, 320 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + (256 / zoom - 150 / zoom) / 2, _UPVALUE0_.y + 160 / zoom, 150 / zoom, 150 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("BUDOWANIE DOMKU", _UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 580 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    end
    if data.isGarage and data.garageLevel > 0 then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 529 / zoom, _UPVALUE0_.y + 139 / zoom, 258 / zoom, 322 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      if isMouseIn(_UPVALUE0_.x + 529 / zoom, _UPVALUE0_.y + 139 / zoom, 258 / zoom, 322 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 530 / zoom, _UPVALUE0_.y + 140 / zoom, 256 / zoom, 320 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
        dxDrawImage(_UPVALUE0_.x + 530 / zoom + (256 / zoom - 150 / zoom) / 2, _UPVALUE0_.y + 160 / zoom, 150 / zoom, 150 / zoom, textures.garage_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        dxDrawText("BUDOWANIE GARA\197\187U", _UPVALUE0_.x + 955 / zoom, _UPVALUE0_.y + 580 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 530 / zoom, _UPVALUE0_.y + 140 / zoom, 256 / zoom, 320 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
        dxDrawImage(_UPVALUE0_.x + 530 / zoom + (256 / zoom - 150 / zoom) / 2, _UPVALUE0_.y + 160 / zoom, 150 / zoom, 150 / zoom, textures.garage_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("BUDOWANIE GARA\197\187U", _UPVALUE0_.x + 955 / zoom, _UPVALUE0_.y + 580 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 529 / zoom, _UPVALUE0_.y + 139 / zoom, 258 / zoom, 322 / zoom, 15 / zoom, tocolor(60, 60, 60, 105))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 530 / zoom, _UPVALUE0_.y + 140 / zoom, 256 / zoom, 320 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
      dxDrawImage(_UPVALUE0_.x + 530 / zoom + (256 / zoom - 150 / zoom) / 2, _UPVALUE0_.y + 160 / zoom, 150 / zoom, 150 / zoom, textures.garage_icon, 0, 0, 0, tocolor(255, 255, 255, 100), false)
      dxDrawText("BUDOWANIE GARA\197\187U", _UPVALUE0_.x + 955 / zoom, _UPVALUE0_.y + 580 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 100), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    end
  end
  if windows.garageBuy == true then
    dxDrawText("GARA\197\187", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("INFORMACJE", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("INFORMACJE", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("OP\197\129ATY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("OP\197\129ATY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom, textures.pay_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("TRYB BUDOWANIA", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("TRYB BUDOWANIA", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom, textures.edit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("LOKATORZY", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("LOKATORZY", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom, textures.roommate_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("GARA\197\187", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("GARA\197\187", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom, textures.garage_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    size_tableGarage = {
      {
        {1, 50},
        2,
        5000000,
        "#d1d1d1PLN",
        2
      },
      {
        {2, 100},
        3,
        2000000,
        "#d1d1d1PLN",
        4
      },
      {
        {3, 150},
        4,
        4000000,
        "#d1d1d1PLN",
        6
      },
      {
        {4, 200},
        6,
        5000000,
        "#d1d1d1PLN",
        12
      },
      {
        {5, 300},
        9,
        5000,
        "#ffbb00PP",
        20
      }
    }
    for _FORV_9_, _FORV_10_ in ipairs(size_tableGarage) do
      if _FORV_10_[1][1] == data.garageLevel then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 99 / zoom, _UPVALUE0_.y + 79 / zoom, 147 / zoom, 402 / zoom, 20 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 100 / zoom, _UPVALUE0_.y + 80 / zoom, 145 / zoom, 400 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 110 / zoom, _UPVALUE0_.y + 110 / zoom, 125 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 150))
        dxDrawText("" .. _FORV_10_[2] .. "x", _UPVALUE0_.x + 110 / zoom + 152 / zoom * (0 + 1 - 1), _UPVALUE0_.y - 8 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 105 / zoom, _UPVALUE0_.y + 122 / zoom, 135 / zoom, 170 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
        dxDrawText("LIMIT OBIEKT\195\147W: #ffbb00" .. _FORV_10_[1][2] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 440 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
        dxDrawText("LIMIT POJAZD\195\147W: #ffbb00" .. _FORV_10_[5] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 510 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        dxDrawText("#00ad23" .. przecinek(_FORV_10_[3]) .. " " .. _FORV_10_[4] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 600 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        if _FORV_9_ == 1 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 75 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 2 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 3 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 4 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 82 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        else
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 49 / zoom, _UPVALUE0_.y + 82 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        end
        dxDrawText("W POSIADANIU", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 700 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      elseif _FORV_10_[1][1] == data.garageLevel + 1 then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 99 / zoom, _UPVALUE0_.y + 79 / zoom, 147 / zoom, 402 / zoom, 20 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 100 / zoom, _UPVALUE0_.y + 80 / zoom, 145 / zoom, 400 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 110 / zoom, _UPVALUE0_.y + 110 / zoom, 125 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 150))
        dxDrawText("" .. _FORV_10_[2] .. "x", _UPVALUE0_.x + 110 / zoom + 152 / zoom * (0 + 1 - 1), _UPVALUE0_.y - 8 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 105 / zoom, _UPVALUE0_.y + 122 / zoom, 135 / zoom, 170 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
        dxDrawText("LIMIT OBIEKT\195\147W: #ffbb00" .. _FORV_10_[1][2] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 440 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
        dxDrawText("LIMIT POJAZD\195\147W: #ffbb00" .. _FORV_10_[5] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 510 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        dxDrawText("#00ad23" .. przecinek(_FORV_10_[3]) .. " " .. _FORV_10_[4] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 600 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        if _FORV_9_ == 1 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 75 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 2 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 3 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 4 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 82 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        else
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 49 / zoom, _UPVALUE0_.y + 82 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        end
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 115 / zoom + 152 / zoom * (0 + 1 - 1), _UPVALUE0_.y + 425 / zoom, 115 / zoom, 41 / zoom, 255, 1)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 99 / zoom, _UPVALUE0_.y + 79 / zoom, 147 / zoom, 402 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 100 / zoom, _UPVALUE0_.y + 80 / zoom, 145 / zoom, 400 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 110 / zoom, _UPVALUE0_.y + 110 / zoom, 125 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 100))
        dxDrawText("" .. _FORV_10_[2] .. "x", _UPVALUE0_.x + 110 / zoom + 152 / zoom * (0 + 1 - 1), _UPVALUE0_.y - 8 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 100), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 105 / zoom, _UPVALUE0_.y + 122 / zoom, 135 / zoom, 170 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
        dxDrawText("LIMIT OBIEKT\195\147W: #ffbb00" .. _FORV_10_[1][2] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 440 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 150), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
        dxDrawText("LIMIT POJAZD\195\147W: #ffbb00" .. _FORV_10_[5] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 510 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 150), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        dxDrawText("#00ad23" .. przecinek(_FORV_10_[3]) .. " " .. _FORV_10_[4] .. "", _UPVALUE0_.x - 15 / zoom + 152 / zoom * (0 + 1 - 1) * 2, _UPVALUE0_.y + 600 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 100), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        if _FORV_9_ == 1 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 75 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 2 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 3 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 95 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        elseif _FORV_9_ == 4 then
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 63 / zoom, _UPVALUE0_.y + 82 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        else
          drawSquareGrid(_UPVALUE0_.x + 152 / zoom * (0 + 1 - 1) + 49 / zoom, _UPVALUE0_.y + 82 / zoom, _FORV_10_[1][1], zoom, _FORV_9_)
        end
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.editSize == true then
      for _FORV_6_, _FORV_7_ in ipairs(size_table) do
        if isMouseIn(_UPVALUE0_.x + 115 / zoom + 190 / zoom * (0 + 1 - 1), _UPVALUE0_.y + 425 / zoom, 150 / zoom, 41 / zoom) and _FORV_7_[1][1] > data.interiorSize then
          if _FORV_7_[4] == "PP" then
            if getElementData(localPlayer, "player:pp") > _FORV_7_[3] then
              data.interiorSize = _FORV_7_[1][1]
              triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "editSizeInterior", localPlayer, data)
            else
              exports.st_gui:showPlayerNotification("Nie posiadasz tyle punkt\195\179w premium!", "error")
            end
          elseif getElementData(localPlayer, "player:moneyMNn") >= _FORV_7_[3] then
            data.interiorSize = _FORV_7_[1][1]
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "editSizeInterior", localPlayer, data)
          else
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
          end
        end
      end
    end
    if windows.garageBuy == true then
      for _FORV_6_, _FORV_7_ in ipairs(size_tableGarage) do
        if isMouseIn(_UPVALUE0_.x + 115 / zoom + 152 / zoom * (0 + 1 - 1), _UPVALUE0_.y + 425 / zoom, 115 / zoom, 41 / zoom) and _FORV_7_[1][1] > data.garageLevel then
          if _FORV_7_[4] == "PP" then
            if getElementData(localPlayer, "player:pp") > _FORV_7_[3] then
              data.garageLevel = _FORV_7_[1][1]
              triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "editSizeInterior", localPlayer, data, "garage")
            else
              exports.st_gui:showPlayerNotification("Nie posiadasz tyle punkt\195\179w premium!", "error")
            end
          elseif getElementData(localPlayer, "player:moneyMNn") >= _FORV_7_[3] then
            data.garageLevel = _FORV_7_[1][1]
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "editSizeInterior", localPlayer, data, "garage")
            if data.garageLevel == 1 then
              showCursor(false)
              if isElement(hudMaskShader) then
                destroyElement(hudMaskShader)
              end
              if isElement(maska) then
                destroyElement(maska)
              end
              removeEventHandler("onClientRender", root, window)
              removeEventHandler("onClientClick", root, click)
              windows.main = false
              windows.roommate = false
              windows.extension = false
              windows.editSize = false
              windows.kategoriaBudowania = false
              windows.garageBuy = false
              exports.ST_gui:destroyCustomEditbox("roommate_house")
              selfHouse = {}
              windows.freeHome = false
            end
          else
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
          end
        end
      end
    end
    if windows.roommate == true then
      for _FORV_6_, _FORV_7_ in ipairs(rent_table) do
        if isMouseIn(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 140 / zoom + 70 / zoom * (0 + 1 - 1), 55 / zoom, 55 / zoom) then
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "removePlayerRent", localPlayer, _FORV_7_[1], data, _FORV_7_[2])
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 90 / zoom, 50 / zoom, 50 / zoom) and (selfHouse.owner == true or selfHouse.rentPlayer == true) then
      exports.ST_gui:destroyCustomEditbox("roommate_house")
      windows.main = true
      windows.extension = false
      windows.roommate = false
      windows.freeHome = false
      windows.editSize = false
      windows.kategoriaBudowania = false
      windows.garageBuy = false
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 150 / zoom, 50 / zoom, 50 / zoom) and (selfHouse.owner == true or selfHouse.rentPlayer == true) then
      if selfHouse.rentPlayer == true and tonumber(split(data.permissions_rent, ",")[2]) == 2 then
        exports.st_gui:showPlayerNotification("Brak uprawnie\197\132", "error")
        return
      end
      exports.ST_gui:destroyCustomEditbox("roommate_house")
      windows.main = false
      windows.extension = true
      windows.roommate = false
      windows.freeHome = false
      windows.editSize = false
      windows.kategoriaBudowania = false
      windows.garageBuy = false
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 210 / zoom, 50 / zoom, 50 / zoom) and (selfHouse.owner == true or selfHouse.rentPlayer == true) then
      windows.main = false
      windows.extension = false
      windows.roommate = false
      windows.freeHome = false
      windows.editSize = false
      windows.kategoriaBudowania = true
      windows.garageBuy = false
    elseif isMouseIn(_UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y + 140 / zoom, 256 / zoom, 320 / zoom) and windows.kategoriaBudowania == true and (selfHouse.owner == true or selfHouse.rentPlayer == true) then
      if zablokowanyInterior[data.id] then
        exports.st_gui:showPlayerNotification("Ta opcja w tym domku jest zablokowana", "error")
        return
      end
      if selfHouse.rentPlayer == true and tonumber(split(data.permissions_rent, ",")[1]) == 0 then
        exports.st_gui:showPlayerNotification("Brak uprawnie\197\132", "error")
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(getElementsByType("player")) do
        if getElementData(_FORV_6_, "player:editHouse") == data.id then
          exports.st_gui:showPlayerNotification("Kto\197\155 aktualnie edytuje wn\196\153trze", "error")
          return
        end
      end
      setElementData(localPlayer, "player:editHouse", data.id)
      showCursor(false)
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.main = false
      windows.extension = false
      windows.roommate = false
      windows.freeHome = false
      windows.editSize = false
      windows.kategoriaBudowania = false
      windows.garageBuy = false
      exports.ST_gui:destroyCustomEditbox("roommate_house")
      exports.st_interiors:startLoading(3000, "Wchodzisz do edycji domku...")
      setTimer(function()
        triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "editHome", localPlayer, data.id)
      end, 1000, 1)
    elseif isMouseIn(_UPVALUE0_.x + 529 / zoom, _UPVALUE0_.y + 139 / zoom, 258 / zoom, 322 / zoom) and windows.kategoriaBudowania == true and (selfHouse.owner == true or selfHouse.rentPlayer == true) then
      if data.isGarage and 0 < data.garageLevel then
        if zablokowanyInterior[data.id] then
          exports.st_gui:showPlayerNotification("Ta opcja w tym domku jest zablokowana", "error")
          return
        end
        if selfHouse.rentPlayer == true and tonumber(split(data.permissions_rent, ",")[1]) == 0 then
          exports.st_gui:showPlayerNotification("Brak uprawnie\197\132", "error")
          return
        end
        for _FORV_5_, _FORV_6_ in ipairs(getElementsByType("player")) do
          if getElementData(_FORV_6_, "player:editHouse") == data.id then
            exports.st_gui:showPlayerNotification("Kto\197\155 aktualnie edytuje wn\196\153trze", "error")
            return
          end
        end
        setElementData(localPlayer, "player:editHouse", data.id)
        showCursor(false)
        if isElement(hudMaskShader) then
          destroyElement(hudMaskShader)
        end
        if isElement(maska) then
          destroyElement(maska)
        end
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.main = false
        windows.extension = false
        windows.roommate = false
        windows.freeHome = false
        windows.editSize = false
        windows.kategoriaBudowania = false
        windows.garageBuy = false
        exports.ST_gui:destroyCustomEditbox("roommate_house")
        exports.st_interiors:startLoading(3000, "Wchodzisz do edycji domku...")
        setTimer(function()
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "enterGarage", localPlayer, data.id, true)
        end, 2500, 1)
      end
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 270 / zoom, 50 / zoom, 50 / zoom) and selfHouse.owner == true then
      exports.ST_gui:destroyCustomEditbox("roommate_house")
      windows.main = false
      windows.extension = false
      windows.roommate = true
      windows.freeHome = false
      windows.editSize = false
      windows.kategoriaBudowania = false
      windows.garageBuy = false
      exports.ST_gui:createCustomEditbox("roommate_house", "Wpisz UID gracza", _UPVALUE0_.x + 282 / zoom, _UPVALUE0_.y + 352 / zoom, 246 / zoom, 46 / zoom, false, false, "", 1, {
        25,
        25,
        25,
        0,
        22,
        22,
        22,
        0
      })
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 330 / zoom, 50 / zoom, 50 / zoom) and selfHouse.owner == true then
      if data.isGarage then
        exports.ST_gui:destroyCustomEditbox("roommate_house")
        windows.main = false
        windows.extension = false
        windows.roommate = false
        windows.freeHome = false
        windows.editSize = false
        windows.kategoriaBudowania = false
        windows.garageBuy = true
        exports.ST_gui:destroyCustomEditbox("roommate_house")
      end
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) then
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.main = false
      windows.extension = false
      windows.roommate = false
      windows.freeHome = false
      windows.editSize = false
      windows.kategoriaBudowania = false
      windows.garageBuy = false
      exports.ST_gui:destroyCustomEditbox("roommate_house")
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x + 325 / zoom, _UPVALUE0_.y + 335 / zoom, 135 / zoom, 19 / zoom) and selfHouse.owner == true then
      windows.main = false
      windows.extension = false
      windows.roommate = false
      windows.freeHome = false
      windows.editSize = true
      windows.kategoriaBudowania = false
      windows.garageBuy = false
    elseif isMouseIn(_UPVALUE0_.x + 580 / zoom, _UPVALUE0_.y + 352 / zoom, 46 / zoom, 46 / zoom) and windows.roommate == true then
      if 0 >= exports.ST_gui:getCustomEditboxText("roommate_house"):len() or exports.ST_gui:getCustomEditboxText("roommate_house"):len() > 14 then
        exports.st_gui:showPlayerNotification("UID powinien zawiera\196\135 od 0 do 14 znak\195\179w!", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("roommate_house"))) == tonumber(getElementData(localPlayer, "player:sid")) then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz doda\196\135 siebie", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(rent_table) do
        if _FORV_7_[1] == tonumber((exports.ST_gui:getCustomEditboxText("roommate_house"))) then
          exports.st_gui:showPlayerNotification("Ju\197\188 dodano tego wsp\195\179\197\130lokatora", "error")
          return
        end
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("roommate_house"))) then
        triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "addPlayerRent", localPlayer, tonumber((exports.ST_gui:getCustomEditboxText("roommate_house"))), data)
      end
    elseif isMouseIn(_UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom) and windows.roommate == true then
      if tonumber(split(data.permissions_rent, ",")[1]) == 1 then
        split(data.permissions_rent, ",")[1] = 0
      else
        split(data.permissions_rent, ",")[1] = 1
      end
      data.permissions_rent = "" .. split(data.permissions_rent, ",")[1] .. "," .. split(data.permissions_rent, ",")[2] .. "," .. split(data.permissions_rent, ",")[3] .. ""
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "permissionsEditRent", localPlayer, data.permissions_rent, data)
    elseif isMouseIn(_UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom) and windows.roommate == true then
      if tonumber(split(data.permissions_rent, ",")[2]) == 1 then
        split(data.permissions_rent, ",")[2] = 0
      else
        split(data.permissions_rent, ",")[2] = 1
      end
      data.permissions_rent = "" .. split(data.permissions_rent, ",")[1] .. "," .. split(data.permissions_rent, ",")[2] .. "," .. split(data.permissions_rent, ",")[3] .. ""
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "permissionsEditRent", localPlayer, data.permissions_rent, data)
    elseif isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 450 / zoom, 55 / zoom, 55 / zoom) and windows.roommate == true then
      if tonumber(split(data.permissions_rent, ",")[3]) == 1 then
        split(data.permissions_rent, ",")[3] = 0
      else
        split(data.permissions_rent, ",")[3] = 1
      end
      data.permissions_rent = "" .. split(data.permissions_rent, ",")[1] .. "," .. split(data.permissions_rent, ",")[2] .. "," .. split(data.permissions_rent, ",")[3] .. ""
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "permissionsEditRent", localPlayer, data.permissions_rent, data)
    elseif isMouseIn(_UPVALUE0_.x + 370 / zoom, _UPVALUE0_.y + 395 / zoom, 50 / zoom, 50 / zoom) and (windows.extension == true or windows.freeHome == true) then
      if typePayment then
        if 1 >= houseDay then
          houseDay = 1
          return
        end
        houseDay = houseDay - 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 395 / zoom, 50 / zoom, 50 / zoom) and (windows.extension == true or windows.freeHome == true) then
      if typePayment then
        if typePayment == "pp" then
          if houseDay >= 60 then
            houseDay = 60
            return
          end
          houseDay = houseDay + 1
        elseif typePayment == "money" then
          if houseDay >= 7 then
            houseDay = 7
            return
          end
          houseDay = houseDay + 1
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 380 / zoom, _UPVALUE0_.y + 490 / zoom, 180 / zoom, 61 / zoom) and (windows.extension == true or windows.freeHome == true) then
      if typePayment == "pp" then
        if houseDay * selfHouse.pricePP > getElementData(localPlayer, "player:pp") then
          exports.st_gui:showPlayerNotification("Nie posiadasz tyle punkt\195\179w premium!", "error")
          return
        end
        if windows.freeHome == true then
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "validityUpdate", localPlayer, data.id, false, "PP", houseDay, "buy")
        else
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "validityUpdate", localPlayer, data.id, false, "PP", houseDay, "update")
        end
      elseif typePayment == "money" then
        if houseDay * selfHouse.priceMoney > getElementData(localPlayer, "player:moneyMNn") then
          exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy!", "error")
          return
        end
        if windows.freeHome == true then
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "validityUpdate", localPlayer, data.id, false, "money", houseDay, "buy")
        else
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "validityUpdate", localPlayer, data.id, false, "money", houseDay, "update")
        end
      end
      showCursor(false)
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.main = false
      windows.roommate = false
      windows.extension = false
      exports.ST_gui:destroyCustomEditbox("roommate_house")
      selfHouse = {}
      windows.freeHome = false
      windows.kategoriaBudowania = false
      windows.garageBuy = false
    elseif isMouseIn(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom) and (windows.extension == true or windows.freeHome == true) then
      typePayment = "money"
      houseDay = 7
    elseif isMouseIn(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 90 / zoom, 200 / zoom, 250 / zoom) and (windows.extension == true or windows.freeHome == true) then
      typePayment = "pp"
      houseDay = 60
    elseif isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom) and (windows.main == true or windows.freeHome == true) then
      if zablokowanyInterior[data.id] then
        exports.st_gui:showPlayerNotification("Ta opcja w tym domku jest zablokowana", "error")
        return
      end
      exports.ST_gui:destroyCustomEditbox("roommate_house")
      if data.state == 1 then
        if selfHouse.owner or windows.freeHome == true or selfHouse.rentPlayer or getPlayerName(localPlayer) == "ReDsKill" then
          if isElement(hudMaskShader) then
            destroyElement(hudMaskShader)
          end
          if isElement(maska) then
            destroyElement(maska)
          end
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          windows.main = false
          windows.extension = false
          windows.roommate = false
          windows.freeHome = false
          windows.editSize = false
          windows.kategoriaBudowania = false
          windows.garageBuy = false
          showCursor(false)
          exports.st_interiors:startLoading(3000, "Wchodzisz do domu id: " .. data.id .. "")
          setTimer(function()
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "enterHome", localPlayer, data.id, _UPVALUE0_)
          end, 1000, 1)
        else
          exports.st_gui:showPlayerNotification("Ta posiad\197\130o\197\155\196\135 jest zamkni\196\153ta", "error")
          if getElementData(localPlayer, "player:napadyDomek") or false then
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "enterHome", localPlayer, data.id, getElementData(localPlayer, "player:napadyDomek") or false)
          end
        end
      else
        if isElement(hudMaskShader) then
          destroyElement(hudMaskShader)
        end
        if isElement(maska) then
          destroyElement(maska)
        end
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.main = false
        windows.extension = false
        windows.roommate = false
        windows.freeHome = false
        windows.editSize = false
        windows.kategoriaBudowania = false
        windows.garageBuy = false
        showCursor(false)
        exports.st_interiors:startLoading(3000, "Wchodzisz do domu id: " .. data.id .. "")
        setTimer(function()
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "enterHome", localPlayer, data.id, _UPVALUE0_)
        end, 1000, 1)
      end
    elseif isMouseIn(_UPVALUE0_.x + 740 / zoom, _UPVALUE0_.y + 10 / zoom, 50 / zoom, 50 / zoom) and (windows.main == true and selfHouse.owner == true or selfHouse.rentPlayer == true) then
      if selfHouse.rentPlayer == true and tonumber(split(data.permissions_rent, ",")[3]) == 0 then
        exports.st_gui:showPlayerNotification("Brak uprawnie\197\132", "error")
        return
      end
      if data.state == 1 then
        data.state = 0
        zamek = "zamkniety"
      else
        data.state = 1
        zamek = "otwarty"
      end
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setHouseClosed", localPlayer, data)
    elseif isMouseIn(_UPVALUE0_.x + 680 / zoom, _UPVALUE0_.y + 12.5 / zoom, 45 / zoom, 45 / zoom) and windows.main == true and selfHouse.owner == true then
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "sellHouse", localPlayer, data.id)
      showCursor(false)
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.main = false
      windows.roommate = false
      windows.extension = false
      windows.editSize = false
      windows.kategoriaBudowania = false
      windows.garageBuy = false
      exports.ST_gui:destroyCustomEditbox("roommate_house")
      selfHouse = {}
      windows.freeHome = false
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie wyprowadzono si\196\153 z domku", "success")
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showGuiHouse" then
    if getElementDimension(localPlayer) == 0 then
      if _ARG_4_ then
        for _FORV_10_, _FORV_11_ in pairs(textures) do
          if isElement(_FORV_11_) then
            destroyElement(_FORV_11_)
          end
        end
        textures = {}
        selfHouse = {}
        windows.freeHome = false
        windows.main = false
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        showCursor(false)
        if isElement(hudMaskShader) then
          destroyElement(hudMaskShader)
        end
        if isElement(maska) then
          destroyElement(maska)
        end
      else
        if not isEventHandlerAdded("onClientRender", root, window) then
          textures = {
            background = dxCreateTexture(":ST_gui/img/background2.png"),
            off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
            house_icon = dxCreateTexture("img/house_icon.png"),
            edit_icon = dxCreateTexture("img/edit_icon.png"),
            pay_icon = dxCreateTexture("img/pay_icon.png"),
            cash_icon = dxCreateTexture("img/cash_icon.png"),
            door_icon = dxCreateTexture("img/door_icon.png"),
            open_icon = dxCreateTexture("img/open_icon.png"),
            close_icon = dxCreateTexture("img/close_icon.png"),
            out_icon = dxCreateTexture("img/out_icon.png"),
            roommate_icon = dxCreateTexture("img/roommate_icon.png"),
            user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
            garage_icon = dxCreateTexture("img/garage_icon.png")
          }
          addEventHandler("onClientRender", root, window)
          addEventHandler("onClientClick", root, click)
        else
          print("teraz jest")
        end
        selfHouse = {}
        rent_table = {}
        data = _ARG_2_
        if data.state == 1 then
          zamek = "otwarty"
        else
          zamek = "zamkniety"
        end
        showCursor(true)
        windows.freeHome = false
        selfHouse.rentPlayer = false
        selfHouse.owner = false
        windows.kategoriaBudowania = false
        windows.garageBuy = false
        if _ARG_1_ == "main" then
          if data.owner == getElementData(localPlayer, "player:sid") then
            windows.main = true
            selfHouse.owner = true
          else
            for _FORV_12_, _FORV_13_ in ipairs(data.rent) do
              if _FORV_13_ == getElementData(localPlayer, "player:sid") then
                selfHouse.rentPlayer = true
              end
            end
            windows.main = true
          end
        end
        if _ARG_1_ == "free" then
          windows.freeHome = true
          freePlayer = true
        end
        if data.name == "Mieszkanie" then
          selfHouse.priceMoney = 25000
          selfHouse.pricePP = 30
        elseif data.name == "Dom" then
          selfHouse.priceMoney = 50000
          selfHouse.pricePP = 60
        elseif data.name == "Willa" then
          selfHouse.priceMoney = 75000
          selfHouse.pricePP = 100
        end
        hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
        maska = dxCreateTexture(":ST_avatars/kolo.png")
        dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
      end
    end
  elseif _ARG_0_ == "loadRentTable" then
    table.insert(rent_table, {
      _ARG_1_,
      _ARG_2_,
      false
    })
  elseif _ARG_0_ == "downloadAvatarFriend" then
    if _ARG_1_ then
      for _FORV_9_, _FORV_10_ in ipairs(rent_table) do
        if rent_table[_FORV_9_][1] == _ARG_2_ then
          shader = dxCreateShader(":ST_avatars/masked.fx")
          avatars = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
          dxSetShaderValue(shader, "sMaskTexture", maska)
          dxSetShaderValue(shader, "sPicTexture", avatars)
          rent_table[_FORV_9_][3] = shader
        end
      end
    end
  elseif _ARG_0_ == "removeRentTable" then
    rent_table = {}
    data = _ARG_1_
  end
end)
function checkPlayerHouseTimer()
  if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) > 100 then
    if isTimer(timerHouse) then
      killTimer(timerHouse)
    end
    triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "exitHouse", localPlayer, false)
    exports.st_gui:showPlayerNotification("Oddalono si\196\153 zbyt daleko od domku", "error")
    if isElement(markerHomeB) then
      destroyElement(markerHomeB)
    end
    for _FORV_10_, _FORV_11_ in pairs(guiInfo.roof) do
      if isElement(_FORV_11_) then
        destroyElement(_FORV_11_)
      end
    end
    for _FORV_10_, _FORV_11_ in pairs(guiInfo.skeletonWalls) do
      if isElement(_FORV_11_) then
        destroyElement(_FORV_11_)
      end
    end
    for _FORV_10_, _FORV_11_ in pairs(guiInfo.skeleton) do
      if isElement(_FORV_11_) then
        destroyElement(_FORV_11_)
      end
    end
    for _FORV_10_, _FORV_11_ in pairs(guiInfo.buildedObjects) do
      if isElement(_FORV_11_) then
        destroyElement(_FORV_11_)
      end
    end
    loadingObiectAll = false
  end
end
bindKey("k", "both", function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "down" then
    for _FORV_5_, _FORV_6_ in ipairs(getElementsByType("pickup", resourceRoot)) do
      if getElementData(_FORV_6_, "house:data") then
        if getElementData(_FORV_6_, "house:data").owner then
          createBlipAttachedTo(_FORV_6_, 32, 2, 255, 0, 0, 255, 100, 500)
        else
          createBlipAttachedTo(_FORV_6_, 31, 2, 255, 0, 0, 255, 100, 500)
        end
      end
    end
  else
    for _FORV_5_, _FORV_6_ in ipairs(getElementsByType("blip", getResourceRootElement())) do
      destroyElement(_FORV_6_)
    end
  end
end)
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
function drawSquareGrid(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_4_ == 1 then
  elseif _ARG_4_ == 2 then
  elseif _ARG_4_ == 3 then
  elseif _ARG_4_ == 4 then
  elseif _ARG_4_ == 5 then
  end
  for _FORV_14_, _FORV_15_ in ipairs({
    {0, 0},
    {1, 0},
    {2, 0},
    {0, 1},
    {1, 1},
    {2, 1},
    {0, 2},
    {1, 2},
    {2, 2}
  }) do
    dxDrawRoundedRectangle(_ARG_0_ + (170 / _ARG_3_ - math.sqrt(#{}) * (27 / _ARG_3_)) / 2 + _FORV_15_[1] * (27 / _ARG_3_), _ARG_1_ + (170 / _ARG_3_ - math.sqrt(#{}) * (27 / _ARG_3_)) / 2 + _FORV_15_[2] * (27 / _ARG_3_), 25 / _ARG_3_, 25 / _ARG_3_, 3 / _ARG_3_, tocolor(255, 128, 0, 200))
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
if getElementData(localPlayer, "player:editHouse") then
  setCameraTarget(localPlayer)
  setElementDimension(localPlayer, 0)
  setElementInterior(localPlayer, 0)
  setElementFrozen(localPlayer, false)
  setElementData(localPlayer, "player:editHouse", false)
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
getResourceName(getThisResource(), true, 314077925)
return
