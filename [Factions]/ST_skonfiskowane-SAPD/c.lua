screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
marker = createMarker(2264.927, 2477.04395, -6.4078100000000004, "cylinder", 3, 246, 255, 0, 255)
setElementDimension(marker, 101)
setElementPosition(createElement("text"), 2264.927, 2477.04395, -5.50781)
setElementData(createElement("text"), "name", "Skonfiskowane bronie")
setElementDimension(createElement("text"), 101)
windows = {main = false}
itemsTable = {}
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == marker then
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    if getElementData(_ARG_0_, "player:faction") == "SAPD" then
      triggerServerEvent("ev", resourceRoot, "showTable", localPlayer)
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        knife_icon = dxCreateTexture(":ST_invetory/img/knife_icon.png"),
        ak47_icon = dxCreateTexture(":ST_invetory/img/ak47_icon.png"),
        m4_icon = dxCreateTexture(":ST_invetory/img/m4_icon.png"),
        deagle_icon = dxCreateTexture(":ST_invetory/img/deagle_icon.png"),
        sniper_icon = dxCreateTexture(":ST_invetory/img/sniper_icon.png"),
        uzi_icon = dxCreateTexture(":ST_invetory/img/uzi_icon.png"),
        obrzyn_icon = dxCreateTexture(":ST_invetory/img/obrzyn_icon.png"),
        mp5_icon = dxCreateTexture(":ST_invetory/img/mp5_icon.png"),
        baseball_icon = dxCreateTexture(":ST_invetory/img/baseball_icon.png"),
        tec9_icon = dxCreateTexture(":ST_invetory/img/tec9_icon.png"),
        combat_icon = dxCreateTexture(":ST_invetory/img/combat_icon.png")
      }
      settings_item = {
        {
          "Noz",
          textures.knife_icon
        },
        {
          "AK47",
          textures.ak47_icon
        },
        {
          "M4",
          textures.m4_icon
        },
        {
          "Deagle",
          textures.deagle_icon
        },
        {
          "Karabin snajperski",
          textures.sniper_icon
        },
        {
          "Uzi",
          textures.uzi_icon
        },
        {
          "Obrzyn",
          textures.obrzyn_icon
        },
        {
          "MP5",
          textures.mp5_icon
        },
        {
          "Bejsbol",
          textures.baseball_icon
        },
        {
          "Tec9",
          textures.tec9_icon
        },
        {
          "\197\129opata",
          textures.shovel_icon
        },
        {
          "Strzelba bojowa",
          textures.combat_icon
        }
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      windows.main = true
      showCursor(true)
    end
  end
end)
function window()
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("SKONFISKOWANE BRONIE", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    for _FORV_9_ = 1, 30 do
      if 0 + 1 > 6 then
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 95 / zoom * (1 - 1) + 160 / zoom, _UPVALUE0_.y + 95 / zoom * (1 + 1 - 1) + 77 / zoom, 90 / zoom, 90 / zoom, 20 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_11_, _FORV_12_ in ipairs(itemsTable) do
      name = _FORV_12_.name
      if 0 + 1 > 6 then
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 95 / zoom * (1 - 1) + 159 / zoom, _UPVALUE0_.y + 95 / zoom * (1 + 1 - 1) + 76 / zoom, 91 / zoom, 91 / zoom, 20 / zoom, tocolor(252, 186, 3, 230))
      if isMouseIn(_UPVALUE0_.x + 95 / zoom * (1 - 1) + 160 / zoom, _UPVALUE0_.y + 95 / zoom * (1 + 1 - 1) + 77 / zoom, 89 / zoom, 89 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 95 / zoom * (1 - 1) + 160 / zoom, _UPVALUE0_.y + 95 / zoom * (1 + 1 - 1) + 77 / zoom, 89 / zoom, 89 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 95 / zoom * (1 - 1) + 160 / zoom, _UPVALUE0_.y + 95 / zoom * (1 + 1 - 1) + 77 / zoom, 89 / zoom, 89 / zoom, 20 / zoom, tocolor(45, 45, 45, 255))
      end
      for _FORV_20_, _FORV_21_ in pairs(settings_item) do
        if settings_item[_FORV_20_][1] == name then
          dxDrawImage(_UPVALUE0_.x + 95 / zoom * (1 - 1) + 159 / zoom, _UPVALUE0_.y + 95 / zoom * (1 + 1 - 1) + 77 / zoom, 90 / zoom, 90 / zoom, settings_item[_FORV_20_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      dxDrawText(_FORV_12_.ilosc, _UPVALUE0_.x + 165 / zoom + 95 / zoom * (1 - 1), _UPVALUE0_.y + 90 / zoom + 190 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_12_.ilosc, _UPVALUE0_.x + 165 / zoom + 95 / zoom * (1 - 1), _UPVALUE0_.y + 91 / zoom + 190 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      if isMouseIn(_UPVALUE0_.x + 95 / zoom * (1 - 1) + 160 / zoom, _UPVALUE0_.y + 95 / zoom * (1 + 1 - 1) + 77 / zoom, 89 / zoom, 89 / zoom) and isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText(name, cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
        dxDrawText(name, cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
      end
    end
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / zoom, _UPVALUE0_.y + 25 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_7_, _FORV_8_ in ipairs(itemsTable) do
        if 0 + 1 > 6 then
        end
        if isMouseIn(_UPVALUE0_.x + 95 / zoom * (1 - 1) + 160 / zoom, _UPVALUE0_.y + 95 / zoom * (1 + 1 - 1) + 77 / zoom, 89 / zoom, 89 / zoom) and (getElementData(localPlayer, "player:sid") == 19 or getElementData(localPlayer, "player:sid") == 1 or getElementData(localPlayer, "player:sid") == 794) then
          if blockClick then
            return
          end
          blockClick = true
          triggerServerEvent("ev", resourceRoot, "giveWeapon", localPlayer, _FORV_8_.name)
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom) and windows.main == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.main = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_)
  if _ARG_0_ == "showTableClient" then
    blockClick = false
    itemsTable = _ARG_1_
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
getResourceName(getThisResource(), true, 315535526)
return
