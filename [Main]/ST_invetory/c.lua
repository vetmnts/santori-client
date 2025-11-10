screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = screenW / 2 - 700 / zoom / 2,
  y = screenH / 2 - 640 / zoom / 2,
  w = 700 / zoom,
  h = 640 / zoom
}
textUP = {
  w = math.floor(958 / zoom / 2.3),
  h = math.floor(297 / zoom / 2.3)
}
textUP.x = math.floor(screenW / 2 - textUP.w / 2)
textUP.y = math.floor(10 / zoom)
windows = {
  background = false,
  main = false,
  select = false,
  number = false,
  intoxicated = false,
  tradeSearchPlayer = false,
  trade = false,
  tradeSearchPlayer_Search = false,
  search = false,
  search1 = false,
  trunkSearchVehicle = false,
  trunk = false
}
tick = getTickCount()
tick1 = getTickCount()
items_table1 = {}
selectItemTable = {}
selectItemTable_player = {}
items_table_vehicle = {}
items_remove_vehicle = {}
items_remove_player = {}
posWindow = {
  0,
  0,
  0,
  0,
  0
}
function window()
  dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(200, 200, 200, 255), false)
  if windows.main == true then
    dxDrawRoundedRectangle(windowPos.x + 2 / zoom, windowPos.y + 2 / zoom, 170 / zoom, 636 / zoom, 20 / zoom, tocolor(45, 45, 45, 155))
    dxDrawText("ITEMY: " .. #items_table, windowPos.x - math.floor(185 / zoom), windowPos.y - math.floor(150 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold18"), "center", "center", false, false, false, false, false)
    dxDrawText("SORTOWANIE", windowPos.x - math.floor(185 / zoom), windowPos.y - math.floor(10 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold14"), "center", "center", false, false, false, false, false)
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 112 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    if isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 113 / zoom, 171 / zoom, 40 / zoom) then
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 113 / zoom, 171 / zoom, 40 / zoom, tocolor(25, 25, 25, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 117 / zoom, 32 / zoom, 32 / zoom, textures.all_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("WSZYSTKO", windowPos.x + math.floor(60 / zoom), windowPos.y + math.floor(63 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    else
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 113 / zoom, 171 / zoom, 40 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 117 / zoom, 32 / zoom, 32 / zoom, textures.all_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
      dxDrawText("WSZYSTKO", windowPos.x + math.floor(60 / zoom), windowPos.y + math.floor(63 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    end
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 153 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    if isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 154 / zoom, 171 / zoom, 40 / zoom) then
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 154 / zoom, 171 / zoom, 40 / zoom, tocolor(25, 25, 25, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 152 / zoom, 40 / zoom, 40 / zoom, textures.weapons_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("BRONIE", windowPos.x + math.floor(60 / zoom), windowPos.y + math.floor(145 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    else
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 154 / zoom, 171 / zoom, 40 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 152 / zoom, 40 / zoom, 40 / zoom, textures.weapons_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
      dxDrawText("BRONIE", windowPos.x + math.floor(60 / zoom), windowPos.y + math.floor(145 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    end
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 195 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    if isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 196 / zoom, 171 / zoom, 40 / zoom) then
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 196 / zoom, 171 / zoom, 40 / zoom, tocolor(25, 25, 25, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 195 / zoom, 40 / zoom, 40 / zoom, textures.drugs_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("NARKOTYKI", windowPos.x + math.floor(60 / zoom), windowPos.y + math.floor(228 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    else
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 196 / zoom, 171 / zoom, 40 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 195 / zoom, 40 / zoom, 40 / zoom, textures.drugs_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
      dxDrawText("NARKOTYKI", windowPos.x + math.floor(60 / zoom), windowPos.y + math.floor(228 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    end
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 236 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    if isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 237 / zoom, 171 / zoom, 40 / zoom) then
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 237 / zoom, 171 / zoom, 40 / zoom, tocolor(25, 25, 25, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 239 / zoom, 35 / zoom, 35 / zoom, textures.fish_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("RYBY", windowPos.x + math.floor(60 / zoom), windowPos.y + math.floor(310 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    else
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 237 / zoom, 171 / zoom, 40 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 239 / zoom, 35 / zoom, 35 / zoom, textures.fish_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
      dxDrawText("RYBY", windowPos.x + math.floor(60 / zoom), windowPos.y + math.floor(310 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    end
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 276 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    if isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 278 / zoom, 171 / zoom, 40 / zoom) then
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 278 / zoom, 171 / zoom, 40 / zoom, tocolor(25, 25, 25, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 279 / zoom, 40 / zoom, 40 / zoom, textures.loot_red, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("PACZKI", windowPos.x + 60 / zoom, windowPos.y + 392 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    else
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 278 / zoom, 171 / zoom, 40 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 279 / zoom, 40 / zoom, 40 / zoom, textures.loot_red, 0, 0, 0, tocolor(230, 230, 230, 255), false)
      dxDrawText("PACZKI", windowPos.x + 60 / zoom, windowPos.y + 392 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    end
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 276 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    dxDrawText("INNE", windowPos.x - math.floor(185 / zoom), windowPos.y + math.floor(465 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold14"), "center", "center", false, false, false, false, false)
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 349 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    if isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 350 / zoom, 171 / zoom, 40 / zoom) then
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 350 / zoom, 171 / zoom, 40 / zoom, tocolor(25, 25, 25, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 353 / zoom, 35 / zoom, 35 / zoom, textures.trade_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("HANDEL", windowPos.x + math.floor(50 / zoom), windowPos.y + math.floor(537 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    else
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 350 / zoom, 171 / zoom, 40 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 353 / zoom, 35 / zoom, 35 / zoom, textures.trade_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
      dxDrawText("HANDEL", windowPos.x + math.floor(50 / zoom), windowPos.y + math.floor(537 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    end
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 391 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    if isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 392 / zoom, 171 / zoom, 40 / zoom) then
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 392 / zoom, 171 / zoom, 40 / zoom, tocolor(25, 25, 25, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 393 / zoom, 35 / zoom, 35 / zoom, textures.trunk_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("BAGA\197\187NIK", windowPos.x + math.floor(50 / zoom), windowPos.y + math.floor(620 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    else
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 392 / zoom, 171 / zoom, 40 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 393 / zoom, 35 / zoom, 35 / zoom, textures.trunk_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
      dxDrawText("BAGA\197\187NIK", windowPos.x + math.floor(50 / zoom), windowPos.y + math.floor(620 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
    end
    dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 431 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    if getElementData(localPlayer, "player:faction") == "SAPD" or getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
      if isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 434 / zoom, 171 / zoom, 40 / zoom) then
        dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 434 / zoom, 171 / zoom, 40 / zoom, tocolor(25, 25, 25, 255))
        dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 435 / zoom, 35 / zoom, 35 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("PRZESZUKAJ", windowPos.x + math.floor(50 / zoom), windowPos.y + math.floor(703 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      else
        dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 434 / zoom, 171 / zoom, 40 / zoom, tocolor(30, 30, 30, 255))
        dxDrawImage(windowPos.x + 5 / zoom, windowPos.y + 435 / zoom, 35 / zoom, 35 / zoom, textures.search_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
        dxDrawText("PRZESZUKAJ", windowPos.x + math.floor(50 / zoom), windowPos.y + math.floor(703 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      end
      dxDrawRectangle(windowPos.x + 1 / zoom, windowPos.y + 431 / zoom, 171 / zoom, 1 / zoom, tocolor(150, 150, 150, 215), false)
    end
    for _FORV_9_ = 1, 30 do
      if 0 + 1 > 5 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(105 / zoom) * (1 - 1) + 176 / zoom, windowPos.y + math.floor(105 / zoom) * (1 + 1 - 1) + 5 / zoom, 100 / zoom, 100 / zoom, 20 / zoom, tocolor(45, 45, 45, 90))
    end
    i2 = 0
    for _FORV_11_, _FORV_12_ in ipairs(items_table) do
      for _FORV_16_, _FORV_17_ in ipairs(sort_item) do
        name = _FORV_12_.name
        if string.sub(name, 1, 4) == "Skin" then
          name = "Skin"
        end
        if sort_item[_FORV_16_][1] == name then
          i2 = i2 + 1
          if i2 >= _UPVALUE0_ and i2 <= _UPVALUE1_ then
            if 0 + 1 > 5 then
            end
            dxDrawRoundedRectangle(windowPos.x + math.floor(105 / zoom) * (1 - 1) + 175 / zoom, windowPos.y + math.floor(105 / zoom) * (1 + 1 - 1) + 4 / zoom, 101 / zoom, 101 / zoom, 20 / zoom, tocolor(252, 186, 3, 230))
            if windows.select == false and windows.number == false then
              if isMouseIn(windowPos.x + math.floor(105 / zoom) * (1 - 1) + 176 / zoom, windowPos.y + math.floor(105 / zoom) * (1 + 1 - 1) + 5 / zoom, 99 / zoom, 99 / zoom) then
                dxDrawRoundedRectangle(windowPos.x + math.floor(105 / zoom) * (1 - 1) + 176 / zoom, windowPos.y + math.floor(105 / zoom) * (1 + 1 - 1) + 5 / zoom, 99 / zoom, 99 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
              else
                dxDrawRoundedRectangle(windowPos.x + math.floor(105 / zoom) * (1 - 1) + 176 / zoom, windowPos.y + math.floor(105 / zoom) * (1 + 1 - 1) + 5 / zoom, 99 / zoom, 99 / zoom, 20 / zoom, tocolor(45, 45, 45, 255))
              end
            else
              dxDrawRoundedRectangle(windowPos.x + math.floor(105 / zoom) * (1 - 1) + 176 / zoom, windowPos.y + math.floor(105 / zoom) * (1 + 1 - 1) + 5 / zoom, 99 / zoom, 99 / zoom, 20 / zoom, tocolor(45, 45, 45, 255))
            end
            for _FORV_25_, _FORV_26_ in pairs(settings_item) do
              if settings_item[_FORV_25_][1] == name then
                dxDrawImage(windowPos.x + math.floor(105 / zoom) * (1 - 1) + 175 / zoom, windowPos.y + math.floor(105 / zoom) * (1 + 1 - 1) + 5 / zoom, 100 / zoom, 100 / zoom, settings_item[_FORV_25_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
              end
            end
            if string.sub(_FORV_12_.name, 1, 4) == "Skin" then
              dxDrawText("ID " .. string.sub(_FORV_12_.name, 9, 12), windowPos.x + math.floor(90 / zoom) + math.floor(210 / zoom) * (1 - 1), windowPos.y - math.floor(120 / zoom) + math.floor(210 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font11"), "center", "center", false, false, false, false, false)
            end
            dxDrawText(_FORV_12_.ilosc, windowPos.x + math.floor(184 / zoom) + math.floor(105 / zoom) * (1 - 1), windowPos.y - math.floor(20 / zoom) + math.floor(210 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
            dxDrawText(_FORV_12_.ilosc, windowPos.x + math.floor(183 / zoom) + math.floor(105 / zoom) * (1 - 1), windowPos.y - math.floor(21 / zoom) + math.floor(210 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
            if windows.select == false and windows.number == false and isMouseIn(windowPos.x + math.floor(105 / zoom) * (1 - 1) + 175 / zoom, windowPos.y + math.floor(105 / zoom) * (1 + 1 - 1) + 5 / zoom, 100 / zoom, 100 / zoom) and isCursorShowing() then
              cxs, cys = getCursorPosition()
              cxs, cys = screenW * cxs, screenH * cys
              for _FORV_25_, _FORV_26_ in pairs(settings_item) do
                if settings_item[_FORV_25_].name2 and settings_item[_FORV_25_][1] == name then
                  name = settings_item[_FORV_25_].name2
                end
              end
              dxDrawText(name, cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              dxDrawText(name, cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            end
            if windows.select == true and selectItem == name then
              dxDrawRoundedRectangle(posWindow[1] + 66 / zoom, posWindow[2] + 38 / zoom, 189 / zoom, 44 / zoom, 15 / zoom, tocolor(255, 179, 0), true)
              dxDrawRoundedRectangle(posWindow[1] + 67 / zoom, posWindow[2] + 39 / zoom, 186 / zoom, 42 / zoom, 15 / zoom, tocolor(35, 35, 35, 255), true)
              dxDrawText(selectItem, posWindow[4] + 40 / zoom, posWindow[3] - 71 / zoom, posWindow[5], posWindow[6], tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, true, false, false)
              for _FORV_25_, _FORV_26_ in pairs(settings_item) do
                if settings_item[_FORV_25_][1] == name then
                  exports.ST_buttons:dxCreateButton(settings_item[_FORV_25_][3], posWindow[1] + 90 / zoom, posWindow[2] + 83 / zoom, 140 / zoom, 42 / zoom, 255, 1)
                end
              end
              exports.ST_buttons:dxCreateButton("Anuluj", posWindow[1] + 90 / zoom, posWindow[2] + 127 / zoom, 140 / zoom, 42 / zoom, 255, 1)
              if windows.selectPlayerAdrenalina then
                dxDrawRoundedRectangle(posWindow[1] + 254 / zoom, posWindow[2] + 38 / zoom, 189 / zoom, 232 / zoom, 15 / zoom, tocolor(255, 179, 0), true)
                dxDrawRoundedRectangle(posWindow[1] + 255 / zoom, posWindow[2] + 39 / zoom, 186 / zoom, 230 / zoom, 15 / zoom, tocolor(35, 35, 35, 255), true)
                if selectItem == "Zestaw naprawczy" then
                  dxDrawText("WYBIERZ POJAZD", posWindow[4] + 420 / zoom, posWindow[3] - 73 / zoom, posWindow[5], posWindow[6], tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, true, false, false)
                else
                  dxDrawText("WYBIERZ GRACZA", posWindow[4] + 420 / zoom, posWindow[3] - 73 / zoom, posWindow[5], posWindow[6], tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, true, false, false)
                end
                if selectItem == "Zestaw naprawczy" then
                  sortedVehicles = {}
                  for _FORV_31_, _FORV_32_ in ipairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
                    if isElement(_FORV_32_) then
                      table.insert(sortedVehicles, {
                        veh = _FORV_32_,
                        dist = getDistanceBetweenPoints3D(getElementPosition(localPlayer))
                      })
                    end
                  end
                  table.sort(sortedVehicles, function(_ARG_0_, _ARG_1_)
                    return _ARG_0_.dist < _ARG_1_.dist
                  end)
                  for _FORV_31_ = 1, math.min(5, #sortedVehicles) do
                    if isMouseIn(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 - 1), 170 / zoom, 32 / zoom) then
                      dxDrawRoundedRectangle(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 - 1), 170 / zoom, 32 / zoom, 15 / zoom, tocolor(20, 20, 20, 230), true)
                    else
                      dxDrawRoundedRectangle(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 - 1), 170 / zoom, 32 / zoom, 15 / zoom, tocolor(25, 25, 25, 250), true)
                    end
                    dxDrawText("" .. exports.ST_core:changeNameClient(getVehicleName(sortedVehicles[_FORV_31_].veh), getElementData(sortedVehicles[_FORV_31_].veh, "vehicle:customID")) .. " #ff8c00(" .. math.floor(sortedVehicles[_FORV_31_].dist) .. "m)", posWindow[1] + 275 / zoom, posWindow[3] - 11 / zoom + 76 / zoom * (0 + 1 - 1), posWindow[5], posWindow[6], tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal11"), "left", "center", false, false, true, true, false)
                  end
                elseif selectItem == "Adrenalina" then
                  for _FORV_30_, _FORV_31_ in ipairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
                    if 1 <= _FORV_30_ and _FORV_30_ <= 5 and _FORV_31_ ~= localPlayer and isElement(_FORV_31_) and not getElementData(_FORV_31_, "spec:pos") and getElementData(_FORV_31_, "player:bw") then
                      if isMouseIn(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 + 1 - 1), 170 / zoom, 32 / zoom) then
                        dxDrawRoundedRectangle(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 + 1 - 1), 170 / zoom, 32 / zoom, 15 / zoom, tocolor(20, 20, 20, 230), true)
                      else
                        dxDrawRoundedRectangle(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 + 1 - 1), 170 / zoom, 32 / zoom, 15 / zoom, tocolor(25, 25, 25, 250), true)
                      end
                      dxDrawText(getPlayerName(_FORV_31_) .. " #ff8c00(" .. math.floor((getDistanceBetweenPoints3D(getElementPosition(localPlayer)))) .. "m)", posWindow[1] + 275 / zoom, posWindow[3] - 11 / zoom + 76 / zoom * (0 + 1 + 1 - 1), posWindow[5], posWindow[6], tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, true, true, false)
                    end
                  end
                else
                  for _FORV_30_, _FORV_31_ in ipairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
                    if 1 <= _FORV_30_ and _FORV_30_ <= 5 and _FORV_31_ ~= localPlayer and isElement(_FORV_31_) and not getElementData(_FORV_31_, "spec:pos") then
                      if isMouseIn(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 + 1 + 1 - 1), 170 / zoom, 32 / zoom) then
                        dxDrawRoundedRectangle(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 + 1 + 1 - 1), 170 / zoom, 32 / zoom, 15 / zoom, tocolor(20, 20, 20, 230), true)
                      else
                        dxDrawRoundedRectangle(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 + 1 + 1 - 1), 170 / zoom, 32 / zoom, 15 / zoom, tocolor(25, 25, 25, 250), true)
                      end
                      dxDrawText(getPlayerName(_FORV_31_) .. " #ff8c00(" .. math.floor((getDistanceBetweenPoints3D(getElementPosition(localPlayer)))) .. "m)", posWindow[1] + 275 / zoom, posWindow[3] - 11 / zoom + 76 / zoom * (0 + 1 + 1 + 1 - 1), posWindow[5], posWindow[6], tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, true, true, false)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if windows.number == true then
      dxDrawRoundedRectangle(windowPos.x + 285 / zoom, windowPos.y + 200 / zoom, 300 / zoom, 190 / zoom, 5 / zoom, tocolor(35, 35, 35, 250))
      dxDrawText("WPISZ ILO\197\154\196\134", windowPos.x + math.floor(500 / zoom), windowPos.y + math.floor(230 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, false, false)
      exports.ST_buttons:dxCreateButton("Anuluj", windowPos.x + 290 / zoom, windowPos.y + 340 / zoom, 140 / zoom, 42 / zoom)
      for _FORV_11_, _FORV_12_ in pairs(settings_item) do
        if settings_item[_FORV_11_][1] == selectItem then
          exports.ST_buttons:dxCreateButton(settings_item[_FORV_11_][3], windowPos.x + 440 / zoom, windowPos.y + 340 / zoom, 140 / zoom, 42 / zoom)
        end
      end
    end
  end
  if windows.tradeSearchPlayer == true then
    dxDrawText("WYBIERZ GRACZA W POBLI\197\187U", windowPos.x + math.floor(340 / zoom), windowPos.y - math.floor(120 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, false, false)
    dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 110 / zoom, 310 / zoom, 2 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 191 / zoom, windowPos.y + 110 / zoom, 2 / zoom, 466 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 503 / zoom, windowPos.y + 110 / zoom, 2 / zoom, 466 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 574 / zoom, 310 / zoom, 2 / zoom, tocolor(255, 200, 0, 255))
    dxDrawText("NICK", windowPos.x + math.floor(195 / zoom), windowPos.y - math.floor(15 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
    dxDrawText("UID", windowPos.x, windowPos.y - math.floor(15 / zoom), windowPos.x + math.floor(362 / zoom) + math.floor(140 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, false, false, false)
    dxDrawText("BRAK GRACZY", windowPos.x + math.floor(340 / zoom), windowPos.y + math.floor(52 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, false, false)
    players = {}
    for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("player")) do
      if _FORV_9_ ~= localPlayer and not getElementData(_FORV_9_, "spec:pos") and 20 > getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
        table.insert(players, {
          _FORV_9_,
          (getDistanceBetweenPoints3D(getElementPosition(localPlayer)))
        })
      end
    end
    for _FORV_8_, _FORV_9_ in ipairs(players) do
      if _FORV_8_ >= _UPVALUE2_ and _FORV_8_ <= _UPVALUE3_ then
        if isMouseIn(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom) then
          dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom, tocolor(55, 55, 55, 255))
        else
          dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom, tocolor(45, 45, 45, 255))
        end
        dxDrawText(getPlayerName(_FORV_9_[1]) .. " #ff8c00(" .. math.floor(_FORV_9_[2]) .. "m)", windowPos.x + math.floor(195 / zoom), windowPos.y + math.floor(52 / zoom) + math.floor(66 / zoom) * (0 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        dxDrawText(getElementData(_FORV_9_[1], "player:sid"), windowPos.x, windowPos.y + math.floor(52 / zoom) + math.floor(66 / zoom) * (0 + 1 - 1), windowPos.x + math.floor(362 / zoom) + math.floor(138 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "right", "center", false, false, false, false, false)
      end
    end
  end
  if windows.tradeSearchPlayer_Search == true then
    dxDrawText("WYBIERZ GRACZA W POBLI\197\187U", windowPos.x + math.floor(340 / zoom), windowPos.y - math.floor(120 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, false, false)
    dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 110 / zoom, 310 / zoom, 2 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 191 / zoom, windowPos.y + 110 / zoom, 2 / zoom, 466 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 503 / zoom, windowPos.y + 110 / zoom, 2 / zoom, 466 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 574 / zoom, 310 / zoom, 2 / zoom, tocolor(255, 200, 0, 255))
    dxDrawText("NICK", windowPos.x + math.floor(195 / zoom), windowPos.y - math.floor(15 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
    dxDrawText("UID", windowPos.x, windowPos.y - math.floor(15 / zoom), windowPos.x + math.floor(362 / zoom) + math.floor(140 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, false, false, false)
    dxDrawText("BRAK GRACZY", windowPos.x + math.floor(340 / zoom), windowPos.y + math.floor(52 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, false, false)
    players = {}
    for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("player")) do
      if _FORV_9_ ~= localPlayer and not getElementData(_FORV_9_, "spec:pos") and 20 > getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
        table.insert(players, {
          _FORV_9_,
          (getDistanceBetweenPoints3D(getElementPosition(localPlayer)))
        })
      end
    end
    for _FORV_8_, _FORV_9_ in ipairs(players) do
      if _FORV_8_ >= _UPVALUE2_ and _FORV_8_ <= _UPVALUE3_ then
        if isMouseIn(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom) then
          dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom, tocolor(55, 55, 55, 255))
        else
          dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom, tocolor(45, 45, 45, 255))
        end
        dxDrawText(getPlayerName(_FORV_9_[1]) .. " #ff8c00(" .. math.floor(_FORV_9_[2]) .. "m)", windowPos.x + math.floor(195 / zoom), windowPos.y + math.floor(52 / zoom) + math.floor(66 / zoom) * (0 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        dxDrawText(getElementData(_FORV_9_[1], "player:sid"), windowPos.x, windowPos.y + math.floor(52 / zoom) + math.floor(66 / zoom) * (0 + 1 - 1), windowPos.x + math.floor(362 / zoom) + math.floor(138 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "right", "center", false, false, false, false, false)
      end
    end
  end
  if windows.trunkSearchVehicle == true then
    dxDrawText("WYBIERZ POJAZD W POBLI\197\187U", windowPos.x + math.floor(340 / zoom), windowPos.y - math.floor(120 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, false, false)
    dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 110 / zoom, 310 / zoom, 2 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 191 / zoom, windowPos.y + 110 / zoom, 2 / zoom, 466 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 503 / zoom, windowPos.y + 110 / zoom, 2 / zoom, 466 / zoom, tocolor(255, 200, 0, 255))
    dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 574 / zoom, 310 / zoom, 2 / zoom, tocolor(255, 200, 0, 255))
    dxDrawText("POJAZD", windowPos.x + math.floor(195 / zoom), windowPos.y - math.floor(15 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
    dxDrawText("ID", windowPos.x, windowPos.y - math.floor(15 / zoom), windowPos.x + math.floor(362 / zoom) + math.floor(140 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, false, false, false)
    dxDrawText("BRAK POJAZD\195\147W", windowPos.x + math.floor(340 / zoom), windowPos.y + math.floor(52 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, false, false)
    vehicle = {}
    for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("vehicle")) do
      if _FORV_9_ ~= localPlayer and 20 > getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
        table.insert(vehicle, {
          _FORV_9_,
          (getDistanceBetweenPoints3D(getElementPosition(localPlayer)))
        })
      end
    end
    for _FORV_8_, _FORV_9_ in ipairs(vehicle) do
      if _FORV_8_ >= _UPVALUE2_ and _FORV_8_ <= _UPVALUE3_ and getElementData(_FORV_9_[1], "vehicle:ownedPlayer") == getElementData(localPlayer, "player:sid") then
        if isMouseIn(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom) then
          dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom, tocolor(55, 55, 55, 255))
        else
          dxDrawRectangle(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom, tocolor(45, 45, 45, 255))
        end
        dxDrawText(exports.ST_core:changeNameClient((getVehicleName(_FORV_9_[1]))) .. " #ff8c00(" .. math.floor(_FORV_9_[2]) .. "m)", windowPos.x + math.floor(195 / zoom), windowPos.y + math.floor(52 / zoom) + math.floor(66 / zoom) * (0 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        dxDrawText(getElementData(_FORV_9_[1], "vehicle:id"), windowPos.x, windowPos.y + math.floor(52 / zoom) + math.floor(66 / zoom) * (0 + 1 - 1), windowPos.x + math.floor(362 / zoom) + math.floor(138 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "right", "center", false, false, false, false, false)
      end
    end
  end
  if windows.search1 == true then
    if not getElementData(search_player, "player_Search") then
      removeEventHandler("onClientRender", root, window)
      exports.st_gui:showPlayerNotification("Gracz z kt\195\179rego przeszukiwano wyszed\197\130 z gry", "error")
      stopAllPing()
      return
    end
    dxDrawText("EKWIPUNEK GRACZA #fcba03" .. getPlayerName(search_player) .. "", windowPos.x + math.floor(340 / zoom), windowPos.y - math.floor(90 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, true, false)
    for _FORV_9_ = 1, 30 do
      if 0 + 1 > 6 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(84 / zoom) * (1 - 1) + 100 / zoom, windowPos.y + math.floor(84 / zoom) * (1 + 1 - 1) + 110 / zoom, 82 / zoom, 82 / zoom, 10 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_11_, _FORV_12_ in ipairs(items_table_player) do
      name = _FORV_12_.name
      if string.sub(name, 1, 4) == "Skin" then
        name = "Skin"
      end
      if _FORV_11_ >= _UPVALUE4_ and _FORV_11_ <= _UPVALUE5_ then
        if 0 + 1 > 6 then
        end
        dxDrawRoundedRectangle(windowPos.x + math.floor(84 / zoom) * (1 - 1) + 100 / zoom, windowPos.y + math.floor(84 / zoom) * (1 + 1 - 1) + 110 / zoom, 82 / zoom, 82 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
        for _FORV_19_, _FORV_20_ in pairs(settings_item) do
          if settings_item[_FORV_19_][1] == name then
            dxDrawImage(windowPos.x + math.floor(84 / zoom) * (1 - 1) + 100 / zoom, windowPos.y + math.floor(84 / zoom) * (1 + 1 - 1) + 110 / zoom, 82 / zoom, 82 / zoom, settings_item[_FORV_19_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
        dxDrawText(_FORV_12_.ilosc, windowPos.x + math.floor(106 / zoom) + math.floor(84 / zoom) * (1 - 1), windowPos.y + math.floor(167 / zoom) + math.floor(168 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_12_.ilosc, windowPos.x + math.floor(105 / zoom) + math.floor(84 / zoom) * (1 - 1), windowPos.y + math.floor(166 / zoom) + math.floor(168 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
      end
    end
    exports.ST_buttons:dxCreateButton("ZAMKNIJ", windowPos.x + 265 / zoom, windowPos.y + 565 / zoom, 170 / zoom, 42 / zoom)
  end
  if windows.search == true then
    if not getElementData(search_player, "player_Search") then
      exports.st_gui:showPlayerNotification("Gracz z kt\195\179rego przeszukiwano wyszed\197\130 z gry", "error")
      stopAllPing()
      return
    end
    if trade_confirm then
      if getTickCount() - tick > 1000 then
        tick = getTickCount()
        loadingTime = loadingTime - 1
      end
      if loadingTime < 1 then
        exports.st_gui:showPlayerNotification("Pomy\197\155lnie skonfiskowano przedmioty", "success")
        triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "search", localPlayer, selectItemTable, search_player)
        stopAllPing()
      end
      dxDrawText("SKONFISKOWANIE ROZPOCZNIE SI\196\152 ZA " .. loadingTime, windowPos.x + math.floor(640 / zoom), windowPos.y + math.floor(1000 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "center", "center", false, false, false, true, false)
    else
      exports.ST_buttons:dxCreateButton("SKONFISKUJ", windowPos.x + 410 / zoom, windowPos.y + 583 / zoom, 170 / zoom, 42 / zoom)
    end
    dxDrawText("ITEMY GRACZA #fcba03" .. getPlayerName(search_player) .. "", windowPos.x + math.floor(620 / zoom), windowPos.y - math.floor(50 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ANULUJ", windowPos.x + 55 / zoom, windowPos.y + 589 / zoom, 200 / zoom, 42 / zoom)
    dxDrawRectangle(windowPos.x + 305 / zoom, windowPos.y + 10 / zoom, 2 / zoom, 620 / zoom, tocolor(40, 40, 40, 255))
    dxDrawRectangle(windowPos.x + 305 / zoom, windowPos.y + 570 / zoom, 380 / zoom, 2 / zoom, tocolor(40, 40, 40, 255))
    for _FORV_9_ = 1, 32 do
      if 0 + 1 > 4 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_11_, _FORV_12_ in ipairs(items_table_player) do
      name = _FORV_12_.name
      if string.sub(name, 1, 4) == "Skin" then
        name = "Skin"
      end
      if _FORV_11_ >= _UPVALUE4_ and _FORV_11_ <= _UPVALUE5_ then
        if 0 + 1 > 4 then
        end
        if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
        else
          dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
        end
        for _FORV_19_, _FORV_20_ in pairs(settings_item) do
          if settings_item[_FORV_19_][1] == name then
            dxDrawImage(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom, settings_item[_FORV_19_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
        dxDrawText(_FORV_12_.ilosc, windowPos.x + math.floor(14 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y - math.floor(65 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_12_.ilosc, windowPos.x + math.floor(13 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y - math.floor(66 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
      end
    end
    for _FORV_13_ = 1, 10 do
      if 0 + 1 > 5 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 150 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_15_, _FORV_16_ in ipairs(selectItemTable) do
      name = _FORV_16_.name
      if string.sub(name, 1, 4) == "Skin" then
        name = "Skin"
      end
      if 0 + 1 > 5 then
      end
      if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 150 / zoom, 70 / zoom, 70 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 150 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 150 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
      end
      for _FORV_23_, _FORV_24_ in pairs(settings_item) do
        if settings_item[_FORV_23_][1] == name then
          dxDrawImage(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 150 / zoom, 70 / zoom, 70 / zoom, settings_item[_FORV_23_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      dxDrawText(_FORV_16_.ilosc, windowPos.x + math.floor(320 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(214 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_16_.ilosc, windowPos.x + math.floor(320 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(215 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
    end
  end
  if windows.trunk == true then
    if getPlayerPing(localPlayer) > 150 then
      setElementData(localPlayer, "player_ping_trade", true)
    end
    if getElementData(localPlayer, "player_ping_trade") then
      exports.st_gui:showPlayerNotification("Tw\195\179j ping jest zbyt wysoki", "error")
      stopAllPing()
      return
    end
    if getElementData(localPlayer, "player_Trade") then
      stopAllPing()
      return
    end
    if getElementData(localPlayer, "player_Search") then
      stopAllPing()
      return
    end
    dxDrawText("EKWIPUNEK", windowPos.x - 15 / zoom, windowPos.y - 130 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold20"), "center", "center", false, false, false, true, false)
    dxDrawText("BAGA\197\187NIK", windowPos.x + 682 / zoom, windowPos.y + 255 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold20"), "center", "center", false, false, false, true, false)
    for _FORV_9_ = 1, 32 do
      if 0 + 1 > 4 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 30 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 65 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_11_, _FORV_12_ in ipairs(items_table1) do
      name = _FORV_12_.name
      if string.sub(name, 1, 4) == "Skin" then
        name = "Skin"
      end
      if _FORV_11_ >= _UPVALUE4_ and _FORV_11_ <= _UPVALUE5_ then
        if 0 + 1 > 4 then
        end
        if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 30 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 65 / zoom, 70 / zoom, 70 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 30 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 65 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
        else
          dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 30 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 65 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
        end
        for _FORV_19_, _FORV_20_ in pairs(settings_item) do
          if settings_item[_FORV_19_][1] == name then
            dxDrawImage(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 30 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 65 / zoom, 70 / zoom, 70 / zoom, settings_item[_FORV_19_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
        dxDrawText(_FORV_12_.ilosc, windowPos.x + math.floor(34 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(41 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_12_.ilosc, windowPos.x + math.floor(33 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(40 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
      end
    end
    for _FORV_13_ = 1, 8 do
      if 0 + 1 > 4 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 378 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 255 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_15_, _FORV_16_ in ipairs(items_table_vehicle) do
      name = _FORV_16_.name
      if string.sub(name, 1, 4) == "Skin" then
        name = "Skin"
      end
      if _FORV_15_ >= _UPVALUE6_ and _FORV_15_ <= _UPVALUE7_ then
        if 0 + 1 > 4 then
        end
        if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 378 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 255 / zoom, 70 / zoom, 70 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 378 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 255 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
        else
          dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 378 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 255 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
        end
        for _FORV_23_, _FORV_24_ in pairs(settings_item) do
          if settings_item[_FORV_23_][1] == name then
            dxDrawImage(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 378 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 255 / zoom, 70 / zoom, 70 / zoom, settings_item[_FORV_23_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
        dxDrawText(_FORV_16_.ilosc, windowPos.x + math.floor(383 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(421 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_16_.ilosc, windowPos.x + math.floor(382 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(420 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
      end
    end
    if trade_confirm then
      if getTickCount() - tick > 1000 then
        tick = getTickCount()
        loadingTime = loadingTime - 1
      end
      if loadingTime < 1 then
        exports.st_gui:showPlayerNotification("Zako\197\132czono korzystanie z baga\197\188nika", "info")
        triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "trunk", localPlayer, items_remove_player, items_remove_vehicle, id_vehicle)
        windows.trunk = false
        stopAllPing()
      end
      dxDrawText("WYMIANA ROZPOCZNIE SI\196\152 ZA " .. loadingTime, windowPos.x + math.floor(690 / zoom), windowPos.y + math.floor(1000 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "center", "center", false, false, false, true, false)
    else
      exports.ST_buttons:dxCreateButton("ZATWIERD\197\185", windowPos.x + 520 / zoom, windowPos.y + 580 / zoom, 140 / zoom, 42 / zoom)
    end
    for _FORV_16_, _FORV_17_ in ipairs(items_remove_player) do
    end
    for _FORV_17_, _FORV_18_ in ipairs(items_remove_vehicle) do
    end
    if status == "ekwipunek" then
      dxDrawRectangle(windowPos.x + 345 / zoom, windowPos.y + 10 / zoom, 2 / zoom, 280 / zoom, tocolor(40, 40, 40, 255))
      dxDrawRectangle(windowPos.x + 345 / zoom, windowPos.y + 350 / zoom, 2 / zoom, 280 / zoom, tocolor(40, 40, 40, 255))
      dxDrawImage(windowPos.x + 327 / zoom, windowPos.y + 300 / zoom, 40 / zoom, 40 / zoom, textures.arrow, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    elseif status == "baga\197\188nik" then
      dxDrawRectangle(windowPos.x + 345 / zoom, windowPos.y + 10 / zoom, 2 / zoom, 280 / zoom, tocolor(40, 40, 40, 255))
      dxDrawRectangle(windowPos.x + 345 / zoom, windowPos.y + 350 / zoom, 2 / zoom, 280 / zoom, tocolor(40, 40, 40, 255))
      dxDrawImage(windowPos.x + 327 / zoom, windowPos.y + 300 / zoom, 40 / zoom, 40 / zoom, textures.arrow, 180, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawRectangle(windowPos.x + 345 / zoom, windowPos.y + 10 / zoom, 2 / zoom, 620 / zoom, tocolor(40, 40, 40, 255))
    end
  end
  if windows.trade == true then
    if not getPlayerFromName(player_name) then
      exports.st_gui:showPlayerNotification("Gracz z kt\195\179rym si\196\153 wymienia\197\130e\197\155/a\197\155 wyszed\197\130 z gry", "error")
      stopAllPing()
      return
    end
    if getPlayerPing(localPlayer) > 150 then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "player_ping_trade", localPlayer, player_offer)
    end
    if getPlayerPing(player_offer) > 150 then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "player_ping_trade", localPlayer, player_offer)
    end
    if getElementData(localPlayer, "player_ping_trade") or getElementData(player_offer, "player_ping_trade") then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTradeCancelPing", localPlayer, player_offer)
      exports.st_gui:showPlayerNotification("Tw\195\179j ping lub gracza, z kt\195\179rym si\196\153 wymieniasz jest zbyt wysoki", "error")
      stopAllPing()
      return
    end
    dxDrawRectangle(windowPos.x + 305 / zoom, windowPos.y + 10 / zoom, 2 / zoom, 620 / zoom, tocolor(40, 40, 40, 255))
    dxDrawRectangle(windowPos.x + 305 / zoom, windowPos.y + 570 / zoom, 380 / zoom, 2 / zoom, tocolor(40, 40, 40, 255))
    dxDrawText("TWOJE ITEMY", windowPos.x + math.floor(620 / zoom), windowPos.y - math.floor(130 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold20"), "center", "center", false, false, false, true, false)
    dxDrawText("ITEMY GRACZA #fcba03" .. getPlayerName(player_offer) .. "", windowPos.x + math.floor(620 / zoom), windowPos.y + math.floor(475 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold18"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ANULUJ WYMIAN\196\152", windowPos.x + 55 / zoom, windowPos.y + 589 / zoom, 200 / zoom, 42 / zoom)
    if ready then
      exports.ST_buttons:dxCreateButton("GOTOWY", windowPos.x + 520 / zoom, windowPos.y + 250 / zoom, 140 / zoom, 42 / zoom)
    else
      exports.ST_buttons:dxCreateButton("NIEGOTOWY", windowPos.x + 520 / zoom, windowPos.y + 250 / zoom, 140 / zoom, 42 / zoom)
    end
    if trade_confirm then
      if getTickCount() - tick > 1000 then
        tick = getTickCount()
        loadingTime = loadingTime - 1
      end
      if loadingTime < 1 then
        exports.st_gui:showPlayerNotification("Wymiana przebieg\197\130a pomy\197\155lnie", "success")
        removeEventHandler("onClientRender", root, window)
        windows.trade = false
        if firstClick then
          triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "trade", localPlayer, selectItemTable_player, selectItemTable, player_offer)
        end
        items_table1 = {}
        selectItemTable = {}
        selectItemTable_player = {}
        ready = false
        playerReady = false
        showCursor(false)
        setTimer(function()
          player_offer = false
          player_name = false
          setElementData(localPlayer, "player_Trade", false)
          setElementData(localPlayer, "player_offerTrade", false)
        end, 100, 1)
        trade_confirm = false
        windows.background = false
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
      end
      dxDrawText("WYMIANA ROZPOCZNIE SI\196\152 ZA " .. loadingTime, windowPos.x + math.floor(640 / zoom), windowPos.y + math.floor(1000 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "center", "center", false, false, false, true, false)
    elseif ready and playerReady and clickOn then
      exports.ST_buttons:dxCreateButton("ZATWIERD\197\185", windowPos.x + 520 / zoom, windowPos.y + 580 / zoom, 140 / zoom, 42 / zoom)
    end
    for _FORV_9_ = 1, 32 do
      if 0 + 1 > 4 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_11_ = 1, 10 do
      if 0 + 1 > 5 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 75 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_13_, _FORV_14_ in ipairs(selectItemTable) do
      name = _FORV_14_.name
      if string.sub(name, 1, 4) == "Skin" then
        name = "Skin"
      end
      if 0 + 1 > 5 then
      end
      if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 75 / zoom, 70 / zoom, 70 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 75 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 75 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
      end
      for _FORV_21_, _FORV_22_ in pairs(settings_item) do
        if settings_item[_FORV_21_][1] == name then
          dxDrawImage(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 75 / zoom, 70 / zoom, 70 / zoom, settings_item[_FORV_21_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      dxDrawText(_FORV_14_.ilosc, windowPos.x + math.floor(320 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(65 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_14_.ilosc, windowPos.x + math.floor(320 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(66 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
    end
    for _FORV_15_, _FORV_16_ in ipairs(items_table1) do
      name = _FORV_16_.name
      if string.sub(name, 1, 4) == "Skin" then
        name = "Skin"
      end
      if _FORV_15_ >= _UPVALUE4_ and _FORV_15_ <= _UPVALUE5_ then
        if 0 + 1 > 4 then
        end
        if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
        else
          dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
        end
        for _FORV_23_, _FORV_24_ in pairs(settings_item) do
          if settings_item[_FORV_23_][1] == name then
            dxDrawImage(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom, settings_item[_FORV_23_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
        dxDrawText(_FORV_16_.ilosc, windowPos.x + math.floor(14 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y - math.floor(65 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_16_.ilosc, windowPos.x + math.floor(13 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y - math.floor(66 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
      end
    end
    for _FORV_17_ = 1, 10 do
      if 0 + 1 > 5 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 370 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 90))
    end
    for _FORV_19_, _FORV_20_ in ipairs(selectItemTable_player) do
      name = _FORV_20_.name
      if string.sub(name, 1, 4) == "Skin" then
        name = "Skin"
      end
      if 0 + 1 > 4 then
      end
      dxDrawRoundedRectangle(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 370 / zoom, 70 / zoom, 70 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
      for _FORV_27_, _FORV_28_ in pairs(settings_item) do
        if settings_item[_FORV_27_][1] == name then
          dxDrawImage(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 370 / zoom, 70 / zoom, 70 / zoom, settings_item[_FORV_27_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      dxDrawText(_FORV_20_.ilosc, windowPos.x + math.floor(320 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(655 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_20_.ilosc, windowPos.x + math.floor(320 / zoom) + math.floor(72 / zoom) * (1 - 1), windowPos.y + math.floor(656 / zoom) + math.floor(144 / zoom) * (1 + 1 - 1), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold12"), "left", "center", false, false, false, false, false)
    end
    if playerReady then
      dxDrawText("#00ff04GOTOWY", windowPos.x + math.floor(820 / zoom), windowPos.y + math.floor(880 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("#ff0000NIEGOTOWY", windowPos.x + math.floor(820 / zoom), windowPos.y + math.floor(880 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "center", "center", false, false, false, true, false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.trunk == true then
      for _FORV_7_, _FORV_8_ in ipairs(items_table1) do
        if 0 + 1 > 4 then
        end
        if _FORV_7_ >= _UPVALUE0_ and _FORV_7_ <= _UPVALUE1_ and isMouseIn(windowPos.x + 72 / zoom * (1 - 1) + 30 / zoom, windowPos.y + 72 / zoom * (1 + 1 - 1) + 65 / zoom, 70 / zoom, 70 / zoom) and windows.trunk == true then
          if trade_confirm then
            return
          end
          if #items_table_vehicle >= 8 then
            return
          end
          if getKeyState("capslock") then
            numberAdd = 100
          elseif getKeyState("lshift") then
            numberAdd = 10
          else
            numberAdd = 1
          end
          if _FORV_8_.ilosc < numberAdd then
            return
          end
          if status == "baga\197\188nik" then
            return
          end
          status = "ekwipunek"
          if _FORV_8_.ilosc == numberAdd then
            table.remove(items_table1, _FORV_7_)
            if #items_table_vehicle == 0 then
              table.insert(items_table_vehicle, {
                name = _FORV_8_.name,
                ilosc = numberAdd,
                id = _FORV_8_.id
              })
            elseif table.search(items_table_vehicle, _FORV_8_.name) then
              table.removeValue(items_table_vehicle, _FORV_8_.name)
              table.insert(items_table_vehicle, {
                name = _FORV_8_.name,
                ilosc = table.returns + numberAdd,
                id = _FORV_8_.id
              })
            else
              table.insert(items_table_vehicle, {
                name = _FORV_8_.name,
                ilosc = numberAdd,
                id = _FORV_8_.id
              })
            end
            table.sort(items_table_vehicle, function(_ARG_0_, _ARG_1_)
              return _ARG_0_.id > _ARG_1_.id
            end)
            if #items_remove_player == 0 then
              table.insert(items_remove_player, {
                name = _FORV_8_.name,
                ilosc = numberAdd,
                id = _FORV_8_.id
              })
            elseif table.search(items_remove_player, _FORV_8_.name) then
              table.removeValue(items_remove_player, _FORV_8_.name)
              table.insert(items_remove_player, {
                name = _FORV_8_.name,
                ilosc = table.returns + numberAdd,
                id = _FORV_8_.id
              })
            else
              table.insert(items_remove_player, {
                name = _FORV_8_.name,
                ilosc = numberAdd,
                id = _FORV_8_.id
              })
            end
            return
          end
          table.remove(items_table1, _FORV_7_)
          if _FORV_8_.ilosc ~= 0 then
            table.insert(items_table1, {
              name = _FORV_8_.name,
              ilosc = _FORV_8_.ilosc - numberAdd,
              id = _FORV_8_.id
            })
          end
          table.sort(items_table1, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
          if #items_table_vehicle == 0 then
            if _FORV_8_.ilosc == numberAdd then
              table.remove(items_table1, _FORV_7_)
              return
            end
            table.insert(items_table_vehicle, {
              name = _FORV_8_.name,
              ilosc = numberAdd,
              id = _FORV_8_.id
            })
          elseif table.search(items_table_vehicle, _FORV_8_.name) then
            table.removeValue(items_table_vehicle, _FORV_8_.name)
            table.insert(items_table_vehicle, {
              name = _FORV_8_.name,
              ilosc = table.returns + numberAdd,
              id = _FORV_8_.id
            })
          else
            table.insert(items_table_vehicle, {
              name = _FORV_8_.name,
              ilosc = numberAdd,
              id = _FORV_8_.id
            })
          end
          table.sort(items_table_vehicle, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
          for _FORV_14_, _FORV_15_ in ipairs(items_remove_vehicle) do
            if _FORV_15_.name == _FORV_8_.name then
              table.remove(items_remove_vehicle, _FORV_14_)
              if _FORV_8_.ilosc ~= 0 then
                table.insert(items_remove_vehicle, {
                  name = _FORV_8_.name,
                  ilosc = _FORV_8_.ilosc - numberAdd,
                  id = _FORV_8_.id
                })
              end
            end
          end
          if #items_remove_player == 0 then
            table.insert(items_remove_player, {
              name = _FORV_8_.name,
              ilosc = numberAdd,
              id = _FORV_8_.id
            })
          elseif table.search(items_remove_player, _FORV_8_.name) then
            table.removeValue(items_remove_player, _FORV_8_.name)
            table.insert(items_remove_player, {
              name = _FORV_8_.name,
              ilosc = table.returns + numberAdd,
              id = _FORV_8_.id
            })
          else
            table.insert(items_remove_player, {
              name = _FORV_8_.name,
              ilosc = numberAdd,
              id = _FORV_8_.id
            })
          end
        end
      end
    end
    if windows.trunk == true then
      for _FORV_7_, _FORV_8_ in ipairs(items_table_vehicle) do
        if 0 + 1 > 4 then
        end
        if _FORV_7_ >= _UPVALUE0_ and _FORV_7_ <= _UPVALUE1_ and isMouseIn(windowPos.x + 72 / zoom * (1 - 1) + 378 / zoom, windowPos.y + 72 / zoom * (1 + 1 - 1) + 255 / zoom, 70 / zoom, 70 / zoom) and windows.trunk == true then
          if trade_confirm then
            return
          end
          if status == "ekwipunek" then
            return
          end
          status = "baga\197\188nik"
          if getKeyState("capslock") then
            numberAdd = 100
          elseif getKeyState("lshift") then
            numberAdd = 10
          else
            numberAdd = 1
          end
          if _FORV_8_.ilosc < 0 + numberAdd then
            return
          end
          if _FORV_8_.ilosc == numberAdd then
            table.remove(items_table_vehicle, _FORV_7_)
            if #items_table1 == 0 then
              table.insert(items_table1, {
                name = _FORV_8_.name,
                ilosc = numberAdd,
                id = _FORV_8_.id
              })
            elseif table.search(items_table1, _FORV_8_.name) then
              table.removeValue(items_table1, _FORV_8_.name)
              table.insert(items_table1, {
                name = _FORV_8_.name,
                ilosc = table.returns + numberAdd,
                id = _FORV_8_.id
              })
            else
              table.insert(items_table1, {
                name = _FORV_8_.name,
                ilosc = numberAdd,
                id = _FORV_8_.id
              })
            end
            table.sort(items_table1, function(_ARG_0_, _ARG_1_)
              return _ARG_0_.id > _ARG_1_.id
            end)
            if #items_remove_vehicle == 0 then
              table.insert(items_remove_vehicle, {
                name = _FORV_8_.name,
                ilosc = numberAdd,
                id = _FORV_8_.id
              })
            elseif table.search(items_remove_vehicle, _FORV_8_.name) then
              table.removeValue(items_remove_vehicle, _FORV_8_.name)
              table.insert(items_remove_vehicle, {
                name = _FORV_8_.name,
                ilosc = table.returns + numberAdd,
                id = _FORV_8_.id
              })
            else
              table.insert(items_remove_vehicle, {
                name = _FORV_8_.name,
                ilosc = numberAdd,
                id = _FORV_8_.id
              })
            end
            return
          end
          table.remove(items_table_vehicle, _FORV_7_)
          if _FORV_8_.ilosc ~= 0 then
            table.insert(items_table_vehicle, {
              name = _FORV_8_.name,
              ilosc = _FORV_8_.ilosc - numberAdd,
              id = _FORV_8_.id
            })
          end
          table.sort(items_table_vehicle, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
          if #items_table1 == 0 then
            table.insert(items_table1, {
              name = _FORV_8_.name,
              ilosc = numberAdd,
              id = _FORV_8_.id
            })
          elseif table.search(items_table1, _FORV_8_.name) then
            table.removeValue(items_table1, _FORV_8_.name)
            table.insert(items_table1, {
              name = _FORV_8_.name,
              ilosc = table.returns + numberAdd,
              id = _FORV_8_.id
            })
          else
            table.insert(items_table1, {
              name = _FORV_8_.name,
              ilosc = numberAdd,
              id = _FORV_8_.id
            })
          end
          table.sort(items_table1, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
          if #items_remove_vehicle == 0 then
            table.insert(items_remove_vehicle, {
              name = _FORV_8_.name,
              ilosc = numberAdd,
              id = _FORV_8_.id
            })
          elseif table.search(items_remove_vehicle, _FORV_8_.name) then
            table.removeValue(items_remove_vehicle, _FORV_8_.name)
            table.insert(items_remove_vehicle, {
              name = _FORV_8_.name,
              ilosc = table.returns + numberAdd,
              id = _FORV_8_.id
            })
          else
            table.insert(items_remove_vehicle, {
              name = _FORV_8_.name,
              ilosc = numberAdd,
              id = _FORV_8_.id
            })
          end
          for _FORV_14_, _FORV_15_ in ipairs(items_remove_player) do
            if _FORV_15_.name == _FORV_8_.name then
              table.remove(items_remove_player, _FORV_14_)
              if _FORV_8_.ilosc ~= 0 then
                table.insert(items_remove_player, {
                  name = _FORV_8_.name,
                  ilosc = _FORV_8_.ilosc - numberAdd,
                  id = _FORV_8_.id
                })
              end
            end
          end
        end
      end
    end
    if windows.trunkSearchVehicle == true then
      for _FORV_6_, _FORV_7_ in ipairs(vehicle) do
        if _FORV_6_ >= _UPVALUE2_ and _FORV_6_ <= _UPVALUE3_ and getElementData(_FORV_7_[1], "vehicle:ownedPlayer") == getElementData(localPlayer, "player:sid") and isMouseIn(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom) and windows.trunkSearchVehicle == true then
          if not getElementData(_FORV_7_[1], "vehicle:id") then
            return
          end
          items_table_player = {}
          items_table_vehicle = {}
          windows.trunkSearchVehicle = false
          windows.trunk = true
          triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "showItems_vehicle", localPlayer, getElementData(_FORV_7_[1], "vehicle:id"), exports.ST_core:changeNameClient((getVehicleName(_FORV_7_[1]))))
          id_vehicle = getElementData(_FORV_7_[1], "vehicle:id")
          setElementData(localPlayer, "player_offerTrade", true)
        end
      end
    end
    if windows.tradeSearchPlayer_Search == true then
      for _FORV_6_, _FORV_7_ in ipairs(players) do
        if _FORV_6_ >= _UPVALUE2_ and _FORV_6_ <= _UPVALUE3_ and isMouseIn(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom) and windows.tradeSearchPlayer_Search == true then
          items_table_player = {}
          selectItemTable = {}
          if getElementData(localPlayer, "player_Trade") then
            exports.st_gui:showPlayerNotification("Jeste\197\155 ju\197\188 w trakcie handlu", "error")
            return
          end
          if getElementData(localPlayer, "player_offerTrade") then
            exports.st_gui:showPlayerNotification("Otrzymano ju\197\188 ofert\196\153 handlu", "error")
            return
          end
          if getElementData(localPlayer, "player_Search") then
            exports.st_gui:showPlayerNotification("Jeste\197\155 przeszukiwany/a", "error")
            return
          end
          if getElementData(_FORV_7_[1], "player_Trade") then
            exports.st_gui:showPlayerNotification("Gracz jest w trakcie handlu", "error")
            return
          end
          if getElementData(_FORV_7_[1], "player_offerTrade") then
            exports.st_gui:showPlayerNotification("Gracz ju\197\188 otrzyma\197\130 ofert\196\153 handlu", "error")
            return
          end
          if getElementData(_FORV_7_[1], "player_Search") then
            exports.st_gui:showPlayerNotification("Gracz jest ju\197\188 przeszukiwany", "error")
            return
          end
          search_player = _FORV_7_[1]
          windows.tradeSearchPlayer_Search = false
          triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "showItems_player", localPlayer, _FORV_7_[1])
          setTimer(function()
            if getElementData(localPlayer, "player:faction") == "SAPD" then
              windows.search = true
            elseif getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
              windows.search1 = true
            end
          end, 500, 1)
        end
      end
    end
    if windows.search == true then
      for _FORV_7_, _FORV_8_ in ipairs(items_table_player) do
        if _FORV_7_ >= _UPVALUE0_ and _FORV_7_ <= _UPVALUE1_ then
          for _FORV_12_, _FORV_13_ in ipairs(selectItemTable) do
            v1Select = _FORV_13_
            i1Select = _FORV_12_
          end
          if 0 + 1 > 4 then
          end
          if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom) and windows.search == true then
            if 10 <= #selectItemTable then
              exports.st_gui:showPlayerNotification("Mo\197\188esz wybra\196\135 maksymalnie 10 item\195\179w", "error")
              return
            end
            numberItemTrade = _FORV_8_.ilosc - 1
            nameItemTrade = _FORV_8_.name
            idItemTrade = _FORV_8_.id
            if nameItemTrade == "Uzi" or nameItemTrade == "Noz" or nameItemTrade == "Bejsbol" or nameItemTrade == "\197\129opata" or nameItemTrade == "M4" or nameItemTrade == "Obrzyn" or nameItemTrade == "Strzelba bojowa" or nameItemTrade == "MP5" or nameItemTrade == "Tec9" or nameItemTrade == "Deagle" or nameItemTrade == "AK47" or nameItemTrade == "Karabin snajperski" or nameItemTrade == "Marihuana sativa" or nameItemTrade == "Marihuana indica" or nameItemTrade == "Nasiona indica" or nameItemTrade == "Przerobiona marihuana indica" or nameItemTrade == "Przerobiona marihuana sativa" or nameItemTrade == "Nasiona sativa" or nameItemTrade == "Amfetamina" or nameItemTrade == "Kokaina" or nameItemTrade == "MDMA" or nameItemTrade == "LSD" or nameItemTrade == "Mefedron" then
              if (nameItemTrade == "Uzi" or nameItemTrade == "Noz" or nameItemTrade == "Bejsbol" or nameItemTrade == "\197\129opata" or nameItemTrade == "M4" or nameItemTrade == "Obrzyn" or nameItemTrade == "Strzelba bojowa" or nameItemTrade == "MP5" or nameItemTrade == "Tec9" or nameItemTrade == "Deagle" or nameItemTrade == "AK47" or nameItemTrade == "Karabin snajperski") and 8 > getElementData(localPlayer, "player:rank") then
                return
              end
              if nameItemTrade == "Marihuana sativa" then
                if 0 >= limit_msativa_search then
                  return
                end
                limit_msativa_search = limit_msativa_search - 1
              end
              if nameItemTrade == "Marihuana indica" then
                if 0 >= limit_mindica_search then
                  return
                end
                limit_mindica_search = limit_mindica_search - 1
              end
              if nameItemTrade == "Przerobiona marihuana indica" then
                if 0 >= limit_przemsativa_search then
                  return
                end
                limit_przemsativa_search = limit_przemsativa_search - 1
              end
              if nameItemTrade == "Przerobiona marihuana sativa" then
                if 0 >= limit_przemindica_search then
                  return
                end
                limit_przemindica_search = limit_przemindica_search - 1
              end
              if nameItemTrade == "Nasiona indica" then
                if 0 >= limit_nindica_search then
                  return
                end
                limit_nindica_search = limit_nindica_search - 1
              end
              if nameItemTrade == "Nasiona sativa" then
                if 0 >= limit_nsativa_search then
                  return
                end
                limit_nsativa_search = limit_nsativa_search - 1
              end
              if nameItemTrade == "Amfetamina" then
                if 0 >= limit_amfetamina_search then
                  return
                end
                limit_amfetamina_search = limit_amfetamina_search - 1
              end
              if nameItemTrade == "Kokaina" then
                if 0 >= limit_kokaina_search then
                  return
                end
                limit_kokaina_search = limit_kokaina_search - 1
              end
              if nameItemTrade == "MDMA" then
                if 0 >= limit_mdma_search then
                  return
                end
                limit_mdma_search = limit_mdma_search - 1
              end
              if nameItemTrade == "LSD" then
                if 0 >= limit_LSD_search then
                  return
                end
                limit_LSD_search = limit_LSD_search - 1
              end
              if nameItemTrade == "Mefedron" then
                if 0 >= limit_Mefedron_search then
                  return
                end
                limit_Mefedron_search = limit_Mefedron_search - 1
              end
              table.remove(items_table_player, _FORV_7_)
              if numberItemTrade ~= 0 then
                table.insert(items_table_player, {
                  name = nameItemTrade,
                  ilosc = numberItemTrade,
                  id = idItemTrade
                })
              end
              table.sort(items_table_player, function(_ARG_0_, _ARG_1_)
                return _ARG_0_.id > _ARG_1_.id
              end)
              if #selectItemTable == 0 then
                table.insert(selectItemTable, {
                  name = nameItemTrade,
                  ilosc = 1,
                  id = idItemTrade
                })
              elseif v1Select.name == nameItemTrade then
                table.remove(selectItemTable, i1Select)
                table.insert(selectItemTable, {
                  name = nameItemTrade,
                  ilosc = v1Select.ilosc + 1,
                  id = idItemTrade
                })
              else
                table.insert(selectItemTable, {
                  name = nameItemTrade,
                  ilosc = 1,
                  id = idItemTrade
                })
              end
            else
              exports.st_gui:showPlayerNotification("Nie mo\197\188esz zabra\196\135 tej rzeczy", "error")
            end
          end
        end
      end
    end
    if windows.search == true then
      for _FORV_7_, _FORV_8_ in ipairs(selectItemTable) do
        for _FORV_12_, _FORV_13_ in ipairs(items_table_player) do
          v1Select1 = _FORV_13_
          i1Select1 = _FORV_12_
        end
        if 0 + 1 > 4 then
        end
        if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 75 / zoom, 70 / zoom, 70 / zoom) and windows.search == true then
          if ready then
            return
          end
          numberItemTrade = _FORV_8_.ilosc - 1
          nameItemTrade = _FORV_8_.name
          idItemTrade = _FORV_8_.id
          if nameItemTrade == "Marihuana sativa" then
            limit_msativa_search = limit_msativa_search + 1
          end
          if nameItemTrade == "Marihuana indica" then
            limit_mindica_search = limit_mindica_search + 1
          end
          if nameItemTrade == "Przerobiona marihuana indica" then
            limit_przemsativa_search = limit_przemsativa_search + 1
          end
          if nameItemTrade == "Przerobiona marihuana sativa" then
            limit_przemindica_search = limit_przemindica_search + 1
          end
          if nameItemTrade == "Nasiona indica" then
            limit_nindica_search = limit_nindica_search + 1
          end
          if nameItemTrade == "Nasiona sativa" then
            limit_nsativa_search = limit_nsativa_search + 1
          end
          if nameItemTrade == "Amfetamina" then
            limit_amfetamina_search = limit_amfetamina_search + 1
          end
          if nameItemTrade == "Kokaina" then
            limit_kokaina_search = limit_kokaina_search + 1
          end
          if nameItemTrade == "MDMA" then
            limit_mdma_search = limit_mdma_search + 1
          end
          if nameItemTrade == "LSD" then
            limit_LSD_search = limit_LSD_search + 1
          end
          if nameItemTrade == "Mefedron" then
            limit_Mefedron_search = limit_Mefedron_search + 1
          end
          table.remove(selectItemTable, _FORV_7_)
          if numberItemTrade ~= 0 then
            table.insert(selectItemTable, {
              name = nameItemTrade,
              ilosc = numberItemTrade,
              id = idItemTrade
            })
          end
          if #items_table_player == 0 then
            table.insert(items_table_player, {
              name = nameItemTrade,
              ilosc = 1,
              id = idItemTrade
            })
          elseif v1Select1.name == nameItemTrade then
            table.remove(items_table_player, i1Select1)
            table.insert(items_table_player, {
              name = nameItemTrade,
              ilosc = v1Select1.ilosc + 1,
              id = idItemTrade
            })
          else
            table.insert(items_table_player, {
              name = nameItemTrade,
              ilosc = 1,
              id = idItemTrade
            })
          end
          table.sort(items_table_player, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
        end
      end
    end
    if windows.trade == true then
      for _FORV_7_, _FORV_8_ in ipairs(items_table1) do
        if _FORV_7_ >= _UPVALUE0_ and _FORV_7_ <= _UPVALUE1_ then
          for _FORV_12_, _FORV_13_ in ipairs(selectItemTable) do
            v1Select = _FORV_13_
            i1Select = _FORV_12_
          end
          if 0 + 1 > 4 then
          end
          if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 9 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 7 / zoom, 70 / zoom, 70 / zoom) and windows.trade == true then
            if ready then
              return
            end
            if 10 <= #selectItemTable then
              exports.st_gui:showPlayerNotification("Mo\197\188esz wybra\196\135 maksymalnie 10 item\195\179w", "error")
              return
            end
            if _FORV_8_.name == "Izopropanol" or _FORV_8_.name == "Dioksan" or _FORV_8_.name == "Chlorek metylu" or _FORV_8_.name == "Azotan rteci" or _FORV_8_.name == "Kwas octowy" then
              exports.st_gui:showPlayerNotification("Nie mo\197\188esz handlowa\196\135 t\196\133 rzecz\196\133", "error")
              return
            end
            if getKeyState("capslock") then
              numberAdd = 100
            elseif getKeyState("lshift") then
              numberAdd = 10
            else
              numberAdd = 1
            end
            if _FORV_8_.ilosc < numberAdd then
              return
            end
            numberItemTrade = _FORV_8_.ilosc - numberAdd
            nameItemTrade = _FORV_8_.name
            idItemTrade = _FORV_8_.id
            table.remove(items_table1, _FORV_7_)
            if numberItemTrade ~= 0 then
              table.insert(items_table1, {
                name = nameItemTrade,
                ilosc = numberItemTrade,
                id = idItemTrade
              })
            end
            table.sort(items_table1, function(_ARG_0_, _ARG_1_)
              return _ARG_0_.id > _ARG_1_.id
            end)
            if #selectItemTable == 0 then
              table.insert(selectItemTable, {
                name = nameItemTrade,
                ilosc = numberAdd,
                id = idItemTrade
              })
            elseif v1Select.name == nameItemTrade then
              table.remove(selectItemTable, i1Select)
              table.insert(selectItemTable, {
                name = nameItemTrade,
                ilosc = v1Select.ilosc + numberAdd,
                id = idItemTrade
              })
            else
              table.insert(selectItemTable, {
                name = nameItemTrade,
                ilosc = numberAdd,
                id = idItemTrade
              })
            end
          end
        end
      end
    end
    if windows.trade == true then
      for _FORV_7_, _FORV_8_ in ipairs(selectItemTable) do
        for _FORV_12_, _FORV_13_ in ipairs(items_table1) do
          v1Select1 = _FORV_13_
          i1Select1 = _FORV_12_
        end
        if 0 + 1 > 4 then
        end
        if isMouseIn(windowPos.x + math.floor(72 / zoom) * (1 - 1) + 317 / zoom, windowPos.y + math.floor(72 / zoom) * (1 + 1 - 1) + 75 / zoom, 70 / zoom, 70 / zoom) and windows.trade == true then
          if ready then
            return
          end
          if getKeyState("lshift") then
            numberAdd = 10
          else
            numberAdd = 1
          end
          if _FORV_8_.ilosc < 0 + numberAdd then
            return
          end
          numberItemTrade = _FORV_8_.ilosc - numberAdd
          nameItemTrade = _FORV_8_.name
          idItemTrade = _FORV_8_.id
          table.remove(selectItemTable, _FORV_7_)
          if numberItemTrade ~= 0 then
            table.insert(selectItemTable, {
              name = nameItemTrade,
              ilosc = numberItemTrade,
              id = idItemTrade
            })
          end
          if #items_table1 == 0 then
            table.insert(items_table1, {
              name = nameItemTrade,
              ilosc = numberAdd,
              id = idItemTrade
            })
          elseif v1Select1.name == nameItemTrade then
            table.remove(items_table1, i1Select1)
            table.insert(items_table1, {
              name = nameItemTrade,
              ilosc = v1Select1.ilosc + numberAdd,
              id = idItemTrade
            })
          else
            table.insert(items_table1, {
              name = nameItemTrade,
              ilosc = numberAdd,
              id = idItemTrade
            })
          end
          table.sort(items_table1, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
        end
      end
    end
    if windows.tradeSearchPlayer == true then
      for _FORV_6_, _FORV_7_ in ipairs(players) do
        if _FORV_6_ >= _UPVALUE2_ and _FORV_6_ <= _UPVALUE3_ then
          if getPlayerPing(localPlayer) > 120 then
            exports.st_gui:showPlayerNotification("Tw\195\179j ping jest zbyt wysoki", "error")
            return
          end
          if isMouseIn(windowPos.x + 193 / zoom, windowPos.y + 112 / zoom + math.floor(33 / zoom) * (0 + 1 - 1), 310 / zoom, 32 / zoom) and windows.tradeSearchPlayer == true then
            if getElementData(_FORV_7_[1], "player_Trade") then
              exports.st_gui:showPlayerNotification("Gracz jest w trakcie handlu", "error")
              return
            end
            if getElementData(_FORV_7_[1], "player_offerTrade") then
              exports.st_gui:showPlayerNotification("Gracz ju\197\188 otrzyma\197\130 ofert\196\153 handlu", "error")
              return
            end
            if getElementData(_FORV_7_[1], "player_Search") then
              exports.st_gui:showPlayerNotification("Gracz jest przeszukiwany", "error")
              return
            end
            if getPlayerPing(_FORV_7_[1]) > 120 then
              exports.st_gui:showPlayerNotification("Ping gracza jest zbyt wysoki", "error")
              return
            end
            if getElementData(localPlayer, "player_Trade") then
              exports.st_gui:showPlayerNotification("Jeste\197\155 ju\197\188 w trakcie handlu", "error")
              return
            end
            if getElementData(localPlayer, "player_offerTrade") then
              exports.st_gui:showPlayerNotification("Otrzymano ju\197\188 ofert\196\153 handlu", "error")
              return
            end
            if getElementData(localPlayer, "player_Search") then
              exports.st_gui:showPlayerNotification("Jeste\197\155 przeszukiwany/a", "error")
              return
            end
            triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTrade", localPlayer, _FORV_7_[1])
            items_table1 = {}
            selectItemTable = {}
            selectItemTable_player = {}
            windows.select = false
            windows.number = false
            windows.main = false
            windows.tradeSearchPlayer = false
            removeEventHandler("onClientRender", root, window)
            trade_confirm = false
            exports.st_gui:showPlayerNotification("Wys\197\130ano ofert\196\153 handlu do gracza " .. getPlayerName(_FORV_7_[1]) .. "", "info")
            showCursor(false)
            windows.background = false
            for _FORV_15_, _FORV_16_ in pairs(textures) do
              if isElement(_FORV_16_) then
                destroyElement(_FORV_16_)
              end
            end
            textures = {}
          end
        end
      end
    end
    if windows.main == true and windows.select == false and windows.number == false then
      for _FORV_8_, _FORV_9_ in ipairs(items_table) do
        for _FORV_13_, _FORV_14_ in ipairs(sort_item) do
          name = _FORV_9_.name
          if string.sub(name, 1, 4) == "Skin" then
            name = "Skin"
          end
          if 0 + 1 > 5 then
          end
          if sort_item[_FORV_13_][1] == name and 0 + 1 >= _UPVALUE4_ and 0 + 1 <= _UPVALUE5_ and isMouseIn(windowPos.x + 105 / zoom * (1 - 1) + 175 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 4 / zoom, 101 / zoom, 101 / zoom) and windows.main == true then
            for _FORV_22_, _FORV_23_ in pairs(settings_item) do
              if settings_item[_FORV_22_][1] == name and settings_item[_FORV_22_][3] == "-" then
                return
              end
            end
            posWindow = {
              windowPos.x + 105 / zoom * (1 - 1) + 175 / zoom,
              windowPos.y + 105 / zoom * (1 + 1 - 1) + 5 / zoom,
              windowPos.y + 210 / zoom * (1 + 1 - 1),
              windowPos.x + 267 / zoom + 210 / zoom * (1 - 1),
              windowPos.x + math.floor(362 / zoom),
              windowPos.y + math.floor(204 / zoom)
            }
            windows.select = true
            windows.selectPlayerAdrenalina = false
            selectItem = name
            selectItem1 = _FORV_9_.name
            selectIDItem = _FORV_9_.id
            selectItemNumber = _FORV_9_.ilosc
            selectOptionalItem = _FORV_9_.optional
          end
        end
      end
    end
    if windows.main == true and windows.selectPlayerAdrenalina == true then
      if selectItem == "Zestaw naprawczy" then
        for _FORV_11_ = 1, math.min(5, #sortedVehicles) do
          if isElement(sortedVehicles[_FORV_11_].veh) and isMouseIn(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 - 1), 170 / zoom, 32 / zoom) then
            triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "eq_repairkit", localPlayer, selectIDItem, sortedVehicles[_FORV_11_].veh)
            exports.st_gui:showPlayerNotification("Pomy\197\155lnie naprawiono pojazd " .. exports.ST_core:changeNameClient(getVehicleName(sortedVehicles[_FORV_11_].veh), getElementData(sortedVehicles[_FORV_11_].veh, "vehicle:customID")) .. "", "success")
            windows.selectPlayerAdrenalina = false
            windows.select = false
            windows.number = false
            windows.main = false
            removeEventHandler("onClientRender", root, window)
            exports.ST_gui:destroyCustomEditbox("eq_number")
            showCursor(false)
            windows.background = false
            for _FORV_18_, _FORV_19_ in pairs(textures) do
              if isElement(_FORV_19_) then
                destroyElement(_FORV_19_)
              end
            end
            textures = {}
          end
        end
      elseif selectItem == "Adrenalina" then
        for _FORV_10_, _FORV_11_ in ipairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
          if 1 <= _FORV_10_ and _FORV_10_ <= 5 and _FORV_11_ ~= localPlayer and not getElementData(_FORV_11_, "spec:pos") and getElementData(_FORV_11_, "player:bw") and isMouseIn(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 + 1 - 1), 170 / zoom, 32 / zoom) then
            triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "adrenalina", localPlayer, _FORV_11_, selectIDItem)
            windows.selectPlayerAdrenalina = false
            windows.select = false
            windows.number = false
            windows.main = false
            removeEventHandler("onClientRender", root, window)
            exports.ST_gui:destroyCustomEditbox("eq_number")
            showCursor(false)
            windows.background = false
            for _FORV_17_, _FORV_18_ in pairs(textures) do
              if isElement(_FORV_18_) then
                destroyElement(_FORV_18_)
              end
            end
            textures = {}
          end
        end
      else
        for _FORV_10_, _FORV_11_ in ipairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
          if 1 <= _FORV_10_ and _FORV_10_ <= 5 and _FORV_11_ ~= localPlayer and not getElementData(_FORV_11_, "spec:pos") and isMouseIn(posWindow[1] + 263 / zoom, posWindow[2] + 75 / zoom + 38 / zoom * (0 + 1 + 1 + 1 - 1), 170 / zoom, 32 / zoom) then
            exports.st_gui:showPlayerNotification(localPlayer, "Wys\197\130ano ofert\196\153 okazania dowodu", "info")
            triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "pokazDowod", localPlayer, _FORV_11_)
            windows.selectPlayerAdrenalina = false
            windows.select = false
            windows.number = false
            windows.main = false
            removeEventHandler("onClientRender", root, window)
            exports.ST_gui:destroyCustomEditbox("eq_number")
            showCursor(false)
            windows.background = false
            for _FORV_17_, _FORV_18_ in pairs(textures) do
              if isElement(_FORV_18_) then
                destroyElement(_FORV_18_)
              end
            end
            textures = {}
          end
        end
      end
    end
    if isMouseIn(posWindow[1] + 90 / zoom, posWindow[2] + 83 / zoom, 140 / zoom, 42 / zoom) and windows.select == true then
      if getElementData(localPlayer, "player_offerTrade") then
        return
      end
      if selectItem == "Uzi" or selectItem == "M4" or selectItem == "Obrzyn" or selectItem == "Strzelba bojowa" or selectItem == "MP5" or selectItem == "Tec9" or selectItem == "Deagle" or selectItem == "AK47" or selectItem == "Karabin snajperski" or selectItem == "Kanister" then
        if getElementData(localPlayer, "player:faction") then
          return
        end
        if getElementData(localPlayer, "player:strzelnica") then
          return
        end
        for _FORV_5_, _FORV_6_ in pairs(settings_item) do
          if settings_item[_FORV_5_][1] == selectItem then
            if settings_item[_FORV_5_][3] == "Schowaj" then
              useItem(selectItem1, selectIDItem)
              windows.selectPlayerAdrenalina = false
              windows.select = false
              windows.number = false
              windows.main = false
              removeEventHandler("onClientRender", root, window)
              exports.ST_gui:destroyCustomEditbox("eq_number")
              showCursor(false)
              windows.background = false
              for _FORV_10_, _FORV_11_ in pairs(textures) do
                if isElement(_FORV_11_) then
                  destroyElement(_FORV_11_)
                end
              end
              textures = {}
            else
              windows.select = false
              windows.number = true
              exports.ST_gui:createCustomEditbox("eq_number", "Wpisz ilo\197\155\196\135", windowPos.x + math.floor(285 / zoom), windowPos.y + math.floor(255 / zoom), math.floor(300 / zoom), math.floor(50 / zoom), false, "")
            end
          end
        end
        windows.selectPlayerAdrenalina = false
        windows.select = false
      elseif selectItem == "Paczka zielona" or selectItem == "Paczka czerwona" or selectItem == "Paczka pomaranczowa" then
        if 500 < getTickCount() - _UPVALUE6_ then
          if blockClick then
            return
          end
          windows.selectPlayerAdrenalina = false
          useItem(selectItem1, selectIDItem, selectOptionalItem)
          blockClick = true
          triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "showItems", localPlayer, 1)
          windows.select = false
          _UPVALUE6_ = getTickCount()
          windows.select = false
        else
          exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
        end
      elseif selectItem == "Adrenalina" then
        windows.selectPlayerAdrenalina = true
      elseif selectItem == "Dow\195\179d osobisty" then
        windows.selectPlayerAdrenalina = true
      elseif selectItem == "Zestaw naprawczy" then
        windows.selectPlayerAdrenalina = true
      else
        windows.selectPlayerAdrenalina = false
        useItem(selectItem1, selectIDItem, selectOptionalItem)
        windows.select = false
        windows.number = false
        windows.main = false
        removeEventHandler("onClientRender", root, window)
        exports.ST_gui:destroyCustomEditbox("eq_number")
        showCursor(false)
        windows.background = false
        for _FORV_5_, _FORV_6_ in pairs(textures) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        textures = {}
        windows.select = false
      end
    elseif isMouseIn(posWindow[1] + 90 / zoom, posWindow[2] + 127 / zoom, 140 / zoom, 42 / zoom) and windows.select == true then
      windows.select = false
    elseif isMouseIn(windowPos.x + 290 / zoom, windowPos.y + 340 / zoom, 140 / zoom, 42 / zoom) and windows.number == true then
      windows.select = false
      windows.number = false
      exports.ST_gui:destroyCustomEditbox("eq_number")
    elseif isMouseIn(windowPos.x + 440 / zoom, windowPos.y + 340 / zoom, 140 / zoom, 42 / zoom) and windows.number == true then
      if 1 > exports.ST_gui:getCustomEditboxText("eq_number"):len() then
        exports.st_gui:showPlayerNotification("Wpisz ilo\197\155\196\135", "error")
        return
      end
      if selectItem == "Uzi" or selectItem == "M4" or selectItem == "Obrzyn" or selectItem == "Strzelba bojowa" or selectItem == "MP5" or selectItem == "Tec9" or selectItem == "Deagle" or selectItem == "AK47" or selectItem == "Karabin snajperski" then
      elseif tonumber(selectItemNumber) < tonumber((exports.ST_gui:getCustomEditboxText("eq_number"))) then
        exports.st_gui:showPlayerNotification("Nie posiadasz takiej ilo\197\155ci.", "error")
        return
      end
      if 1 > tonumber((exports.ST_gui:getCustomEditboxText("eq_number"))) then
        exports.st_gui:showPlayerNotification("XD", "troll")
        return
      end
      useItem(selectItem, selectIDItem, (exports.ST_gui:getCustomEditboxText("eq_number")))
      windows.select = false
      windows.number = false
      windows.main = false
      removeEventHandler("onClientRender", root, window)
      exports.ST_gui:destroyCustomEditbox("eq_number")
      showCursor(false)
      windows.background = false
      for _FORV_6_, _FORV_7_ in pairs(textures) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      textures = {}
    elseif isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 113 / zoom, 171 / zoom, 40 / zoom) and windows.main == true then
      sortItem("Wszystko")
    elseif isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 154 / zoom, 171 / zoom, 40 / zoom) and windows.main == true then
      sortItem("Bronie")
      _UPVALUE4_ = 1
      _UPVALUE5_ = 30
      _UPVALUE7_ = 30
    elseif isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 196 / zoom, 171 / zoom, 40 / zoom) and windows.main == true then
      sortItem("Narkotyki")
      _UPVALUE4_ = 1
      _UPVALUE5_ = 30
      _UPVALUE7_ = 30
    elseif isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 237 / zoom, 171 / zoom, 40 / zoom) and windows.main == true then
      sortItem("Ryby")
      _UPVALUE4_ = 1
      _UPVALUE5_ = 30
      _UPVALUE7_ = 30
    elseif isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 278 / zoom, 171 / zoom, 40 / zoom) and windows.main == true then
      sortItem("Paczki")
      _UPVALUE4_ = 1
      _UPVALUE5_ = 30
      _UPVALUE7_ = 30
    elseif isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 350 / zoom, 171 / zoom, 40 / zoom) and windows.main == true and windows.tradeSearchPlayer == false then
      windows.main = false
      windows.tradeSearchPlayer = true
      windows.trade = false
    elseif isMouseIn(windowPos.x + 520 / zoom, windowPos.y + 250 / zoom, 140 / zoom, 42 / zoom) and windows.trade == true then
      if ready then
        ready = false
        trade_confirm = false
        triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTradeNotReady", localPlayer, player_offer)
        money_editBox = 0
        money_accept = 0
        pp_accept = 0
      else
        ready = true
        triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTradeReady", localPlayer, player_offer, selectItemTable, money_editBox, pp_editBox)
      end
    elseif isMouseIn(windowPos.x + 55 / zoom, windowPos.y + 589 / zoom, 200 / zoom, 42 / zoom) and windows.trade == true then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTradeCancel", localPlayer, player_offer)
      playerReady = false
      ready = false
      items_table1 = {}
      selectItemTable = {}
      selectItemTable_player = {}
      removeEventHandler("onClientRender", root, window)
      windows.trade = false
      exports.st_gui:showPlayerNotification("Anulowano wymian\196\153", "info")
      showCursor(false)
      player_name = false
      windows.background = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(windowPos.x + 520 / zoom, windowPos.y + 580 / zoom, 140 / zoom, 42 / zoom) and windows.trade == true then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTradeFirstAccept", localPlayer)
    elseif isMouseIn(windowPos.x + 520 / zoom, windowPos.y + 583 / zoom, 170 / zoom, 42 / zoom) and windows.trunk == true then
      trade_confirm = true
      loadingTime = 3
    elseif isMouseIn(windowPos.x + 410 / zoom, windowPos.y + 583 / zoom, 170 / zoom, 42 / zoom) and windows.search == true then
      trade_confirm = true
      loadingTime = 3
    elseif isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 434 / zoom, 171 / zoom, 40 / zoom) and windows.main == true then
      if getElementData(localPlayer, "player:faction") == "SAPD" or getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
        windows.main = false
        windows.tradeSearchPlayer_Search = true
      end
    elseif isMouseIn(windowPos.x + 1 / zoom, windowPos.y + 392 / zoom, 171 / zoom, 40 / zoom) and windows.main == true then
      windows.main = false
      windows.trunkSearchVehicle = true
    elseif isMouseIn(windowPos.x + 55 / zoom, windowPos.y + 589 / zoom, 200 / zoom, 42 / zoom) and windows.search == true then
      items_table1 = {}
      items_table_player = {}
      selectItemTable = {}
      removeEventHandler("onClientRender", root, window)
      windows.search = false
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "player_Search", localPlayer, search_player, false)
      showCursor(false)
      windows.background = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 565 / zoom, 170 / zoom, 42 / zoom) and windows.search1 == true then
      items_table1 = {}
      items_table_player = {}
      selectItemTable = {}
      removeEventHandler("onClientRender", root, window)
      windows.search1 = false
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "player_Search", localPlayer, search_player, false)
      search_player = false
      showCursor(false)
      windows.background = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showItemsClient" then
    items_table = _ARG_1_
    if _ARG_2_ then
      blockClick = false
    end
  elseif _ARG_0_ == "offerTradeClient" then
    if getElementData(localPlayer, "player_Trade") == false then
      exports.st_gui:showPlayerNotification("Otrzyma\197\130e\197\155 ofert\196\153 handlu od gracza " .. getPlayerName(_ARG_1_) .. " kliknij przycisk \"P\" aby zaakceptowa\196\135", "info", 0, 10000)
      trade_confirm = false
      items_table1 = {}
      selectItemTable = {}
      selectItemTable_player = {}
      give_money = false
      clickOn = false
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "showItems", localPlayer)
      bindKey("P", "down", function()
        if getElementData(localPlayer, "player_offerTrade") == _UPVALUE0_ then
          clickOn = false
          firstClick = false
          pp_accept = 0
          money_accept = 0
          items_table1 = {}
          selectItemTable = {}
          ready = false
          playerReady = false
          give_money = false
          killTimer(timer)
          for _FORV_3_, _FORV_4_ in ipairs(items_table) do
            table.insert(items_table1, {
              name = _FORV_4_.name,
              ilosc = _FORV_4_.ilosc,
              id = _FORV_4_.id
            })
          end
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie zaakceptowano ofert\196\153 handlu z graczem " .. getPlayerName(_UPVALUE0_) .. "", "success")
          player_offer = _UPVALUE0_
          player_name = getPlayerName(_UPVALUE0_)
          unbindKey("P")
          triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTradeAccept", localPlayer, _UPVALUE0_)
          posWindow = {
            0,
            0,
            0,
            0,
            0
          }
          dxDrawTexture()
          addEventHandler("onClientRender", root, window)
          windows.background = false
          windows.main = false
          windows.tradeSearchPlayer = false
          windows.select = false
          windows.number = false
          exports.ST_gui:destroyCustomEditbox("eq_number")
          windows.trade = true
          showCursor(true)
        end
      end)
    end
    timer = setTimer(function()
      exports.st_gui:showPlayerNotification("Anulowano ofert\196\153 handlu", "info")
      unbindKey("P")
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTradeReject", localPlayer, _UPVALUE0_)
    end, 10500, 1)
  elseif _ARG_0_ == "offerTradeAcceptClient" then
    if getElementData(localPlayer, "player_offerTrade") == _ARG_1_ then
      selectItemTable = {}
      dxDrawTexture()
      addEventHandler("onClientRender", root, window)
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "showItems", localPlayer)
      player_offer = _ARG_1_
      player_name = getPlayerName(_ARG_1_)
      give_money = false
      exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " zaakceptowa\197\130 twoj\196\133 ofert\196\153 handlu", "success")
      items_table1 = {}
      ready = false
      playerReady = false
      windows.background = false
      windows.main = false
      windows.tradeSearchPlayer = false
      windows.select = false
      windows.number = false
      exports.ST_gui:destroyCustomEditbox("eq_number")
      windows.trade = true
      firstClick = false
      clickOn = true
      for _FORV_8_, _FORV_9_ in ipairs(items_table) do
        table.insert(items_table1, {
          name = _FORV_9_.name,
          ilosc = _FORV_9_.ilosc,
          id = _FORV_9_.id
        })
      end
      showCursor(true)
    end
  elseif _ARG_0_ == "offerTradeRejectClient" then
    exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " odrzuci\197\130 twoj\196\133 ofert\196\153 handlu", "error")
  elseif _ARG_0_ == "offerTradeReadyClient" then
    selectItemTable_player = _ARG_2_
    playerTradeMoney = _ARG_3_
    playerTradePP = _ARG_4_
    playerReady = true
  elseif _ARG_0_ == "offerTradeNotReadyClient" then
    selectItemTable_player = {}
    playerTradeMoney = false
    playerTradePP = false
    playerReady = false
    trade_confirm = false
  elseif _ARG_0_ == "offerTradeCancelClient" then
    items_table1 = {}
    selectItemTable = {}
    selectItemTable_player = {}
    removeEventHandler("onClientRender", root, window)
    windows.trade = false
    exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " anulowa\197\130 wymian\196\153", "error")
    showCursor(false)
    ready = false
    playerReady = false
    player_offer = false
    player_name = false
    windows.background = false
    for _FORV_8_, _FORV_9_ in pairs(textures) do
      if isElement(_FORV_9_) then
        destroyElement(_FORV_9_)
      end
    end
    textures = {}
  elseif _ARG_0_ == "offerTradeCancelPingClient" then
    if not give_money then
      give_money = true
    end
    trade_confirm = false
    items_table1 = {}
    selectItemTable = {}
    selectItemTable_player = {}
    removeEventHandler("onClientRender", root, window)
    windows.trade = false
    exports.st_gui:showPlayerNotification("Tw\195\179j ping lub gracza, z kt\195\179rym si\196\153 wymieniasz jest zbyt wysoki", "error")
    showCursor(false)
    ready = false
    playerReady = false
    player_offer = false
    player_name = false
    windows.background = false
    for _FORV_8_, _FORV_9_ in pairs(textures) do
      if isElement(_FORV_9_) then
        destroyElement(_FORV_9_)
      end
    end
    textures = {}
  elseif _ARG_0_ == "offerTradeConfirmClient" then
    trade_confirm = true
    loadingTime = 4
  elseif _ARG_0_ == "showItems_playerClient" then
    items_table_player = _ARG_1_
    for _FORV_8_, _FORV_9_ in ipairs(items_table_player) do
      if _FORV_9_.name == "Marihuana sativa" then
        limit_msativa_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "Marihuana indica" then
        limit_mindica_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "Przerobiona marihuana sativa" then
        limit_przemsativa_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "Przerobiona marihuana indica" then
        limit_przemindica_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "Nasiona indica" then
        limit_nindica_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "Nasiona sativa" then
        limit_nsativa_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "Amfetamina" then
        limit_amfetamina_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "Kokaina" then
        limit_kokaina_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "MDMA" then
        limit_mdma_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "LSD" then
        limit_LSD_search = math.floor(_FORV_9_.ilosc / 10)
      end
      if _FORV_9_.name == "Mefedron" then
        limit_Mefedron_search = math.floor(_FORV_9_.ilosc / 10)
      end
    end
  elseif _ARG_0_ == "showItems_vehicleClient" then
    items_table1 = {}
    items_table_vehicle = {}
    items_table1 = _ARG_1_
    items_table_vehicle = _ARG_2_
    items_remove_vehicle = {}
    items_remove_player = {}
  elseif _ARG_0_ == "offerTradeFirstAcceptClient" then
    if trade_confirm then
      return
    end
    if ready and playerReady and clickOn then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "offerTradeConfirm", localPlayer, player_offer)
      trade_confirm = true
      loadingTime = 4
      firstClick = true
    end
  elseif _ARG_0_ == "loadCustomSkinClient" then
    if tonumber(string.sub(_ARG_1_, 9, 14)) >= 351 and tonumber(string.sub(_ARG_1_, 9, 14)) <= 400 then
      exports.ST_customs_skins2:loadCustomSkin(_ARG_1_)
    elseif tonumber(string.sub(_ARG_1_, 9, 14)) >= 201 and tonumber(string.sub(_ARG_1_, 9, 14)) <= 300 then
      exports.ST_customs_skins3:loadCustomSkin(_ARG_1_)
    else
      exports.ST_customs_skins1:loadCustomSkin(_ARG_1_)
    end
  elseif _ARG_0_ == "okazywanieDowoduClient" then
    exports.st_gui:showPlayerNotification("" .. getPlayerName(_ARG_2_) .. " chce przekaza\196\135 ci dow\195\179d. Kliknij przycisk \"P\" aby zaakceptowa\196\135", "info", 0, 10000)
    bindKey("P", "down", function()
      texturesIdCard = {
        logo = dxCreateTexture(":ST_dowody/img/logo.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      nickDowod = _UPVALUE0_
      infoCard_table = _UPVALUE1_
      addEventHandler("onClientRender", root, idCardWindow)
      killTimer(timer)
      unbindKey("P")
      ped = createPed(getElementModel(nickDowod), getCameraMatrix())
      myObject = exports.ST_object_preview:createObjectPreview(ped, -5, 0, 180, _UPVALUE2_.x - 10 / zoom, _UPVALUE2_.y + 210 / zoom, 200 / zoom, 220 / zoom, false, true)
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "dowodText", localPlayer, true, nickDowod)
      exports.st_gui:showPlayerNotification("Kliknij \"backspace\", aby zamkn\196\133\196\135 okno", "info")
      bindKey("backspace", "down", function()
        triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "dowodText", localPlayer, false, nickDowod)
        infoCard_table = nil
        removeEventHandler("onClientRender", root, idCardWindow)
        for _FORV_3_, _FORV_4_ in pairs(texturesIdCard) do
          if isElement(_FORV_4_) then
            destroyElement(_FORV_4_)
          end
        end
        texturesIdCard = {}
        if isElement(ped) then
          destroyElement(ped)
          setTimer(function()
            exports.ST_object_preview:destroyObjectPreview(myObject)
          end, 100, 1)
        end
        unbindKey("backspace")
        nickDowod = false
      end)
    end)
    timer = setTimer(function()
      unbindKey("P")
    end, 10500, 1)
  end
end)
bindKey("n", "down", function()
  if not getElementData(localPlayer, "player:sid") then
    return
  end
  if windows.trade == true then
    return
  end
  if windows.search == true then
    return
  end
  if windows.background == true then
    if windows.trunk == true then
      if trade_confirm then
        return
      end
      windows.trunk = false
      setElementData(localPlayer, "player_offerTrade", false)
    end
    removeEventHandler("onClientRender", root, window)
    windows.background = false
    windows.main = false
    windows.tradeSearchPlayer = false
    windows.select = false
    windows.number = false
    windows.trade = false
    windows.tradeSearchPlayer_Search = false
    windows.trunkSearchVehicle = false
    windows.search = false
    exports.ST_gui:destroyCustomEditbox("eq_number")
    showCursor(false)
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
  elseif getTickCount() - _UPVALUE0_ > 2500 then
    status = false
    posWindow = {
      0,
      0,
      0,
      0,
      0
    }
    items_table = {}
    dxDrawTexture()
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "showItems", localPlayer)
    addEventHandler("onClientRender", root, window)
    windows.main = true
    windows.tradeSearchPlayer = false
    windows.select = false
    windows.number = false
    windows.background = true
    windows.trade = false
    windows.tradeSearchPlayer_Search = false
    windows.trunkSearchVehicle = false
    windows.search = false
    windows.trunk = false
    exports.ST_gui:destroyCustomEditbox("eq_number")
    showCursor(true)
    _UPVALUE0_ = getTickCount()
  end
end)
function useItem(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ == "Uzi" or _ARG_0_ == "M4" or _ARG_0_ == "Obrzyn" or _ARG_0_ == "Strzelba bojowa" or _ARG_0_ == "MP5" or _ARG_0_ == "Tec9" or _ARG_0_ == "Deagle" or _ARG_0_ == "AK47" or _ARG_0_ == "Karabin snajperski" then
    if exports.ST_datasystem:getCustomData(localPlayer, "player:arenki1vs1", "synced") then
      return
    end
    if exports.ST_datasystem:getCustomData(localPlayer, "eq_" .. _ARG_0_ .. "", "synced") then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_weapons", localPlayer, _ARG_2_, _ARG_1_, _ARG_0_, true)
      exports.st_gui:showPlayerNotification("Schowano " .. _ARG_0_, "success")
    else
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_weapons", localPlayer, _ARG_2_, _ARG_1_, _ARG_0_, false)
      exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to " .. _ARG_0_, "success")
    end
  elseif string.sub(_ARG_0_, 1, 4) == "Skin" then
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "selectCustomSkin", localPlayer, _ARG_1_, _ARG_0_)
    exports.st_gui:showPlayerNotification("Pomy\197\155lnie u\197\188yto customowego skina\nWyjd\197\186 i wejdz na serwer aby skin si\196\153 za\197\130adowa\197\130", "success")
  elseif _ARG_0_ == "Kanister" then
    if tonumber(_ARG_2_) < 0 then
      exports.st_gui:showPlayerNotification("", "troll")
      return
    end
    if not getPedOccupiedVehicle(localPlayer) then
      exports.st_gui:showPlayerNotification("Musisz siedzie\196\135 w poje\197\186dzie", "error")
      return
    end
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "eq_canister", localPlayer, _ARG_2_, _ARG_1_)
  elseif _ARG_0_ == "Zestaw naprawczy" then
  elseif _ARG_0_ == "Akumulator" then
    if not getPedOccupiedVehicle(localPlayer) then
      exports.st_gui:showPlayerNotification("Musisz siedzie\196\135 w poje\197\186dzie", "error")
      return
    end
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "eq_aku", localPlayer, _ARG_1_)
  elseif _ARG_0_ == "Apteczka" then
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "eq_first_aid_kit", localPlayer, _ARG_1_)
    exports.st_gui:showPlayerNotification("Pomy\197\155lnie u\197\188yto apteczki.", "success")
  elseif _ARG_0_ == "Spadochron" then
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_parachute", localPlayer, _ARG_1_)
    exports.st_gui:showPlayerNotification("Za\197\130o\197\188ono spadochron", "success")
    triggerEvent("addParachuteRender", localPlayer)
  elseif _ARG_0_ == "Bejsbol" or _ARG_0_ == "\197\129opata" or _ARG_0_ == "Wedka" or _ARG_0_ == "Noz" or _ARG_0_ == "Aparat" then
    if exports.ST_datasystem:getCustomData(localPlayer, "player:arenki1vs1", "synced") then
      return
    end
    if exports.ST_datasystem:getCustomData(localPlayer, "eq_" .. _ARG_0_ .. "", "synced") then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_weapons1", localPlayer, true, _ARG_0_)
      exports.st_gui:showPlayerNotification("Schowano " .. _ARG_0_ .. "", "success")
    else
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_weapons1", localPlayer, false, _ARG_0_)
      exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to " .. _ARG_0_ .. "", "success")
    end
  elseif _ARG_0_ == "Maska" then
    if getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
      if exports.ST_datasystem:getCustomData(localPlayer, "eq_mask", "synced") then
        exports.st_gui:showPlayerNotification("Schowano mask\196\153.", "success")
        triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_mask", localPlayer, true)
      else
        exports.st_gui:showPlayerNotification("Za\197\130o\197\188ono mask\196\153.", "success")
        triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_mask", localPlayer, false)
      end
    else
      exports.st_gui:showPlayerNotification("Nie jeste\197\155 w organizacji lub grupie przestepczej.", "error")
    end
  elseif _ARG_0_ == "Maska psa" or _ARG_0_ == "Maska hokejowa" or _ARG_0_ == "Maska ma\197\130py" or _ARG_0_ == "Maska potwora" or _ARG_0_ == "Maska \197\155wini" or _ARG_0_ == "Maska dyni" then
    if exports.ST_datasystem:getCustomData(localPlayer, "eq_mask1", "synced") then
      exports.st_gui:showPlayerNotification("Schowano mask\196\153.", "success")
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_mask_custom", localPlayer, true, _ARG_0_)
    else
      exports.st_gui:showPlayerNotification("Za\197\130o\197\188ono mask\196\153.", "success")
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "give_mask_custom", localPlayer, false, _ARG_0_)
    end
  elseif _ARG_0_ == "Nasiona indica" or _ARG_0_ == "Nasiona sativa" then
    if getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "seed_weed", localPlayer, _ARG_1_, _ARG_0_)
    else
      exports.st_gui:showPlayerNotification("Nie jeste\197\155 w organizacji lub grupie przestepczej.", "error")
    end
  elseif _ARG_0_ == "Kokaina" then
    if getElementData(localPlayer, "player:nacpany") == "AMFETAMINA" or getElementData(localPlayer, "player:nacpany") == "MARIHUANA" or getElementData(localPlayer, "player:nacpany") == "MDMA" or getElementData(localPlayer, "player:nacpany") == "Morfina" or getElementData(localPlayer, "player:nacpany") == "Mefedron" or getElementData(localPlayer, "player:nacpany") == "LSD" then
      exports.st_gui:showPlayerNotification("Jeste\197\155 pod wp\197\130ywem innego narkotyku", "error")
      return
    end
    if time then
      time = time + 60
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "coco", localPlayer, _ARG_1_)
    else
      time = 60
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "coco", localPlayer, _ARG_1_)
    end
    if windows.intoxicated == true then
      return
    end
    addEventHandler("onClientRender", root, intoxicatedGui)
    windows.intoxicated = true
    setElementData(localPlayer, "player:nacpany", "KOKAINA")
    setGameSpeed(1.2)
    exports.st_gui:showPlayerNotification("Pomy\197\155lnie za\197\188yto kokain\196\153", "success")
  elseif _ARG_0_ == "Amfetamina" then
    if getElementData(localPlayer, "player:nacpany") == "KOKAINA" or getElementData(localPlayer, "player:nacpany") == "MARIHUANA" or getElementData(localPlayer, "player:nacpany") == "MDMA" or getElementData(localPlayer, "player:nacpany") == "Morfina" or getElementData(localPlayer, "player:nacpany") == "Mefedron" or getElementData(localPlayer, "player:nacpany") == "LSD" then
      exports.st_gui:showPlayerNotification("Jeste\197\155 pod wp\197\130ywem innego narkotyku", "error")
      return
    end
    if time then
      time = time + 60
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "feta", localPlayer, _ARG_1_)
    else
      time = 60
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "feta", localPlayer, _ARG_1_)
    end
    if windows.intoxicated == true then
      return
    end
    addEventHandler("onClientRender", root, intoxicatedGui)
    windows.intoxicated = true
    setElementData(localPlayer, "player:nacpany", "AMFETAMINA")
    setGameSpeed(1.1)
  elseif _ARG_0_ == "MDMA" then
    if getElementData(localPlayer, "player:job") then
      return
    end
    if getElementData(localPlayer, "player:nacpany") and getElementData(localPlayer, "player:nacpany") ~= false and getElementData(localPlayer, "player:nacpany") ~= "MDMA" then
      exports.st_gui:showPlayerNotification("Jeste\197\155 pod wp\197\130ywem innego narkotyku", "error")
      return
    end
    if time then
      time = time + 130
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "mdma", localPlayer, _ARG_1_)
    else
      time = 130
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "mdma", localPlayer, _ARG_1_)
    end
    if windows.intoxicated == true then
      return
    end
    addEventHandler("onClientRender", root, intoxicatedGui)
    windows.intoxicated = true
    setElementData(localPlayer, "player:nacpany", "MDMA")
    setGameSpeed(1.1)
  elseif _ARG_0_ == "Mefedron" then
    if getElementData(localPlayer, "player:job") then
      return
    end
    if getElementData(localPlayer, "player:nacpany") and getElementData(localPlayer, "player:nacpany") ~= false and getElementData(localPlayer, "player:nacpany") ~= "Mefedron" then
      exports.st_gui:showPlayerNotification("Jeste\197\155 pod wp\197\130ywem innego narkotyku", "error")
      return
    end
    if time then
      time = time + 80
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "Mefedron", localPlayer, _ARG_1_)
    else
      time = 80
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "Mefedron", localPlayer, _ARG_1_)
    end
    if windows.intoxicated == true then
      return
    end
    addEventHandler("onClientRender", root, intoxicatedGui)
    windows.intoxicated = true
    setElementData(localPlayer, "player:nacpany", "Mefedron")
    setGameSpeed(1.25)
    exports.st_gui:showPlayerNotification("Pomy\197\155lnie za\197\188yto mefedron", "success")
  elseif _ARG_0_ == "LSD" then
    if getElementData(localPlayer, "player:job") then
      return
    end
    if getElementData(localPlayer, "player:nacpany") == "KOKAINA" or getElementData(localPlayer, "player:nacpany") == "MARIHUANA" or getElementData(localPlayer, "player:nacpany") == "AMFETAMINA" or getElementData(localPlayer, "player:nacpany") == "Morfina" or getElementData(localPlayer, "player:nacpany") == "Mefedron" then
      exports.st_gui:showPlayerNotification("Jeste\197\155 pod wp\197\130ywem innego narkotyku", "error")
      return
    end
    if time then
      time = time + 130
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "LSD", localPlayer, _ARG_1_)
    else
      time = 130
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "LSD", localPlayer, _ARG_1_)
    end
    if windows.intoxicated == true then
      return
    end
    addEventHandler("onClientRender", root, intoxicatedGui)
    windows.intoxicated = true
    setElementData(localPlayer, "player:nacpany", "LSD")
    setSkyGradient(60, 255, 0, 0, 255, 0)
    setGameSpeed(1.1)
  elseif _ARG_0_ == "Marihuana" or _ARG_0_ == "Marihuana sativa" or _ARG_0_ == "Marihuana indica" or _ARG_0_ == "Przerobiona marihuana sativa" or _ARG_0_ == "Przerobiona marihuana indica" then
    if getElementData(localPlayer, "player:nacpany") == "KOKAINA" or getElementData(localPlayer, "player:nacpany") == "Mefedron" or getElementData(localPlayer, "player:nacpany") == "AMFETAMINA" or getElementData(localPlayer, "player:nacpany") == "MDMA" or getElementData(localPlayer, "player:nacpany") == "Morfina" then
      exports.st_gui:showPlayerNotification("Jeste\197\155 pod wp\197\130ywem innego narkotyku", "error")
      return
    end
    if time then
      time = time + 70
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "marihuana", localPlayer, _ARG_1_)
    else
      time = 70
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "marihuana", localPlayer, _ARG_1_)
    end
    if windows.intoxicated == true then
      return
    end
    addEventHandler("onClientRender", root, intoxicatedGui)
    windows.intoxicated = true
    setGameSpeed(0.9)
    setElementData(localPlayer, "player:nacpany", "MARIHUANA")
    setSkyGradient(200, 0, 100, 150, 0, 70)
  elseif _ARG_0_ == "Morfina" then
    if getElementData(localPlayer, "player:nacpany") == "KOKAINA" or getElementData(localPlayer, "player:nacpany") == "AMFETAMINA" or getElementData(localPlayer, "player:nacpany") == "MDMA" or getElementData(localPlayer, "player:nacpany") == "Mefedron" or getElementData(localPlayer, "player:nacpany") == "LSD" then
      exports.st_gui:showPlayerNotification("Jeste\197\155 pod wp\197\130ywem innego narkotyku", "error")
      return
    end
    if not lastTickCountMorfina then
      lastTickCountMorfina = 300000
    end
    if 300000 < getTickCount() - lastTickCountMorfina then
      lastTickCountMorfina = getTickCount()
      if getElementData(localPlayer, "player:nacpany") == "Morfina" then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz ju\197\188 u\197\188y\196\135 tego narkotyku", "error")
        return
      end
      if getElementData(localPlayer, "player:nacpany") == "KOKAINA" or getElementData(localPlayer, "player:nacpany") == "AMFETAMINA" or getElementData(localPlayer, "player:nacpany") == "MDMA" or getElementData(localPlayer, "player:nacpany") == "Mefedron" or getElementData(localPlayer, "player:nacpany") == "LSD" then
        exports.st_gui:showPlayerNotification("Jeste\197\155 pod wp\197\130ywem innego narkotyku", "error")
        return
      end
      time = 10
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "morfina", localPlayer, _ARG_1_)
      if windows.intoxicated == true then
        return
      end
      addEventHandler("onClientRender", root, intoxicatedGui)
      windows.intoxicated = true
      setElementData(localPlayer, "player:nacpany", "Morfina")
    else
      exports.st_gui:showPlayerNotification("Nast\196\153pny raz mo\197\188esz u\197\188y\196\135 za 5 minut", "error")
    end
  elseif _ARG_0_ == "Adrenalina" then
  elseif _ARG_0_ == "Paczka zielona" then
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "loot_green", localPlayer, _ARG_1_)
  elseif _ARG_0_ == "Paczka pomaranczowa" then
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "loot_orange", localPlayer, _ARG_1_)
  elseif _ARG_0_ == "Paczka czerwona" then
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "loot_red", localPlayer, _ARG_1_)
  elseif _ARG_0_ == "Woda" then
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "water", localPlayer, _ARG_1_)
  elseif _ARG_0_ == "Jetpack" then
    if getElementData(localPlayer, "eq_jetpack") then
      setElementData(localPlayer, "eq_jetpack", false)
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "jetpack", localPlayer, _ARG_1_, false)
    else
      setElementData(localPlayer, "eq_jetpack", true)
      triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "jetpack", localPlayer, _ARG_1_, true)
    end
  elseif _ARG_0_ == "Boost zarobk\195\179w pracy +5% /6h" or _ARG_0_ == "Boost zarobk\195\179w pracy +10% /6h" or _ARG_0_ == "Boost zarobk\195\179w pracy +15% /6h" or _ARG_0_ == "Boost zarobk\195\179w pracy +20% /6h" then
    triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "boostJob", localPlayer, _ARG_1_, _ARG_0_)
  end
end
function sortItem(_ARG_0_)
  if _ARG_0_ == "Bronie" then
    sort_item = {
      {"Noz"},
      {"Uzi"},
      {"M4"},
      {"Obrzyn"},
      {"Bejsbol"},
      {"\197\129opata"},
      {"MP5"},
      {"Tec9"},
      {"Deagle"},
      {"AK47"},
      {
        "Karabin snajperski"
      },
      {"Amunicja"},
      {
        "Strzelba bojowa"
      }
    }
  elseif _ARG_0_ == "Wszystko" then
    sort_item = {
      {"Amunicja"},
      {
        "Izopropanol"
      },
      {
        "Liscie koki"
      },
      {"Dioksan"},
      {
        "Azotan rteci"
      },
      {
        "Kwas octowy"
      },
      {
        "Chlorek metylu"
      },
      {"Noz"},
      {"Uzi"},
      {"M4"},
      {"Obrzyn"},
      {"Bejsbol"},
      {"\197\129opata"},
      {"MP5"},
      {"Tec9"},
      {"Deagle"},
      {"AK47"},
      {
        "Karabin snajperski"
      },
      {"Rekin"},
      {"Amfetamina"},
      {"Kokaina"},
      {
        "Zestaw naprawczy"
      },
      {"Apteczka"},
      {
        "Marihuana sativa"
      },
      {
        "Marihuana indica"
      },
      {
        "Nasiona indica"
      },
      {
        "Nasiona sativa"
      },
      {"Wedka"},
      {"Maska"},
      {"Kanister"},
      {"Kajdanki"},
      {"Karp"},
      {"Dorsz"},
      {"Makrela"},
      {"Szczupak"},
      {
        "Strzelba bojowa"
      },
      {
        "Paczka czarna"
      },
      {
        "Paczka czerwona"
      },
      {
        "Paczka pomaranczowa"
      },
      {
        "Paczka zielona"
      },
      {"Skin"},
      {"MDMA"},
      {"Aparat"},
      {"Woda"},
      {
        "Przerobiona marihuana sativa"
      },
      {
        "Przerobiona marihuana indica"
      },
      {"Spadochron"},
      {"Maska psa"},
      {
        "Maska hokejowa"
      },
      {
        "Maska ma\197\130py"
      },
      {
        "Maska potwora"
      },
      {
        "Maska \197\155wini"
      },
      {"Maska dyni"},
      {"Jetpack"},
      {"LSD"},
      {"Mefedron"},
      {
        "\197\154wi\196\153ta2024"
      },
      {
        "Wielkanoc2025"
      },
      {"Z\197\130oto"},
      {
        "Z\197\130oty \197\130a\197\132cuszek"
      },
      {
        "\197\129a\197\132cuszek z diamentem"
      },
      {
        "Pier\197\155cionek z diamentem"
      },
      {"Morfina"},
      {"Adrenalina"},
      {
        "Dow\195\179d osobisty"
      },
      {"Akumulator"},
      {
        "Boost zarobk\195\179w pracy +5% /6h"
      },
      {
        "Boost zarobk\195\179w pracy +10% /6h"
      },
      {
        "Boost zarobk\195\179w pracy +15% /6h"
      },
      {
        "Boost zarobk\195\179w pracy +20% /6h"
      }
    }
  elseif _ARG_0_ == "Narkotyki" then
    sort_item = {
      {
        "Marihuana sativa"
      },
      {
        "Marihuana indica"
      },
      {
        "Nasiona indica"
      },
      {
        "Nasiona sativa"
      },
      {"Amfetamina"},
      {"Kokaina"},
      {"MDMA"},
      {
        "Przerobiona marihuana sativa"
      },
      {
        "Przerobiona marihuana indica"
      },
      {"LSD"},
      {"Mefedron"}
    }
  elseif _ARG_0_ == "Ryby" then
    sort_item = {
      {"Karp"},
      {"Dorsz"},
      {"Makrela"},
      {"Rekin"},
      {"Szczupak"}
    }
  elseif _ARG_0_ == "Paczki" then
    sort_item = {
      {
        "Paczka czarna"
      },
      {
        "Paczka czerwona"
      },
      {
        "Paczka pomaranczowa"
      },
      {
        "Paczka zielona"
      }
    }
  end
end
function dxDrawTexture()
  textures = {
    background = dxCreateTexture("img/background.png"),
    shark_icon = dxCreateTexture("img/shark_icon.png"),
    amphetamines_icon = dxCreateTexture("img/amphetamines_icon.png"),
    coco_icon = dxCreateTexture("img/coco_icon.png"),
    repairkit_icon = dxCreateTexture("img/repairkit_icon.png"),
    firstaidkit_icon = dxCreateTexture("img/firstaidkit_icon.png"),
    trade_icon = dxCreateTexture("img/trade_icon.png"),
    weapons_icon = dxCreateTexture("img/weapons_icon.png"),
    all_icon = dxCreateTexture("img/all_icon.png"),
    drugs_icon = dxCreateTexture("img/drugs_icon.png"),
    weed_icon = dxCreateTexture("img/weed_icon.png"),
    weed1_icon = dxCreateTexture("img/weed1_icon.png"),
    knife_icon = dxCreateTexture("img/knife_icon.png"),
    ak47_icon = dxCreateTexture("img/ak47_icon.png"),
    m4_icon = dxCreateTexture("img/m4_icon.png"),
    seeds_icon = dxCreateTexture("img/seeds_icon.png"),
    ammo_icon = dxCreateTexture("img/ammo_icon.png"),
    fishing_rod_icon = dxCreateTexture("img/fishing_rod_icon.png"),
    mask_icon = dxCreateTexture("img/mask_icon.png"),
    canister_icon = dxCreateTexture("img/canister_icon.png"),
    handcuffs_icon = dxCreateTexture("img/handcuffs_icon.png"),
    deagle_icon = dxCreateTexture("img/deagle_icon.png"),
    sniper_icon = dxCreateTexture("img/sniper_icon.png"),
    uzi_icon = dxCreateTexture("img/uzi_icon.png"),
    obrzyn_icon = dxCreateTexture("img/obrzyn_icon.png"),
    mp5_icon = dxCreateTexture("img/mp5_icon.png"),
    baseball_icon = dxCreateTexture("img/baseball_icon.png"),
    tec9_icon = dxCreateTexture("img/tec9_icon.png"),
    carp_icon = dxCreateTexture("img/carp_icon.png"),
    cod_icon = dxCreateTexture("img/cod_icon.png"),
    mackerel_icon = dxCreateTexture("img/mackerel_icon.png"),
    pike_icon = dxCreateTexture("img/pike_icon.png"),
    shovel_icon = dxCreateTexture("img/shovel_icon.png"),
    fish_icon = dxCreateTexture("img/fish_icon.png"),
    search_icon = dxCreateTexture("img/search_icon.png"),
    combat_icon = dxCreateTexture("img/combat_icon.png"),
    loot_black = dxCreateTexture("img/loot_black.png"),
    loot_red = dxCreateTexture("img/loot_red.png"),
    loot_orange = dxCreateTexture("img/loot_orange.png"),
    loot_green = dxCreateTexture("img/loot_green.png"),
    tshirt_icon = dxCreateTexture("img/tshirt_icon.png"),
    isopropanol_icon = dxCreateTexture("img/isopropanol_icon.png"),
    mercury_nitrate_icon = dxCreateTexture("img/mercury_nitrate_icon.png"),
    acetic_acid_icon = dxCreateTexture("img/acetic_acid_icon.png"),
    methyl_chloride_icon = dxCreateTexture("img/methyl_chloride_icon.png"),
    dioxane_icon = dxCreateTexture("img/dioxane_icon.png"),
    coca_leaves_icon = dxCreateTexture("img/coca_leaves_icon.png"),
    mdma_icon = dxCreateTexture("img/mdma_icon.png"),
    camera_icon = dxCreateTexture("img/camera_icon.png"),
    trunk_icon = dxCreateTexture("img/trunk_icon.png"),
    water_icon = dxCreateTexture("img/water_icon.png"),
    arrow = dxCreateTexture(":ST_atm/img/arrow.png"),
    parachute_icon = dxCreateTexture("img/parachute_icon.png"),
    mask_dog = dxCreateTexture("img/mask_dog.png"),
    mask_pig = dxCreateTexture("img/mask_pig.png"),
    mask_monster = dxCreateTexture("img/mask_monster.png"),
    mask_monkey = dxCreateTexture("img/mask_monkey.png"),
    mask1 = dxCreateTexture("img/mask1.png"),
    mask_pumpkin = dxCreateTexture("img/mask_pumpkin.png"),
    jetpack_icon = dxCreateTexture("img/jetpack_icon.png"),
    mephedrone_icon = dxCreateTexture("img/mephedrone_icon.png"),
    lsd_icon = dxCreateTexture("img/lsd_icon.png"),
    ring_icon = dxCreateTexture(":ST_napad_jubiler/img/ring_icon.png"),
    gold_icon = dxCreateTexture(":ST_napad_jubiler/img/gold_icon.png"),
    chain2_icon = dxCreateTexture(":ST_napad_jubiler/img/chain2_icon.png"),
    chain_icon = dxCreateTexture(":ST_napad_jubiler/img/chain_icon.png"),
    adrenalina_icon = dxCreateTexture("img/adrenalina_icon.png"),
    morphine_icon = dxCreateTexture("img/morphine_icon.png"),
    idCard_icon = dxCreateTexture("img/idCard_icon.png"),
    aku_icon = dxCreateTexture("img/aku_icon.png"),
    swieta2024 = dxCreateTexture("img/swieta2024.png"),
    wielkanoc2025 = dxCreateTexture("img/wielkanoc2025.png"),
    boost_job_icon = dxCreateTexture("img/boost_job_icon.png")
  }
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Bejsbol", "synced") then
    useBejsbol = "Schowaj"
  else
    useBejsbol = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_\197\129opata", "synced") then
    useLopata = "Schowaj"
  else
    useLopata = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Wedka", "synced") then
    useWedka = "Schowaj"
  else
    useWedka = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Noz", "synced") then
    useNoz = "Schowaj"
  else
    useNoz = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Uzi", "synced") then
    useUzi = "Schowaj"
  else
    useUzi = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_M4", "synced") then
    useM4 = "Schowaj"
  else
    useM4 = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Obrzyn", "synced") then
    useObrzyn = "Schowaj"
  else
    useObrzyn = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_MP5", "synced") then
    useMP5 = "Schowaj"
  else
    useMP5 = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Tec9", "synced") then
    useTec9 = "Schowaj"
  else
    useTec9 = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Deagle", "synced") then
    useDeagle = "Schowaj"
  else
    useDeagle = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_AK47", "synced") then
    useAK47 = "Schowaj"
  else
    useAK47 = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Karabin snajperski", "synced") then
    useSniper = "Schowaj"
  else
    useSniper = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_Strzelba bojowa", "synced") then
    useStrzelba = "Schowaj"
  else
    useStrzelba = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_mask", "synced") then
    useMask = "Zdejmij"
  else
    useMask = "Za\197\130\195\179\197\188"
  end
  if getElementData(localPlayer, "eq_Aparat") then
    useAparat = "Schowaj"
  else
    useAparat = "Wyjmij"
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "eq_mask1", "synced") then
    useMask1 = "Zdejmij"
  else
    useMask1 = "Za\197\130\195\179\197\188"
  end
  if getElementData(localPlayer, "eq_jetpack") then
    useJetpack1 = "Zdejmij"
  else
    useJetpack1 = "Za\197\130\195\179\197\188"
  end
  settings_item = {
    {
      "Rekin",
      textures.shark_icon,
      "-"
    },
    {
      "Amfetamina",
      textures.amphetamines_icon,
      "Za\197\188yj"
    },
    {
      "Kokaina",
      textures.coco_icon,
      "Za\197\188yj"
    },
    {
      "MDMA",
      textures.mdma_icon,
      "Za\197\188yj"
    },
    {
      "Zestaw naprawczy",
      textures.repairkit_icon,
      "Napraw"
    },
    {
      "Apteczka",
      textures.firstaidkit_icon,
      "U\197\188yj"
    },
    {
      "Marihuana sativa",
      textures.weed_icon,
      "Zapal"
    },
    {
      "Marihuana indica",
      textures.weed_icon,
      "Zapal"
    },
    {
      "Przerobiona marihuana sativa",
      textures.weed1_icon,
      "Zapal"
    },
    {
      "Przerobiona marihuana indica",
      textures.weed1_icon,
      "Zapal"
    },
    {
      "Noz",
      textures.knife_icon,
      useNoz
    },
    {
      "AK47",
      textures.ak47_icon,
      useAK47
    },
    {
      "M4",
      textures.m4_icon,
      useM4
    },
    {
      "Nasiona indica",
      textures.seeds_icon,
      "Zasad\197\186"
    },
    {
      "Nasiona sativa",
      textures.seeds_icon,
      "Zasad\197\186"
    },
    {
      "Amunicja",
      textures.ammo_icon,
      "-"
    },
    {
      "Izopropanol",
      textures.isopropanol_icon,
      "-"
    },
    {
      "Liscie koki",
      textures.coca_leaves_icon,
      "-"
    },
    {
      "Azotan rteci",
      textures.mercury_nitrate_icon,
      "-"
    },
    {
      "Kwas octowy",
      textures.acetic_acid_icon,
      "-"
    },
    {
      "Chlorek metylu",
      textures.methyl_chloride_icon,
      "-"
    },
    {
      "Dioksan",
      textures.dioxane_icon,
      "-"
    },
    {
      "Wedka",
      textures.fishing_rod_icon,
      useWedka
    },
    {
      "Maska",
      textures.mask_icon,
      useMask
    },
    {
      "Kanister",
      textures.canister_icon,
      "Dolej"
    },
    {
      "Kajdanki",
      textures.handcuffs_icon,
      "-"
    },
    {
      "Deagle",
      textures.deagle_icon,
      useDeagle
    },
    {
      "Karabin snajperski",
      textures.sniper_icon,
      useSniper
    },
    {
      "Uzi",
      textures.uzi_icon,
      useUzi
    },
    {
      "Obrzyn",
      textures.obrzyn_icon,
      useObrzyn
    },
    {
      "MP5",
      textures.mp5_icon,
      useMP5
    },
    {
      "Bejsbol",
      textures.baseball_icon,
      useBejsbol
    },
    {
      "Tec9",
      textures.tec9_icon,
      useTec9
    },
    {
      "Karp",
      textures.carp_icon,
      "-"
    },
    {
      "Dorsz",
      textures.cod_icon,
      "-"
    },
    {
      "Makrela",
      textures.mackerel_icon,
      "-"
    },
    {
      "Szczupak",
      textures.pike_icon,
      "-"
    },
    {
      "\197\129opata",
      textures.shovel_icon,
      useLopata
    },
    {
      "Strzelba bojowa",
      textures.combat_icon,
      useStrzelba
    },
    {
      "Paczka czarna",
      textures.loot_black,
      "Otw\195\179rz"
    },
    {
      "Paczka czerwona",
      textures.loot_red,
      "Otw\195\179rz"
    },
    {
      "Paczka pomaranczowa",
      textures.loot_orange,
      "Otw\195\179rz"
    },
    {
      "Paczka zielona",
      textures.loot_green,
      "Otw\195\179rz"
    },
    {
      "Skin",
      textures.tshirt_icon,
      "U\197\188yj"
    },
    {
      "Aparat",
      textures.camera_icon,
      useAparat
    },
    {
      "Woda",
      textures.water_icon,
      "Napij si\196\153"
    },
    {
      "Spadochron",
      textures.parachute_icon,
      "Za\197\130\195\179\197\188"
    },
    {
      "Maska psa",
      textures.mask_dog,
      useMask1
    },
    {
      "Maska hokejowa",
      textures.mask1,
      useMask1
    },
    {
      "Maska ma\197\130py",
      textures.mask_monkey,
      useMask1
    },
    {
      "Maska potwora",
      textures.mask_monster,
      useMask1
    },
    {
      "Maska \197\155wini",
      textures.mask_pig,
      useMask1
    },
    {
      "Maska dyni",
      textures.mask_pumpkin,
      useMask1
    },
    {
      "Jetpack",
      textures.jetpack_icon,
      useJetpack1
    },
    {
      "LSD",
      textures.lsd_icon,
      "Za\197\188yj"
    },
    {
      "Mefedron",
      textures.mephedrone_icon,
      "Za\197\188yj"
    },
    {
      "Z\197\130oto",
      textures.gold_icon,
      "-"
    },
    {
      "Z\197\130oty \197\130a\197\132cuszek",
      textures.chain_icon,
      "-"
    },
    {
      "\197\129a\197\132cuszek z diamentem",
      textures.chain2_icon,
      "-"
    },
    {
      "Pier\197\155cionek z diamentem",
      textures.ring_icon,
      "-"
    },
    {
      "Morfina",
      textures.morphine_icon,
      "Za\197\188yj"
    },
    {
      "Adrenalina",
      textures.adrenalina_icon,
      "U\197\188yj"
    },
    {
      "Dow\195\179d osobisty",
      textures.idCard_icon,
      "Oka\197\188"
    },
    {
      "Akumulator",
      textures.aku_icon,
      "U\197\188yj"
    },
    {
      "\197\154wi\196\153ta2024",
      textures.swieta2024,
      "-",
      name2 = "Event Fabularny - \197\154wi\196\153ta 2024"
    },
    {
      "Wielkanoc2025",
      textures.wielkanoc2025,
      "-",
      name2 = "Event Fabularny - Wielkanoc 2025"
    },
    {
      "Boost zarobk\195\179w pracy +5% /6h",
      textures.boost_job_icon,
      "U\197\188yj"
    },
    {
      "Boost zarobk\195\179w pracy +10% /6h",
      textures.boost_job_icon,
      "U\197\188yj"
    },
    {
      "Boost zarobk\195\179w pracy +15% /6h",
      textures.boost_job_icon,
      "U\197\188yj"
    },
    {
      "Boost zarobk\195\179w pracy +20% /6h",
      textures.boost_job_icon,
      "U\197\188yj"
    }
  }
  sortItem("Wszystko")
end
function start()
  dxDrawTexture()
  posWindow = {
    0,
    0,
    0,
    0,
    0
  }
  items_table = {}
  sortItem("Wszystko")
  triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "showItems", localPlayer)
  addEventHandler("onClientRender", root, window)
  windows.main = true
  exports.ST_gui:destroyCustomEditbox("eq_number")
end
bindKey("mouse_wheel_down", "both", function()
  if windows.main == true then
    scrollUp()
  elseif windows.trade == true then
    scrollUp2()
  elseif windows.trunk == true then
    scrollUp3()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.main == true then
    scrollDown()
  elseif windows.trade == true then
    scrollDown2()
  elseif windows.trunk == true then
    scrollDown3()
  end
end)
function scrollDown3()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 4
  _UPVALUE0_ = _UPVALUE0_ - 4
end
function scrollUp3()
  if _UPVALUE0_ >= #items_table1 then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 4
  _UPVALUE0_ = _UPVALUE0_ + 4
end
function scrollDown2()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 4
  _UPVALUE0_ = _UPVALUE0_ - 4
end
function scrollUp2()
  if _UPVALUE0_ >= #items_table1 then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 4
  _UPVALUE0_ = _UPVALUE0_ + 4
end
function scrollDown()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 5
  _UPVALUE0_ = _UPVALUE0_ - 5
end
function scrollUp()
  if _UPVALUE0_ >= #items_table then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 5
  _UPVALUE0_ = _UPVALUE0_ + 5
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
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, _ARG_6_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1, _ARG_6_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1, _ARG_6_)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1, _ARG_6_)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1, _ARG_6_)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, _ARG_6_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, _ARG_6_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, _ARG_6_)
end
function intoxicatedGui()
  if windows.intoxicated == true and getElementData(localPlayer, "player:nacpany") then
    if getTickCount() - tick > 1000 then
      tick = getTickCount()
      time = time - 1
    end
    if time < 1 then
      if getElementData(localPlayer, "player:nacpany") == "Morfina" then
        triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "antykill", localPlayer, false)
      end
      removeEventHandler("onClientRender", root, intoxicatedGui)
      windows.intoxicated = false
      setElementData(localPlayer, "player:nacpany", false)
      resetSkyGradient()
      setGameSpeed(1)
    end
    if not getElementData(localPlayer, "player:nacpany") then
      return
    end
    r, g, b = interpolateBetween(1, 255, 1, 255, 0, 50, (getTickCount() - tick1) / 1500, "SineCurve")
    if getElementData(localPlayer, "player:nacpany") == "MARIHUANA" then
      dxDrawRectangle(0 / zoom, 0 / zoom, screenW, screenH, tocolor(r, g, b, 40), false)
    end
    dxDrawText("U\197\187YTY \197\154RODEK: " .. getElementData(localPlayer, "player:nacpany") .. [[

KONIEC ZA: ]] .. time .. " SEKUND", textUP.x + 753 / zoom, textUP.y - 57 / zoom, textUP.w, textUP.h, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, false, false)
    dxDrawText("U\197\187YTY \197\154RODEK: " .. getElementData(localPlayer, "player:nacpany") .. [[

KONIEC ZA: ]] .. time .. " SEKUND", textUP.x + 750 / zoom, textUP.y - 60 / zoom, textUP.w, textUP.h, tocolor(250, 250, 250, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, false, false)
  end
end
function table.search(_ARG_0_, _ARG_1_, _ARG_2_)
  for _FORV_6_, _FORV_7_ in ipairs(_ARG_0_) do
    if _FORV_7_.name == _ARG_1_ then
      table.returns = _FORV_7_.ilosc
      return true
    end
  end
  return false
end
function table.removeValue(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_.name == _ARG_1_ then
      table.remove(_ARG_0_, _FORV_5_)
      return _FORV_5_
    end
  end
  return false
end
function stopAllPing(_ARG_0_)
  removeEventHandler("onClientRender", root, window)
  windows.trade = false
  windows.background = false
  windows.search = false
  trade_confirm = false
  triggerServerEvent("evEwenciks_ah43gsdfyh", resourceRoot, "stopallping", localPlayer, player_name, player_offer, search_player)
  showCursor(false)
  ready = false
  playerReady = false
  player_offer = false
  player_name = false
  for _FORV_4_, _FORV_5_ in pairs(textures) do
    if isElement(_FORV_5_) then
      destroyElement(_FORV_5_)
    end
  end
  textures = {}
  items_table1 = {}
  selectItemTable = {}
  selectItemTable_player = {}
  items_table_player = {}
end
function idCardWindow()
  dxDrawRoundedRectangle(_UPVALUE0_.x - 21 / zoom, _UPVALUE0_.y + 139 / zoom, _UPVALUE0_.w + 2 / zoom, 302 / zoom, 20 / zoom, tocolor(255, 187, 0, 200), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x - 20 / zoom, _UPVALUE0_.y + 140 / zoom, _UPVALUE0_.w, 300 / zoom, 20 / zoom, tocolor(33, 33, 33, 255), false)
  dxDrawText("DOW\195\147D OSOBISTY", _UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y + 130 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
  dxDrawText("REPUBLIC OF SANTORI", _UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y + 180 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
  dxDrawRoundedRectangle(_UPVALUE0_.x - 10 / zoom, _UPVALUE0_.y + 210 / zoom, 200 / zoom, 220 / zoom, 10 / zoom, tocolor(25, 25, 25, 230))
  for _FORV_7_, _FORV_8_ in ipairs(infoCard_table) do
    nameLoc = split(_FORV_8_.imieNazwisko, ",")
    date = _FORV_8_.date
    tableInfo = {
      {
        "Imie",
        nameLoc[1]
      },
      {
        "Nazwisko",
        nameLoc[2]
      },
      {
        "Miejsce zamieszkania",
        nameLoc[3]
      },
      {
        "Data urodzenia",
        date
      },
      {
        "Pesel",
        getElementData(nickDowod, "player:sid")
      }
    }
  end
  xY = 0
  for _FORV_7_, _FORV_8_ in ipairs(tableInfo) do
    xY = xY + 1
    dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 198 / zoom, _UPVALUE0_.y + 225 / zoom + 94 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font11"), "left", "center", false, false, false, false, false)
    dxDrawText(_FORV_8_[2], _UPVALUE0_.x + 198 / zoom, _UPVALUE0_.y + 265 / zoom + 94 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
  end
  dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 100 / zoom, _UPVALUE0_.y + 140 / zoom, 75 / zoom, 75 / zoom, texturesIdCard.logo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
end
getResourceName(getThisResource(), true, 302119366)
return
