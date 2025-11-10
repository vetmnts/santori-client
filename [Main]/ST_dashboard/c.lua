screenW, screenH = guiGetScreenSize()
px, py = screenW / 1920, screenH / 1080
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = screenW / 2 - 1100 / zoom / 2,
  y = screenH / 2 - 700 / zoom / 2,
  w = 1100 / zoom,
  h = 700 / zoom
}
mapPos = {
  x = screenW / 2 + 365 / zoom / 2,
  y = screenH / 2 - 280 / zoom / 2,
  w = 250 / zoom,
  h = 250 / zoom
}
texturesMessage = {}
texturesSkills = {}
texturesMap = {}
texturesChest = {}
texturesCrosshair = {}
pokazInfoCzatPP = true
windows = {
  background = false,
  category = false,
  message = false,
  enterCodePP = false,
  selectJobs = false,
  messageSelect = false,
  addFriends = false,
  adventCalendar = false
}
k = 1
n = 10
m = 10
k2 = 1
n2 = 11
m2 = 11
k7 = 1
n7 = 10
m7 = 10
textRadio = ""
table_statistics_job = {}
table_message = {}
table_settings = {}
selfCases = {}
calendaryTable = {}
messageUser = {}
friends_table = {}
tableInfoVehicles = {}
tableInfoVehicles2 = {}
tableInfoVehicles1 = {}
table_vehicles = {}
table_vehicles_prywatne = {}
table_vehicles_organizacyjne = {}
table_vehicles_klucze = {}
table_vehicles1 = {}
table_selectCar = {}
categoryPremium = false
selectJobs = {}
settingsInfoAcount = {
  email = "#838383Ukryte [#ffaa00poka\197\188#838383]",
  serial = "#838383Ukryte [#ffaa00poka\197\188#838383]",
  ip = "#838383Ukryte [#ffaa00poka\197\188#838383]"
}
tabela_nieruchomosci = {}
tabela_wbranaNieruchomosc = {}
tabela_lokatorzyNieruchomosc = {}
tabela_kary_logs = {}
tabela_logowania_logs = {}
tabela_pieniadze_logs = {}
tabela_pp_logs = {}
tabela_pojazdyUrzad_logs = {}
tabela_pojazdyGielda_logs = {}
lastTickCount = getTickCount()
function moveBigMap(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if windows.selectJobs == true or windows.category == "WYBRANY POJAZD" and table_selectCar.jestNaMapie then
    if _ARG_0_ == "left" and _ARG_1_ == "down" then
      if windows.selectJobs == true then
        addYMap = 120 / zoom
      else
        addYMap = 0 / zoom
      end
      if _ARG_2_ >= mapPos.x and _ARG_2_ <= mapPos.x + mapPos.w and _ARG_3_ >= mapPos.y + addYMap and _ARG_3_ <= mapPos.y + addYMap + mapPos.h then
        _UPVALUE0_ = _ARG_2_ * _UPVALUE1_ + _UPVALUE2_
        _UPVALUE3_ = _ARG_3_ * _UPVALUE1_ - _UPVALUE4_
        _UPVALUE5_ = true
        _UPVALUE6_ = true
      end
    elseif _ARG_0_ == "left" and _ARG_1_ == "up" then
      _UPVALUE5_ = false
    end
  end
end
addEventHandler("onClientClick", root, moveBigMap)
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  if windows.selectJobs == true then
    addYMap = 120 / zoom
  else
    addYMap = 0 / zoom
  end
  return math.max(mapPos.x + mapPos.w / 2 - (_UPVALUE0_ - _ARG_0_) / _UPVALUE1_ * _UPVALUE2_, math.min(mapPos.x + mapPos.w / 2 + (_ARG_0_ - _UPVALUE0_) / _UPVALUE1_ * _UPVALUE2_, mapPos.x + mapPos.w / 2)), (math.max(mapPos.y + addYMap + mapPos.h / 2 - (_ARG_1_ - _UPVALUE3_) / _UPVALUE1_ * _UPVALUE2_, math.min(mapPos.y + addYMap + mapPos.h / 2 + (_UPVALUE3_ - _ARG_1_) / _UPVALUE1_ * _UPVALUE2_, mapPos.y + addYMap + mapPos.h / 2)))
end
function window()
  if getElementData(localPlayer, "player_Trade") then
    windows.background = true
    windows.category = false
    windows.selectJobs = false
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    removeEventHandler("onClientKey", root, key)
    destroyEditBox()
    showCursor(false)
    if isElement(ped) then
      destroyElement(ped)
      setTimer(function()
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end, 100, 1)
    end
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getElementData(localPlayer, "player_offerTrade") then
    windows.background = true
    windows.category = false
    windows.selectJobs = false
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    removeEventHandler("onClientKey", root, key)
    destroyEditBox()
    showCursor(false)
    if isElement(ped) then
      setTimer(function()
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end, 100, 1)
      destroyElement(ped)
    end
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  dxDrawRoundedRectangle(windowPos.x + 11 / zoom, windowPos.y + 6 / zoom, windowPos.w - 22 / zoom, windowPos.h - 12 / zoom, 43 / zoom, tocolor(255, 187, 0, 200), false)
  dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
  dxDrawCircle(windowPos.x + 60 / zoom, windowPos.y + 53 / zoom, 35 / zoom, 0, 360, tocolor(40, 40, 40, 255))
  exports.ST_avatars:dxCreateAvatar(windowPos.x + 25 / zoom, windowPos.y + 18 / zoom, 70 / zoom, 70 / zoom)
  dxDrawImage(windowPos.x + 24 / zoom, windowPos.y + 17 / zoom, 72 / zoom, 72 / zoom, textures.circle, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  dxDrawText(getElementData(localPlayer, "player:elementDat").color_nickName .. "" .. getPlayerName(localPlayer), windowPos.x + 108 / zoom, windowPos.y - 130 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
  dxDrawText("UID: #fcba03" .. getElementData(localPlayer, "player:sid"), windowPos.x + 122 / zoom, windowPos.y - 69 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawRectangle(windowPos.x + 101 / zoom, windowPos.y + 35 / zoom, 1 / zoom, 32 / zoom, tocolor(60, 60, 60, 255), false)
  dxDrawRectangle(windowPos.x + 101 / zoom, windowPos.y + 66 / zoom, 15 / zoom, 1 / zoom, tocolor(60, 60, 60, 255), false)
  dxDrawRoundedRectangle(windowPos.x + 28 / zoom, windowPos.y + 96 / zoom, 203 / zoom, 578 / zoom, 20 / zoom, tocolor(42, 42, 42, 255))
  dxDrawRoundedRectangle(windowPos.x + 29 / zoom, windowPos.y + 97 / zoom, 201 / zoom, 576 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
  xY = 0
  for _FORV_9_, _FORV_10_ in ipairs(table_categories) do
    if _FORV_9_ >= k2 and _FORV_9_ <= n2 then
      xY = xY + 1
      if windows.category == "WYBRANY POJAZD" then
      elseif "POJAZDY" == "WYBRANA NIERUCHOMO\197\154\196\134" then
      elseif "NIERUCHOMO\197\154CI" == "RANKING PRACY" then
      elseif "PRACE" == "ZMIANA NICKU" then
      end
      if isMouseIn(windowPos.x + 32 / zoom, windowPos.y + 100 / zoom + 52 / zoom * (xY - 1), 183 / zoom, 49 / zoom) and "KONTO" ~= _FORV_10_.name then
        dxDrawRoundedRectangle(windowPos.x + 31 / zoom, windowPos.y + 99 / zoom + 52 / zoom * (xY - 1), 185 / zoom, 51 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
        dxDrawRoundedRectangle(windowPos.x + 32 / zoom, windowPos.y + 100 / zoom + 52 / zoom * (xY - 1), 183 / zoom, 49 / zoom, 20 / zoom, tocolor(35, 35, 35, 255), false)
        dxDrawImage(windowPos.x + 39.75 / zoom, windowPos.y + 104.75 / zoom + 52 / zoom * (xY - 1), 41.5 / zoom, 41.5 / zoom, _FORV_10_.img, 0, 0, 0, tocolor(220, 220, 220, 255), false)
        if _FORV_10_.name == "KALENDARZ ADWENTOWY" then
          dxDrawText(_FORV_10_.name, windowPos.x + 81 / zoom, windowPos.y + 49 / zoom + 104 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont(_FORV_10_.font), "left", "center", false, false, false, false, false)
        else
          dxDrawText(_FORV_10_.name, windowPos.x + 92 / zoom, windowPos.y + 49 / zoom + 104 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont(_FORV_10_.font), "left", "center", false, false, false, false, false)
        end
      elseif "KONTO" == _FORV_10_.name then
        dxDrawRoundedRectangle(windowPos.x + 31 / zoom, windowPos.y + 99 / zoom + 52 / zoom * (xY - 1), 185 / zoom, 51 / zoom, 20 / zoom, tocolor(255, 187, 0, 150), false)
        dxDrawRoundedRectangle(windowPos.x + 32 / zoom, windowPos.y + 100 / zoom + 52 / zoom * (xY - 1), 183 / zoom, 49 / zoom, 20 / zoom, tocolor(35, 35, 35, 255), false)
        dxDrawImage(windowPos.x + 39.75 / zoom, windowPos.y + 104.75 / zoom + 52 / zoom * (xY - 1), 41.5 / zoom, 41.5 / zoom, _FORV_10_.img, 0, 0, 0, tocolor(220, 220, 220, 255), false)
        if _FORV_10_.name == "KALENDARZ ADWENTOWY" then
          dxDrawText(_FORV_10_.name, windowPos.x + 81 / zoom, windowPos.y + 49 / zoom + 104 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont(_FORV_10_.font), "left", "center", false, false, false, false, false)
        else
          dxDrawText(_FORV_10_.name, windowPos.x + 92 / zoom, windowPos.y + 49 / zoom + 104 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont(_FORV_10_.font), "left", "center", false, false, false, false, false)
        end
      else
        dxDrawRoundedRectangle(windowPos.x + 32 / zoom, windowPos.y + 100 / zoom + 52 / zoom * (xY - 1), 183 / zoom, 49 / zoom, 20 / zoom, tocolor(150, 150, 150, 20), false)
        dxDrawImage(windowPos.x + 40 / zoom, windowPos.y + 105 / zoom + 52 / zoom * (xY - 1), 40 / zoom, 40 / zoom, _FORV_10_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_10_.name == "KALENDARZ ADWENTOWY" then
          dxDrawText(_FORV_10_.name, windowPos.x + 79 / zoom, windowPos.y + 49 / zoom + 104 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont(_FORV_10_.font), "left", "center", false, false, false, false, false)
        else
          dxDrawText(_FORV_10_.name, windowPos.x + 90 / zoom, windowPos.y + 49 / zoom + 104 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont(_FORV_10_.font), "left", "center", false, false, false, false, false)
        end
      end
    end
  end
  dxDrawScrollBar(#table_categories, windowPos.x + 221 / zoom, windowPos.y + 126 / zoom, 4 / zoom, 518 / zoom, m2, k2)
  dxDrawRoundedRectangle(windowPos.x + 249 / zoom, windowPos.y + 99 / zoom, 820 / zoom, 572 / zoom, 20 / zoom, tocolor(42, 42, 42, 255))
  dxDrawRoundedRectangle(windowPos.x + 250 / zoom, windowPos.y + 100 / zoom, 818 / zoom, 570 / zoom, 20 / zoom, tocolor(33, 33, 33, 255))
  dxDrawRoundedRectangle(windowPos.x + 249 / zoom, windowPos.y + 24 / zoom, 820 / zoom, 62 / zoom, 20 / zoom, tocolor(255, 187, 0, 100))
  dxDrawRoundedRectangle(windowPos.x + 250 / zoom, windowPos.y + 25 / zoom, 818 / zoom, 60 / zoom, 20 / zoom, tocolor(38, 38, 38, 255))
  if windows.category == "KONTO" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.character_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KONTO", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(windowPos.x + 259 / zoom, windowPos.y + 109 / zoom, 517 / zoom, 257 / zoom, 20 / zoom, tocolor(60, 60, 60, 230))
      dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 110 / zoom, 515 / zoom, 255 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawRoundedRectangle(windowPos.x + 275 / zoom, windowPos.y + 146 / zoom, 485 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("KONTO", windowPos.x + 275 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("NICK (#ffaa00ZMIE\197\131#f0f0f0)\nE-MAIL\nSERIAL\nIP\nLEVEL\nEXP\nORGANIZACJA", windowPos.x + 275 / zoom, windowPos.y + 160 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "top", false, false, false, true, false)
      dxDrawImage(windowPos.x + 330 / zoom, windowPos.y + 120 / zoom, 20 / zoom, 20 / zoom, textures.character_icon, 0, 0, 0, tocolor(255, 191, 0, 255), false)
      dxDrawRoundedRectangle(windowPos.x + 259 / zoom, windowPos.y + 372 / zoom, 517 / zoom, 139 / zoom, 20 / zoom, tocolor(60, 60, 60, 230))
      dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 373 / zoom, 515 / zoom, 137 / zoom, 20 / zoom, tocolor(28, 28, 28, 230))
      dxDrawRoundedRectangle(windowPos.x + 275 / zoom, windowPos.y + 408 / zoom, 485 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("FUNDUSZE", windowPos.x + 275 / zoom, windowPos.y + 583 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("$", windowPos.x + 362 / zoom, windowPos.y + 581 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 181, 36, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("PORTFEL\nBANK\nOG\195\147\197\129 ZAROBEK", windowPos.x + 275 / zoom, windowPos.y + 418 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "top", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 259 / zoom, windowPos.y + 519 / zoom, 395 / zoom, 142 / zoom, 20 / zoom, tocolor(60, 60, 60, 230))
      for _FORV_16_, _FORV_17_ in ipairs(table_users) do
        if 0 < _FORV_17_.buyPP then
          dxDrawRoundedRectangle(windowPos.x + 259 / zoom, windowPos.y + 519 / zoom, 395 / zoom, 142 / zoom, 20 / zoom, tocolor(255, 246, 79, 230))
        end
      end
      dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 520 / zoom, 393 / zoom, 140 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawRoundedRectangle(windowPos.x + 275 / zoom, windowPos.y + 555 / zoom, 363 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("PREMIUM", windowPos.x + 275 / zoom, windowPos.y + 877 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\152\133", windowPos.x + 355 / zoom, windowPos.y + 873 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 242, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawText("PREMIUM DO", windowPos.x + 275 / zoom, windowPos.y + 950 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      dxDrawText("KOLOROWY NICK DO", windowPos.x + 275 / zoom, windowPos.y + 1010 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      dxDrawText("PUNKTY PREMIUM", windowPos.x + 275 / zoom, windowPos.y + 1070 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      dxDrawText("#ffbf00" .. przecinek((getElementData(localPlayer, "player:pp"))), windowPos.x, windowPos.y + 1070 / zoom, windowPos.x + 362 / zoom + 275 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos.x + 663 / zoom, windowPos.y + 519 / zoom, 395 / zoom, 142 / zoom, 20 / zoom, tocolor(60, 60, 60, 230))
      dxDrawRoundedRectangle(windowPos.x + 664 / zoom, windowPos.y + 520 / zoom, 393 / zoom, 140 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawRoundedRectangle(windowPos.x + 680 / zoom, windowPos.y + 555 / zoom, 363 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("CZAS", windowPos.x + 680 / zoom, windowPos.y + 877 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\167\151", windowPos.x + 727 / zoom, windowPos.y + 871 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 136, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawText("DATA REJESTRACJI", windowPos.x + 680 / zoom, windowPos.y + 950 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("CZAS GRY", windowPos.x + 680 / zoom, windowPos.y + 1010 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("AKTUALNA SESJA", windowPos.x + 680 / zoom, windowPos.y + 1070 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText(secondsToClock(60 * (getElementData(localPlayer, "player:hours") or 0)), windowPos.x, windowPos.y + 1010 / zoom, windowPos.x + 362 / zoom + 680 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawText(secondsToClock(60 * (getElementData(localPlayer, "player:sesja") or 0)), windowPos.x, windowPos.y + 1070 / zoom, windowPos.x + 362 / zoom + 680 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos.x + 784 / zoom, windowPos.y + 109 / zoom, 274 / zoom, 402 / zoom, 20 / zoom, tocolor(60, 60, 60, 230))
      dxDrawRoundedRectangle(windowPos.x + 785 / zoom, windowPos.y + 110 / zoom, 272 / zoom, 400 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawRoundedRectangle(windowPos.x + 800 / zoom, windowPos.y + 146 / zoom, 242 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 230))
      for _FORV_16_, _FORV_17_ in ipairs(table_users) do
        if 0 < _FORV_17_.buyPP then
          if isMouseIn(windowPos.x + 460 / zoom, windowPos.y + 527 / zoom, 150 / zoom, 22 / zoom) then
            dxDrawText("#f0f0f0Odbierz#ffbf00 " .. _FORV_17_.buyPP .. " #f0f0f0PP", windowPos.x, windowPos.y + 877 / zoom, windowPos.x + 362 / zoom + 250 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 130), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
          else
            dxDrawText("#f0f0f0Odbierz#ffbf00 " .. _FORV_17_.buyPP .. " #f0f0f0PP", windowPos.x, windowPos.y + 877 / zoom, windowPos.x + 362 / zoom + 250 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
          end
          if pokazInfoCzatPP then
            dxDrawText("\226\156\142", windowPos.x, windowPos.y + 877 / zoom, windowPos.x + 362 / zoom + 275 / zoom, windowPos.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
          else
            dxDrawText("\226\156\142", windowPos.x, windowPos.y + 877 / zoom, windowPos.x + 362 / zoom + 275 / zoom, windowPos.y + 204 / zoom, tocolor(255, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
          end
          if isMouseIn(windowPos.x + 617 / zoom, windowPos.y + 527 / zoom, 22 / zoom, 22 / zoom) and isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            if pokazInfoCzatPP then
              dxDrawText("Informacja na czacie globalnym w\197\130\196\133czona", cxs + 11 / zoom, cys - 20 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
              dxDrawText("Informacja na czacie globalnym #00bd10w\197\130\196\133czona", cxs + 9 / zoom, cys - 22 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
            else
              dxDrawText("Informacja na czacie globalnym wy\197\130\196\133czona", cxs + 11 / zoom, cys - 20 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
              dxDrawText("Informacja na czacie globalnym #bd0000wy\197\130\196\133czona", cxs + 9 / zoom, cys - 22 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
            end
          end
        end
        dxDrawText(_FORV_17_.premiumdate, windowPos.x, windowPos.y + 950 / zoom, windowPos.x + 362 / zoom + 275 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
        dxDrawText(getElementData(localPlayer, "player:elementDat").color_nickName .. "" .. getPlayerName(localPlayer) .. [[

#f0f0f0]] .. settingsInfoAcount.email .. "#f0f0f0\n" .. settingsInfoAcount.serial .. [[

#f0f0f0]] .. settingsInfoAcount.ip .. [[

#f0f0f0]] .. getElementData(localPlayer, "player:lvl") .. "\n" .. getElementData(localPlayer, "player:exp") .. "\n" .. (getElementData(localPlayer, "player:organization") or "Brak") .. "", windowPos.x, windowPos.y + 160 / zoom, windowPos.x + 362 / zoom + 400 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "right", "top", false, false, false, true, false)
        if _FORV_17_.skin == 79 then
          if _FORV_17_.skin_custom then
            dxDrawText("" .. ("Custom skin ID: #ffbf00" .. string.sub(_FORV_17_.skin_custom, 9, 999) .. "" or "Brak") .. "", windowPos.x + 800 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          else
            dxDrawText("SKIN ID #ffbf00" .. getPlayerSkin(localPlayer) .. "", windowPos.x + 800 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          end
        else
          dxDrawText("SKIN ID #ffbf00" .. getPlayerSkin(localPlayer) .. "", windowPos.x + 800 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        end
        dxDrawText(_FORV_17_.registered, windowPos.x, windowPos.y + 950 / zoom, windowPos.x + 362 / zoom + 680 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        dxDrawText("#009411" .. przecinek(getElementData(localPlayer, "player:moneyMNn")) .. [[
 #f0f0f0PLN
#009411]] .. przecinek(_FORV_17_.bank_money) .. [[
 #f0f0f0PLN
#009411]] .. przecinek(getElementData(localPlayer, "player:ogol_zarobki") or 0) .. " #f0f0f0PLN", windowPos.x, windowPos.y + 418 / zoom, windowPos.x + 362 / zoom + 400 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
        if _FORV_17_.color_nickName == "#e6e6e6" then
          dxDrawText("Nie posiadasz kolorowego nicku :(", windowPos.x, windowPos.y + 1010 / zoom, windowPos.x + 362 / zoom + 275 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "right", "center", false, false, false, true, false)
        else
          dxDrawText(_FORV_17_.color_date, windowPos.x, windowPos.y + 1010 / zoom, windowPos.x + 362 / zoom + 275 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
        end
      end
    end
  end
  if windows.category == "ZMIANA NICKU" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.character_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 400 / zoom, windowPos.y + 230 / zoom, 518 / zoom, 280 / zoom, 20 / zoom, tocolor(25, 25, 25, 255))
    dxDrawText("ZMIANA NICKU", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("WPISZ NOWY NICK", windowPos.x + 956 / zoom, windowPos.y + 340 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    dxDrawText("KOSZT: #ffbf001,000 #ffffffPP", windowPos.x + 956 / zoom, windowPos.y + 600 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ZATWIERD\197\185", windowPos.x + 550 / zoom, windowPos.y + 430 / zoom, 218 / zoom, 55 / zoom, 255, 1)
  end
  if windows.category == "SKRZYNIE" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.chest_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("SKRZYNIE", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("PUNKTY PREMIUM: #ffbf00" .. przecinek((getElementData(localPlayer, "player:pp"))), windowPos.x, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom + 680 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(windowPos.x + 263 / zoom, windowPos.y + 114 / zoom, 387 / zoom, 537 / zoom, 20 / zoom, tocolor(45, 45, 45, 255))
    dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 115 / zoom, 385 / zoom, 535 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
    dxDrawRoundedRectangle(windowPos.x + 263 / zoom, windowPos.y + 114 / zoom, 387 / zoom, 52 / zoom, 20 / zoom, tocolor(45, 45, 45, 255))
    dxDrawText("SKRZYNIA CLASSIC", windowPos.x + 550 / zoom, windowPos.y + 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    dxDrawImage(windowPos.x + 310 / zoom, windowPos.y + 180 / zoom, 300 / zoom, 169 / zoom, texturesChest.classicChest, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("#c8c8c81 klucz #ffffff- #ffbf00100 #ffffffpp", windowPos.x + 550 / zoom, windowPos.y + 700 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    if isMouseIn(windowPos.x + 372 / zoom, windowPos.y + 469 / zoom, 169 / zoom, 47 / zoom) then
      dxDrawRoundedRectangle(windowPos.x + 372 / zoom, windowPos.y + 469 / zoom, 169 / zoom, 47 / zoom, 20 / zoom, tocolor(50, 50, 50, 200))
      dxDrawRoundedRectangle(windowPos.x + 373 / zoom, windowPos.y + 470 / zoom, 167 / zoom, 45 / zoom, 20 / zoom, tocolor(24, 24, 24, 255))
      dxDrawText("KUP KLUCZ", windowPos.x + 550 / zoom, windowPos.y + 784 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(windowPos.x + 372 / zoom, windowPos.y + 469 / zoom, 169 / zoom, 47 / zoom, 20 / zoom, tocolor(60, 60, 60, 200))
      dxDrawRoundedRectangle(windowPos.x + 373 / zoom, windowPos.y + 470 / zoom, 167 / zoom, 45 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawText("KUP KLUCZ", windowPos.x + 550 / zoom, windowPos.y + 784 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    dxDrawText("NAGRODY W SKRZYNI", windowPos.x + 285 / zoom, windowPos.y + 865 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
    dxDrawText("\194\183 #ffbf0050 #ffffff- #ffbf00200 #ffffffEXP postaci\n\194\183 #009411100,000 #ffffff- #009411400,000 #ffffffPLN\n\194\183 #ffbf001#ffffff-#ffbf002 #ffffffklucze do skrzyni\n\194\183 Boost #ffbf00+5%", windowPos.x + 285 / zoom, windowPos.y + 990 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
    dxDrawText("\194\183 Manana\n\194\183 BMX\n\194\183 Phoenix\n\194\183 Sabre", windowPos.x + 498 / zoom, windowPos.y + 990 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
    if isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 200 / zoom, 30 / zoom, 30 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("Otwarte skrzynie", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Otwarte skrzynie", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawCircle(windowPos.x + 595 / zoom, windowPos.y + 215 / zoom, 17 / zoom, 0 / zoom, 360 / zoom, tocolor(40, 40, 40, 150))
      end
    else
      dxDrawCircle(windowPos.x + 595 / zoom, windowPos.y + 215 / zoom, 17 / zoom, 0 / zoom, 360 / zoom, tocolor(50, 50, 50, 150))
    end
    if isMouseIn(windowPos.x + 307 / zoom, windowPos.y + 193 / zoom, 46 / zoom, 46 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("Posiadane klucze", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Posiadane klucze", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawCircle(windowPos.x + 330 / zoom, windowPos.y + 215 / zoom, 25 / zoom, 0 / zoom, 360 / zoom, tocolor(40, 40, 40, 200))
        dxDrawImage(windowPos.x + 315 / zoom, windowPos.y + 193 / zoom, 25 / zoom, 25 / zoom, textures.key_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      end
    else
      dxDrawCircle(windowPos.x + 330 / zoom, windowPos.y + 215 / zoom, 25 / zoom, 0 / zoom, 360 / zoom, tocolor(50, 50, 50, 200))
      dxDrawImage(windowPos.x + 315 / zoom, windowPos.y + 193 / zoom, 25 / zoom, 25 / zoom, textures.key_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(windowPos.x + 668 / zoom, windowPos.y + 114 / zoom, 387 / zoom, 537 / zoom, 20 / zoom, tocolor(255, 203, 59, 50))
    dxDrawRoundedRectangle(windowPos.x + 669 / zoom, windowPos.y + 115 / zoom, 385 / zoom, 535 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
    dxDrawRoundedRectangle(windowPos.x + 669 / zoom, windowPos.y + 115 / zoom, 385 / zoom, 50 / zoom, 20 / zoom, tocolor(255, 203, 59, 50))
    dxDrawText("SKRZYNIA PREMIUM", windowPos.x + 1365 / zoom, windowPos.y + 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    dxDrawImage(windowPos.x + 710 / zoom, windowPos.y + 180 / zoom, 300 / zoom, 169 / zoom, texturesChest.premiumChest, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("#bd962a1 klucz #ffffff- #ffbf00400 #ffffffpp", windowPos.x + 1364 / zoom, windowPos.y + 700 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    if isMouseIn(windowPos.x + 980 / zoom, windowPos.y + 200 / zoom, 30 / zoom, 30 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("Otwarte skrzynie", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Otwarte skrzynie", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawCircle(windowPos.x + 995 / zoom, windowPos.y + 215 / zoom, 17 / zoom, 0 / zoom, 360 / zoom, tocolor(74, 59, 16, 150))
      end
    else
      dxDrawCircle(windowPos.x + 995 / zoom, windowPos.y + 215 / zoom, 17 / zoom, 0 / zoom, 360 / zoom, tocolor(122, 97, 27, 150))
    end
    if isMouseIn(windowPos.x + 708 / zoom, windowPos.y + 192 / zoom, 46 / zoom, 46 / zoom) then
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("Posiadane klucze", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Posiadane klucze", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawCircle(windowPos.x + 730 / zoom, windowPos.y + 215 / zoom, 25 / zoom, 0 / zoom, 360 / zoom, tocolor(74, 59, 16, 200))
        dxDrawImage(windowPos.x + 715 / zoom, windowPos.y + 193 / zoom, 25 / zoom, 25 / zoom, textures.key_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      end
    else
      dxDrawCircle(windowPos.x + 730 / zoom, windowPos.y + 215 / zoom, 25 / zoom, 0 / zoom, 360 / zoom, tocolor(122, 97, 27, 200))
      dxDrawImage(windowPos.x + 715 / zoom, windowPos.y + 193 / zoom, 25 / zoom, 25 / zoom, textures.key_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    for _FORV_10_, _FORV_11_ in ipairs(table_users) do
      dxDrawText(_FORV_11_.otwarte_classic, windowPos.x + 828 / zoom, windowPos.y + 230 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 230), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
      dxDrawText(_FORV_11_.klucze, windowPos.x + 308 / zoom, windowPos.y + 242 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 230), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
      if _FORV_11_.klucze >= 1 then
        if isMouseIn(windowPos.x + 343 / zoom, windowPos.y + 370 / zoom, 227 / zoom, 50 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 342 / zoom, windowPos.y + 369 / zoom, 229 / zoom, 52 / zoom, 20 / zoom, tocolor(50, 50, 50, 245))
          dxDrawRoundedRectangle(windowPos.x + 343 / zoom, windowPos.y + 370 / zoom, 227 / zoom, 50 / zoom, 20 / zoom, tocolor(35, 35, 35, 200))
          dxDrawText("U\197\187YJ KLUCZA", windowPos.x + 550 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(windowPos.x + 342 / zoom, windowPos.y + 369 / zoom, 229 / zoom, 52 / zoom, 20 / zoom, tocolor(60, 60, 60, 245))
          dxDrawRoundedRectangle(windowPos.x + 343 / zoom, windowPos.y + 370 / zoom, 227 / zoom, 50 / zoom, 20 / zoom, tocolor(40, 40, 40, 200))
          dxDrawText("U\197\187YJ KLUCZA", windowPos.x + 550 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        end
      end
      dxDrawText(_FORV_11_.otwarte_premium, windowPos.x + 1627 / zoom, windowPos.y + 230 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 230), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
      dxDrawText(_FORV_11_.klucze_premium, windowPos.x + 1110 / zoom, windowPos.y + 242 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 230), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
      if _FORV_11_.klucze_premium >= 1 then
        if isMouseIn(windowPos.x + 748 / zoom, windowPos.y + 370 / zoom, 227 / zoom, 50 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 747 / zoom, windowPos.y + 369 / zoom, 229 / zoom, 52 / zoom, 20 / zoom, tocolor(163, 131, 41, 50))
          dxDrawRoundedRectangle(windowPos.x + 748 / zoom, windowPos.y + 370 / zoom, 227 / zoom, 50 / zoom, 20 / zoom, tocolor(35, 35, 35, 200))
          dxDrawText("U\197\187YJ KLUCZA", windowPos.x + 1364 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(windowPos.x + 747 / zoom, windowPos.y + 369 / zoom, 229 / zoom, 52 / zoom, 20 / zoom, tocolor(255, 203, 59, 50))
          dxDrawRoundedRectangle(windowPos.x + 748 / zoom, windowPos.y + 370 / zoom, 227 / zoom, 50 / zoom, 20 / zoom, tocolor(40, 40, 40, 200))
          dxDrawText("U\197\187YJ KLUCZA", windowPos.x + 1364 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        end
      end
    end
    if isMouseIn(windowPos.x + 777 / zoom, windowPos.y + 469 / zoom, 169 / zoom, 47 / zoom) then
      dxDrawRoundedRectangle(windowPos.x + 777 / zoom, windowPos.y + 469 / zoom, 169 / zoom, 47 / zoom, 20 / zoom, tocolor(50, 50, 50, 200))
      dxDrawRoundedRectangle(windowPos.x + 778 / zoom, windowPos.y + 470 / zoom, 167 / zoom, 45 / zoom, 20 / zoom, tocolor(24, 24, 24, 255))
      dxDrawText("KUP KLUCZ", windowPos.x + 1364 / zoom, windowPos.y + 784 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(windowPos.x + 777 / zoom, windowPos.y + 469 / zoom, 169 / zoom, 47 / zoom, 20 / zoom, tocolor(60, 60, 60, 200))
      dxDrawRoundedRectangle(windowPos.x + 778 / zoom, windowPos.y + 470 / zoom, 167 / zoom, 45 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawText("KUP KLUCZ", windowPos.x + 1364 / zoom, windowPos.y + 784 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    dxDrawText("NAGRODY W SKRZYNI", windowPos.x + 690 / zoom, windowPos.y + 865 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
    dxDrawText("\194\183 #ffffffkonto premium #ffbf001#ffffff-#ffbf0060 #ffffffdni\n\194\183 #ffbf00100 #ffffff- #ffbf00500 #ffffffpunkt\195\179w premium\n\194\183 #ffbf001#ffffff-#ffbf002 #ffffffklucze do skrzyni\n\194\183 #009411400,000 #ffffff- #0094115,000,000 #ffffffPLN", windowPos.x + 690 / zoom, windowPos.y + 990 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
    dxDrawText("\194\183 #ffbf00600 #ffffff- #ffbf002000 #ffffffEXP postaci\n\194\183 Boost #ffbf0010%#ffffff-#ffbf0020%\n\194\183 #ffffffFiat 126p\n\194\183 #ffffffFaggio \n\194\183 Cheetah", windowPos.x + 890 / zoom, windowPos.y + 980 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
  end
  if windows.category == "SKRZYNIA" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.chest_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      if selfCases.typeCase == "CLASSIC" then
        dxDrawText("SKRZYNIA #c8c8c8" .. selfCases.typeCase, windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      else
        dxDrawText("SKRZYNIA #ffcb38" .. selfCases.typeCase, windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      end
      dxDrawText("TRWA OTWIERANIE SKRZYNI", windowPos.x + 955 / zoom, windowPos.y + 120 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
      if selfCases.typeCase == "CLASSIC" then
        dxDrawText("#c8c8c8" .. selfCases.typeCase, windowPos.x + 955 / zoom, windowPos.y + 230 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("#ffcb38" .. selfCases.typeCase, windowPos.x + 955 / zoom, windowPos.y + 230 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, true, false)
      end
      dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 269 / zoom - 18 / zoom, 784 / zoom, 160 / zoom, 20 / zoom, tocolor(60, 60, 60, 50))
      if not renderTarget then
        renderTarget = dxCreateRenderTarget(784 / zoom, 160 / zoom, true)
      end
      if not extendedItems and selfCases.losowanie then
        extendedItems = {}
        selfCases.lineOffset = (math.random() * 0.6 - 0.3) * (110 / zoom)
        selfCases.targetIndex = math.random(70, 90)
        for _FORV_14_ = 1, selfCases.targetIndex - 1 do
          table.insert(extendedItems, losujPrzedmiotZProcentem(selfCases.itemsCases))
        end
        extendedItems[selfCases.targetIndex] = selfCases.serverReward[1] == "Pojazd" and {
          "Pojazd",
          selfCases.serverReward[2],
          textures.vehicle_icon,
          "??"
        } or selfCases.serverReward[1] == "Klucz" and {
          "Klucz",
          selfCases.serverReward[2],
          textures.key_icon
        } or {
          selfCases.serverReward[1],
          selfCases.serverReward[2]
        }
        for _FORV_16_ = 1, 40 do
          table.insert(extendedItems, losujPrzedmiotZProcentem(selfCases.itemsCases))
        end
      end
      if selfCases.losowanie then
        if selfCases.wylosowano then
          selfCases.elapsedTime = selfCases.elapsedTime
          selfCases.progress = selfCases.progress
          selfCases.easingProgress = selfCases.easingProgress
        else
          selfCases.elapsedTime = getTickCount() - selfCases.startTime
          selfCases.duration = 10000
          selfCases.progress = math.min(selfCases.elapsedTime / selfCases.duration, 1)
          selfCases.easingProgress = math.sin(selfCases.progress * math.pi / 2)
        end
        dxSetRenderTarget(renderTarget, true)
        if math.floor((selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 392 / zoom - (110 / zoom / 2 + (selfCases.lineOffset or 0))) / (110 / zoom + 5 / zoom) + 1 + 0.5) < 1 then
        end
        if 1 > #extendedItems then
        end
        selectedItemIndex = #extendedItems
        for _FORV_27_, _FORV_28_ in ipairs(extendedItems) do
          dxDrawRoundedRectangle(0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom), 0, 110 / zoom, 110 / zoom, 20 / zoom, tocolor(25, 25, 25, 155))
          if _FORV_28_[1] == "Boost" then
            dxDrawText(_FORV_28_[1] .. "", 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 1 / zoom, 0 + 110 / zoom - 48 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "top", false, false, false, false, false)
            dxDrawText("#009411+" .. przecinek(_FORV_28_[2]) .. "%", 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 1 / zoom, 0 + 110 / zoom - 95 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "top", false, false, false, true, false)
          elseif _FORV_28_[1] == "EXP" or _FORV_28_[1] == "PLN" or _FORV_28_[1] == "PP" or _FORV_28_[1] == "PP" then
            dxDrawText(_FORV_28_[1] .. "", 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 1 / zoom, 0 + 110 / zoom - 48 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, false, false)
            if _FORV_28_[1] == "PLN" then
              dxDrawText("#009411" .. przecinek(_FORV_28_[2]), 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 1 / zoom, 0 + 110 / zoom - 83 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "top", false, false, false, true, false)
            else
              dxDrawText("#ffcc00" .. _FORV_28_[2], 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 1 / zoom, 0 + 110 / zoom - 94 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "top", false, false, false, true, false)
            end
          elseif _FORV_28_[1] == "Premium" then
            dxDrawText(_FORV_28_[1], 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 3 / zoom, 0 + 110 / zoom - 48 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, false, false)
            dxDrawText("#ffcc00" .. _FORV_28_[2] .. " #c8c8c8dni", 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 3 / zoom, 0 + 110 / zoom - 94 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "top", false, false, false, true, false)
          elseif _FORV_28_[1] == "Pojazd" then
            dxDrawImage(0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 13 / zoom, 0, 110 / zoom - 25 / zoom, 110 / zoom - 25 / zoom, _FORV_28_[3])
            dxDrawText(_FORV_28_[4], 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 3 / zoom, 0 + 110 / zoom - 30 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, false, false)
          elseif _FORV_28_[1] == "Klucz" then
            dxDrawImage(0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 15.5 / zoom, 0, 110 / zoom - 30 / zoom, 110 / zoom - 30 / zoom, _FORV_28_[3])
            if _FORV_28_[2] == 1 then
              dxDrawText("#ffcc00" .. _FORV_28_[2] .. " #c8c8c8klucz", 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 3 / zoom, 0 + 110 / zoom - 30 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
            else
              dxDrawText("#ffcc00" .. _FORV_28_[2] .. " #c8c8c8klucze", 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 3 / zoom, 0 + 110 / zoom - 30 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
            end
          elseif _FORV_28_[1] == "Z\197\130oto" then
            dxDrawImage(0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 13 / zoom, 0, 110 / zoom - 25 / zoom, 110 / zoom - 25 / zoom, _FORV_28_[3])
            dxDrawText("#ffcc00" .. _FORV_28_[2] .. " #c8c8c8sztabek z\197\130ota", 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 1 / zoom, 0 + 110 / zoom - 30 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font11"), "center", "top", false, false, false, true, false)
          else
            dxDrawImage(0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 10 / zoom, 0, 110 / zoom - 20 / zoom, 110 / zoom - 20 / zoom, _FORV_28_[3])
          end
          dxDrawText(_FORV_27_, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 4 / zoom, 0 + 110 / zoom + 4 / zoom, 0 + (_FORV_27_ - 1) * (110 / zoom + 5 / zoom) - selfCases.easingProgress * ((selfCases.targetIndex - 1) * (110 / zoom + 5 / zoom) + (110 / zoom / 2 + (selfCases.lineOffset or 0)) - 392 / zoom) + 110 / zoom, windowPos.y + 110 / zoom + 4 / zoom + 20 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "top", false, false, false, false, false)
        end
        dxDrawLine(392 / zoom, -20 / zoom, 392 / zoom, 141 / zoom, tocolor(255, 187, 0, 255), 2)
        dxSetRenderTarget()
        if selfCases.wylosowano then
          dxDrawRoundedRectangle(windowPos.x + 583 / zoom, windowPos.y + 499 / zoom, 146 / zoom, 146 / zoom, 20 / zoom, tocolor(255, 187, 0, 255))
          dxDrawRoundedRectangle(windowPos.x + 584 / zoom, windowPos.y + 500 / zoom, 144 / zoom, 144 / zoom, 20 / zoom, tocolor(25, 25, 25, 255))
          dxDrawText("Nagroda ze skrzyni", windowPos.x + 950 / zoom, windowPos.y + 440 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "top", false, false, false, false, false)
          if selfCases.wylosowano[1] == "Boost" then
            dxDrawText(selfCases.wylosowano[1] .. "", windowPos.x + 950 / zoom, windowPos.y + 580 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "top", false, false, false, false, false)
            dxDrawText("#009411+" .. selfCases.wylosowano[2] .. "%", windowPos.x + 950 / zoom, windowPos.y + 525 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "top", false, false, false, true, false)
          elseif selfCases.wylosowano[1] == "EXP" or selfCases.wylosowano[1] == "PLN" or selfCases.wylosowano[1] == "PP" then
            dxDrawText(selfCases.wylosowano[1] .. "", windowPos.x + 950 / zoom, windowPos.y + 580 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "top", false, false, false, false, false)
            if selfCases.wylosowano[1] == "PLN" then
              dxDrawText("#009411" .. przecinek(selfCases.wylosowano[2]), windowPos.x + 950 / zoom, windowPos.y + 525 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "top", false, false, false, true, false)
            else
              dxDrawText("#ffcc00" .. selfCases.wylosowano[2], windowPos.x + 950 / zoom, windowPos.y + 525 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "top", false, false, false, true, false)
            end
          elseif selfCases.wylosowano[1] == "Premium" then
            dxDrawText(selfCases.wylosowano[1], windowPos.x + 950 / zoom, windowPos.y + 580 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, false, false)
            dxDrawText("#ffcc00" .. selfCases.wylosowano[2] .. " #c8c8c8dni", windowPos.x + 950 / zoom, windowPos.y + 525 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "top", false, false, false, true, false)
          elseif selfCases.wylosowano[1] == "Pojazd" then
            dxDrawImage(windowPos.x + 603 / zoom, windowPos.y + 504 / zoom, 106 / zoom, 106 / zoom, selfCases.wylosowano[3])
            dxDrawText(selfCases.wylosowano[4], windowPos.x + 950 / zoom, windowPos.y + 600 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, false, false)
          elseif selfCases.wylosowano[1] == "Klucz" then
            dxDrawImage(windowPos.x + 603 / zoom, windowPos.y + 504 / zoom, 106 / zoom, 106 / zoom, selfCases.wylosowano[3])
            if selfCases.wylosowano[2] == 1 then
              dxDrawText("#ffcc00" .. selfCases.wylosowano[2] .. " #c8c8c8klucz", windowPos.x + 950 / zoom, windowPos.y + 610 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
            else
              dxDrawText("#ffcc00" .. selfCases.wylosowano[2] .. " #c8c8c8klucze", windowPos.x + 950 / zoom, windowPos.y + 610 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
            end
          else
            if selfCases.wylosowano[1] == "Z\197\130oto" then
              dxDrawImage(windowPos.x + 603 / zoom, windowPos.y + 504 / zoom, 106 / zoom, 106 / zoom, selfCases.wylosowano[3])
              dxDrawText("#ffcc00" .. selfCases.wylosowano[2] .. " #c8c8c8sztabek z\197\130ota", windowPos.x + 950 / zoom, windowPos.y + 605 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
            else
            end
          end
          if isMouseIn(windowPos.x + 1020 / zoom, windowPos.y + 37 / zoom, 35 / zoom, 35 / zoom) then
            dxDrawImage(windowPos.x + 1020 / zoom, windowPos.y + 37 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(252, 186, 3, 200), false)
          else
            dxDrawImage(windowPos.x + 1020 / zoom, windowPos.y + 37 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(252, 186, 3, 255), false)
          end
        end
        if selectedItemIndex then
          dxDrawText(selectedItemIndex, windowPos.x + 950 / zoom, windowPos.y + 650 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 20), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
        end
        dxDrawImage(windowPos.x + 264 / zoom, windowPos.y + 269 / zoom, 784 / zoom, 160 / zoom, renderTarget)
        if selfCases.progress >= 1 and not selfCases.wylosowano then
          selfCases.wylosowano = extendedItems[selectedItemIndex]
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giveOpenCase", localPlayer)
        end
      end
    end
  end
  if windows.category == "POLECANIE $" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.promote_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("POLECANIE $", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawText("TW\195\147J KOD ZOSTA\197\129 U\197\187YTY #ffcc00" .. #table_promote .. " #ffffffRAZY", windowPos.x + 620 / zoom, windowPos.y + 740 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      if isMouseIn(windowPos.x + 370 / zoom, windowPos.y + 545 / zoom, 250 / zoom, 60 / zoom) then
        dxDrawText("#919191TW\195\147J KOD POLECAJ\196\132CY:\n#b08d00SANTORI#" .. getElementData(localPlayer, "player:sid") .. " #919191[ SKOPIUJ ]", windowPos.x + 620 / zoom, windowPos.y + 940 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light18"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("TW\195\147J KOD POLECAJ\196\132CY:\n#ffcc00SANTORI#" .. getElementData(localPlayer, "player:sid") .. " #ffffff[ SKOPIUJ ]", windowPos.x + 620 / zoom, windowPos.y + 940 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light18"), "center", "center", false, false, false, true, false)
      end
      dxDrawText("Je\197\155li u\197\188yjesz kodu promocyjnego otrzymasz #00941175,000 #ffffffPLN a \nosoba kt\195\179ra ci go nades\197\130a\197\130a r\195\179wnie\197\188 otrzyma #00941175,000 #ffffffPLN", windowPos.x + 955 / zoom, windowPos.y + 160 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      if #table_promote1 < 1 then
        exports.ST_buttons:dxCreateButton("ZATWIERD\197\185", windowPos.x + 365 / zoom, windowPos.y + 360 / zoom, 245 / zoom, 46 / zoom, 255, 1)
      else
        for _FORV_9_, _FORV_10_ in ipairs(table_promote1) do
          dxDrawText("U\197\187YTO KODU POLECAJ\196\132CEGO GRACZA #ffcc00\n" .. _FORV_10_.nick, windowPos.x + 620 / zoom, windowPos.y + 485 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light16"), "center", "center", false, false, false, true, false)
        end
      end
      dxDrawRoundedRectangle(windowPos.x + 727 / zoom, windowPos.y + 270 / zoom, 322 / zoom, 382 / zoom, 20 / zoom, tocolor(60, 60, 60, 150))
      dxDrawRoundedRectangle(windowPos.x + 728 / zoom, windowPos.y + 271 / zoom, 320 / zoom, 380 / zoom, 20 / zoom, tocolor(27, 27, 27, 255))
      dxDrawText("LISTA OS\195\147B, KT\195\147RE U\197\187Y\197\129Y TWOJEGO KODU", windowPos.x + 1415 / zoom, windowPos.y + 372 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawRectangle(windowPos.x + 738 / zoom, windowPos.y + 301 / zoom, 300 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(table_promote) do
        if _FORV_9_ >= k and _FORV_9_ <= n then
          xY = xY + 1
          dxDrawText("" .. _FORV_10_.promoted, windowPos.x + 741 / zoom, windowPos.y + 450 / zoom + 54 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
          dxDrawText("#ffcc00" .. _FORV_10_.date, windowPos.x, windowPos.y + 450 / zoom + 54 / zoom * (xY - 1), windowPos.x + 362 / zoom + 660 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "right", "center", false, false, false, true, false)
        end
      end
      dxDrawScrollBar(#table_promote, windowPos.x + 1035 / zoom, windowPos.y + 315 / zoom, 6 / zoom, 320 / zoom, m, k)
    end
  end
  if windows.category == "UMIEJ\196\152TNO\197\154CI" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.skills_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("UMIEJ\196\152TNO\197\154CI STRZELANIA", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_9_, _FORV_10_ in ipairs(weaponsSkils) do
      xY = xY + 1
      dxDrawCircle(windowPos.x + 392 / zoom + 270 / zoom * (xY - 1), windowPos.y + 260 / zoom, 110 / zoom, 0, 360, tocolor(45, 45, 45, 255))
      dxDrawCircle(windowPos.x + 392 / zoom + 270 / zoom * (xY - 1), windowPos.y + 260 / zoom, 110 / zoom, 270, 270 + _FORV_10_[3] / 2.775, tocolor(_FORV_10_[5][1], _FORV_10_[5][2], _FORV_10_[5][3], 200))
      dxDrawCircle(windowPos.x + 392 / zoom + 270 / zoom * (xY - 1), windowPos.y + 260 / zoom, 95 / zoom, 0, 360, tocolor(30, 30, 30, 255))
      dxDrawText(RGBToHex(_FORV_10_[5][1], _FORV_10_[5][2], _FORV_10_[5][3]) .. "" .. _FORV_10_[3] / 10 .. "#ffffff%", windowPos.x + 420 / zoom + 540 / zoom * (xY - 1), windowPos.y + 450 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      if _FORV_10_[1] == "Pistolety" then
        dxDrawImage(windowPos.x + 359 / zoom + 270 / zoom * (xY - 1), windowPos.y + 220 / zoom, 80 / zoom, 80 / zoom, _FORV_10_[4], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + 344 / zoom + 270 / zoom * (xY - 1), windowPos.y + 215 / zoom, 90 / zoom, 90 / zoom, _FORV_10_[4], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText(_FORV_10_[1], windowPos.x + 424 / zoom + 540 / zoom * (xY - 1), windowPos.y + 200 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    end
    xY = 0
    for _FORV_9_, _FORV_10_ in ipairs(weaponsSkils1) do
      xY = xY + 1
      dxDrawCircle(windowPos.x + 524 / zoom + 270 / zoom * (xY - 1), windowPos.y + 485 / zoom, 110 / zoom, 0, 360, tocolor(45, 45, 45, 255))
      dxDrawCircle(windowPos.x + 524 / zoom + 270 / zoom * (xY - 1), windowPos.y + 485 / zoom, 110 / zoom, 270, 270 + _FORV_10_[3] / 2.775, tocolor(_FORV_10_[5][1], _FORV_10_[5][2], _FORV_10_[5][3], 255))
      dxDrawCircle(windowPos.x + 524 / zoom + 270 / zoom * (xY - 1), windowPos.y + 485 / zoom, 95 / zoom, 0, 360, tocolor(30, 30, 30, 255))
      dxDrawText(RGBToHex(_FORV_10_[5][1], _FORV_10_[5][2], _FORV_10_[5][3]) .. "" .. _FORV_10_[3] / 10 .. "#ffffff%", windowPos.x + 685 / zoom + 540 / zoom * (xY - 1), windowPos.y + 900 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 479.5 / zoom + 270 / zoom * (xY - 1), windowPos.y + 442.5 / zoom, 85 / zoom, 85 / zoom, _FORV_10_[4], 20, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_10_[1], windowPos.x + 685 / zoom + 540 / zoom * (xY - 1), windowPos.y + 650 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    end
  end
  if windows.category == "POJAZDY" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.vehicle_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 830 / zoom, windowPos.y + 35 / zoom, 220 / zoom, 40 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
    dxDrawRoundedRectangle(windowPos.x + 830 / zoom, windowPos.y + 35 / zoom, 40 / zoom, 40 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
    if exports.ST_gui:getCustomEditboxText("searchVehicles"):len() > 0 and exports.ST_gui:getCustomEditboxText("searchVehicles"):len() <= 1 then
      k = 1
      n = 10
      m = 10
    end
    if categoryVehiclesSort == "Prywatne" then
      dxDrawImage(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      table_vehicles = table_vehicles_prywatne
    elseif categoryVehiclesSort == "Organizacyjne" then
      dxDrawImage(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom, textures.org_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      table_vehicles = table_vehicles_organizacyjne
    elseif categoryVehiclesSort == "Z dost\196\153pem do kluczy" then
      dxDrawImage(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom, textures.key_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      table_vehicles = table_vehicles_klucze
    end
    if exports.ST_gui:getCustomEditboxText("searchVehicles"):len() > 0 then
      table_vehicles1 = getPlayersFromText((string.lower(exports.ST_gui:getCustomEditboxText("searchVehicles"))))
    else
      table_vehicles1 = table_vehicles
    end
    dxDrawText("POJAZDY [ #ffbf00" .. #table_vehicles1 .. " #ffffff] - #ffbf00" .. categoryVehiclesSort, windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    if isMouseIn(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom) and isCursorShowing() then
      cxs, cys = getCursorPosition()
      cxs, cys = screenW * cxs, screenH * cys
      dxDrawText(categoryVehiclesSort, cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
      dxDrawText(categoryVehiclesSort, cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
    end
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(windowPos.x + 250 / zoom, windowPos.y + 100 / zoom, 818 / zoom, 40 / zoom, 20 / zoom, tocolor(25, 25, 25, 255))
      dxDrawText("ID", windowPos.x + 275 / zoom, windowPos.y + 40 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("MODEL", windowPos.x + 350 / zoom, windowPos.y + 40 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("LOKALIZACJA", windowPos.x, windowPos.y + 40 / zoom, windowPos.x + 362 / zoom + 680 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      xY = 0
      for _FORV_10_, _FORV_11_ in ipairs(table_vehicles1) do
        if _FORV_10_ >= k and _FORV_10_ <= n then
          xY = xY + 1
          if tonumber(_FORV_11_.parking) == 1 then
            location = "Przechowalnia pojazd\195\179w"
          elseif _FORV_11_.police == 1 then
            location = "Parking policyjny"
          else
            for _FORV_17_, _FORV_18_ in ipairs(getElementsByType("vehicle")) do
              if getElementData(_FORV_18_, "vehicle:id") and getElementData(_FORV_18_, "vehicle:id") == _FORV_11_.id then
                location = getZoneName(getElementPosition(_FORV_18_)) .. ", " .. getZoneName(getElementPosition(_FORV_18_))
              end
            end
          end
          if _FORV_11_.rent ~= "0" then
            dxDrawRoundedRectangle(windowPos.x + 259 / zoom, windowPos.y + 149 / zoom + 51.5 / zoom * (xY - 1), 787 / zoom, 45 / zoom, 20 / zoom, tocolor(0, 187, 255, 200))
          else
            dxDrawRoundedRectangle(windowPos.x + 259 / zoom, windowPos.y + 149 / zoom + 51.5 / zoom * (xY - 1), 787 / zoom, 45 / zoom, 20 / zoom, tocolor(60, 60, 60, 100), false)
          end
          if isMouseIn(windowPos.x + 260 / zoom, windowPos.y + 150 / zoom + 51.5 / zoom * (xY - 1), 785 / zoom, 45 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 150 / zoom + 51.5 / zoom * (xY - 1), 785 / zoom, 43 / zoom, 20 / zoom, tocolor(24, 24, 24, 255), false)
          else
            dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 150 / zoom + 51.5 / zoom * (xY - 1), 785 / zoom, 43 / zoom, 20 / zoom, tocolor(27, 27, 27, 255), false)
          end
          dxDrawText(_FORV_11_.id, windowPos.x + 275 / zoom, windowPos.y + 145 / zoom + 103 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
          dxDrawText(exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_11_.model), _FORV_11_.custom_model), windowPos.x + 350 / zoom, windowPos.y + 145 / zoom + 103 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
          dxDrawText(location, windowPos.x, windowPos.y + 145 / zoom + 103 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, false, false)
        end
      end
      dxDrawScrollBar(#table_vehicles1, windowPos.x + 1055 / zoom, windowPos.y + 160 / zoom, 6 / zoom, 495 / zoom, m, k)
    end
  end
  if windows.category == "WYBRANY POJAZD" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.vehicle_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(windowPos.x + 830 / zoom, windowPos.y + 35 / zoom, 220 / zoom, 40 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
      dxDrawRoundedRectangle(windowPos.x + 830 / zoom, windowPos.y + 35 / zoom, 40 / zoom, 40 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
      if #tableInfoVehicles > 1 then
        if tableInfoVehicles[10][2] == "Nie udost\196\153pniono" then
          dxDrawImage(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom, textures.key_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          if isMouseIn(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom) and isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Wpisz id gracza, kt\195\179remu chcesz udost\196\153pni\196\135 klucze", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
            dxDrawText("Wpisz id gracza, kt\195\179remu chcesz udost\196\153pni\196\135 klucze", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          end
          if exports.ST_gui:getCustomEditboxText("keyVehicle"):len() > 0 then
            if isMouseIn(windowPos.x + 1010 / zoom, windowPos.y + 35 / zoom, 40 / zoom, 40 / zoom) then
              dxDrawRoundedRectangle(windowPos.x + 1010 / zoom, windowPos.y + 35 / zoom, 40 / zoom, 40 / zoom, 15 / zoom, tocolor(18, 18, 18, 255))
              dxDrawText("\226\156\148\239\184\143", windowPos.x + 1015 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 200, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
            else
              dxDrawRoundedRectangle(windowPos.x + 1010 / zoom, windowPos.y + 35 / zoom, 40 / zoom, 40 / zoom, 15 / zoom, tocolor(20, 20, 20, 255))
              dxDrawText("\226\156\148\239\184\143", windowPos.x + 1015 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
            end
          end
        else
          dxDrawImage(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom, textures.key_icon, 0, 0, 0, tocolor(0, 187, 255, 255), false)
          if isMouseIn(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom) and isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Kliknij, aby zabra\196\135 kluczki", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
            dxDrawText("Kliknij, aby zabra\196\135 kluczki", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
          end
        end
      end
      for _FORV_9_, _FORV_10_ in ipairs(table_selectCar) do
        if tonumber(_FORV_10_.parking) == 1 then
          location = "Przechowalnia pojazd\195\179w"
        elseif _FORV_10_.police == 1 then
          location = "Parking policyjny"
        end
        for _FORV_14_, _FORV_15_ in ipairs(getElementsByType("vehicle")) do
          if getElementData(_FORV_15_, "vehicle:id") and getElementData(_FORV_15_, "vehicle:id") == _FORV_10_.id then
            location = getZoneName(getElementPosition(_FORV_15_)) .. ", " .. getZoneName(getElementPosition(_FORV_15_))
          end
        end
        dxDrawText(exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_10_.model), _FORV_10_.custom_model), windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      end
      dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 114 / zoom, 405 / zoom, 326 / zoom, 17 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 403 / zoom, 324 / zoom, 17 / zoom, tocolor(27, 27, 27, 255))
      dxDrawRectangle(windowPos.x + 275 / zoom, windowPos.y + 148 / zoom, 385 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
      dxDrawText("INFORMACJE PODSTAWOWE", windowPos.x + 275 / zoom, windowPos.y + 65 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(tableInfoVehicles) do
        xY = xY + 1
        dxDrawText(_FORV_10_[1], windowPos.x + 275 / zoom, windowPos.y + 125 / zoom + 51.8 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
        if _FORV_10_[2] then
          dxDrawText(_FORV_10_[2], windowPos.x, windowPos.y + 125 / zoom + 51.8 / zoom * (xY - 1), windowPos.x + 362 / zoom + 293 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        else
          dxDrawText("Ukryte", windowPos.x, windowPos.y + 125 / zoom + 51.8 / zoom * (xY - 1), windowPos.x + 362 / zoom + 293 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        end
      end
      dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 450 / zoom, 790 / zoom, 208 / zoom, 17 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 451 / zoom, 788 / zoom, 206 / zoom, 17 / zoom, tocolor(25, 25, 25, 255))
      dxDrawText("TUNING POJAZDU", windowPos.x + 275 / zoom, windowPos.y + 733 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawRectangle(windowPos.x + 275 / zoom, windowPos.y + 482 / zoom, 768 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(tableInfoVehicles2) do
        xY = xY + 1
        if _FORV_10_[3] then
          if _FORV_10_[2] == 1 then
            v2Name = "#039118tak"
          elseif _FORV_10_[2] == 0 then
            v2Name = "#8c0000nie"
          else
            v2Name = "#838383Ukryte"
          end
        else
          v2Name = _FORV_10_[2]
        end
        dxDrawText(_FORV_10_[1], windowPos.x + 275 / zoom, windowPos.y + 799 / zoom + 54 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
        dxDrawText(v2Name, windowPos.x, windowPos.y + 799 / zoom + 54 / zoom * (xY - 1), windowPos.x + 362 / zoom + 50 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        if _FORV_10_[1] == "US1" and not _FORV_10_[2] then
          exports.ST_buttons:dxCreateButton("POKA\197\187 INFORMACJE", windowPos.x + 790 / zoom, windowPos.y + 600 / zoom, 245 / zoom, 50 / zoom, 255, 1)
        end
      end
      xY = 0
      xX = 1
      for _FORV_9_, _FORV_10_ in ipairs(tableInfoVehicles1) do
        if tableInfoVehicles1[1][2] then
          maxI = 13
        else
          maxI = 11
        end
        if _FORV_9_ < maxI then
          xY = xY + 1
          if xY > 6 then
            xY = 1
            xX = xX + 1
          end
          if _FORV_10_[3] then
            if _FORV_10_[1] == "LPG" then
              if _FORV_10_[2] == "Ukryte" then
                v2Name = "#838383Ukryte"
              elseif _FORV_10_[2] == "Tak" then
                v2Name = "#039118tak"
              else
                v2Name = "#8c0000nie"
              end
            elseif _FORV_10_[2] == 1 then
              v2Name = "#039118tak"
            elseif _FORV_10_[2] == 0 then
              v2Name = "#8c0000nie"
            else
              v2Name = "#838383Ukryte"
            end
          else
            v2Name = _FORV_10_[2] or "#838383Ukryte"
          end
          dxDrawText(_FORV_10_[1], windowPos.x + 460 / zoom + 320 / zoom * (xX - 1), windowPos.y + 799 / zoom + 54 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
          dxDrawText(v2Name, windowPos.x, windowPos.y + 799 / zoom + 54 / zoom * (xY - 1), windowPos.x + 362 / zoom + 360 / zoom + 320 / zoom * (xX - 1), windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        end
      end
      dxDrawRoundedRectangle(windowPos.x + 679 / zoom, windowPos.y + 114 / zoom, 373 / zoom, 326 / zoom, 17 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(windowPos.x + 680 / zoom, windowPos.y + 115 / zoom, 371 / zoom, 324 / zoom, 17 / zoom, tocolor(27, 27, 27, 255))
      dxDrawRectangle(windowPos.x + 690 / zoom, windowPos.y + 148 / zoom, 351 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
      for _FORV_9_, _FORV_10_ in ipairs(table_selectCar) do
        if table_selectCar.jestNaMapie then
          dxDrawText("LOKALIZACJA", windowPos.x + 690 / zoom, windowPos.y + 65 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
          if isMouseIn(windowPos.x + 860 / zoom, windowPos.y + 121 / zoom, 180 / zoom, 25 / zoom) then
            dxDrawText("TEPNIJ DO POJAZDU - #00d41850,000 #ffffffPLN", windowPos.x, windowPos.y + 65 / zoom, windowPos.x + 362 / zoom + 675 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "right", "center", false, false, false, true, false)
          else
            dxDrawText("TEPNIJ DO POJAZDU - #00941150,000 #969696PLN", windowPos.x, windowPos.y + 65 / zoom, windowPos.x + 362 / zoom + 675 / zoom, windowPos.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "right", "center", false, false, false, true, false)
          end
          for _FORV_14_, _FORV_15_ in ipairs(getElementsByType("vehicle")) do
            if getElementData(_FORV_15_, "vehicle:id") and getElementData(_FORV_15_, "vehicle:id") == _FORV_10_.id then
              cursorX, cursorY = getCursorPosition()
              if getKeyState("mouse1") and _UPVALUE0_ then
                if not cursorX then
                else
                end
                _UPVALUE1_ = -(cursorX * screenW * _UPVALUE2_ - _UPVALUE3_)
                _UPVALUE4_ = cursorY * screenH * _UPVALUE2_ - _UPVALUE5_
                _UPVALUE1_ = math.max(-4000, math.min(4000, _UPVALUE1_))
                _UPVALUE4_ = math.max(-4000, math.min(4000, _UPVALUE4_))
              end
              dxDrawImageSection(mapPos.x - 42 / zoom, mapPos.y - 55 / zoom, mapPos.w + 100 / zoom, mapPos.h + 25 / zoom, (4000 + _UPVALUE1_) * _UPVALUE6_ - (mapPos.w + 100 / zoom) / 2 * _UPVALUE2_, (4000 - _UPVALUE4_) * _UPVALUE6_ - (mapPos.h + 25 / zoom) / 2 * _UPVALUE2_, (mapPos.w + 100 / zoom) * _UPVALUE2_, (mapPos.h + 25 / zoom) * _UPVALUE2_, texturesMap.map, 0, 0, 0, tocolor(255, 255, 255, 255))
              dxDrawImage(math.max(mapPos.x - 42 / zoom + (mapPos.w + 100 / zoom) / 2 - (mapPos.w + 100 / zoom) / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.x - 42 / zoom + (mapPos.w + 100 / zoom) / 2 + (mapPos.w + 100 / zoom) / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(_FORV_15_)))) - math.floor(38 / zoom) / 2, math.max(mapPos.y - 55 / zoom + (mapPos.h + 25 / zoom) / 2 - (mapPos.h + 25 / zoom) / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.y - 55 / zoom + (mapPos.h + 25 / zoom) / 2 + (mapPos.h + 25 / zoom) / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(_FORV_15_)))) - math.floor(38 / zoom) / 2, math.floor(38 / zoom), math.floor(38 / zoom), textures.blips_car, 0, 0, 0, tocolor(255, 255, 255, 255))
            end
          end
        else
          dxDrawText("PODGL\196\132D", windowPos.x + 690 / zoom, windowPos.y + 65 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        end
      end
    end
  end
  if windows.category == "NIERUCHOMO\197\154CI" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("NIERUCHOMO\197\154CI", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(tabela_nieruchomosci) do
        if _FORV_9_ >= k and _FORV_9_ <= n then
          xY = xY + 1
          if isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 114 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 114 / zoom + 71 / zoom * (xY - 1), 784 / zoom, 67 / zoom, 18 / zoom, tocolor(60, 60, 60, 130))
            dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom, 18 / zoom, tocolor(25, 25, 25, 255))
          else
            dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 114 / zoom + 71 / zoom * (xY - 1), 784 / zoom, 67 / zoom, 18 / zoom, tocolor(60, 60, 60, 50))
            dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
          end
          dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 120 / zoom + 71 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 18 / zoom, tocolor(23, 23, 23, 255))
          dxDrawImage(windowPos.x + 280 / zoom, windowPos.y + 130 / zoom + 71 / zoom * (xY - 1), 35 / zoom, 35 / zoom, textures.house_icon, 0, 0, 0, tocolor(200, 0, 0, 255), false)
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 133 / zoom + 71 / zoom * (xY - 1), 1 / zoom, 30 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 163 / zoom + 71 / zoom * (xY - 1), 15 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
          dxDrawText(_FORV_10_.name .. "  [ #ffbf00" .. _FORV_10_.id .. " #ffffff]", windowPos.x + 340 / zoom, windowPos.y + 70 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          dxDrawText(getZoneName(split(_FORV_10_.entrance, ",")[1], split(_FORV_10_.entrance, ",")[2], split(_FORV_10_.entrance, ",")[3], true) .. ", " .. getZoneName(split(_FORV_10_.entrance, ",")[1], split(_FORV_10_.entrance, ",")[2], split(_FORV_10_.entrance, ",")[3], false), windowPos.x + 355 / zoom, windowPos.y + 121 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
          dxDrawText("WYNAJ\196\152TY DO", windowPos.x, windowPos.y + 70 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          dxDrawText(_FORV_10_.date, windowPos.x, windowPos.y + 120 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
        end
      end
      dxDrawScrollBar(#tabela_nieruchomosci, windowPos.x + 1055 / zoom, windowPos.y + 175 / zoom, 6 / zoom, 480 / zoom, m, k)
    end
  end
  if windows.category == "WYBRANA NIERUCHOMO\197\154\196\134" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.house_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 388 / zoom, 400 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
      dxDrawRoundedRectangle(windowPos.x + 275 / zoom, windowPos.y + 155 / zoom, 368 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("INFORMACJE", windowPos.x + 280 / zoom, windowPos.y + 70 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 665 / zoom, windowPos.y + 115 / zoom, 388 / zoom, 400 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
      dxDrawRoundedRectangle(windowPos.x + 675 / zoom, windowPos.y + 155 / zoom, 368 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
      for _FORV_9_, _FORV_10_ in ipairs(tabela_wbranaNieruchomosc) do
        dxDrawText(_FORV_10_.name .. " [ #ffbf00" .. _FORV_10_.id .. " #ffffff]", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
        dxDrawText("ID", windowPos.x + 275 / zoom, windowPos.y + 190 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_10_.id, windowPos.x, windowPos.y + 190 / zoom, windowPos.x + 362 / zoom + 270 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
        dxDrawText("TYP", windowPos.x + 275 / zoom, windowPos.y + 290 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_10_.name, windowPos.x, windowPos.y + 290 / zoom, windowPos.x + 362 / zoom + 270 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
        dxDrawText("WA\197\187NO\197\154\196\134", windowPos.x + 275 / zoom, windowPos.y + 390 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_10_.date, windowPos.x, windowPos.y + 390 / zoom, windowPos.x + 362 / zoom + 270 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
        if _FORV_10_.name == "Mieszkanie" then
          priceMoneyHouse = 10000
        elseif _FORV_10_.name == "Dom" then
          priceMoneyHouse = 17000
        elseif _FORV_10_.name == "Willa" then
          priceMoneyHouse = 25000
        end
        dxDrawText("OP\197\129ATY", windowPos.x + 275 / zoom, windowPos.y + 490 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawText("#ffbb00" .. przecinek(priceMoneyHouse) .. " #e6e6e6PLN", windowPos.x, windowPos.y + 490 / zoom, windowPos.x + 362 / zoom + 270 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
        dxDrawText("POWIERZCHNIA", windowPos.x + 275 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawText("" .. _FORV_10_.interiorSize .. "x" .. _FORV_10_.interiorSize, windowPos.x, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom + 270 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("PRZE\197\129ADUJ DOMEK", windowPos.x + 580 / zoom, windowPos.y + 570 / zoom, 180 / zoom, 62 / zoom, 255, 1)
      end
      dxDrawRoundedRectangle(windowPos.x + 685 / zoom, windowPos.y + 170 / zoom, 350 / zoom, 105 / zoom, 15 / zoom, tocolor(22, 22, 22, 230))
      dxDrawRoundedRectangle(windowPos.x + 685 / zoom, windowPos.y + 285 / zoom, 350 / zoom, 105 / zoom, 15 / zoom, tocolor(22, 22, 22, 230))
      dxDrawRoundedRectangle(windowPos.x + 685 / zoom, windowPos.y + 400 / zoom, 350 / zoom, 105 / zoom, 15 / zoom, tocolor(22, 22, 22, 230))
      dxDrawText("LOKATORZY: #ffbf00" .. #tabela_lokatorzyNieruchomosc .. "", windowPos.x + 675 / zoom, windowPos.y + 70 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(tabela_lokatorzyNieruchomosc) do
        xY = xY + 1
        dxDrawText(_FORV_10_[2], windowPos.x + 780 / zoom, windowPos.y + 205 / zoom + 230 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawText("UID: #ffbb00" .. _FORV_10_[1], windowPos.x + 780 / zoom, windowPos.y + 275 / zoom + 230 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawImage(windowPos.x + 695 / zoom, windowPos.y + 180 / zoom + 115 / zoom * (xY - 1), 80 / zoom, 80 / zoom, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
  end
  if windows.category == "SKLEP" then
    dxDrawText("PUNKTY PREMIUM: #ffbf00" .. przecinek((getElementData(localPlayer, "player:pp"))), windowPos.x, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom + 680 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.shop_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if categoryPremium == "PREMIUM" then
      dxDrawText("ZAKUP KONTA PREMIUM", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("WYBIERZ NA ILE CHCESZ ZAKUPI\196\134 KONTO PREMIUM", windowPos.x + 955 / zoom, windowPos.y + 120 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
      if isMouseIn(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 389 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 200))
        dxDrawRoundedRectangle(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 389 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
        dxDrawRoundedRectangle(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("KONTO PREMIUM", windowPos.x + 580 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff2007 #ffffffDNI", windowPos.x + 580 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffbf00200 #ffffffpp", windowPos.x + 580 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 427.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.premium_icon, 0, 0, 0, tocolor(255, 242, 0, 255), false)
      if isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 200))
        dxDrawRoundedRectangle(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
        dxDrawRoundedRectangle(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("KONTO PREMIUM", windowPos.x + 960 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff20014 #ffffffDNI", windowPos.x + 960 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffbf00400 #ffffffpp", windowPos.x + 960 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 617.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.premium_icon, 0, 0, 0, tocolor(255, 242, 0, 255), false)
      if isMouseIn(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 769 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 200))
        dxDrawRoundedRectangle(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 769 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
        dxDrawRoundedRectangle(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("KONTO PREMIUM", windowPos.x + 1340 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff20030 #ffffffDNI", windowPos.x + 1340 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffbf00800 #ffffffpp", windowPos.x + 1340 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 807.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.premium_icon, 0, 0, 0, tocolor(255, 242, 0, 255), false)
      dxDrawText("Korzy\197\155ci #fcce00premium#f0f0f0:", windowPos.x + 955 / zoom, windowPos.y + 720 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawText("#fcce00- #ffffffDost\196\153p do czatu premium\n#fcce00- #ffffffZwi\196\153kszone zarobki w pracach (+10%)\n#fcce00- #ffffffWyr\195\179\197\188nione konto poprzez \197\188\195\179\197\130te id\n#fcce00- #ffffffSkiny premium\n#fcce00- #ffffffPremia 18,000 PLN za pe\197\130n\196\133 godzine gry\n#fcce00- #ffffffZwi\196\153kszony drop EXP do level'u\n#fcce00- #ffffffUbrania premium dla CJ'a\n#fcce00- #ffffffMo\197\188liwo\197\155\196\135 pisania wiadomo\197\155ci discord-serwer", windowPos.x + 955 / zoom, windowPos.y + 480 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "top", false, false, false, true, false)
    elseif categoryPremium == "KUPNO PUNKT\195\147W PREMIUM" then
      dxDrawText("ZAKUP PUNKT\195\147W PREMIUM (SMS)", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("WYBIERZ ILE CHCESZ ZAKUPI\196\134 #ffbf00PUNKT\195\147W PREMIUM", windowPos.x + 955 / zoom, windowPos.y + 120 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
      if windows.enterCodePP == 75550 then
        dxDrawRoundedRectangle(windowPos.x + 389 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
      elseif windows.enterCodePP == 79550 then
        dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
      elseif windows.enterCodePP == 92505 then
        dxDrawRoundedRectangle(windowPos.x + 769 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
      end
      if isMouseIn(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 389 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 20))
        dxDrawRoundedRectangle(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 389 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 50))
        dxDrawRoundedRectangle(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("KONTO PREMIUM", windowPos.x + 580 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff200100 #ffffffPP", windowPos.x + 580 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#0094116.15 #ffffffPLN", windowPos.x + 580 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 427.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.premium_icon, 0, 0, 0, tocolor(255, 242, 0, 255), false)
      if isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 20))
        dxDrawRoundedRectangle(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 50))
        dxDrawRoundedRectangle(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("KONTO PREMIUM", windowPos.x + 960 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff200300 #ffffffPP", windowPos.x + 960 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#00941111.07 #ffffffPLN", windowPos.x + 960 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 617.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.premium_icon, 0, 0, 0, tocolor(255, 242, 0, 255), false)
      if isMouseIn(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 769 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 20))
        dxDrawRoundedRectangle(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 769 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 50))
        dxDrawRoundedRectangle(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("KONTO PREMIUM", windowPos.x + 1340 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff2001000 #ffffffPP", windowPos.x + 1340 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#00941130.75 #ffffffPLN", windowPos.x + 1340 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 807.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.premium_icon, 0, 0, 0, tocolor(255, 242, 0, 255), false)
      if windows.enterCodePP then
        dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 526 / zoom, 162 / zoom, 47 / zoom, 15 / zoom, tocolor(50, 50, 50, 255))
        dxDrawText("Wy\197\155lij SMS o tre\197\155ci: #ffcc00AVR.S4NTORI #f5f5f5na numer: #ffcc00" .. windows.enterCodePP .. " #f5f5f5\nNast\196\153pnie wpisz kod zwrotny w poni\197\188szym polu i kliknij #ffcc00'ZATWIERD\197\185'#f5f5f5.", windowPos.x + 955 / zoom, windowPos.y + 750 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("ZATWIERD\197\185", windowPos.x + 580 / zoom, windowPos.y + 600 / zoom, 160 / zoom, 52 / zoom, 255, 1)
      elseif isMouseIn(windowPos.x + 822 / zoom, windowPos.y + 510 / zoom, 70 / zoom, 30 / zoom) then
        dxDrawText("Punkty #ffcc00premium #f5f5f5mo\197\188esz kupi\196\135 taniej p\197\130ac\196\133c #ffcc00szybkim przelewem #f5f5f5lub #ffcc00BLIK #f5f5f5\nna naszej stronie internetowej - #ffcc00santorisklep.pl #f5f5f5[#b07000kopiuj#f5f5f5]", windowPos.x + 955 / zoom, windowPos.y + 820 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("Punkty #ffcc00premium #f5f5f5mo\197\188esz kupi\196\135 taniej p\197\130ac\196\133c #ffcc00szybkim przelewem #f5f5f5lub #ffcc00BLIK #f5f5f5\nna naszej stronie internetowej - #ffcc00santorisklep.pl #f5f5f5[#ffa200kopiuj#f5f5f5]", windowPos.x + 955 / zoom, windowPos.y + 820 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
      end
    elseif categoryPremium == "ZAKUP KOLOROWEGO NICKU" then
      dxDrawText("ZAKUP KOLOROWEGO NICKU", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("WYBIERZ KOLOR ORAZ NA ILE CHCESZ ZAKUPI\196\134 #42eff5K#1eff00O#ff3c00L#ff00ccO#ff0000R#00fff7O#9000ffW#eeff00Y #ffffffNICK", windowPos.x + 955 / zoom, windowPos.y + 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
      dxDrawText("Je\197\155li masz wykupiony kolorowy nick, a chcesz zmieni\196\135 to data nicku automatycznie si\196\153 przed\197\130u\197\188y", windowPos.x + 955 / zoom, windowPos.y + 160 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, true, false)
      if isMouseIn(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 389 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(0, 255, 208, 200))
        dxDrawRoundedRectangle(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 389 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(0, 255, 208, 255))
        dxDrawRoundedRectangle(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("#42eff5K#1eff00O#ff3c00L#ff00ccO#ff0000R#00fff7O#9000ffW#eeff00Y", windowPos.x + 580 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff2007 #ffffffDNI", windowPos.x + 580 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffbf00100 #ffffffpp", windowPos.x + 580 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 427.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.nickname_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(3, 252, 19, 200))
        dxDrawRoundedRectangle(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(3, 252, 19, 255))
        dxDrawRoundedRectangle(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("#42eff5K#1eff00O#ff3c00L#ff00ccO#ff0000R#00fff7O#9000ffW#eeff00Y", windowPos.x + 960 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff20014 #ffffffDNI", windowPos.x + 960 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffbf00200 #ffffffpp", windowPos.x + 960 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 617.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.nickname_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if isMouseIn(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 769 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(215, 3, 252, 200))
        dxDrawRoundedRectangle(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 769 / zoom, windowPos.y + 219 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(215, 3, 252, 255))
        dxDrawRoundedRectangle(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("#42eff5K#1eff00O#ff3c00L#ff00ccO#ff0000R#00fff7O#9000ffW#eeff00Y", windowPos.x + 1340 / zoom, windowPos.y + 470 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#fff20030 #ffffffDNI", windowPos.x + 1340 / zoom, windowPos.y + 530 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffbf00400 #ffffffpp", windowPos.x + 1340 / zoom, windowPos.y + 590 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 807.5 / zoom, windowPos.y + 230 / zoom, 85 / zoom, 85 / zoom, textures.nickname_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawRoundedRectangle(windowPos.x + 579 / zoom, windowPos.y + 489 / zoom, 57 / zoom, 42 / zoom, 15 / zoom, tocolor(255, 0, 0, 255))
      dxDrawRoundedRectangle(windowPos.x + 639 / zoom, windowPos.y + 489 / zoom, 57 / zoom, 42 / zoom, 15 / zoom, tocolor(0, 255, 0, 255))
      dxDrawRoundedRectangle(windowPos.x + 699 / zoom, windowPos.y + 489 / zoom, 57 / zoom, 42 / zoom, 15 / zoom, tocolor(0, 0, 255, 255))
      editBoxColorR = exports.ST_gui:getCustomEditboxText("colorR")
      editBoxColorG = exports.ST_gui:getCustomEditboxText("colorG")
      editBoxColorB = exports.ST_gui:getCustomEditboxText("colorB")
      dxDrawText("Wpisz kolor w postaci #ff0000R#00ff00G#0000ffB", windowPos.x + 955 / zoom, windowPos.y + 720 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      if editBoxColorR:len() > 0 and editBoxColorG:len() > 0 and editBoxColorB:len() > 0 and tonumber(editBoxColorR) <= 255 and tonumber(editBoxColorG) <= 255 and tonumber(editBoxColorB) <= 255 and tonumber(editBoxColorR) >= 0 and tonumber(editBoxColorG) >= 0 and tonumber(editBoxColorB) >= 0 then
        dxDrawText("#ffffff[#ffb300" .. getElementData(localPlayer, "id") .. "#ffffff] " .. string.format("#%02X%02X%02X", editBoxColorR, editBoxColorG, editBoxColorB) .. "" .. getPlayerName(localPlayer) .. "", windowPos.x + 955 / zoom, windowPos.y + 950 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal19"), "center", "center", false, false, false, true, false)
      end
    elseif categoryPremium == "ZAKUP CUSTOMOWEGO SKINA" then
      dxDrawText("CUSTOMOWY SKIN", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("Aby zakupi\196\135 w\197\130asnego skina musisz przygotowa\196\135 pliki o rozszerzeniu #ffc400.dff #fffffforaz #ffc400.txd#ffffff.\nPo zakupie otrzymujesz dan\196\133 ilo\197\155\196\135 skin\195\179w wybranego modelu\ndo ekwipunku, kt\195\179re mo\197\188esz u\197\188y\196\135 i przekaza\196\135 w handlu innym graczom.", windowPos.x + 955 / zoom, windowPos.y + 130 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, true, false)
      dxDrawText("Skin nie mo\197\188e przekracza\196\135 wagi #ff00002MB#ffffff.\nSkiny po #ffc4006 #ffffffmiesi\196\133cach od wgrania zostaj\196\133 #ffc400usuni\196\153te#ffffff.", windowPos.x + 955 / zoom, windowPos.y + 340 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "center", "center", false, false, false, true, false)
      dxDrawText("Skin musi by\196\135 postury cz\197\130owieka!\n#ff0000Nie wgrywamy skin\195\179w kaczek, os\197\130\195\179w, ba\197\130wan\195\179w itp.", windowPos.x + 955 / zoom, windowPos.y + 490 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffc4002 #ffffffskiny jednego modelu = #ffc4002,500 #ffffffpunkt\195\179w premium\n#ffc4005 #ffffffskin\195\179w jednego modelu = #ffc4005,000 #ffffffpunkt\195\179w premium", windowPos.x + 955 / zoom, windowPos.y + 680 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, true, false)
      dxDrawText("Aby zakupi\196\135 skina zg\197\130o\197\155 si\196\153 do w\197\130a\197\155ciciela serwera\nDISCORD: #ffc400!ReDsKill#2561 #fffffforaz wy\197\155lij pliki (#ffc400.dff #fffffforaz #ffc400.txd#ffffff) i zdj\196\153cie skina", windowPos.x + 955 / zoom, windowPos.y + 880 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffffffSkin musi zosta\196\135 przez nas zweryfikowany\nzanim zostanie wprowadzony na serwer", windowPos.x + 955 / zoom, windowPos.y + 1040 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light18"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("SKLEP", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("WYBIERZ NA CO CHCESZ WYDA\196\134 PUNKTY PREMIUM", windowPos.x + 955 / zoom, windowPos.y + 150 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
      if isMouseIn(windowPos.x + 295 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 294 / zoom, windowPos.y + 249 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 200))
        dxDrawRoundedRectangle(windowPos.x + 295 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 294 / zoom, windowPos.y + 249 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
        dxDrawRoundedRectangle(windowPos.x + 295 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("KONTO PREMIUM", windowPos.x + 390 / zoom, windowPos.y + 570 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawText("200 - 800 pp", windowPos.x + 390 / zoom, windowPos.y + 640 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 330 / zoom, windowPos.y + 265 / zoom, 90 / zoom, 90 / zoom, textures.premium_icon, 0, 0, 0, tocolor(255, 242, 0, 255), false)
      if isMouseIn(windowPos.x + 485 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 484 / zoom, windowPos.y + 249 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(0, 255, 208, 200))
        dxDrawRoundedRectangle(windowPos.x + 485 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 484 / zoom, windowPos.y + 249 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(0, 255, 208, 255))
        dxDrawRoundedRectangle(windowPos.x + 485 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("#42eff5K#1eff00O#ff3c00L#ff00ccO#ff0000R#00fff7O#9000ffW#eeff00Y", windowPos.x + 770 / zoom, windowPos.y + 525 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawText("NICK", windowPos.x + 770 / zoom, windowPos.y + 575 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      dxDrawText("100 - 400 pp", windowPos.x + 770 / zoom, windowPos.y + 640 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 510 / zoom, windowPos.y + 245 / zoom, 110 / zoom, 110 / zoom, textures.nickname_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if isMouseIn(windowPos.x + 675 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 674 / zoom, windowPos.y + 249 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 200))
        dxDrawRoundedRectangle(windowPos.x + 675 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
      else
        dxDrawRoundedRectangle(windowPos.x + 674 / zoom, windowPos.y + 249 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
        dxDrawRoundedRectangle(windowPos.x + 675 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawRoundedRectangle(windowPos.x + 705 / zoom, windowPos.y + 260 / zoom, 100 / zoom, 100 / zoom, 20 / zoom, tocolor(30, 30, 30, 120))
      dxDrawText("CUSTOMOWY SKIN", windowPos.x + 1149 / zoom, windowPos.y + 570 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 705 / zoom, windowPos.y + 258 / zoom, 100 / zoom, 100 / zoom, textures.skin_icon, 0, 0, 0, tocolor(255, 255, 255, 235), false)
      dxDrawText("2500 - 5000 pp", windowPos.x + 1149 / zoom, windowPos.y + 640 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      if isMouseIn(windowPos.x + 865 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 864 / zoom, windowPos.y + 249 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 200))
        dxDrawRoundedRectangle(windowPos.x + 865 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("Aby zakupi\196\135 opis pojazdu wpisz /vopis siedz\196\133c w wybranym poje\197\186dzie", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, true, false)
          dxDrawText("Aby zakupi\196\135 opis pojazdu wpisz #ffbf00/vopis #ffffffsiedz\196\133c w wybranym poje\197\186dzie", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, true, false)
        end
      else
        dxDrawRoundedRectangle(windowPos.x + 864 / zoom, windowPos.y + 249 / zoom, 162 / zoom, 202 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
        dxDrawRoundedRectangle(windowPos.x + 865 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
      end
      dxDrawText("OPIS POJAZDU", windowPos.x + 1530 / zoom, windowPos.y + 570 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      dxDrawText("2500 pp", windowPos.x + 1530 / zoom, windowPos.y + 640 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 905 / zoom, windowPos.y + 270 / zoom, 80 / zoom, 80 / zoom, textures.vehicle_icon, 0, 0, 0, tocolor(255, 242, 0, 235), false)
      if isMouseIn(windowPos.x + 419 / zoom, windowPos.y + 524 / zoom, 482 / zoom, 72 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 419 / zoom, windowPos.y + 524 / zoom, 482 / zoom, 72 / zoom, 20 / zoom, tocolor(255, 242, 0, 200))
        dxDrawRoundedRectangle(windowPos.x + 420 / zoom, windowPos.y + 525 / zoom, 480 / zoom, 70 / zoom, 20 / zoom, tocolor(25, 25, 25, 255))
        dxDrawText("PUNKTY PREMIUM MO\197\187NA ZAKUPI\196\134 TUTAJ", windowPos.x + 955 / zoom, windowPos.y + 920 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 200), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 419 / zoom, windowPos.y + 524 / zoom, 482 / zoom, 72 / zoom, 20 / zoom, tocolor(255, 242, 0, 255))
        dxDrawRoundedRectangle(windowPos.x + 420 / zoom, windowPos.y + 525 / zoom, 480 / zoom, 70 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("PUNKTY PREMIUM MO\197\187NA ZAKUPI\196\134 TUTAJ", windowPos.x + 955 / zoom, windowPos.y + 920 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
      end
    end
  end
  if windows.category == "LOGI" then
    dxDrawText("LOGI - #ffbf00" .. categoryLogs, windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.logs_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 250 / zoom, windowPos.y + 100 / zoom, 818 / zoom, 60 / zoom, 20 / zoom, tocolor(25, 25, 25, 255))
    xX = 0
    for _FORV_10_, _FORV_11_ in ipairs({
      {
        "Kary",
        textures.gavel_icon
      },
      {
        "Logowania",
        textures.history_icon
      },
      {
        "Przelewy pieni\196\153dzy",
        false
      },
      {
        "Przelewy punkt\195\179w premium",
        false
      },
      {
        "Kupno / sprzeda\197\188 pojazd\195\179w w urz\196\153dzie",
        textures.sellcar_icon
      },
      {
        "Kupno / sprzeda\197\188 pojazd\195\179w na gie\197\130dzie",
        textures.exchangecar_icon
      }
    }) do
      xX = xX + 1
      if categoryLogs == _FORV_11_[1] then
        dxDrawRoundedRectangle(windowPos.x + 484 / zoom + 60 / zoom * (xX - 1), windowPos.y + 106.5 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(255, 191, 0, 255))
      end
      dxDrawRoundedRectangle(windowPos.x + 485 / zoom + 60 / zoom * (xX - 1), windowPos.y + 107.5 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
      if _FORV_11_[1] == "Przelewy pieni\196\153dzy" then
        dxDrawText("$", windowPos.x + 622 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      elseif _FORV_11_[1] == "Przelewy punkt\195\179w premium" then
        dxDrawText("PP", windowPos.x + 677 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      else
        dxDrawImage(windowPos.x + 490 / zoom + 60 / zoom * (xX - 1), windowPos.y + 112.5 / zoom, 35 / zoom, 35 / zoom, _FORV_11_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(windowPos.x + 485 / zoom + 60 / zoom * (xX - 1), windowPos.y + 107.5 / zoom, 45 / zoom, 45 / zoom) and isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText(_FORV_11_[1], cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, true, false)
        dxDrawText(_FORV_11_[1], cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, true, false)
      end
    end
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    elseif categoryLogs == "Kary" then
      dxDrawText("ILO\197\154\196\134 KAR: #ffbf00" .. przecinek(#tabela_kary_logs), windowPos.x, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom + 680 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      xY = 0
      for _FORV_11_, _FORV_12_ in ipairs(tabela_kary_logs) do
        if _FORV_11_ >= k and _FORV_11_ <= n then
          xY = xY + 1
          if _FORV_12_.typ == "Ostrze\197\188enie" then
          elseif "#fcba03!Ostrze\197\188enie" == "Ban" then
          elseif "#b00000\226\155\148Ban" == "Prawo jazdy" then
          elseif "#0007c4Prawo jazdy" == "Mute" then
          elseif "#9c4141Mute" == "Kick" then
          elseif "#ba0235\226\157\140Kick" == "Perm Ban" then
          else
          end
          dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 169 / zoom + 71 / zoom * (xY - 1), 784 / zoom, 67 / zoom, 18 / zoom, tocolor(60, 60, 60, 50))
          dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 170 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
          dxDrawText(_FORV_12_.typ .. " #a6a6a6nadane przez: #ffffff" .. _FORV_12_.nadajacy .. "", windowPos.x + 285 / zoom, windowPos.y + 170 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          dxDrawRectangle(windowPos.x + 278 / zoom, windowPos.y + 185 / zoom + 71 / zoom * (xY - 1), 1 / zoom, 30 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRectangle(windowPos.x + 278 / zoom, windowPos.y + 215 / zoom + 71 / zoom * (xY - 1), 15 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
          dxDrawText("Pow\195\179d: #a6a6a6" .. _FORV_12_.powod, windowPos.x + 300 / zoom, windowPos.y + 227 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
          dxDrawText("DATA", windowPos.x, windowPos.y + 170 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          dxDrawText(_FORV_12_.date, windowPos.x, windowPos.y + 230 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
        end
      end
      dxDrawScrollBar(#tabela_kary_logs, windowPos.x + 1055 / zoom, windowPos.y + 175 / zoom, 6 / zoom, 480 / zoom, m, k)
    elseif categoryLogs == "Logowania" then
      xY = 0
      for _FORV_11_, _FORV_12_ in ipairs(tabela_logowania_logs) do
        if _FORV_11_ >= k and _FORV_11_ <= n then
          xY = xY + 1
          dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 169 / zoom + 71 / zoom * (xY - 1), 784 / zoom, 67 / zoom, 18 / zoom, tocolor(60, 60, 60, 50))
          dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 170 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
          dxDrawRectangle(windowPos.x + 278 / zoom, windowPos.y + 185 / zoom + 71 / zoom * (xY - 1), 1 / zoom, 30 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRectangle(windowPos.x + 278 / zoom, windowPos.y + 215 / zoom + 71 / zoom * (xY - 1), 15 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
          dxDrawText("SERIAL", windowPos.x + 287 / zoom, windowPos.y + 175 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_12_.serial, windowPos.x + 300 / zoom, windowPos.y + 227 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
          dxDrawRectangle(windowPos.x + 640 / zoom, windowPos.y + 185 / zoom + 71 / zoom * (xY - 1), 1 / zoom, 30 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRectangle(windowPos.x + 640 / zoom, windowPos.y + 215 / zoom + 71 / zoom * (xY - 1), 10 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
          dxDrawText("IP", windowPos.x + 648 / zoom, windowPos.y + 175 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_12_.IP, windowPos.x + 655 / zoom, windowPos.y + 227 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
          dxDrawText("DATA", windowPos.x, windowPos.y + 175 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          dxDrawText(_FORV_12_.data, windowPos.x, windowPos.y + 230 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
        end
      end
      dxDrawScrollBar(#tabela_logowania_logs, windowPos.x + 1055 / zoom, windowPos.y + 175 / zoom, 6 / zoom, 480 / zoom, m, k)
    elseif categoryLogs == "Przelewy pieni\196\153dzy" then
      xY = 0
      for _FORV_11_, _FORV_12_ in ipairs(tabela_pieniadze_logs) do
        if _FORV_11_ >= k and _FORV_11_ <= n then
          xY = xY + 1
          dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 169 / zoom + 71 / zoom * (xY - 1), 784 / zoom, 67 / zoom, 18 / zoom, tocolor(60, 60, 60, 50))
          dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 170 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
          dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 175 / zoom + 71 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 18 / zoom, tocolor(23, 23, 23, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 188 / zoom + 71 / zoom * (xY - 1), 1 / zoom, 30 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 218 / zoom + 71 / zoom * (xY - 1), 15 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
          if _FORV_12_.uid == getElementData(localPlayer, "player:sid") then
            dxDrawText("-", windowPos.x + 234 / zoom, windowPos.y + 207 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
            dxDrawText("Przelew do #ffbf00" .. _FORV_12_.nick2 .. "", windowPos.x + 340 / zoom, windowPos.y + 183 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
            dxDrawText("#ff6363-" .. przecinek(_FORV_12_.ilosc) .. " #ffffffPLN", windowPos.x + 355 / zoom, windowPos.y + 234 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          elseif _FORV_12_.uid2 == getElementData(localPlayer, "player:sid") then
            dxDrawText("+", windowPos.x + 234 / zoom, windowPos.y + 207 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
            dxDrawText("Przelew od #ffbf00" .. _FORV_12_.nick .. "", windowPos.x + 340 / zoom, windowPos.y + 183 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
            dxDrawText("#69ff6e+" .. przecinek(_FORV_12_.ilosc) .. " #ffffffPLN", windowPos.x + 355 / zoom, windowPos.y + 234 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          end
          dxDrawText("DATA", windowPos.x, windowPos.y + 175 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          dxDrawText(_FORV_12_.data, windowPos.x, windowPos.y + 230 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
        end
      end
      dxDrawScrollBar(#tabela_pieniadze_logs, windowPos.x + 1055 / zoom, windowPos.y + 175 / zoom, 6 / zoom, 480 / zoom, m, k)
    elseif categoryLogs == "Przelewy punkt\195\179w premium" then
      xY = 0
      for _FORV_11_, _FORV_12_ in ipairs(tabela_pp_logs) do
        if _FORV_11_ >= k and _FORV_11_ <= n then
          xY = xY + 1
          dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 169 / zoom + 71 / zoom * (xY - 1), 784 / zoom, 67 / zoom, 18 / zoom, tocolor(60, 60, 60, 50))
          dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 170 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
          dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 175 / zoom + 71 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 18 / zoom, tocolor(23, 23, 23, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 188 / zoom + 71 / zoom * (xY - 1), 1 / zoom, 30 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 218 / zoom + 71 / zoom * (xY - 1), 15 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
          if _FORV_12_.uid == getElementData(localPlayer, "player:sid") then
            dxDrawText("-", windowPos.x + 234 / zoom, windowPos.y + 207 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
            dxDrawText("Przelew do #ffbf00" .. _FORV_12_.nick2 .. "", windowPos.x + 340 / zoom, windowPos.y + 183 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
            dxDrawText("#ff6363-" .. przecinek(_FORV_12_.ilosc) .. " #ffffffPP", windowPos.x + 355 / zoom, windowPos.y + 234 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          elseif _FORV_12_.uid2 == getElementData(localPlayer, "player:sid") then
            dxDrawText("+", windowPos.x + 234 / zoom, windowPos.y + 207 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
            dxDrawText("Przelew od #ffbf00" .. _FORV_12_.nick .. "", windowPos.x + 340 / zoom, windowPos.y + 183 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
            dxDrawText("#69ff6e+" .. przecinek(_FORV_12_.ilosc) .. " #ffffffPP", windowPos.x + 355 / zoom, windowPos.y + 234 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          end
          dxDrawText("DATA", windowPos.x, windowPos.y + 175 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          dxDrawText(_FORV_12_.data, windowPos.x, windowPos.y + 230 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
        end
      end
      dxDrawScrollBar(#tabela_pieniadze_logs, windowPos.x + 1055 / zoom, windowPos.y + 175 / zoom, 6 / zoom, 480 / zoom, m, k)
    elseif categoryLogs == "Kupno / sprzeda\197\188 pojazd\195\179w w urz\196\153dzie" then
      xY = 0
      for _FORV_11_, _FORV_12_ in ipairs(tabela_pojazdyUrzad_logs) do
        if _FORV_11_ >= k and _FORV_11_ <= n then
          xY = xY + 1
          dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 169 / zoom + 71 / zoom * (xY - 1), 784 / zoom, 67 / zoom, 18 / zoom, tocolor(60, 60, 60, 50))
          dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 170 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
          dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 175 / zoom + 71 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 18 / zoom, tocolor(23, 23, 23, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 188 / zoom + 71 / zoom * (xY - 1), 1 / zoom, 30 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 218 / zoom + 71 / zoom * (xY - 1), 15 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
          if _FORV_12_.uid == getElementData(localPlayer, "player:sid") then
            dxDrawImage(windowPos.x + 280 / zoom, windowPos.y + 185 / zoom + 71 / zoom * (xY - 1), 35 / zoom, 35 / zoom, textures.vehicle_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
            dxDrawText("Sprzeda\197\188 pojazdu [#ffbf00" .. _FORV_12_.idauta .. "#e6e6e6] #ffbf00" .. _FORV_12_.marka .. " #e6e6e6graczowi #ffbf00" .. _FORV_12_.nick2 .. "", windowPos.x + 340 / zoom, windowPos.y + 183 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
            dxDrawText("#69ff6e+" .. przecinek(_FORV_12_.kwota) .. " #ffffffPLN", windowPos.x + 355 / zoom, windowPos.y + 234 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          elseif _FORV_12_.uid2 == getElementData(localPlayer, "player:sid") then
            dxDrawImage(windowPos.x + 280 / zoom, windowPos.y + 185 / zoom + 71 / zoom * (xY - 1), 35 / zoom, 35 / zoom, textures.vehicle_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
            dxDrawText("Kupno pojazdu [#ffbf00" .. _FORV_12_.idauta .. "#e6e6e6] #ffbf00" .. _FORV_12_.marka .. " #e6e6e6od gracza #ffbf00" .. _FORV_12_.nick .. "", windowPos.x + 340 / zoom, windowPos.y + 183 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
            dxDrawText("#ff6363-" .. przecinek(_FORV_12_.kwota) .. " #ffffffPLN", windowPos.x + 355 / zoom, windowPos.y + 234 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          end
          dxDrawText("DATA", windowPos.x, windowPos.y + 175 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          dxDrawText(_FORV_12_.date, windowPos.x, windowPos.y + 230 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
        end
      end
      dxDrawScrollBar(#tabela_pojazdyUrzad_logs, windowPos.x + 1055 / zoom, windowPos.y + 175 / zoom, 6 / zoom, 480 / zoom, m, k)
    elseif categoryLogs == "Kupno / sprzeda\197\188 pojazd\195\179w na gie\197\130dzie" then
      xY = 0
      for _FORV_11_, _FORV_12_ in ipairs(tabela_pojazdyGielda_logs) do
        if _FORV_11_ >= k and _FORV_11_ <= n then
          xY = xY + 1
          dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 169 / zoom + 71 / zoom * (xY - 1), 784 / zoom, 67 / zoom, 18 / zoom, tocolor(60, 60, 60, 50))
          dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 170 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
          dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 175 / zoom + 71 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 18 / zoom, tocolor(23, 23, 23, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 188 / zoom + 71 / zoom * (xY - 1), 1 / zoom, 30 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRectangle(windowPos.x + 332 / zoom, windowPos.y + 218 / zoom + 71 / zoom * (xY - 1), 15 / zoom, 1 / zoom, tocolor(60, 60, 60, 255))
          if _FORV_12_.markaAuta == "0" then
            _FORV_12_.markaAuta = ""
          end
          if _FORV_12_.UIDsprzedawcy == getElementData(localPlayer, "player:sid") then
            dxDrawImage(windowPos.x + 280 / zoom, windowPos.y + 185 / zoom + 71 / zoom * (xY - 1), 35 / zoom, 35 / zoom, textures.vehicle_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
            dxDrawText("Sprzeda\197\188 pojazdu [#ffbf00" .. _FORV_12_.idAuta .. "#e6e6e6] #ffbf00" .. _FORV_12_.markaAuta .. " #e6e6e6graczowi #ffbf00" .. _FORV_12_.kupujacyNick .. "", windowPos.x + 340 / zoom, windowPos.y + 183 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
            dxDrawText("#69ff6e+" .. przecinek(_FORV_12_.cena) .. " #ffffffPLN", windowPos.x + 355 / zoom, windowPos.y + 234 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          elseif _FORV_12_.kupujacyUID == getElementData(localPlayer, "player:sid") then
            dxDrawImage(windowPos.x + 280 / zoom, windowPos.y + 185 / zoom + 71 / zoom * (xY - 1), 35 / zoom, 35 / zoom, textures.vehicle_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
            dxDrawText("Kupno pojazdu [#ffbf00" .. _FORV_12_.idAuta .. "#e6e6e6] #ffbf00" .. _FORV_12_.markaAuta .. " #e6e6e6od gracza #ffbf00" .. _FORV_12_.nickSprzedawcy .. "", windowPos.x + 340 / zoom, windowPos.y + 183 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
            dxDrawText("#ff6363-" .. przecinek(_FORV_12_.cena) .. " #ffffffPLN", windowPos.x + 355 / zoom, windowPos.y + 234 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          end
          dxDrawText("DATA", windowPos.x, windowPos.y + 175 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          dxDrawText(_FORV_12_.data, windowPos.x, windowPos.y + 230 / zoom + 142 / zoom * (xY - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
        end
      end
      dxDrawScrollBar(#tabela_pojazdyGielda_logs, windowPos.x + 1055 / zoom, windowPos.y + 175 / zoom, 6 / zoom, 480 / zoom, m, k)
    end
  end
  if windows.category == "PRACE" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("PRACE", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawText("ILO\197\154\196\134 PRAC DORYWCZYCH: #fcba03" .. przecinek(#table_jobs), windowPos.x, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom + 680 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 114 / zoom, 387 / zoom, 537 / zoom, 20 / zoom, tocolor(60, 60, 60, 200))
      dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 385 / zoom, 535 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawRoundedRectangle(windowPos.x + 669 / zoom, windowPos.y + 114 / zoom, 382 / zoom, 537 / zoom, 20 / zoom, tocolor(60, 60, 60, 200))
      dxDrawRoundedRectangle(windowPos.x + 670 / zoom, windowPos.y + 115 / zoom, 380 / zoom, 535 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(table_jobs) do
        if _FORV_9_ >= k and _FORV_9_ <= n then
          xY = xY + 1
          if isMouseIn(windowPos.x + 275 / zoom, windowPos.y + 125 / zoom + 43.5 / zoom * (xY - 1), 350 / zoom, 34 / zoom) and _FORV_10_.name ~= selectJobs.name then
            dxDrawRoundedRectangle(windowPos.x + 274 / zoom, windowPos.y + 124 / zoom + 43.5 / zoom * (xY - 1), 352 / zoom, 38 / zoom, 15 / zoom, tocolor(60, 60, 60, 50))
            dxDrawRoundedRectangle(windowPos.x + 275 / zoom, windowPos.y + 125 / zoom + 43.5 / zoom * (xY - 1), 350 / zoom, 36 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
            dxDrawText(_FORV_10_.name, windowPos.x + 290 / zoom, windowPos.y + 84 / zoom + 87 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 200), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
            dxDrawText("#fcba03" .. przecinek(_FORV_10_.table[1][2]) .. " #ffffffEXP", windowPos.x, windowPos.y + 84 / zoom + 87 / zoom * (xY - 1), windowPos.x + 362 / zoom + 253 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 200), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          else
            if _FORV_10_.name == selectJobs.name then
              dxDrawRoundedRectangle(windowPos.x + 274 / zoom, windowPos.y + 124 / zoom + 43.5 / zoom * (xY - 1), 352 / zoom, 38 / zoom, 15 / zoom, tocolor(65, 65, 65, 255))
              dxDrawRoundedRectangle(windowPos.x + 275 / zoom, windowPos.y + 125 / zoom + 43.5 / zoom * (xY - 1), 350 / zoom, 36 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
            else
              dxDrawRoundedRectangle(windowPos.x + 274 / zoom, windowPos.y + 124 / zoom + 43.5 / zoom * (xY - 1), 352 / zoom, 38 / zoom, 15 / zoom, tocolor(60, 60, 60, 100))
              dxDrawRoundedRectangle(windowPos.x + 275 / zoom, windowPos.y + 125 / zoom + 43.5 / zoom * (xY - 1), 350 / zoom, 36 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
            end
            dxDrawText(_FORV_10_.name, windowPos.x + 290 / zoom, windowPos.y + 84 / zoom + 87 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
            dxDrawText("#fcba03" .. przecinek(_FORV_10_.table[1][2]) .. " #ffffffEXP", windowPos.x, windowPos.y + 84 / zoom + 87 / zoom * (xY - 1), windowPos.x + 362 / zoom + 253 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          end
        end
      end
      dxDrawScrollBar(#table_jobs, windowPos.x + 635 / zoom, windowPos.y + 135 / zoom, 5 / zoom, 500 / zoom, m, k)
      if windows.selectJobs == true then
        dxDrawText(selectJobs.name, windowPos.x + 690 / zoom, windowPos.y + 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(windowPos.x + 690 / zoom, windowPos.y + 165 / zoom, 340 / zoom, 2 / zoom, 2 / zoom, tocolor(255, 187, 0, 255))
        if isMouseIn(windowPos.x + 915 / zoom, windowPos.y + 122 / zoom, 115 / zoom, 35 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 914 / zoom, windowPos.y + 121 / zoom, 117 / zoom, 37 / zoom, 10 / zoom, tocolor(50, 50, 50, 255))
          dxDrawRoundedRectangle(windowPos.x + 915 / zoom, windowPos.y + 122 / zoom, 115 / zoom, 35 / zoom, 10 / zoom, tocolor(22, 22, 22, 255))
          dxDrawImage(windowPos.x + 922 / zoom, windowPos.y + 125 / zoom, 30 / zoom, 30 / zoom, textures.ranking_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
          dxDrawText("RANKING", windowPos.x + 962 / zoom, windowPos.y + 78 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(windowPos.x + 914 / zoom, windowPos.y + 121 / zoom, 117 / zoom, 37 / zoom, 10 / zoom, tocolor(60, 60, 60, 255))
          dxDrawRoundedRectangle(windowPos.x + 915 / zoom, windowPos.y + 122 / zoom, 115 / zoom, 35 / zoom, 10 / zoom, tocolor(25, 25, 25, 255))
          dxDrawImage(windowPos.x + 922 / zoom, windowPos.y + 125 / zoom, 30 / zoom, 30 / zoom, textures.ranking_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          dxDrawText("RANKING", windowPos.x + 962 / zoom, windowPos.y + 78 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
        end
        xY1 = 0
        for _FORV_9_, _FORV_10_ in ipairs(selectJobs.table) do
          if _FORV_10_[2] then
            xY1 = xY1 + 1
            dxDrawText(_FORV_10_[1], windowPos.x + 690 / zoom, windowPos.y + 175 / zoom + 52 / zoom * (xY1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
            dxDrawText(_FORV_10_[2], windowPos.x, windowPos.y + 175 / zoom + 52 / zoom * (xY1 - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
          end
        end
        if selectJobs.pos then
          dxDrawRoundedRectangle(mapPos.x - 3 / zoom, mapPos.y + 117 / zoom, mapPos.w + 6 / zoom, mapPos.h + 6 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
          dxDrawRoundedRectangle(mapPos.x - 2 / zoom, mapPos.y + 118 / zoom, mapPos.w + 4 / zoom, mapPos.h + 4 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
          cursorX, cursorY = getCursorPosition()
          if getKeyState("mouse1") and _UPVALUE0_ then
            if not cursorX then
            else
            end
            _UPVALUE1_ = -(cursorX * screenW * _UPVALUE2_ - _UPVALUE3_)
            _UPVALUE4_ = cursorY * screenH * _UPVALUE2_ - _UPVALUE5_
            _UPVALUE1_ = math.max(-4000, math.min(4000, _UPVALUE1_))
            _UPVALUE4_ = math.max(-4000, math.min(4000, _UPVALUE4_))
          end
          dxDrawImageSection(mapPos.x, mapPos.y + 120 / zoom, mapPos.w, mapPos.h, (4000 + _UPVALUE1_) * _UPVALUE6_ - mapPos.w / 2 * _UPVALUE2_, (4000 - _UPVALUE4_) * _UPVALUE6_ - mapPos.h / 2 * _UPVALUE2_, mapPos.w * _UPVALUE2_, mapPos.h * _UPVALUE2_, texturesMap.map, 0, 0, 0, tocolor(255, 255, 255, 255))
          dxDrawImage(math.max(mapPos.x + mapPos.w / 2 - mapPos.w / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.x + mapPos.w / 2 + mapPos.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(selectJobs.pos[1], selectJobs.pos[2]))) - math.floor(38 / zoom) / 2, math.max(mapPos.y + 120 / zoom + mapPos.h / 2 - mapPos.h / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.y + 120 / zoom + mapPos.h / 2 + mapPos.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(selectJobs.pos[1], selectJobs.pos[2]))) - math.floor(38 / zoom) / 2, math.floor(30 / zoom), math.floor(30 / zoom), textures.job_blips, 0, 0, 0, tocolor(255, 255, 255, 255))
          if isMouseIn(windowPos.x + 785 / zoom, windowPos.y + 595 / zoom, 150 / zoom, 35 / zoom) then
            dxDrawText("TEPNIJ SI\196\152 DO PRACY", windowPos.x + 1360 / zoom, windowPos.y + 604 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, false, false)
          else
            dxDrawText("TEPNIJ SI\196\152 DO PRACY", windowPos.x + 1360 / zoom, windowPos.y + 605 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "top", false, false, false, false, false)
          end
        end
      end
    end
  end
  if windows.category == "RANKING PRACY" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.ranking_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("RANKING PRACY: #fcba03" .. selectJobs.name .. "", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    if trwaLadowanie == true then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      if isMouseIn(windowPos.x + 1020 / zoom, windowPos.y + 37 / zoom, 35 / zoom, 35 / zoom) then
        dxDrawImage(windowPos.x + 1020 / zoom, windowPos.y + 37 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(252, 186, 3, 200), false)
      else
        dxDrawImage(windowPos.x + 1020 / zoom, windowPos.y + 37 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(252, 186, 3, 255), false)
      end
      xY2 = 0
      for _FORV_10_, _FORV_11_ in pairs(earnData) do
        if _FORV_10_ >= k and _FORV_10_ <= n then
          xY2 = xY2 + 1
          dxDrawRoundedRectangle(windowPos.x + 290 / zoom, windowPos.y + 135 / zoom + 62 / zoom * (xY2 - 1), 750 / zoom, 30 / zoom, 10 / zoom, tocolor(45, 45, 45, 255), 2)
          if _FORV_10_ == 1 then
            rgbBar = {
              255,
              178,
              0
            }
            rgbText = {
              255,
              178,
              0
            }
          elseif _FORV_10_ == 2 then
            rgbBar = {
              169,
              166,
              172
            }
            rgbText = {
              169,
              166,
              172
            }
          elseif _FORV_10_ == 3 then
            rgbBar = {
              185,
              139,
              95
            }
            rgbText = {
              185,
              139,
              95
            }
          else
            rgbBar = {
              70,
              70,
              70
            }
            rgbText = {
              150,
              150,
              150
            }
          end
          dxDrawRoundedRectangle(windowPos.x + 290 / zoom, windowPos.y + 135 / zoom + 62 / zoom * (xY2 - 1), 20 / zoom + (_FORV_11_.totalmoney / earnDiagram.maxEarn * 715 / zoom + 15 / zoom), 30 / zoom, 10 / zoom, tocolor(rgbBar[1], rgbBar[2], rgbBar[3], 255), 2)
          dxDrawText(_FORV_10_ .. "#c7c7c7.", windowPos.x, windowPos.y + 134 / zoom + 62 / zoom * (xY2 - 1), windowPos.x + 362 / zoom - 75 / zoom, windowPos.y + 204 / zoom, tocolor(rgbText[1], rgbText[2], rgbText[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "top", false, false, false, true, false)
          dxDrawText(_FORV_11_.nick, windowPos.x + 295 / zoom, windowPos.y + 108 / zoom + 62 / zoom * (xY2 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(250, 250, 250, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "top", false, false, false)
          dxDrawText(przecinek(_FORV_11_.totalmoney) .. " EXP", windowPos.x, windowPos.y + 138 / zoom + 62 / zoom * (xY2 - 1), windowPos.x + 362 / zoom + 670 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "top", false, false, false)
        end
      end
      dxDrawScrollBar(#earnData, windowPos.x + 1053 / zoom, windowPos.y + 120 / zoom, 6 / zoom, 535 / zoom, m, k)
    end
  end
  if windows.category == "SANTORI MESSAGE" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.message_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("SANTORI MESSAGE", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 250 / zoom, 540 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
    dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 250 / zoom, 40 / zoom, 20 / zoom, tocolor(23, 23, 23, 255))
    if windows.addFriends == true then
      dxDrawText("Wybierz gracza w pobli\197\188u", windowPos.x + 277 / zoom, windowPos.y + 68 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      for _FORV_14_, _FORV_15_ in ipairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
        if _FORV_14_ >= 1 and _FORV_14_ <= 11 and _FORV_15_ ~= localPlayer and not getElementData(_FORV_15_, "spec:pos") then
          if isMouseIn(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 41.3 / zoom * (0 + 1 - 1), 245 / zoom, 35 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 41.3 / zoom * (0 + 1 - 1), 240 / zoom, 35 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
          else
            dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 41.3 / zoom * (0 + 1 - 1), 240 / zoom, 35 / zoom, 15 / zoom, tocolor(34, 34, 34, 250))
          end
          dxDrawText(getPlayerName(_FORV_15_) .. " #ff8c00(" .. math.floor((getDistanceBetweenPoints3D(getElementPosition(localPlayer)))) .. "m)", windowPos.x + 280 / zoom, windowPos.y + 155 / zoom + 82.6 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        end
      end
      if isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 615 / zoom, 250 / zoom, 40 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 615 / zoom, 250 / zoom, 40 / zoom, 20 / zoom, tocolor(20, 20, 20, 255))
        dxDrawImage(windowPos.x + 275 / zoom, windowPos.y + 625 / zoom, 20 / zoom, 20 / zoom, textures.back_arrow, 0, 0, 0, tocolor(150, 150, 150), false)
        dxDrawText("WR\195\147\196\134", windowPos.x + 300 / zoom, windowPos.y + 1069 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 615 / zoom, 250 / zoom, 40 / zoom, 20 / zoom, tocolor(23, 23, 23, 255))
        dxDrawImage(windowPos.x + 275 / zoom, windowPos.y + 625 / zoom, 20 / zoom, 20 / zoom, textures.back_arrow, 0, 0, 0, tocolor(150, 150, 150), false)
        dxDrawText("WR\195\147\196\134", windowPos.x + 300 / zoom, windowPos.y + 1069 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      end
    else
      if isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 615 / zoom, 250 / zoom, 40 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 615 / zoom, 250 / zoom, 40 / zoom, 20 / zoom, tocolor(20, 20, 20, 255))
        dxDrawText("+", windowPos.x + 275 / zoom, windowPos.y + 1071 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 170, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
        dxDrawText("Dodaj znajomego", windowPos.x + 295 / zoom, windowPos.y + 1069 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 615 / zoom, 250 / zoom, 40 / zoom, 20 / zoom, tocolor(23, 23, 23, 255))
        dxDrawText("+", windowPos.x + 275 / zoom, windowPos.y + 1071 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
        dxDrawText("Dodaj znajomego", windowPos.x + 295 / zoom, windowPos.y + 1069 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      end
      dxDrawText("ZNAJOMI: #fcba03" .. #friends_table, windowPos.x + 277 / zoom, windowPos.y + 68 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(friends_table) do
        if _FORV_9_ >= k and _FORV_9_ <= n then
          xY = xY + 1
          if isMouseIn(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 65 / zoom * (xY - 1), 240 / zoom, 60 / zoom) and messageUser.uid ~= _FORV_10_[1] then
            dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 65 / zoom * (xY - 1), 240 / zoom, 60 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
            if friends_table[_FORV_9_][4] ~= false then
              dxDrawImage(windowPos.x + 275 / zoom, windowPos.y + 165 / zoom + 65 / zoom * (xY - 1), 50 / zoom, 50 / zoom, friends_table[_FORV_9_][4], 0, 0, 0, tocolor(220, 220, 220, 255), false)
            else
              dxDrawImage(windowPos.x + 275 / zoom, windowPos.y + 165 / zoom + 65 / zoom * (xY - 1), 50 / zoom, 50 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(220, 220, 220, 255), false)
            end
          else
            if messageUser.uid == _FORV_10_[1] then
              dxDrawRoundedRectangle(windowPos.x + 269 / zoom, windowPos.y + 159 / zoom + 65 / zoom * (xY - 1), 242 / zoom, 62 / zoom, 15 / zoom, tocolor(60, 60, 60, 150))
              dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 65 / zoom * (xY - 1), 240 / zoom, 60 / zoom, 15 / zoom, tocolor(25, 25, 25, 250))
            else
              dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 65 / zoom * (xY - 1), 240 / zoom, 60 / zoom, 15 / zoom, tocolor(34, 34, 34, 250))
            end
            if friends_table[_FORV_9_][4] ~= false then
              dxDrawImage(windowPos.x + 275 / zoom, windowPos.y + 165 / zoom + 65 / zoom * (xY - 1), 50 / zoom, 50 / zoom, friends_table[_FORV_9_][4], 0, 0, 0, tocolor(255, 255, 255, 255), false)
            else
              dxDrawImage(windowPos.x + 275 / zoom, windowPos.y + 165 / zoom + 65 / zoom * (xY - 1), 50 / zoom, 50 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
            end
          end
          if _FORV_10_[3] == 0 then
            colorNickFriend = 150
          else
            colorNickFriend = 230
          end
          dxDrawText(_FORV_10_[2], windowPos.x + 335 / zoom, windowPos.y + 150 / zoom + 130 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(colorNickFriend, colorNickFriend, colorNickFriend, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_10_[2], windowPos.x + 335 / zoom, windowPos.y + 150 / zoom + 130 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(_FORV_10_[7][1], _FORV_10_[7][2], _FORV_10_[7][3], 100), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, true, false)
          if _FORV_10_[3] == 2 then
            status = "Nowa wiadomo\197\155\196\135"
            color = {
              255,
              187,
              0
            }
          elseif _FORV_10_[3] == 1 then
            status = "Online"
            color = {
              0,
              166,
              6
            }
            dxDrawImage(windowPos.x + 304 / zoom, windowPos.y + 195 / zoom + 65 / zoom * (xY - 1), 20 / zoom, 20 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(30, 30, 30, 255), false)
            dxDrawImage(windowPos.x + 308 / zoom, windowPos.y + 199 / zoom + 65 / zoom * (xY - 1), 12 / zoom, 12 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(0, 255, 0, 255), false)
          elseif _FORV_10_[3] == 0 then
            status = _FORV_10_[5]
            color = {
              120,
              120,
              120
            }
          end
          dxDrawText(status, windowPos.x + 335 / zoom, windowPos.y + 203 / zoom + 130 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(color[1], color[2], color[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "left", "center", false, false, false, true, false)
        end
      end
    end
    dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
    dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 55 / zoom, 20 / zoom, tocolor(23, 23, 23, 255))
    if windows.message == "USTAWIENIA MENU" then
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 15))
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 55 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 25))
      dxDrawText(messageUser.nickOrginal .. " #a3a3a3(" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText(messageUser.nickOrginal .. " (" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 100), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      if messageUser.avatar ~= false then
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom) then
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 200), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("Wr\195\179\196\135", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText("Wr\195\179\196\135", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]), false)
      end
      if getPlayerFromName(messageUser.nickOrginal) then
        status = "Online"
        color = {
          0,
          166,
          6
        }
        dxDrawImage(windowPos.x + 566 / zoom, windowPos.y + 146 / zoom, 20 / zoom, 20 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(25, 25, 25, 255), false)
        dxDrawImage(windowPos.x + 570 / zoom, windowPos.y + 150 / zoom, 12 / zoom, 12 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      elseif messageUser.active == 0 then
        status = "Aktywny(a) " .. messageUser.lastOnline
        color = {
          120,
          120,
          120
        }
      end
      dxDrawText(status, windowPos.x + 592 / zoom, windowPos.y + 105 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(color[1], color[2], color[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(table_settings_message) do
        xY = xY + 1
        if isMouseIn(windowPos.x + 540 / zoom, windowPos.y + 180 / zoom + 55 / zoom * (xY - 1), 500 / zoom, 50 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 540 / zoom, windowPos.y + 180 / zoom + 55 / zoom * (xY - 1), 500 / zoom, 50 / zoom, 20 / zoom, tocolor(25, 25, 25, 190))
        else
          dxDrawRoundedRectangle(windowPos.x + 540 / zoom, windowPos.y + 180 / zoom + 55 / zoom * (xY - 1), 500 / zoom, 50 / zoom, 20 / zoom, tocolor(25, 25, 25, 120))
        end
        dxDrawText(_FORV_10_.name, windowPos.x + 603 / zoom, windowPos.y + 208 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawImage(windowPos.x + 550 / zoom, windowPos.y + 185 / zoom + 55 / zoom * (xY - 1), 40 / zoom, 40 / zoom, _FORV_10_.img, 0, 0, 0, tocolor(_FORV_10_.colorImg[1], _FORV_10_.colorImg[2], _FORV_10_.colorImg[3], 255), false)
      end
    elseif windows.message == "Zmie\197\132 ikon\196\153 emoji" then
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 15))
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 55 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 25))
      dxDrawText(messageUser.nickOrginal .. " #a3a3a3(" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText(messageUser.nickOrginal .. " (" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 100), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      if messageUser.avatar ~= false then
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom) then
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 200), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("Wr\195\179\196\135", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText("Wr\195\179\196\135", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]), false)
      end
      if getPlayerFromName(messageUser.nickOrginal) then
        status = "Online"
        color = {
          0,
          166,
          6
        }
        dxDrawImage(windowPos.x + 566 / zoom, windowPos.y + 146 / zoom, 20 / zoom, 20 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(25, 25, 25, 255), false)
        dxDrawImage(windowPos.x + 570 / zoom, windowPos.y + 150 / zoom, 12 / zoom, 12 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      elseif messageUser.active == 0 then
        status = "Aktywny(a) " .. messageUser.lastOnline
        color = {
          120,
          120,
          120
        }
      end
      dxDrawText(status, windowPos.x + 592 / zoom, windowPos.y + 105 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(color[1], color[2], color[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
      dxDrawText("ZMIANA EMOJI - #0094117,500 #ffffffPLN", windowPos.x + 1220 / zoom, windowPos.y + 200 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      xY = 0
      xX = 0
      for _FORV_9_, _FORV_10_ in ipairs(table_settings_emoji) do
        xX = xX + 1
        if xX > 6 then
          xX = 1
          xY = xY + 1
        end
        if messageUserSettings.emoji1 == _FORV_10_[2] then
          dxDrawRoundedRectangle(windowPos.x + 551.5 / zoom + 80 / zoom * (xX - 1), windowPos.y + 296.5 / zoom + 70 / zoom * (xY - 1), 67 / zoom, 67 / zoom, 20 / zoom, tocolor(60, 60, 60, 150))
          dxDrawRoundedRectangle(windowPos.x + 552.5 / zoom + 80 / zoom * (xX - 1), windowPos.y + 297.5 / zoom + 70 / zoom * (xY - 1), 65 / zoom, 65 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        end
        if isMouseIn(windowPos.x + 560 / zoom + 80 / zoom * (xX - 1), windowPos.y + 305 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom) then
          dxDrawImage(windowPos.x + 560 / zoom + 80 / zoom * (xX - 1), windowPos.y + 305 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom, _FORV_10_[1], 0, 0, 0, tocolor(_FORV_10_[3], _FORV_10_[4], _FORV_10_[5], 190), false)
        else
          dxDrawImage(windowPos.x + 560 / zoom + 80 / zoom * (xX - 1), windowPos.y + 305 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom, _FORV_10_[1], 0, 0, 0, tocolor(_FORV_10_[3], _FORV_10_[4], _FORV_10_[5], 255), false)
        end
      end
    elseif windows.message == "Edytuj nick" then
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 15))
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 55 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 25))
      dxDrawText(messageUser.nickOrginal .. " #a3a3a3(" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText(messageUser.nickOrginal .. " (" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 100), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      if messageUser.avatar ~= false then
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom) then
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 200), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("Wr\195\179\196\135", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText("Wr\195\179\196\135", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]), false)
      end
      if getPlayerFromName(messageUser.nickOrginal) then
        status = "Online"
        color = {
          0,
          166,
          6
        }
        dxDrawImage(windowPos.x + 566 / zoom, windowPos.y + 146 / zoom, 20 / zoom, 20 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(25, 25, 25, 255), false)
        dxDrawImage(windowPos.x + 570 / zoom, windowPos.y + 150 / zoom, 12 / zoom, 12 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      elseif messageUser.active == 0 then
        status = "Aktywny(a) " .. messageUser.lastOnline
        color = {
          120,
          120,
          120
        }
      end
      dxDrawText(status, windowPos.x + 592 / zoom, windowPos.y + 105 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(color[1], color[2], color[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
      dxDrawText("ZMIANA NICKU - #00941115,000 #ffffffPLN", windowPos.x + 1220 / zoom, windowPos.y + 200 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      if messageUser.avatar ~= false then
        dxDrawImage(windowPos.x + 600 / zoom, windowPos.y + 235 / zoom, 80 / zoom, 80 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + 600 / zoom, windowPos.y + 235 / zoom, 80 / zoom, 80 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText(messageUser.nickOrginal, windowPos.x + 690 / zoom, windowPos.y + 295 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("ZMIE\197\131 NICK", windowPos.x + 705 / zoom, windowPos.y + 335 / zoom, 170 / zoom, 45 / zoom, 255, 1)
      exports.ST_buttons:dxCreateButton("USU\197\131 NICK", windowPos.x + 705 / zoom, windowPos.y + 395 / zoom, 170 / zoom, 45 / zoom, 255, 1)
    elseif windows.message == "Zmie\197\132 kolor czatu" then
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 15))
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 55 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 25))
      dxDrawText(messageUser.nickOrginal .. " #a3a3a3(" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText(messageUser.nickOrginal .. " (" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 100), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      if messageUser.avatar ~= false then
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom) then
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 200), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("Wr\195\179\196\135", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText("Wr\195\179\196\135", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]), false)
      end
      if getPlayerFromName(messageUser.nickOrginal) then
        status = "Online"
        color = {
          0,
          166,
          6
        }
        dxDrawImage(windowPos.x + 566 / zoom, windowPos.y + 146 / zoom, 20 / zoom, 20 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(25, 25, 25, 255), false)
        dxDrawImage(windowPos.x + 570 / zoom, windowPos.y + 150 / zoom, 12 / zoom, 12 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      elseif messageUser.active == 0 then
        status = "Aktywny(a) " .. messageUser.lastOnline
        color = {
          120,
          120,
          120
        }
      end
      dxDrawText(status, windowPos.x + 592 / zoom, windowPos.y + 105 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(color[1], color[2], color[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
      dxDrawText("ZMIANA KOLORU CZATU - #00941117,500 #ffffffPLN", windowPos.x + 1220 / zoom, windowPos.y + 200 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      xY = 0
      xX = 0
      for _FORV_9_, _FORV_10_ in ipairs(table_settings_color) do
        xX = xX + 1
        if xX > 7 then
          xX = 1
          xY = xY + 1
        end
        dxDrawImage(windowPos.x + 540 / zoom + 72.5 / zoom * (xX - 1), windowPos.y + 310 / zoom + 72.5 / zoom * (xY - 1), 65 / zoom, 65 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(_FORV_10_[1], _FORV_10_[2], _FORV_10_[3], 255), false)
        if tonumber(_FORV_10_[1]) == tonumber(messageUserSettings.color[1]) and tonumber(_FORV_10_[2]) == tonumber(messageUserSettings.color[2]) and tonumber(_FORV_10_[3]) == tonumber(messageUserSettings.color[3]) then
          dxDrawText("\226\156\148", windowPos.x + 783 / zoom + 145 / zoom * (xX - 1), windowPos.y + 483 / zoom + 145 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        end
      end
    elseif windows.message == "Wy\197\155lij przelew" then
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 15))
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 55 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 25))
      dxDrawText(messageUser.nickOrginal .. " #a3a3a3(" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText(messageUser.nickOrginal .. " (" .. messageUser.uid .. ")", windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 100), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      if messageUser.avatar ~= false then
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom) then
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 200), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("Wr\195\179\196\135", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText("Wr\195\179\196\135", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, textures.back_arrow, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]), false)
      end
      if getPlayerFromName(messageUser.nickOrginal) then
        status = "Online"
        color = {
          0,
          166,
          6
        }
        dxDrawImage(windowPos.x + 566 / zoom, windowPos.y + 146 / zoom, 20 / zoom, 20 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(25, 25, 25, 255), false)
        dxDrawImage(windowPos.x + 570 / zoom, windowPos.y + 150 / zoom, 12 / zoom, 12 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      elseif messageUser.active == 0 then
        status = "Aktywny(a) " .. messageUser.lastOnline
        color = {
          120,
          120,
          120
        }
      end
      dxDrawText(status, windowPos.x + 592 / zoom, windowPos.y + 105 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(color[1], color[2], color[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
      dxDrawText("Przelew do #ebe534" .. messageUser.nick, windowPos.x + 1220 / zoom, windowPos.y + 220 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
      dxDrawText("STAN KONTA", windowPos.x + 1220 / zoom, windowPos.y + 340 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos.x + 590 / zoom, windowPos.y + 300 / zoom, 400 / zoom, 50 / zoom, 17 / zoom, tocolor(25, 25, 25, 120))
      for _FORV_9_, _FORV_10_ in ipairs(table_users) do
        dxDrawText("#009411" .. przecinek(_FORV_10_.bank_money) .. " #ffffffPLN", windowPos.x + 1220 / zoom, windowPos.y + 450 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      end
      exports.ST_buttons:dxCreateButton("WY\197\154LIJ", windowPos.x + 705 / zoom, windowPos.y + 440 / zoom, 170 / zoom, 50 / zoom, 255, 1)
    elseif windows.message == "KONWERSACJA" then
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 15))
      dxDrawRoundedRectangle(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 55 / zoom, 20 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 25))
      dxDrawText(messageUser.nick, windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
      dxDrawText("" .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. messageUser.nick, windowPos.x + 592 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 100), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      if isMouseIn(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom) then
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, texturesMessage.info_icon, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 200), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText("Informacje o konwersacji", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, true, false, false)
          dxDrawText("Informacje o konwersacji", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawImage(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom, texturesMessage.info_icon, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]), false)
      end
      if messageUser.avatar ~= false then
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + 535 / zoom, windowPos.y + 117.5 / zoom, 50 / zoom, 50 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if getPlayerFromName(messageUser.nickOrginal) then
        status = "Online"
        color = {
          0,
          166,
          6
        }
        dxDrawImage(windowPos.x + 566 / zoom, windowPos.y + 146 / zoom, 20 / zoom, 20 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(25, 25, 25, 255), false)
        dxDrawImage(windowPos.x + 570 / zoom, windowPos.y + 150 / zoom, 12 / zoom, 12 / zoom, texturesMessage.circle1, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      elseif messageUser.active == 0 then
        status = "Aktywny(a) " .. messageUser.lastOnline
        color = {
          120,
          120,
          120
        }
      end
      dxDrawText(status, windowPos.x + 592 / zoom, windowPos.y + 105 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(color[1], color[2], color[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
      messageEditBox = exports.ST_gui:getCustomEditboxText("message")
      if loadingTimeMessage then
        if getTickCount() - tick > 1000 then
          tick = getTickCount()
          loadingTimeMessage = loadingTimeMessage - 1
        end
        dxDrawText("Mo\197\188esz wys\197\130a\196\135 kolejn\196\133 wiadmo\197\155\196\135 za " .. loadingTimeMessage .. " sekund", windowPos.x + 830 / zoom, windowPos.y + 1122 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(150, 150, 150, 255), 0.9 / zoom, exports.ST_gui:getGUIFont("normal10"), "left", "center", false, false, false, false, false)
        if messageEditBox:len() > 0 and messageEditBox:len() < 45 then
          dxDrawImage(windowPos.x + 1010 / zoom, windowPos.y + 610 / zoom, 30 / zoom, 30 / zoom, texturesMessage.send_icon, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 150), false)
        else
          dxDrawImage(windowPos.x + 1010 / zoom, windowPos.y + 610 / zoom, 30 / zoom, 30 / zoom, messageUserSettings.emojiTextures[1], 0, 0, 0, tocolor(messageUserSettings.emojiTextures[2], messageUserSettings.emojiTextures[3], messageUserSettings.emojiTextures[4], 150), false)
        end
        if loadingTimeMessage < 1 then
          loadingTimeMessage = false
        end
      elseif messageEditBox:len() > 0 and messageEditBox:len() < 45 then
        dxDrawImage(windowPos.x + 1010 / zoom, windowPos.y + 610 / zoom, 30 / zoom, 30 / zoom, texturesMessage.send_icon, 0, 0, 0, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 255), false)
        if isMouseIn(windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom) and getKeyState("enter") then
          sendMessage()
        end
      else
        dxDrawImage(windowPos.x + 1010 / zoom, windowPos.y + 610 / zoom, 30 / zoom, 30 / zoom, messageUserSettings.emojiTextures[1], 0, 0, 0, tocolor(messageUserSettings.emojiTextures[2], messageUserSettings.emojiTextures[3], messageUserSettings.emojiTextures[4], 255), false)
      end
      xY = 0
      if #table_message == 0 then
        if messageUser.avatar ~= false then
          dxDrawImage(windowPos.x + 740 / zoom, windowPos.y + 245 / zoom, 100 / zoom, 100 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        else
          dxDrawImage(windowPos.x + 740 / zoom, windowPos.y + 245 / zoom, 100 / zoom, 100 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
        dxDrawText(messageUser.nick, windowPos.x + 1220 / zoom, windowPos.y + 550 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, false, false)
        dxDrawText("Jeste\197\155cie znajomymi na Santori Message", windowPos.x + 1220 / zoom, windowPos.y + 620 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, false, false)
      else
        for _FORV_9_, _FORV_10_ in ipairs(table_message) do
          if _FORV_9_ >= k7 and _FORV_9_ <= n7 then
            xY = xY - 1
            if _FORV_10_[1] == getElementData(localPlayer, "player:sid") then
              if _FORV_10_[3] == ":like:" or _FORV_10_[3] == ":happy:" or _FORV_10_[3] == ":santorimessage:" or _FORV_10_[3] == ":heartface:" or _FORV_10_[3] == ":kissing:" or _FORV_10_[3] == ":lol:" or _FORV_10_[3] == ":happy1:" or _FORV_10_[3] == ":punch:" or _FORV_10_[3] == ":peace:" or _FORV_10_[3] == ":muscle:" or _FORV_10_[3] == ":okay:" or _FORV_10_[3] == ":heart:" then
                if _FORV_10_[3] == ":like:" then
                  emojiIcon = texturesMessage.like_emoji
                  color = {
                    messageUserSettings.color[1],
                    messageUserSettings.color[2],
                    messageUserSettings.color[3]
                  }
                elseif _FORV_10_[3] == ":happy:" then
                  emojiIcon = texturesMessage.happy_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":santorimessage:" then
                  emojiIcon = textures.message_icon
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":heartface:" then
                  emojiIcon = texturesMessage.heartface_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":kissing:" then
                  emojiIcon = texturesMessage.kissing_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":lol:" then
                  emojiIcon = texturesMessage.lol_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":happy1:" then
                  emojiIcon = texturesMessage.happy1_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":punch:" then
                  emojiIcon = texturesMessage.punch_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":peace:" then
                  emojiIcon = texturesMessage.peace_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":muscle:" then
                  emojiIcon = texturesMessage.muscle_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":okay:" then
                  emojiIcon = texturesMessage.okay_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":heart:" then
                  emojiIcon = texturesMessage.heart_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                end
                dxDrawImage(windowPos.x + 1005 / zoom, windowPos.y + 555 / zoom + 47 / zoom * (xY + 1), 40 / zoom, 40 / zoom, emojiIcon, 0, 0, 0, tocolor(color[1], color[2], color[3], 255), false)
              elseif string.sub(_FORV_10_[3], 1, 9) == ":gfsdahg:" then
                dxDrawText("Przelano " .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. string.sub(_FORV_10_[3], 11, 500) .. " #bebebePLN do " .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. messageUser.nick, windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              elseif string.sub(_FORV_10_[3], 1, 13) == ":removeNick:" then
                dxDrawText("Usuni\196\153to nick u\197\188ytkownika " .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. messageUser.nick, windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              elseif string.sub(_FORV_10_[3], 1, 12) == ":changeNick:" then
                dxDrawText("Ustawiono nick u\197\188ytkownika " .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. messageUser.nickOrginal .. " #bebebejako " .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. string.sub(_FORV_10_[3], 13, 999), windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              elseif string.sub(_FORV_10_[3], 1, 13) == ":changeColor:" then
                dxDrawText("" .. string.format("#%.2X%.2X%.2X", split(string.sub(_FORV_10_[3], 14, 999), ",")[1], split(string.sub(_FORV_10_[3], 14, 999), ",")[2], split(string.sub(_FORV_10_[3], 14, 999), ",")[3]) .. "Zmieniono kolory czatu", windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              elseif string.sub(_FORV_10_[3], 1, 13) == ":changeEmoji:" then
                dxDrawText("#bebebeUstawiono nowe " .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "emoji", windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              else
                dxDrawRoundedRectangle(windowPos.x + 1020 / zoom - 1 * dxGetTextWidth(_FORV_10_[3], 1, exports.ST_gui:getGUIFont("normal12")) / zoom, windowPos.y + 559 / zoom + 47 / zoom * (xY + 1), dxGetTextWidth(_FORV_10_[3], 1, exports.ST_gui:getGUIFont("normal12")) / zoom + 20 / zoom, 30 / zoom, 15 / zoom, tocolor(messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3], 150))
                if isMouseIn(windowPos.x + 1020 / zoom - 1 * dxGetTextWidth(_FORV_10_[3], 1, exports.ST_gui:getGUIFont("normal12")) / zoom, windowPos.y + 559 / zoom + 47 / zoom * (xY + 1), dxGetTextWidth(_FORV_10_[3], 1, exports.ST_gui:getGUIFont("normal12")) / zoom + 20 / zoom, 30 / zoom) then
                  if string.sub(_FORV_10_[5], 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
                    last_onlineMess = "Dzi\197\155 o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "Wczoraj o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "2 dni temu o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "3 dni temu o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "4 dni temu o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "5 dni temu o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  else
                    last_onlineMess = "" .. string.sub(_FORV_10_[5], 1, 10) .. ""
                  end
                  dxDrawText("" .. last_onlineMess, windowPos.x, windowPos.y + 898 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom + 660 / zoom, windowPos.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal10"), "right", "center", false, false, false, false, false)
                end
                dxDrawText("" .. _FORV_10_[3], windowPos.x, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom + 668 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "right", "center", false, false, false, false, false)
              end
            end
            if _FORV_10_[1] == messageUser.uid then
              if _FORV_10_[3] == ":like:" or _FORV_10_[3] == ":happy:" or _FORV_10_[3] == ":santorimessage:" or _FORV_10_[3] == ":heartface:" or _FORV_10_[3] == ":kissing:" or _FORV_10_[3] == ":lol:" or _FORV_10_[3] == ":happy1:" or _FORV_10_[3] == ":punch:" or _FORV_10_[3] == ":peace:" or _FORV_10_[3] == ":muscle:" or _FORV_10_[3] == ":okay:" or _FORV_10_[3] == ":heart:" then
                if _FORV_10_[3] == ":like:" then
                  emojiIcon = texturesMessage.like_emoji
                  color = {
                    messageUserSettings.color[1],
                    messageUserSettings.color[2],
                    messageUserSettings.color[3]
                  }
                elseif _FORV_10_[3] == ":happy:" then
                  emojiIcon = texturesMessage.happy_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":santorimessage:" then
                  emojiIcon = textures.message_icon
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":heartface:" then
                  emojiIcon = texturesMessage.heartface_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":kissing:" then
                  emojiIcon = texturesMessage.kissing_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":lol:" then
                  emojiIcon = texturesMessage.lol_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":happy1:" then
                  emojiIcon = texturesMessage.happy1_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":punch:" then
                  emojiIcon = texturesMessage.punch_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":peace:" then
                  emojiIcon = texturesMessage.peace_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":muscle:" then
                  emojiIcon = texturesMessage.muscle_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":okay:" then
                  emojiIcon = texturesMessage.okay_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                elseif _FORV_10_[3] == ":heart:" then
                  emojiIcon = texturesMessage.heart_emoji
                  color = {
                    255,
                    255,
                    255
                  }
                end
                dxDrawImage(windowPos.x + 595 / zoom, windowPos.y + 555 / zoom + 47 / zoom * (xY + 1), 40 / zoom, 40 / zoom, emojiIcon, 0, 0, 0, tocolor(color[1], color[2], color[3], 255), false)
              elseif string.sub(_FORV_10_[3], 1, 9) == ":gfsdahg:" then
                dxDrawText("" .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. messageUser.nick .. " #bebebeprzela\197\130(a) ci " .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. string.sub(_FORV_10_[3], 11, 500) .. " #bebebePLN", windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              elseif string.sub(_FORV_10_[3], 1, 13) == ":removeNick:" then
                dxDrawText("" .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. messageUser.nick .. " #bebebeusun\196\133\197\130(a) tw\195\179j nick", windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              elseif string.sub(_FORV_10_[3], 1, 12) == ":changeNick:" then
                dxDrawText("" .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. messageUser.nick .. " #bebebeustawi\197\130(a) tw\195\179j nick jako " .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. string.sub(_FORV_10_[3], 13, 999), windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              elseif string.sub(_FORV_10_[3], 1, 13) == ":changeColor:" then
                dxDrawText("" .. string.format("#%.2X%.2X%.2X", split(string.sub(_FORV_10_[3], 14, 999), ",")[1], split(string.sub(_FORV_10_[3], 14, 999), ",")[2], split(string.sub(_FORV_10_[3], 14, 999), ",")[3]) .. "" .. messageUser.nick .. " zmieni\197\130(a) kolory czatu", windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              elseif string.sub(_FORV_10_[3], 1, 13) == ":changeEmoji:" then
                dxDrawText("" .. string.format("#%.2X%.2X%.2X", messageUserSettings.color[1], messageUserSettings.color[2], messageUserSettings.color[3]) .. "" .. messageUser.nick .. " #bebebeustawi\197\130(a) nowe emoji", windowPos.x + 1220 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("light12"), "center", "center", false, false, false, true, false)
              else
                dxDrawRoundedRectangle(windowPos.x + 590 / zoom, windowPos.y + 559 / zoom + 47 / zoom * (xY + 1), dxGetTextWidth(_FORV_10_[3], 1, exports.ST_gui:getGUIFont("normal12")) / zoom + 20 / zoom, 30 / zoom, 15 / zoom, tocolor(28, 28, 28, 155))
                if isMouseIn(windowPos.x + 590 / zoom, windowPos.y + 559 / zoom + 47 / zoom * (xY + 1), dxGetTextWidth(_FORV_10_[3], 1, exports.ST_gui:getGUIFont("normal12")) / zoom + 20 / zoom, 30 / zoom) then
                  if string.sub(_FORV_10_[5], 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
                    last_onlineMess = "Dzi\197\155 o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "Wczoraj o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "2 dni temu o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "3 dni temu o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "4 dni temu o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  elseif string.sub(_FORV_10_[5], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_10_[5], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
                    last_onlineMess = "5 dni temu o " .. string.sub(_FORV_10_[5], 12, 16) .. ""
                  else
                    last_onlineMess = "" .. string.sub(_FORV_10_[5], 1, 10) .. ""
                  end
                  dxDrawText("" .. last_onlineMess, windowPos.x + 600 / zoom, windowPos.y + 898 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal10"), "left", "center", false, false, false, false, false)
                end
                dxDrawText("" .. _FORV_10_[3], windowPos.x + 600 / zoom, windowPos.y + 948 / zoom + 94 / zoom * (xY + 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, false, false)
              end
              if string.sub(_FORV_10_[3], 1, 9) ~= ":gfsdahg:" and string.sub(_FORV_10_[3], 1, 13) ~= ":removeNick:" and string.sub(_FORV_10_[3], 1, 12) ~= ":changeNick:" and string.sub(_FORV_10_[3], 1, 13) ~= ":changeColor:" and string.sub(_FORV_10_[3], 1, 13) ~= ":changeEmoji:" then
                if messageUser.avatar ~= false then
                  dxDrawImage(windowPos.x + 540 / zoom, windowPos.y + 553 / zoom + 47 / zoom * (xY + 1), 43 / zoom, 43 / zoom, messageUser.avatar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
                else
                  dxDrawImage(windowPos.x + 540 / zoom, windowPos.y + 553 / zoom + 47 / zoom * (xY + 1), 43 / zoom, 43 / zoom, texturesMessage.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
                end
              end
            end
          end
        end
      end
    end
  end
  if windows.category == "USTAWIENIA" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.settings_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("USTAWIENIA - #ffbf00" .. categorySettings, windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    for _FORV_9_, _FORV_10_ in pairs(dxGetStatus()) do
      if _FORV_9_ == "VideoCardName" then
        dxDrawText(_FORV_10_, windowPos.x, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom + 690 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "right", "center", false, false, false, false, false)
      end
    end
    dxDrawRoundedRectangle(windowPos.x + 250 / zoom, windowPos.y + 100 / zoom, 818 / zoom, 60 / zoom, 20 / zoom, tocolor(25, 25, 25, 255))
    xX = 0
    for _FORV_10_, _FORV_11_ in ipairs({
      {
        "Rozgrywka",
        textures.user_icon
      },
      {
        "Shadery",
        textures.graphic_card_icon
      },
      {"FPS", false},
      {
        "Celownik",
        texturesCrosshair.c_1
      },
      {
        "PIN logowania",
        textures.lock_icon
      }
    }) do
      xX = xX + 1
      if categorySettings == _FORV_11_[1] then
        dxDrawRoundedRectangle(windowPos.x + 515 / zoom + 60 / zoom * (xX - 1), windowPos.y + 106.5 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(255, 191, 0, 255))
      end
      dxDrawRoundedRectangle(windowPos.x + 516 / zoom + 60 / zoom * (xX - 1), windowPos.y + 107.5 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
      if _FORV_11_[1] == "FPS" then
        dxDrawText("FPS", windowPos.x + 643 / zoom, windowPos.y + 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      else
        dxDrawImage(windowPos.x + 521 / zoom + 60 / zoom * (xX - 1), windowPos.y + 112.5 / zoom, 35 / zoom, 35 / zoom, _FORV_11_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(windowPos.x + 516 / zoom + 60 / zoom * (xX - 1), windowPos.y + 107.5 / zoom, 45 / zoom, 45 / zoom) and isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText(_FORV_11_[1], cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, true, false)
        dxDrawText(_FORV_11_[1], cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, true, false)
      end
    end
    if categorySettings == "Celownik" then
      dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 170 / zoom, 798 / zoom, 220 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 203 / zoom, 778 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 191, 0, 255))
      dxDrawText("CELOWNIKI", windowPos.x + 274 / zoom, windowPos.y + 173 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      xY = 0
      xX = 0
      for _FORV_10_, _FORV_11_ in ipairs(table_settings) do
        xX = xX + 1
        if xX > 5 then
          xX = 1
          xY = xY + 1
        end
        if _FORV_11_[1] == settings_crosshair_id then
          dxDrawRoundedRectangle(windowPos.x + 340 / zoom + 140 / zoom * (xX - 1), windowPos.y + 299 / zoom + 88 / zoom * (xY - 1), 82 / zoom, 82 / zoom, 15 / zoom, tocolor(255, 191, 0, 255))
        end
        dxDrawRoundedRectangle(windowPos.x + 341 / zoom + 140 / zoom * (xX - 1), windowPos.y + 300 / zoom + 88 / zoom * (xY - 1), 80 / zoom, 80 / zoom, 15 / zoom, tocolor(22, 22, 22, 255))
        dxDrawImage(windowPos.x + 351 / zoom + 140 / zoom * (xX - 1), windowPos.y + 310 / zoom + 88 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_11_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 440 / zoom, 798 / zoom, 220 / zoom, 20 / zoom, tocolor(28, 28, 28, 255))
      dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 473 / zoom, 778 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 191, 0, 255))
      dxDrawText("KOLORY", windowPos.x + 274 / zoom, windowPos.y + 715 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      xY = 0
      xX = 0
      for _FORV_10_, _FORV_11_ in ipairs(table_settings_colorCrosshair) do
        xX = xX + 1
        if xX > 6 then
          xX = 1
          xY = xY + 1
        end
        dxDrawRoundedRectangle(windowPos.x + 295 / zoom + 130 / zoom * (xX - 1), windowPos.y + 575 / zoom + 88 / zoom * (xY - 1), 80 / zoom, 70 / zoom, 15 / zoom, tocolor(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], 255))
        if _FORV_10_ == settings_crosshair_color then
          dxDrawText("\226\156\148\239\184\143", windowPos.x + 315 / zoom + 130 / zoom * (xX - 1), windowPos.y + 1022 / zoom + 176 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
          dxDrawText("\226\156\148\239\184\143", windowPos.x + 315 / zoom + 130 / zoom * (xX - 1), windowPos.y + 1022 / zoom + 176 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
        end
      end
      if settings_crosshair_id == 0 then
        dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 440 / zoom, 798 / zoom, 220 / zoom, 20 / zoom, tocolor(28, 28, 28, 150))
      end
    elseif categorySettings == "PIN logowania" then
      dxDrawText("W celu dodatkowego #910000zabezpieczenia Twojego konta#e6e6e6, prosimy o ustawienie\n#ffbf00PIN'u#e6e6e6, kt\195\179ry b\196\153dzie wymagany przy ka\197\188dym logowaniu na serwer", windowPos.x + 955 / zoom, windowPos.y + 270 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      for _FORV_10_, _FORV_11_ in ipairs(table_users_settings) do
        if tonumber(_FORV_11_.pin) == 0 then
          dxDrawText("Wprowad\197\186 PIN", windowPos.x + 955 / zoom, windowPos.y + 450 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
          xX = 0
          for _FORV_15_, _FORV_16_ in ipairs(table_pinLogging) do
            xX = xX + 1
            if settings_pinLoggingNext == _FORV_15_ then
              dxDrawRoundedRectangle(windowPos.x + 514 / zoom + 60 / zoom * (xX - 1), windowPos.y + 355.5 / zoom, 49 / zoom, 49 / zoom, 15 / zoom, tocolor(255, 191, 0, 255))
            end
            dxDrawRoundedRectangle(windowPos.x + 516 / zoom + 60 / zoom * (xX - 1), windowPos.y + 357.5 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
            enteredPin1 = enteredPin .. tostring(num)
            if _FORV_15_ < #enteredPin1 - 2 then
              dxDrawText("*", windowPos.x + 532 / zoom + 60 / zoom * (xX - 1), windowPos.y + 570 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center")
            end
          end
          if #enteredPin >= 5 then
            exports.ST_buttons:dxCreateButton("ZATWIERD\197\185 PIN", windowPos.x + 550 / zoom, windowPos.y + 425 / zoom, 218 / zoom, 55 / zoom, 255, 1)
          end
        else
          dxDrawText("\226\156\148\239\184\143 Twoje konto jest zabezpieczone pinem", windowPos.x + 955 / zoom, windowPos.y + 550 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(100, 255, 100, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        end
      end
      dxDrawText("#910000UWAGA", windowPos.x + 955 / zoom, windowPos.y + 900 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
      dxDrawText("ABY ZMIENI\196\134 PIN LOGOWANIA WYMAGANE JEST PO\197\129\196\132CZENIE Z KONTEM DISCORD\nORAZ PRAWID\197\129OWY ADRES E-MAIL PRZYPISANY DO KONTA", windowPos.x + 955 / zoom, windowPos.y + 1010 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    else
      xY = 0
      for _FORV_10_, _FORV_11_ in ipairs(table_settings) do
        if _FORV_10_ >= k and _FORV_10_ <= n then
          xY = xY + 1
          if isMouseIn(windowPos.x + 285 / zoom, windowPos.y + 172 / zoom + 44.5 / zoom * (xY - 1), 740 / zoom, 35 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 268 / zoom, windowPos.y + 170 / zoom + 44.5 / zoom * (xY - 1), 774 / zoom, 41 / zoom, 18 / zoom, tocolor(80, 80, 80, 100))
            dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 172 / zoom + 44.5 / zoom * (xY - 1), 770 / zoom, 37 / zoom, 15 / zoom, tocolor(28, 28, 28, 255))
            dxDrawText(_FORV_11_[1], windowPos.x + 280 / zoom, windowPos.y + 176 / zoom + 89 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
          else
            dxDrawRoundedRectangle(windowPos.x + 268 / zoom, windowPos.y + 170 / zoom + 44.5 / zoom * (xY - 1), 774 / zoom, 41 / zoom, 18 / zoom, tocolor(60, 60, 60, 50))
            dxDrawRoundedRectangle(windowPos.x + 270 / zoom, windowPos.y + 172 / zoom + 44.5 / zoom * (xY - 1), 770 / zoom, 37 / zoom, 15 / zoom, tocolor(28, 28, 28, 255))
            dxDrawText(_FORV_11_[1], windowPos.x + 280 / zoom, windowPos.y + 176 / zoom + 89 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
          end
          if _FORV_11_[1] == "G\197\130o\197\155no\197\155\196\135 czatu g\197\130osowego" then
            dxDrawText(_FORV_11_[3] .. "%", windowPos.x, windowPos.y + 178 / zoom + 89 / zoom * (xY - 1), windowPos.x + 362 / zoom + 663 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
          elseif _FORV_11_[1] == "Limit FPS" then
            dxDrawText(_FORV_11_[3] .. " FPS", windowPos.x, windowPos.y + 178 / zoom + 89 / zoom * (xY - 1), windowPos.x + 362 / zoom + 663 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
          elseif _FORV_11_[1] == "Radio w miejscach publicznych" then
            if _FORV_11_[3] == 1 then
              textRadio = "100%"
            elseif _FORV_11_[3] == 2 then
              textRadio = "75%"
            elseif _FORV_11_[3] == 3 then
              textRadio = "50%"
            elseif _FORV_11_[3] == 4 then
              textRadio = "25%"
            elseif _FORV_11_[3] == 0 then
              textRadio = " "
              dxDrawRoundedRectangle(windowPos.x + 975 / zoom, windowPos.y + 179 / zoom + 44.5 / zoom * (xY - 1), 42 / zoom, 25 / zoom, 12 / zoom, tocolor(200, 200, 200, 50))
              dxDrawRoundedRectangle(windowPos.x + 977 / zoom, windowPos.y + 181 / zoom + 44.5 / zoom * (xY - 1), 21 / zoom, 21 / zoom, 10 / zoom, tocolor(250, 250, 250, 250))
            end
            dxDrawText(textRadio, windowPos.x, windowPos.y + 178 / zoom + 89 / zoom * (xY - 1), windowPos.x + 362 / zoom + 663 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
          elseif _FORV_11_[1] == "FXAA" then
            if _FORV_11_[3] == 1 then
            elseif _FORV_11_[3] == 2 then
            elseif _FORV_11_[3] == 3 then
            elseif _FORV_11_[3] == 4 then
            elseif _FORV_11_[3] == 0 then
              dxDrawRoundedRectangle(windowPos.x + 985 / zoom, windowPos.y + 179 / zoom + 44.5 / zoom * (xY - 1), 42 / zoom, 25 / zoom, 12 / zoom, tocolor(200, 200, 200, 50))
              dxDrawRoundedRectangle(windowPos.x + 987 / zoom, windowPos.y + 181 / zoom + 44.5 / zoom * (xY - 1), 21 / zoom, 21 / zoom, 10 / zoom, tocolor(250, 250, 250, 250))
            end
            dxDrawText(" ", windowPos.x, windowPos.y + 178 / zoom + 89 / zoom * (xY - 1), windowPos.x + 362 / zoom + 663 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
          elseif _FORV_11_[1] == "Ustaw godzin\196\153 lokalnie" then
            if ustawionaGodzina == "Realna godzina" then
              dxDrawText(ustawionaGodzina .. " " .. getRealTime().hour .. ":00", windowPos.x, windowPos.y + 178 / zoom + 89 / zoom * (xY - 1), windowPos.x + 362 / zoom + 663 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
            else
              dxDrawText(ustawionaGodzina .. ":00", windowPos.x, windowPos.y + 178 / zoom + 89 / zoom * (xY - 1), windowPos.x + 362 / zoom + 663 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
            end
          elseif _FORV_11_[3] == 1 then
            dxDrawRoundedRectangle(windowPos.x + 985 / zoom, windowPos.y + 179 / zoom + 44.5 / zoom * (xY - 1), 42 / zoom, 25 / zoom, 12 / zoom, tocolor(0, 250, 0, 100))
            dxDrawRoundedRectangle(windowPos.x + 1004 / zoom, windowPos.y + 181 / zoom + 44.5 / zoom * (xY - 1), 21 / zoom, 21 / zoom, 10 / zoom, tocolor(250, 250, 250, 250))
          else
            dxDrawRoundedRectangle(windowPos.x + 985 / zoom, windowPos.y + 179 / zoom + 44.5 / zoom * (xY - 1), 42 / zoom, 25 / zoom, 12 / zoom, tocolor(200, 200, 200, 50))
            dxDrawRoundedRectangle(windowPos.x + 987 / zoom, windowPos.y + 181 / zoom + 44.5 / zoom * (xY - 1), 21 / zoom, 21 / zoom, 10 / zoom, tocolor(250, 250, 250, 250))
          end
          if _FORV_11_[4] and isMouseIn(windowPos.x + 285 / zoom, windowPos.y + 172 / zoom + 44.5 / zoom * (xY - 1), 740 / zoom, 35 / zoom) and isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText(_FORV_11_[4]:gsub("#%x%x%x%x%x%x", ""), cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
            dxDrawText(_FORV_11_[4], cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
          end
        end
        dxDrawScrollBar(#table_settings, windowPos.x + 1055 / zoom, windowPos.y + 175 / zoom, 6 / zoom, 480 / zoom, m, k)
      end
    end
  end
  if windows.category == "KALENDARZ ADWENTOWY" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.calendary_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KALENDARZ ADWENTOWY", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    dxDrawImage(windowPos.x + 249 / zoom, windowPos.y + 99 / zoom, 820 / zoom, 572 / zoom, textures.background2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if trwaLadowanie then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      for _FORV_11_, _FORV_12_ in ipairs(calendaryTable_C_Grudzien) do
        if 0 + 1 > 6 then
        end
        if _FORV_12_.status then
          dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 259 / zoom, windowPos.y + 120 / zoom + 135 / zoom * (1 + 1 - 1), 125 / zoom, 125 / zoom, 20 / zoom, tocolor(30, 30, 30, 150))
          dxDrawImage(windowPos.x + 287 / zoom + 135 / zoom * (1 - 1), windowPos.y + 142 / zoom + 135 / zoom * (1 + 1 - 1), 70 / zoom, 70 / zoom, textures.gift_icon, 0, 0, 0, tocolor(0, 0, 0, 255), false)
          dxDrawText("OTWARTO", windowPos.x + 282 / zoom + 270 / zoom * (1 - 1), windowPos.y + 155 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(166, 166, 166, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
        elseif string.sub(_FORV_12_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 1, 10) then
          dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 284 / zoom, windowPos.y + 141 / zoom + 135 / zoom * (1 + 1 - 1), 75 / zoom, 75 / zoom, 20 / zoom, tocolor(30, 30, 30, animations.alpha255))
          if isMouseIn(windowPos.x + 135 / zoom * (1 - 1) + 259 / zoom, windowPos.y + 120 / zoom + 135 / zoom * (1 + 1 - 1), 125 / zoom, 125 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 258 / zoom, windowPos.y + 119 / zoom + 135 / zoom * (1 + 1 - 1), 127 / zoom, 127 / zoom, 20 / zoom, tocolor(35, 35, 35, 170))
            dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 258 / zoom, windowPos.y + 119 / zoom + 135 / zoom * (1 + 1 - 1), 127 / zoom, 127 / zoom, 20 / zoom, tocolor(0, 235, 31, animations.alpha30))
          else
            dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 259 / zoom, windowPos.y + 120 / zoom + 135 / zoom * (1 + 1 - 1), 125 / zoom, 125 / zoom, 20 / zoom, tocolor(35, 35, 35, 170))
            dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 259 / zoom, windowPos.y + 120 / zoom + 135 / zoom * (1 + 1 - 1), 125 / zoom, 125 / zoom, 20 / zoom, tocolor(0, 176, 23, animations.alpha30))
          end
          dxDrawText(_FORV_12_.day, windowPos.x, windowPos.y + 70 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom + 11 / zoom + 135 / zoom * (1 - 1), windowPos.y + 204 / zoom, tocolor(0, 240, 0, animations.alpha255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
          dxDrawText("DOST\196\152PNE", windowPos.x + 282 / zoom + 270 / zoom * (1 - 1), windowPos.y + 258 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 255, 0, animations.alpha255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
          dxDrawImage(windowPos.x + 287 / zoom + 135 / zoom * (1 - 1), windowPos.y + 142 / zoom + 135 / zoom * (1 + 1 - 1), 70 / zoom, 70 / zoom, textures.gift_icon, 0, 0, 0, tocolor(animations.alpha255, animations.alpha255, animations.alpha255, 255), false)
          dxDrawText("OTWARTO", windowPos.x + 282 / zoom + 270 / zoom * (1 - 1), windowPos.y + 155 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(166, 166, 166, animations.alpha255_), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
        elseif string.sub(_FORV_12_.date, 8, 10) < string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 8, 10) then
          dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 284 / zoom, windowPos.y + 141 / zoom + 135 / zoom * (1 + 1 - 1), 75 / zoom, 75 / zoom, 20 / zoom, tocolor(30, 30, 30, 130))
          dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 259 / zoom, windowPos.y + 120 / zoom + 135 / zoom * (1 + 1 - 1), 125 / zoom, 125 / zoom, 20 / zoom, tocolor(20, 20, 20, 80))
          dxDrawText(_FORV_12_.day, windowPos.x, windowPos.y + 70 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom + 11 / zoom + 135 / zoom * (1 - 1), windowPos.y + 204 / zoom, tocolor(150, 150, 150, animations.alpha255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
          dxDrawImage(windowPos.x + 287 / zoom + 135 / zoom * (1 - 1), windowPos.y + 142 / zoom + 135 / zoom * (1 + 1 - 1), 70 / zoom, 70 / zoom, textures.gift_icon, 0, 0, 0, tocolor(_FORV_12_.color[1], _FORV_12_.color[2], _FORV_12_.color[3], 55), false)
          dxDrawText("POMINI\196\152TO", windowPos.x + 284 / zoom + 270 / zoom * (1 - 1), windowPos.y + 260 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, 150), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
          dxDrawText("POMINI\196\152TO", windowPos.x + 282 / zoom + 270 / zoom * (1 - 1), windowPos.y + 258 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 0, 0, 150), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 284 / zoom, windowPos.y + 141 / zoom + 135 / zoom * (1 + 1 - 1), 75 / zoom, 75 / zoom, 20 / zoom, tocolor(30, 30, 30, 150))
          if isMouseIn(windowPos.x + 135 / zoom * (1 - 1) + 259 / zoom, windowPos.y + 120 / zoom + 135 / zoom * (1 + 1 - 1), 125 / zoom, 125 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 258 / zoom, windowPos.y + 119 / zoom + 135 / zoom * (1 + 1 - 1), 127 / zoom, 127 / zoom, 20 / zoom, tocolor(35, 35, 35, 170))
          else
            dxDrawRoundedRectangle(windowPos.x + 135 / zoom * (1 - 1) + 259 / zoom, windowPos.y + 120 / zoom + 135 / zoom * (1 + 1 - 1), 125 / zoom, 125 / zoom, 20 / zoom, tocolor(35, 35, 35, 170))
          end
          dxDrawImage(windowPos.x + 287 / zoom + 135 / zoom * (1 - 1), windowPos.y + 142 / zoom + 135 / zoom * (1 + 1 - 1), 70 / zoom, 70 / zoom, textures.gift_icon, 0, 0, 0, tocolor(_FORV_12_.color[1], _FORV_12_.color[2], _FORV_12_.color[3], 255), false)
          dxDrawText(_FORV_12_.day, windowPos.x, windowPos.y + 70 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom + 11 / zoom + 135 / zoom * (1 - 1), windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, false, false)
          dxDrawText(((calculateTimeToSpecificDay(_FORV_12_.date) > 0 and string.format("#fcba03%d#c8c8c8d ", calculateTimeToSpecificDay(_FORV_12_.date)) or "") .. string.format("#fcba03%02d#c8c8c8h #fcba03%02d#c8c8c8m #fcba03%02ss", calculateTimeToSpecificDay(_FORV_12_.date))) .. "", windowPos.x + 280 / zoom + 270 / zoom * (1 - 1), windowPos.y + 253 / zoom + 270 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal11"), "center", "center", false, false, false, true, false)
        end
      end
    end
  end
  if windows.category == "NAGRODY" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.calendary1_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("NAGRODY ZA LOGOWANIE", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    if trwaLadowanie then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawText("Zaliczone logowania pod rz\196\133d: #fcba03" .. liczbaDniPodRzadKalendarz, windowPos.x, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom + 690 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      for _FORV_19_ = 1, 35 do
        if 0 + 1 > 7 then
        end
        dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 260 / zoom, windowPos.y + 105 / zoom + 113 / zoom * (1 + 1 - 1), 105 / zoom, 105 / zoom, 20 / zoom, tocolor(45, 45, 45, 90))
      end
      for _FORV_21_, _FORV_22_ in ipairs(calendaryTable) do
        if 0 + 1 > 7 then
        end
        if _FORV_22_.odebrane == true then
          dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 260 / zoom, windowPos.y + 105 / zoom + 113 / zoom * (1 + 1 - 1), 107 / zoom, 107 / zoom, 20 / zoom, tocolor(255, 187, 0, 255))
          dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 261 / zoom, windowPos.y + 106 / zoom + 113 / zoom * (1 + 1 - 1), 105 / zoom, 105 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
          dxDrawText(_FORV_22_.day .. "", windowPos.x + 270 / zoom + 232 / zoom * (1 - 1), windowPos.y + 80 / zoom + 226 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom - 5 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
          dxDrawText("ZALICZONO", windowPos.x + 270 / zoom + 232 / zoom * (1 - 1), windowPos.y + 170 / zoom + 226 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom - 5 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        elseif _FORV_22_.day == tonumber(string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 9, 10)) then
          dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 260 / zoom, windowPos.y + 105 / zoom + 113 / zoom * (1 + 1 - 1), 107 / zoom, 107 / zoom, 20 / zoom, tocolor(50, 255, 50, 255))
          dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 261 / zoom, windowPos.y + 106 / zoom + 113 / zoom * (1 + 1 - 1), 105 / zoom, 105 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
          dxDrawText(_FORV_22_.day .. "", windowPos.x + 270 / zoom + 232 / zoom * (1 - 1), windowPos.y + 80 / zoom + 226 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom - 5 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
          dxDrawText("ZALICZ DZIE\197\131", windowPos.x + 270 / zoom + 232 / zoom * (1 - 1), windowPos.y + 170 / zoom + 226 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom - 5 / zoom, windowPos.y + 204 / zoom, tocolor(50, 255, 50, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, false, false)
        else
          if _FORV_22_.day > tonumber(string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 9, 10)) then
            dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 260 / zoom, windowPos.y + 105 / zoom + 113 / zoom * (1 + 1 - 1), 107 / zoom, 107 / zoom, 20 / zoom, tocolor(180, 50, 50, 150))
            dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 261 / zoom, windowPos.y + 106 / zoom + 113 / zoom * (1 + 1 - 1), 105 / zoom, 105 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
            dxDrawText("NIE ODEBRANO", windowPos.x + 270 / zoom + 232 / zoom * (1 - 1), windowPos.y + 170 / zoom + 226 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom - 5 / zoom, windowPos.y + 204 / zoom, tocolor(255, 100, 100, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, false, false)
          else
            dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 260 / zoom, windowPos.y + 105 / zoom + 113 / zoom * (1 + 1 - 1), 107 / zoom, 107 / zoom, 20 / zoom, tocolor(200, 0, 0, 255))
            dxDrawRoundedRectangle(windowPos.x + 116 / zoom * (1 - 1) + 261 / zoom, windowPos.y + 106 / zoom + 113 / zoom * (1 + 1 - 1), 105 / zoom, 105 / zoom, 20 / zoom, tocolor(40, 40, 40, 255))
            dxDrawText("POMINI\196\152TO", windowPos.x + 270 / zoom + 232 / zoom * (1 - 1), windowPos.y + 170 / zoom + 226 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom - 5 / zoom, windowPos.y + 204 / zoom, tocolor(200, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
          end
          dxDrawText(_FORV_22_.day .. "", windowPos.x + 270 / zoom + 232 / zoom * (1 - 1), windowPos.y + 80 / zoom + 226 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom - 5 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
        end
      end
    end
  end
  if windows.category == "ZADANIA DZIENNE" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.calendary1_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ZADANIA DZIENNE", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    if trwaLadowanie then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      for _FORV_9_, _FORV_10_ in ipairs(dailyTasks_table) do
        dxDrawText("LICZBA PUNKT\195\147W ZADA\197\131: #fcba03" .. _FORV_10_.punkty, windowPos.x, windowPos.y - 115 / zoom, windowPos.x + 362 / zoom + 690 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
        dxDrawText("LICZBA KLUCZY: #0099ff" .. _FORV_10_.klucze, windowPos.x, windowPos.y - 65 / zoom, windowPos.x + 362 / zoom + 690 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
        if _FORV_10_.dnipodrzad == 0 then
          dxDrawRoundedRectangle(windowPos.x + 263 / zoom, windowPos.y + 138 / zoom, 222 / zoom, 264 / zoom, 18 / zoom, tocolor(255, 0, 0, 200))
        else
          dxDrawRoundedRectangle(windowPos.x + 263 / zoom, windowPos.y + 138 / zoom, 222 / zoom, 264 / zoom, 18 / zoom, tocolor(0, 133, 0, 200))
        end
        dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 140 / zoom, 218 / zoom, 260 / zoom, 18 / zoom, tocolor(28, 28, 28, 251))
        dxDrawText("DZIE\197\131 #fcba03" .. _FORV_10_.dnipodrzad, windowPos.x + 389 / zoom, windowPos.y + 150 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, true, false)
        dxDrawText("ZADANIE Z WCZORAJ", windowPos.x + 389 / zoom, windowPos.y + 250 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
        if _FORV_10_.dnipodrzad == 0 then
          dxDrawText("#bf0000\226\156\152", windowPos.x + 389 / zoom, windowPos.y + 340 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, true, false)
          dxDrawText([[
#bf0000ZADANIE
NIEWYKONANE]], windowPos.x + 389 / zoom, windowPos.y + 480 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
        else
          dxDrawText("#008500\226\156\148", windowPos.x + 389 / zoom, windowPos.y + 340 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, true, false)
          dxDrawText([[
#008500ZADANIE
WYKONANE]], windowPos.x + 389 / zoom, windowPos.y + 480 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
        end
        if _FORV_10_.odebrana_nagroda == 1 then
          dxDrawRoundedRectangle(windowPos.x + 508 / zoom, windowPos.y + 108 / zoom, 302 / zoom, 324 / zoom, 18 / zoom, tocolor(0, 255, 0, 255))
        else
          dxDrawRoundedRectangle(windowPos.x + 508 / zoom, windowPos.y + 108 / zoom, 302 / zoom, 324 / zoom, 18 / zoom, tocolor(255, 187, 0, 255))
        end
        dxDrawRoundedRectangle(windowPos.x + 510 / zoom, windowPos.y + 110 / zoom, 298 / zoom, 320 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
        dxDrawText("DZIE\197\131 #fcba03" .. _FORV_10_.dnipodrzad + 1, windowPos.x + 955 / zoom, windowPos.y + 100 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, true, false)
        dxDrawText("ZADANIE NA DZI\197\154 - #fcba03" .. tabela_zadanieDzienne[_FORV_10_.id_zadania].name, windowPos.x + 955 / zoom, windowPos.y + 200 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
        dxDrawText("#c4c4c4Opis:", windowPos.x + 955 / zoom, windowPos.y + 278 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffffff" .. tabela_zadanieDzienne[_FORV_10_.id_zadania].description, windowPos.x + 955 / zoom, windowPos.y + 365 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
        if _FORV_10_.odebrana_nagroda == 1 then
          dxDrawText("ZADANIE WYKONANE", windowPos.x + 955 / zoom, windowPos.y + 510 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(100, 255, 100, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
        elseif _FORV_10_.postep_zadania >= tabela_zadanieDzienne[_FORV_10_.id_zadania].progress then
          dxDrawText("POST\196\152P:  #fcba03" .. tabela_zadanieDzienne[_FORV_10_.id_zadania].progress .. "#ffffff/#fcba03" .. tabela_zadanieDzienne[_FORV_10_.id_zadania].progress, windowPos.x + 955 / zoom, windowPos.y + 465 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("ODBIERZ NAGROD\196\152", windowPos.x + 550 / zoom, windowPos.y + 360 / zoom, 218 / zoom, 55 / zoom, 255, 1)
        elseif not getElementData(localPlayer, "player:zadanieDzienne") then
          exports.ST_buttons:dxCreateButton("ROZPOCZNIJ ZADANIE", windowPos.x + 550 / zoom, windowPos.y + 330 / zoom, 218 / zoom, 55 / zoom, 255, 1)
        else
          dxDrawText("POST\196\152P:  #fcba03" .. _FORV_10_.postep_zadania .. "#ffffff/#fcba03" .. tabela_zadanieDzienne[_FORV_10_.id_zadania].progress, windowPos.x + 955 / zoom, windowPos.y + 500 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
          dxDrawRoundedRectangle(windowPos.x + 520 / zoom, windowPos.y + 380 / zoom, 278 / zoom, 30 / zoom, 15 / zoom, tocolor(22, 22, 22, 255))
          if 278 / zoom / tabela_zadanieDzienne[_FORV_10_.id_zadania].progress * _FORV_10_.postep_zadania / zoom < 30 / zoom then
            dxDrawRoundedRectangle(windowPos.x + 520 / zoom, windowPos.y + 380 / zoom, 30 / zoom, 30 / zoom, 15 / zoom, tocolor(255, 196, 0, 230))
          else
            dxDrawRoundedRectangle(windowPos.x + 520 / zoom, windowPos.y + 380 / zoom, 278 / zoom / tabela_zadanieDzienne[_FORV_10_.id_zadania].progress * _FORV_10_.postep_zadania / zoom, 30 / zoom, 15 / zoom, tocolor(255, 196, 0, 230))
          end
          dxDrawText("" .. ("%.2f"):format(100 / tabela_zadanieDzienne[_FORV_10_.id_zadania].progress * _FORV_10_.postep_zadania) .. "%", windowPos.x + 957 / zoom, windowPos.y + 591 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
          dxDrawText("" .. ("%.2f"):format(100 / tabela_zadanieDzienne[_FORV_10_.id_zadania].progress * _FORV_10_.postep_zadania) .. "%", windowPos.x + 955 / zoom, windowPos.y + 589 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
        end
        dxDrawRoundedRectangle(windowPos.x + 833 / zoom, windowPos.y + 138 / zoom, 222 / zoom, 264 / zoom, 18 / zoom, tocolor(130, 130, 130, 200))
        dxDrawRoundedRectangle(windowPos.x + 835 / zoom, windowPos.y + 140 / zoom, 218 / zoom, 260 / zoom, 18 / zoom, tocolor(28, 28, 28, 251))
        dxDrawText(string.format("Nast\196\153pne zadanie za:\n#fcba03%02d #c8c8c8godz. #fcba03%02d #c8c8c8min. #fcba03%02d #c8c8c8sec.", calculateTimeToNextDay()), windowPos.x + 1526 / zoom, windowPos.y + 500 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
        dxDrawText("DZIE\197\131 #fcba03" .. _FORV_10_.dnipodrzad + 2, windowPos.x + 1526 / zoom, windowPos.y + 150 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, true, false)
        dxDrawText("ZADANIE NA JUTRO", windowPos.x + 1526 / zoom, windowPos.y + 250 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        dxDrawText("#c2aa55OCZEKIWANIE \226\140\155", windowPos.x + 1526 / zoom, windowPos.y + 355 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(windowPos.x + 264 / zoom, windowPos.y + 421 / zoom, 222 / zoom, 230 / zoom, 18 / zoom, tocolor(0, 153, 255, 80))
        dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 420 / zoom, 220 / zoom, 230 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
        dxDrawRoundedRectangle(windowPos.x + 265 / zoom, windowPos.y + 420 / zoom, 220 / zoom, 36 / zoom, 18 / zoom, tocolor(0, 153, 255, 80))
        dxDrawImage(windowPos.x + 280 / zoom, windowPos.y + 460 / zoom, 190 / zoom, 107 / zoom, texturesChest.taskChest, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("SKRZYNIA ZADA\197\131", windowPos.x + 389 / zoom, windowPos.y + 676 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
        if isMouseIn(windowPos.x + 278 / zoom, windowPos.y + 583 / zoom, 194 / zoom, 54 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 278 / zoom, windowPos.y + 583 / zoom, 194 / zoom, 54 / zoom, 16 / zoom, tocolor(0, 153, 255, 50))
          dxDrawRoundedRectangle(windowPos.x + 280 / zoom, windowPos.y + 585 / zoom, 190 / zoom, 50 / zoom, 16 / zoom, tocolor(35, 35, 35, 200))
          dxDrawText("OTW\195\147RZ SKRZYNIE", windowPos.x + 389 / zoom, windowPos.y + 1022 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(windowPos.x + 278 / zoom, windowPos.y + 583 / zoom, 194 / zoom, 54 / zoom, 16 / zoom, tocolor(0, 153, 255, 50))
          dxDrawRoundedRectangle(windowPos.x + 280 / zoom, windowPos.y + 585 / zoom, 190 / zoom, 50 / zoom, 16 / zoom, tocolor(40, 40, 40, 200))
          dxDrawText("OTW\195\147RZ SKRZYNIE", windowPos.x + 389 / zoom, windowPos.y + 1022 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        end
        if isMouseIn(windowPos.x + 445 / zoom, windowPos.y + 470 / zoom, 30 / zoom, 30 / zoom) then
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Otwarte skrzynie", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
            dxDrawText("Otwarte skrzynie", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
            dxDrawCircle(windowPos.x + 460 / zoom, windowPos.y + 485 / zoom, 15 / zoom, 0 / zoom, 360 / zoom, tocolor(0, 153, 255, 150))
          end
        else
          dxDrawCircle(windowPos.x + 460 / zoom, windowPos.y + 485 / zoom, 15 / zoom, 0 / zoom, 360 / zoom, tocolor(0, 153, 255, 100))
        end
        if isMouseIn(windowPos.x + 280 / zoom, windowPos.y + 465 / zoom, 40 / zoom, 40 / zoom) then
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Posiadane klucze", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
            dxDrawText("Posiadane klucze", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
            dxDrawCircle(windowPos.x + 300 / zoom, windowPos.y + 485 / zoom, 20 / zoom, 0 / zoom, 360 / zoom, tocolor(0, 153, 255, 150))
            dxDrawImage(windowPos.x + 288 / zoom, windowPos.y + 467 / zoom, 20 / zoom, 20 / zoom, textures.key_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
          end
        else
          dxDrawCircle(windowPos.x + 300 / zoom, windowPos.y + 485 / zoom, 20 / zoom, 0 / zoom, 360 / zoom, tocolor(0, 153, 255, 100))
          dxDrawImage(windowPos.x + 288 / zoom, windowPos.y + 467 / zoom, 20 / zoom, 20 / zoom, textures.key_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
        dxDrawText(_FORV_10_.otwarte_skrzynie, windowPos.x + 560 / zoom, windowPos.y + 772 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 0.9 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
        dxDrawText(_FORV_10_.klucze, windowPos.x + 245 / zoom, windowPos.y + 784 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 0.9 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
        dxDrawText("#fcba03INFORMACJA", windowPos.x + 955 / zoom, windowPos.y + 750 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
        dxDrawText("ZBIERAJ PUNKTY WYKONUJ\196\132C\nCODZIENNE ZADANIA, A NAST\196\152PNIE WYMIE\197\131\nPUNKTY NA KLUCZE, ABY OTWORZY\196\134\nSKRZYNIE ZADA\197\131", windowPos.x + 955 / zoom, windowPos.y + 910 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 230), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(windowPos.x + 834 / zoom, windowPos.y + 421 / zoom, 222 / zoom, 230 / zoom, 18 / zoom, tocolor(0, 153, 255, 80))
        dxDrawRoundedRectangle(windowPos.x + 835 / zoom, windowPos.y + 420 / zoom, 220 / zoom, 230 / zoom, 18 / zoom, tocolor(28, 28, 28, 255))
        dxDrawRoundedRectangle(windowPos.x + 835 / zoom, windowPos.y + 420 / zoom, 220 / zoom, 36 / zoom, 18 / zoom, tocolor(0, 153, 255, 80))
        dxDrawText("WYMIENIARKA", windowPos.x + 1526 / zoom, windowPos.y + 676 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
        dxDrawText("PUNKTY ZADA\197\131: #fcba03" .. _FORV_10_.punkty, windowPos.x + 1526 / zoom, windowPos.y + 760 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
        dxDrawText("#fcba033 #ffffffPUNKTY = #0099ff1 #ffffffKLUCZ", windowPos.x + 1526 / zoom, windowPos.y + 830 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(windowPos.x + 885 / zoom, windowPos.y + 537 / zoom, 25 / zoom, 25 / zoom, 5 / zoom, tocolor(40, 40, 40, 255))
        dxDrawText("-", windowPos.x + 1436 / zoom, windowPos.y + 900 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
        dxDrawText("#fcba03" .. selfTasks.punkty_wybierz .. "", windowPos.x + 1526 / zoom, windowPos.y + 900 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(windowPos.x + 837 / zoom + 220 / zoom - 30 / zoom - 50 / zoom, windowPos.y + 537 / zoom, 25 / zoom, 25 / zoom, 5 / zoom, tocolor(40, 40, 40, 255))
        dxDrawText("+", windowPos.x + 1617 / zoom, windowPos.y + 900 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
        if selfTasks.klucze_wybierz <= 1 then
          dxDrawText("OTRZYMASZ #0099ff" .. selfTasks.klucze_wybierz .. " #ffffffKLUCZ", windowPos.x + 1526 / zoom, windowPos.y + 960 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
        else
          dxDrawText("OTRZYMASZ #0099ff" .. selfTasks.klucze_wybierz .. " #ffffffKLUCZY", windowPos.x + 1526 / zoom, windowPos.y + 960 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
        end
        if isMouseIn(windowPos.x + 875 / zoom, windowPos.y + 602 / zoom, 140 / zoom, 35 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 873 / zoom, windowPos.y + 600 / zoom, 144 / zoom, 39 / zoom, 16 / zoom, tocolor(0, 153, 255, 50))
          dxDrawRoundedRectangle(windowPos.x + 875 / zoom, windowPos.y + 602 / zoom, 140 / zoom, 35 / zoom, 16 / zoom, tocolor(35, 35, 35, 200))
          dxDrawText("WYMIE\197\131", windowPos.x + 1526 / zoom, windowPos.y + 1039 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(windowPos.x + 873 / zoom, windowPos.y + 600 / zoom, 144 / zoom, 39 / zoom, 16 / zoom, tocolor(0, 153, 255, 50))
          dxDrawRoundedRectangle(windowPos.x + 875 / zoom, windowPos.y + 602 / zoom, 140 / zoom, 35 / zoom, 16 / zoom, tocolor(40, 40, 40, 200))
          dxDrawText("WYMIE\197\131", windowPos.x + 1526 / zoom, windowPos.y + 1039 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
        end
      end
    end
  end
  if windows.category == "eventf" then
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 30 / zoom, 50 / zoom, 50 / zoom, textures.calendary1_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("EVENT FABULARNY", windowPos.x + 325 / zoom, windowPos.y - 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    if trwaLadowanie then
      dxDrawText("TRWA \197\129ADOWANIE...", windowPos.x + 955 / zoom, windowPos.y + 520 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(tabela_eventfabularny) do
        if _FORV_9_ >= k and _FORV_9_ <= n then
          xY = xY + 1
          dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 110 / zoom + 100 / zoom * (xY - 1), 800 / zoom, 95 / zoom, 20 / zoom, tocolor(27, 27, 27, 255), false)
          dxDrawText(_FORV_10_.id, windowPos.x + 275 / zoom, windowPos.y + 145 / zoom + 200 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_10_.name, windowPos.x + 375 / zoom, windowPos.y + 145 / zoom + 200 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
          exports.ST_buttons:dxCreateButton("ROZPOCZNIJ", windowPos.x + 880 / zoom, windowPos.y + 132 / zoom + 100 / zoom * (xY - 1), 160 / zoom, 52 / zoom, 255, 1)
        end
      end
    end
  end
end
function sendMessage()
  sendSound = playSound("img/send_sound.mp3", false)
  if messageEditBox:len() > 0 and messageEditBox:len() < 45 then
    destroyEditBox()
    setTimer(function()
      exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
    end, 50, 1)
    triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "sendMessage", localPlayer, getElementData(localPlayer, "player:sid"), messageEditBox, messageUser.uid, messageUser.nickOrginal)
  else
    triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "sendMessage", localPlayer, getElementData(localPlayer, "player:sid"), messageUserSettings.emoji1, messageUser.uid, messageUser.nickOrginal)
  end
  triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "showMessage", localPlayer, messageUser.uid)
  tick = getTickCount()
  loadingTimeMessage = 5
end
hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
maska = dxCreateTexture(":ST_avatars/kolo.png")
dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_)
  if _ARG_0_ == "tableVehiclesClient" then
    if _ARG_2_ == "Prywatne" then
      table_vehicles_prywatne = _ARG_1_
    elseif _ARG_2_ == "Z dost\196\153pem do kluczy" then
      table_vehicles_klucze = _ARG_1_
    elseif _ARG_2_ == "Organizacyjne" then
      table_vehicles_organizacyjne = _ARG_1_
    end
    trwaLadowanie = false
  elseif _ARG_0_ == "selectCarClient" then
    trwaLadowanie = false
    table_selectCar = _ARG_1_
    for _FORV_11_, _FORV_12_ in ipairs(table_selectCar) do
      if tonumber(_FORV_12_.parking) == 1 or _FORV_12_.police == 1 then
        vehicles3D(_FORV_12_.model, _FORV_12_.wariant, _FORV_12_.color, _FORV_12_.tuning, _FORV_12_.custom_model)
        table_selectCar.jestNaMapie = false
      else
        for _FORV_18_, _FORV_19_ in ipairs(getElementsByType("vehicle")) do
          if getElementData(_FORV_19_, "vehicle:id") and getElementData(_FORV_19_, "vehicle:id") == _FORV_12_.id then
            _UPVALUE0_, _UPVALUE1_ = getElementPosition(_FORV_19_)
          end
        end
        table_selectCar.jestNaMapie = true
      end
      if _ARG_2_ then
      else
        exports.ST_gui:createCustomEditbox("keyVehicle", "Wpisz id gracza", windowPos.x + 869 / zoom, windowPos.y + 35 / zoom, 127 / zoom, 40 / zoom, false, false, "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
      tableInfoVehicles = {
        {
          "ID",
          "#ffbb00" .. _FORV_12_.id .. ""
        },
        {
          "PRZEBIEG",
          "#838383Ukryte"
        },
        {
          "OSTATNI KIEROWCA",
          "#ffbb00" .. getElementData(_FORV_19_, "vehicle:driver") .. ""
        },
        {
          "Rodzaj paliwa",
          "#838383Ukryte"
        },
        {
          "UID W\197\129A\197\154CICIELA",
          "#ffbb00" .. _FORV_12_.ownedPlayer .. ""
        },
        {
          "STAN SILNIKA",
          "#ffbb00" .. string.format("%.1f", "" .. getElementHealth(_FORV_19_) / 10) .. "#e6e6e6%"
        },
        {
          "SILNIK",
          "#838383Ukryte"
        },
        {
          "REJESTRACJA",
          "#838383Ukryte"
        },
        {
          "Organizacja",
          "#838383Ukryte"
        },
        {
          "Udost\196\153pnione kluczyki",
          "Nie udost\196\153pniono"
        },
        {
          "POJAZD TEGO MODELU NA SERWERZE",
          "#838383Ukryte"
        }
      }
      tableInfoVehicles2 = {
        {
          "US1",
          false,
          true
        },
        {
          "US2",
          false,
          true
        },
        {
          "US3",
          false,
          true
        },
        {
          "US4",
          false,
          true
        },
        {
          "CHIP",
          false,
          true
        },
        {
          "TURBO",
          false,
          true
        }
      }
      tableInfoVehicles1 = {
        {
          "ZMIENNY NAP\196\152D",
          false,
          true
        },
        {
          "SZYBY",
          false,
          true
        },
        {
          "LPG",
          "Ukryte",
          true
        },
        {
          "TAXOMETR",
          false,
          true
        },
        {
          "ZMIENNE ZAWIESZENIE",
          false,
          true
        },
        {"HAMULCE", false},
        {
          "TRAKCJA",
          false,
          true
        },
        {"NITRO", false},
        {
          "TYLNE OPONY",
          false
        },
        {
          "PRZEDNIE OPONY",
          false
        },
        {"STAN OLEJU", false},
        {
          "STAN AKUMULATORA",
          false
        }
      }
    end
  elseif _ARG_0_ == "showInfoVehicleClient" then
    if _ARG_2_ == "REFRESH KLUCZE" then
      if _ARG_3_ then
        exports.ST_gui:destroyCustomEditbox("keyVehicle")
      else
        exports.ST_gui:createCustomEditbox("keyVehicle", "Wpisz id gracza", windowPos.x + 869 / zoom, windowPos.y + 35 / zoom, 127 / zoom, 40 / zoom, false, false, "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
      tableInfoVehicles[10][2] = "Nie udost\196\153pniono"
    else
      trwaLadowanie = false
      table_selectCar = _ARG_1_
      for _FORV_11_, _FORV_12_ in ipairs(table_selectCar) do
        if tonumber(_FORV_12_.parking) == 1 or _FORV_12_.police == 1 then
          vehicles3D(_FORV_12_.model, _FORV_12_.wariant, _FORV_12_.color, _FORV_12_.tuning, _FORV_12_.custom_model)
          table_selectCar.jestNaMapie = false
          oil = _FORV_12_.oil
          battery = _FORV_12_.battery
        else
          for _FORV_19_, _FORV_20_ in ipairs(getElementsByType("vehicle")) do
            if getElementData(_FORV_20_, "vehicle:id") and getElementData(_FORV_20_, "vehicle:id") == _FORV_12_.id then
              _UPVALUE0_, _UPVALUE1_ = getElementPosition(_FORV_20_)
              if _FORV_12_.engineType == "Elektryczny" then
              else
              end
              oil = exports.ST_datasystem:getCustomData(_FORV_20_, "vehicle:oil", "synced")
              battery = exports.ST_datasystem:getCustomData(_FORV_20_, "vehicle:battery", "synced")
            end
          end
          table_selectCar.jestNaMapie = true
        end
        if _FORV_12_.engineType == "Elektryczny" then
          nameFuel = {"Bateria", "KwH"}
        else
          nameFuel = {"Paliwo", "L"}
        end
        if _FORV_12_.plateText == "" then
        else
        end
        for _FORV_21_, _FORV_22_ in ipairs(split(_FORV_12_.tuning, ",")) do
          if _FORV_22_ == "1010" then
          end
        end
        if _FORV_12_.hamulce == "Brak" then
        end
        for _FORV_22_, _FORV_23_ in pairs(_UPVALUE2_) do
          if _FORV_23_[1] == _FORV_12_.wheelsRear then
            wheelsR = _UPVALUE2_[_FORV_22_][2]
          end
          if _FORV_23_[1] == _FORV_12_.wheelsFront then
            wheelsF = _UPVALUE2_[_FORV_22_][2]
          end
        end
        if _FORV_12_.ownedGroup == "" or _FORV_12_.ownedGroup == 0 or _FORV_12_.ownedGroup == "0" then
        else
        end
        if _ARG_3_ then
        else
          exports.ST_gui:createCustomEditbox("keyVehicle", "Wpisz id gracza", windowPos.x + 869 / zoom, windowPos.y + 35 / zoom, 127 / zoom, 40 / zoom, false, false, "", 1, {
            25,
            25,
            25,
            0,
            22,
            22,
            22,
            0
          })
        end
        tableInfoVehicles = {
          {
            "ID",
            "#ffbb00" .. _FORV_12_.id .. ""
          },
          {
            "PRZEBIEG",
            "#ffbb00" .. _FORV_12_.mileage .. " #e6e6e6KM"
          },
          {
            "OSTATNI KIEROWCA",
            "#ffbb00" .. getElementData(_FORV_20_, "vehicle:driver") .. ""
          },
          {
            nameFuel[1],
            "#ffbb00" .. ("" .. math.floor(getElementData(_FORV_20_, "vehicle:fuel")) .. " L") .. " #e6e6e6/ #ffbb00" .. _FORV_12_.bak .. " #e6e6e6" .. nameFuel[2]
          },
          {
            "UID W\197\129A\197\154CICIELA",
            "#ffbb00" .. _FORV_12_.ownedPlayer .. ""
          },
          {
            "STAN SILNIKA",
            "#ffbb00" .. string.format("%.1f", "" .. getElementHealth(_FORV_20_) / 10) .. "#e6e6e6%"
          },
          {
            "SILNIK",
            "" .. _FORV_12_.pojemnosc .. " " .. _FORV_12_.cylindry .. " " .. _FORV_12_.engineType .. ""
          },
          {
            "REJESTRACJA",
            "" .. ("#ffbb00" .. _FORV_12_.plateText .. "") .. ""
          },
          {
            "Organizacja",
            "#fca903" .. _FORV_12_.ownedGroup .. ""
          },
          {
            "Udost\196\153pnione kluczyki",
            "Nie udost\196\153pniono"
          },
          {
            "POJAZD TEGO MODELU NA SERWERZE",
            "#fca903" .. (_ARG_2_ or 0) .. ""
          }
        }
        tableInfoVehicles2 = {
          {
            "US1",
            _FORV_12_.us1,
            true
          },
          {
            "US2",
            _FORV_12_.us2,
            true
          },
          {
            "US3",
            _FORV_12_.us3,
            true
          },
          {
            "US4",
            _FORV_12_.us4,
            true
          },
          {
            "CHIP",
            _FORV_12_.chip,
            true
          },
          {
            "TURBO",
            _FORV_12_.turbo,
            true
          }
        }
        if _FORV_12_.engineType == "Elektryczny" then
          tableInfoVehicles1 = {
            {
              "ZMIENNY NAP\196\152D",
              _FORV_12_.naped,
              true
            },
            {
              "SZYBY",
              _FORV_12_.windows,
              true
            },
            {
              "LPG",
              _FORV_12_.instalacja_lpg,
              true
            },
            {
              "TAXOMETR",
              _FORV_12_.taxometr,
              true
            },
            {
              "ZMIENNE ZAWIESZENIE",
              _FORV_12_.rh,
              true
            },
            {
              "HAMULCE",
              "#c8c8c8Brak"
            },
            {
              "TRAKCJA",
              _FORV_12_.trakcja,
              true
            },
            {
              "NITRO",
              "#039118TAK  #e6e6e6( #ffbb00" .. _FORV_12_.nitro .. "#e6e6e6/#ffbb00" .. _FORV_12_.butlaN .. "#e6e6e6L )"
            },
            {
              "TYLNE OPONY",
              wheelsR
            },
            {
              "PRZEDNIE OPONY",
              wheelsF
            },
            {
              "STAN OLEJU",
              "#fca903" .. string.format("%02.1f", oil / 10) .. "%"
            }
          }
        else
          tableInfoVehicles1 = {
            {
              "ZMIENNY NAP\196\152D",
              _FORV_12_.naped,
              true
            },
            {
              "SZYBY",
              _FORV_12_.windows,
              true
            },
            {
              "LPG",
              _FORV_12_.instalacja_lpg,
              true
            },
            {
              "TAXOMETR",
              _FORV_12_.taxometr,
              true
            },
            {
              "ZMIENNE ZAWIESZENIE",
              _FORV_12_.rh,
              true
            },
            {
              "HAMULCE",
              "#c8c8c8Brak"
            },
            {
              "TRAKCJA",
              _FORV_12_.trakcja,
              true
            },
            {
              "NITRO",
              "#039118TAK  #e6e6e6( #ffbb00" .. _FORV_12_.nitro .. "#e6e6e6/#ffbb00" .. _FORV_12_.butlaN .. "#e6e6e6L )"
            },
            {
              "TYLNE OPONY",
              wheelsR
            },
            {
              "PRZEDNIE OPONY",
              wheelsF
            },
            {
              "STAN OLEJU",
              "#fca903" .. string.format("%02.1f", oil / 10) .. "%"
            },
            {
              "STAN AKUMULATORA",
              "#fca903" .. string.format("%02.1f", battery / 10) .. "%"
            }
          }
        end
      end
    end
  elseif _ARG_0_ == "showInfoUsersClient" then
    table_users = _ARG_1_
    table_users.ip = _ARG_2_
    trwaLadowanie = false
  elseif _ARG_0_ == "tablePromoteLogsClient" then
    trwaLadowanie = false
    table_promote = _ARG_1_
    table_promote1 = _ARG_2_
    if 1 > #table_promote1 then
      exports.ST_gui:createCustomEditbox("promoteUID", "WPISZ KOD", windowPos.x + 365 / zoom, windowPos.y + 300 / zoom, 245 / zoom, 46 / zoom, false, "", "", 1)
    end
  elseif _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics_job = _ARG_1_
    for _FORV_11_, _FORV_12_ in ipairs(table_statistics_job) do
      table_jobs = {
        {
          name = "Kosiarki",
          pos = {
            -348,
            -1041,
            59.31
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_kosiarki,
              "exp_kosiarki"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_kosiarki
            },
            {
              "punkty ulepsze\197\132",
              _FORV_12_.punkty_kosiarki
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_kosiarki) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Kurier",
          pos = false,
          table = {
            {
              "exp",
              _FORV_12_.exp_kurier,
              "exp_kurier"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_kurier
            },
            {
              "punkty ulepsze\197\132",
              _FORV_12_.punkty_kurier
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_kurier) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "W\196\153dkarz",
          pos = {
            -344.63,
            -419.15,
            6.88
          },
          table = {
            {
              "exp",
              _FORV_12_.kg_rybak,
              "kg_rybak"
            },
            {
              "exp ranking",
              _FORV_12_.kg_rybak1
            },
            {
              "punkty ulepsze\197\132",
              false
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobki_rybak) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Farmer",
          pos = {
            -1203.13,
            -1040.98,
            129.21
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_farmer,
              "exp_farmer"
            },
            {
              "exp ranking",
              false
            },
            {
              "punkty ulepsze\197\132",
              _FORV_12_.punkty_farmer
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_farmer) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Sprz\196\133tanie ulic",
          pos = {
            2228.81,
            946.76,
            10.82
          },
          table = {
            {
              "exp",
              _FORV_12_.ogol_kg_sweeper,
              "ogol_kg_sweeper"
            },
            {
              "exp ranking",
              _FORV_12_.kg_ranking_sweeper
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_sweeper)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobki_sweeper) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Magazynier",
          pos = {
            78.73,
            -285.19,
            1.58
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_magazynier,
              "exp_magazynier"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_magazynier
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_magazynier)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_magazynier) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "G\195\179rnik",
          pos = {
            2568.89,
            -534.07,
            87.2
          },
          table = {
            {
              "exp",
              _FORV_12_.laczne_kilogramy_kopalnia,
              "laczne_kilogramy_kopalnia"
            },
            {
              "exp ranking",
              _FORV_12_.kg_kopalnia1
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_kopalnia)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobki_kopalnia) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Restauracja",
          pos = {
            255.58,
            480.62,
            5.93
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_restauracja,
              "exp_restauracja"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_restauracja
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_restauracja)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_restauracja) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Drwal",
          pos = {
            -2033.45,
            -2395.9,
            30.62
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_drwal,
              "exp_drwal"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_drwal
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_drwal)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_drwal) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Wyw\195\179z odpad\195\179w",
          pos = {
            -358.67,
            1072.83,
            19.73
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_smieciarki,
              "exp_smieciarki"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_smieciarki
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_smieciarki)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_smieciarki) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Logistyka l\196\133dowa",
          pos = false,
          table = {
            {
              "exp",
              _FORV_12_.exp_trucki,
              "exp_trucki"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_trucki
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.trucki_punkty)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_trucki) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Taksometr",
          pos = false,
          table = {
            {
              "exp",
              _FORV_12_.exp_taxo,
              "exp_taxo"
            },
            {
              "exp ranking",
              false
            },
            {
              "punkty ulepsze\197\132",
              false
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_taxo) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Transport towar\195\179w",
          pos = {
            1122.74,
            1945.07,
            10.82
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_lawety,
              "exp_lawety"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_lawety
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_lawety)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_lawety) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Kierowca autobusu",
          pos = {
            2151.25,
            -1323.1,
            24.16
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_autobusy,
              "exp_autobusy"
            },
            {
              "exp ranking",
              false
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_autobusy)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_autobusy) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Logistyka lotnicza",
          pos = {
            -1429.55,
            -531.63,
            14.15
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_helikoptery,
              "exp_helikoptery"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_helikoptery
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_helikoptery)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_helikoptery) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Konwojent bankowy",
          pos = {
            1263.28,
            -1641.28,
            13.57
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_konwojent,
              "exp_konwojent"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_konwojent
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_konwojent)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_konwojent) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Od\197\155nie\197\188arki",
          pos = {
            -1520.89,
            2621.55,
            55.84
          },
          table = {
            {
              "exp",
              _FORV_12_.kilometry_odsniezarki,
              "kilometry_odsniezarki"
            },
            {
              "exp ranking",
              _FORV_12_.kilometry_odsniezarki_ranking
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_odsniezarki)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_odsniezarki) .. " #ffffffPLN"
            }
          }
        },
        {
          name = "Tramwajarz",
          pos = {
            -2269.47,
            534.73,
            35.02
          },
          table = {
            {
              "exp",
              _FORV_12_.exp_tramwajarz,
              "exp_tramwajarz"
            },
            {
              "exp ranking",
              _FORV_12_.exp1_tramwajarz
            },
            {
              "punkty ulepsze\197\132",
              przecinek(_FORV_12_.punkty_tramwajarz)
            },
            {
              "zarobek",
              "#009411" .. przecinek(_FORV_12_.zarobek_tramwajarz) .. " #ffffffPLN"
            }
          }
        }
      }
      table.sort(table_jobs, function(_ARG_0_, _ARG_1_)
        return _ARG_0_.table[1][2] > _ARG_1_.table[1][2]
      end)
    end
    trwaLadowanie = false
  elseif _ARG_0_ == "clearTableFriendsClient" then
    friends_table = {}
  elseif _ARG_0_ == "tableFriendsClient" then
    if not _ARG_1_ then
      return
    end
    if _ARG_1_ == "AKTUALIZUJ STATUS" then
      if findTableByUIDFriend(friends_table, _ARG_2_) then
        if _ARG_4_ == 2 then
          findTableByUIDFriend(friends_table, _ARG_2_)[3] = _ARG_4_
        else
          findTableByUIDFriend(friends_table, _ARG_2_)[3] = 0
          if getPlayerFromName(_ARG_3_) then
            findTableByUIDFriend(friends_table, _ARG_2_)[3] = 1
          end
        end
        table.sort(friends_table, function(_ARG_0_, _ARG_1_)
          return _ARG_0_[3] > _ARG_1_[3]
        end)
        if _ARG_5_ == "ZMIANA KOLORU" then
          findTableByUIDFriend(friends_table, _ARG_2_)[7] = {
            split(_ARG_6_, ",")[1],
            split(_ARG_6_, ",")[2],
            split(_ARG_6_, ",")[3]
          }
          loadDataMessage(_ARG_2_)
        elseif _ARG_5_ == "ZMIANA EMOJI" then
          findTableByUIDFriend(friends_table, _ARG_2_)[8] = _ARG_6_
          loadDataMessage(_ARG_2_)
        elseif _ARG_5_ == "ZMIANA NICKU" then
          findTableByUIDFriend(friends_table, _ARG_2_)[2] = _ARG_6_
          loadDataMessage(_ARG_2_)
        end
      end
    else
      for _FORV_11_, _FORV_12_ in pairs(_ARG_1_) do
        active = 0
        if string.sub(_FORV_12_.last_online, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          last_online = "Dzi\197\155 o " .. string.sub(_FORV_12_.last_online, 12, 16) .. ""
        elseif string.sub(_FORV_12_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_12_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "Wczoraj o " .. string.sub(_FORV_12_.last_online, 12, 16) .. ""
        elseif string.sub(_FORV_12_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_12_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "2 dni temu o " .. string.sub(_FORV_12_.last_online, 12, 16) .. ""
        elseif string.sub(_FORV_12_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_12_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "3 dni temu o " .. string.sub(_FORV_12_.last_online, 12, 16) .. ""
        elseif string.sub(_FORV_12_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_12_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "4 dni temu o " .. string.sub(_FORV_12_.last_online, 12, 16) .. ""
        elseif string.sub(_FORV_12_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_12_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "5 dni temu o " .. string.sub(_FORV_12_.last_online, 12, 16) .. ""
        else
          last_online = "" .. string.sub(_FORV_12_.last_online, 1, 10) .. ""
        end
        if getPlayerFromName(_FORV_12_.login) then
          active = 1
        end
        login = _FORV_12_.login
        for _FORV_29_, _FORV_30_ in pairs(_ARG_2_) do
          if _FORV_12_.id == _FORV_30_.uidFriend then
            if _FORV_30_.active == 1 then
              active = 2
            end
            settings = split(_FORV_30_.settings, ",")
            if _FORV_30_.nickFriend then
              login = _FORV_30_.nickFriend
            end
          end
        end
        table.insert(friends_table, {
          _FORV_12_.id,
          login,
          active,
          false,
          last_online,
          _FORV_12_.login,
          {
            settings[1],
            settings[2],
            settings[3]
          },
          tonumber(settings[4])
        })
        table.sort(friends_table, function(_ARG_0_, _ARG_1_)
          return _ARG_0_[3] > _ARG_1_[3]
        end)
        if avatar_table then
          for _FORV_29_, _FORV_30_ in pairs(avatar_table) do
            for _FORV_34_, _FORV_35_ in ipairs(friends_table) do
              if _FORV_30_[1] == _FORV_35_[1] then
                friends_table[_FORV_34_][4] = _FORV_30_[2]
              end
            end
          end
        end
        if _ARG_3_ then
          loadDataMessage(messageUser.uid)
        end
      end
    end
  elseif _ARG_0_ == "downloadAvatarFriend" then
    for _FORV_11_, _FORV_12_ in ipairs(friends_table) do
      if friends_table[_FORV_11_][1] == _ARG_2_ then
        shader = dxCreateShader(":ST_avatars/masked.fx")
        avatars = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
        dxSetShaderValue(shader, "sMaskTexture", maska)
        dxSetShaderValue(shader, "sPicTexture", avatars)
        friends_table[_FORV_11_][4] = shader
        table.insert(avatar_table, {_ARG_2_, shader})
      end
    end
  elseif _ARG_0_ == "showMessageClient" then
    if _ARG_3_ then
      if _ARG_3_ == messageUser.uid then
        table_message = {}
        if _ARG_1_ then
          for _FORV_11_, _FORV_12_ in pairs(_ARG_1_) do
            table.insert(table_message, {
              _FORV_12_.uid,
              _FORV_12_.uid2,
              _FORV_12_.message,
              _FORV_12_.id,
              _FORV_12_.date
            })
          end
        end
        if _ARG_2_ then
          for _FORV_11_, _FORV_12_ in pairs(_ARG_2_) do
            table.insert(table_message, {
              _FORV_12_.uid,
              _FORV_12_.uid2,
              _FORV_12_.message,
              _FORV_12_.id,
              _FORV_12_.date
            })
          end
        end
        table.sort(table_message, function(_ARG_0_, _ARG_1_)
          return _ARG_0_[4] > _ARG_1_[4]
        end)
      end
    else
      table_message = {}
      if _ARG_1_ then
        for _FORV_11_, _FORV_12_ in pairs(_ARG_1_) do
          table.insert(table_message, {
            _FORV_12_.uid,
            _FORV_12_.uid2,
            _FORV_12_.message,
            _FORV_12_.id,
            _FORV_12_.date
          })
        end
      end
      if _ARG_2_ then
        for _FORV_11_, _FORV_12_ in pairs(_ARG_2_) do
          table.insert(table_message, {
            _FORV_12_.uid,
            _FORV_12_.uid2,
            _FORV_12_.message,
            _FORV_12_.id,
            _FORV_12_.date
          })
        end
      end
      table.sort(table_message, function(_ARG_0_, _ARG_1_)
        return _ARG_0_[4] > _ARG_1_[4]
      end)
    end
  elseif _ARG_0_ == "addFriendsClient" then
    setElementData(localPlayer, "player_inviteFriends", true)
    exports.st_gui:showPlayerNotification([[
Otrzymano zaproszenie do znajomych
od gracza ]] .. getPlayerName(_ARG_1_) .. " kliknij przycisk \"P\" aby przyj\196\133\196\135", "message", 0, 10000)
    bindKey("P", "down", function()
      exports.st_gui:showPlayerNotification("Zaakceptowano zaproszenie do grona znajomych", "success")
      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "addFriendsAccept", localPlayer, _UPVALUE0_)
      killTimer(timer)
      unbindKey("P")
      setElementData(localPlayer, "player_inviteFriends", false)
      refreshAvatarsFriend = false
    end)
    timer = setTimer(function()
      exports.st_gui:showPlayerNotification("Odrzucono zaproszenie do znajomych", "info")
      unbindKey("P")
      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "addFriendsReject", localPlayer, _UPVALUE0_)
      setElementData(localPlayer, "player_inviteFriends", false)
    end, 10500, 1)
  elseif _ARG_0_ == "addFriendsAcceptClient" then
    refreshAvatarsFriend = false
    exports.st_gui:showPlayerNotification("" .. getPlayerName(_ARG_1_) .. "\nzaakceptowa\197\130(a) twoje zaproszenie do znajomych", "message")
  elseif _ARG_0_ == "changeShaderClient" then
    trwaLadowanie = false
    table_users_settings = _ARG_1_
    tableUsers()
  elseif _ARG_0_ == "showCalendaryGrudzienDateClient" then
    calendaryTableGrudzien = _ARG_1_
    getRealTimeAntyBug = _ARG_2_
    for _FORV_11_, _FORV_12_ in ipairs(calendaryTable_C_Grudzien) do
      for _FORV_16_, _FORV_17_ in ipairs(calendaryTableGrudzien) do
        if string.sub(_FORV_17_.date, 1, 10) == string.sub(_FORV_12_.date, 1, 10) then
          calendaryTable_C_Grudzien[_FORV_11_].status = true
        end
      end
      if string.sub(_FORV_12_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 1, 10) then
        calendaryTable_C_Grudzien[_FORV_11_].block = true
      end
    end
    trwaLadowanie = false
  elseif _ARG_0_ == "showCalendaryDateClient" then
    calendaryTableDataBase = _ARG_1_
    getRealTimeAntyBug = _ARG_2_
    calendaryTable = calendaryTableAll[tonumber(string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 6, 7))]
    for _FORV_19_, _FORV_20_ in ipairs(calendaryTable) do
      for _FORV_24_, _FORV_25_ in ipairs(calendaryTableDataBase) do
        if string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 1, 7) == string.sub(_FORV_25_.date, 1, 7) and _FORV_20_.day == tonumber(string.sub(_FORV_25_.date, 9, 10)) then
          calendaryTable[_FORV_19_].odebrane = true
        end
      end
    end
    liczbaDniPodRzadKalendarz = 0
    for _FORV_19_, _FORV_20_ in ipairs(calendaryTable) do
      if _FORV_20_.day <= tonumber(string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 9, 10)) then
        if _FORV_20_.odebrane == true then
          liczbaDniPodRzadKalendarz = liczbaDniPodRzadKalendarz + 1
        elseif _FORV_20_.day ~= tonumber(string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 9, 10)) and _FORV_20_.day ~= nil then
          liczbaDniPodRzadKalendarz = 0
        end
      end
    end
    trwaLadowanie = false
  elseif _ARG_0_ == "tabelaKaryLogsClient" then
    tabela_kary_logs = _ARG_1_
    trwaLadowanie = false
  elseif _ARG_0_ == "tabelaLoginLogsClient" then
    tabela_logowania_logs = _ARG_1_
    trwaLadowanie = false
  elseif _ARG_0_ == "tabelaPieniadzeLogsClient" then
    tabela_pieniadze_logs = _ARG_1_
    trwaLadowanie = false
  elseif _ARG_0_ == "tabelaPPLogsClient" then
    tabela_pp_logs = _ARG_1_
    trwaLadowanie = false
  elseif _ARG_0_ == "tabelaPojazdyUrzadLogsClient" then
    tabela_pojazdyUrzad_logs = _ARG_1_
    trwaLadowanie = false
  elseif _ARG_0_ == "tabelaPojazdyGieldaLogsClient" then
    tabela_pojazdyGielda_logs = _ARG_1_
    trwaLadowanie = false
  elseif _ARG_0_ == "tabelaNieruchomosciClient" then
    tabela_nieruchomosci = _ARG_1_
    trwaLadowanie = false
  elseif _ARG_0_ == "tabelaWybranaNieruchomosClient" then
    trwaLadowanie = false
    tabela_wbranaNieruchomosc = _ARG_1_
    tabela_lokatorzyNieruchomosc = {}
  elseif _ARG_0_ == "tabelaWybranaNieruchomosLokatorzyClient" then
    table.insert(tabela_lokatorzyNieruchomosc, {_ARG_1_, _ARG_2_})
  elseif _ARG_0_ == "showRankingClient" then
    earnDiagram = {
      maxEarn = 0,
      minEarn = 99999999999,
      totalmoney = 0
    }
    earnData = {}
    for _FORV_11_, _FORV_12_ in pairs(_ARG_1_) do
      table.insert(earnData, {
        totalmoney = tonumber(_FORV_12_["" .. _ARG_2_ .. ""]),
        nick = _FORV_12_.nick
      })
      earnDiagram.totalmoney = earnDiagram.totalmoney + tonumber(_FORV_12_["" .. _ARG_2_ .. ""])
      if earnDiagram.maxEarn < tonumber(_FORV_12_["" .. _ARG_2_ .. ""]) then
        earnDiagram.maxEarn = tonumber(_FORV_12_["" .. _ARG_2_ .. ""])
      elseif earnDiagram.minEarn > tonumber(_FORV_12_["" .. _ARG_2_ .. ""]) then
        earnDiagram.minEarn = tonumber(_FORV_12_["" .. _ARG_2_ .. ""])
      end
    end
    trwaLadowanie = false
  elseif _ARG_0_ == "openCaseClient" then
    trwaLadowanie = false
    table_users[1].klucze = _ARG_1_
    table_users[1].klucze_premium = _ARG_3_
    selfCases = {}
    extendedItems = nil
    if _ARG_2_ == "CLASSIC" then
      selfCases.itemsCases = {
        {
          "EXP",
          50,
          procent = 8
        },
        {
          "EXP",
          100,
          procent = 7
        },
        {
          "EXP",
          150,
          procent = 6
        },
        {
          "EXP",
          200,
          procent = 5
        },
        {
          "PLN",
          100000,
          procent = 8
        },
        {
          "PLN",
          125000,
          procent = 6.5
        },
        {
          "PLN",
          150000,
          procent = 6
        },
        {
          "PLN",
          200000,
          procent = 5
        },
        {
          "PLN",
          250000,
          procent = 4.5
        },
        {
          "PLN",
          300000,
          procent = 3
        },
        {
          "Klucz",
          1,
          textures.key_icon,
          procent = 6
        },
        {
          "Klucz",
          2,
          textures.key_icon,
          procent = 4
        },
        {
          "Pojazd",
          {
            603,
            {99, 99}
          },
          textures.vehicle_icon,
          "Phoenix",
          procent = 3
        },
        {
          "Pojazd",
          {
            410,
            {3, 3}
          },
          textures.vehicle_icon,
          "Manana",
          procent = 3
        },
        {
          "Pojazd",
          {
            475,
            {99, 99}
          },
          textures.vehicle_icon,
          "Sabre",
          procent = 3
        },
        {
          "Pojazd",
          {
            481,
            {1, 1}
          },
          textures.vehicle_icon,
          "BMX",
          procent = 3
        },
        {
          "Boost",
          5,
          false,
          procent = 2
        }
      }
    else
      selfCases.itemsCases = {
        {
          "EXP",
          600,
          false,
          procent = 6.376
        },
        {
          "EXP",
          800,
          false,
          procent = 5.666
        },
        {
          "EXP",
          1000,
          false,
          procent = 4.958
        },
        {
          "EXP",
          2000,
          false,
          procent = 4.25
        },
        {
          "PLN",
          400000,
          false,
          procent = 5.666
        },
        {
          "PLN",
          500000,
          false,
          procent = 4.958
        },
        {
          "PLN",
          750000,
          false,
          procent = 4.25
        },
        {
          "PLN",
          1000000,
          false,
          procent = 3.542
        },
        {
          "PLN",
          2000000,
          false,
          procent = 2.833
        },
        {
          "PLN",
          5000000,
          false,
          procent = 2.125
        },
        {
          "PP",
          100,
          false,
          procent = 4.25
        },
        {
          "PP",
          200,
          false,
          procent = 3.542
        },
        {
          "PP",
          300,
          false,
          procent = 2.833
        },
        {
          "PP",
          400,
          false,
          procent = 2.55
        },
        {
          "PP",
          500,
          false,
          procent = 1.7
        },
        {
          "Premium",
          1,
          false,
          procent = 4.25
        },
        {
          "Premium",
          3,
          false,
          procent = 3.542
        },
        {
          "Premium",
          5,
          false,
          procent = 2.833
        },
        {
          "Premium",
          7,
          false,
          procent = 2.55
        },
        {
          "Premium",
          14,
          false,
          procent = 2.125
        },
        {
          "Premium",
          30,
          false,
          procent = 1.7
        },
        {
          "Premium",
          60,
          false,
          procent = 1.417
        },
        {
          "Klucz",
          1,
          textures.key_icon,
          procent = 6.376
        },
        {
          "Klucz",
          2,
          textures.key_icon,
          procent = 4.958
        },
        {
          "Boost",
          10,
          false,
          procent = 3.213
        },
        {
          "Boost",
          15,
          false,
          procent = 2.176
        },
        {
          "Boost",
          20,
          false,
          procent = 1.139
        },
        {
          "Pojazd",
          {
            415,
            {2, 2}
          },
          textures.vehicle_icon,
          "Cheetah",
          procent = 2.074
        },
        {
          "Pojazd",
          {
            410,
            {0, 0}
          },
          textures.vehicle_icon,
          "Fiat 126p",
          procent = 0.594
        },
        {
          "Pojazd",
          {
            462,
            {0, 0}
          },
          textures.vehicle_icon,
          "Faggio",
          procent = 1.556
        }
      }
    end
    selfCases.wylosowano = false
    selfCases.startTime = getTickCount()
    selfCases.speedCases = math.random(-5, 5)
    selfCases.losowanie = true
    selfCases.typeCase = _ARG_2_
    selfCases.serverReward = _ARG_4_
  elseif _ARG_0_ == "giveOpenCaseClient" then
    table_users[1].klucze = _ARG_1_
    table_users[1].klucze_premium = _ARG_2_
    table_users[1].pp = _ARG_3_
    table_users[1].otwarte_classic = _ARG_4_
    table_users[1].otwarte_premium = _ARG_5_
  elseif _ARG_0_ == "showDailyTasksClient" then
    trwaLadowanie = false
    dailyTasks_table = _ARG_1_
  elseif _ARG_0_ == "openCaseTaskClient" then
    trwaLadowanie = false
    dailyTasks_table = _ARG_1_
    selfCases = {}
    extendedItems = nil
    selfCases.itemsCases = {
      {
        "Z\197\130oto",
        30,
        texturesChest.gold_icon,
        procent = 4.348
      },
      {
        "Z\197\130oto",
        45,
        texturesChest.gold_icon,
        procent = 4.348
      },
      {
        "Z\197\130oto",
        60,
        texturesChest.gold_icon,
        procent = 4.348
      },
      {
        "Klucz",
        1,
        textures.key_icon,
        procent = 4.348
      },
      {
        "PP",
        50,
        false,
        procent = 4.348
      },
      {
        "PP",
        100,
        false,
        procent = 4.348
      },
      {
        "Premium",
        1,
        false,
        procent = 4.348
      },
      {
        "Premium",
        2,
        false,
        procent = 4.348
      },
      {
        "Premium",
        3,
        false,
        procent = 4.348
      },
      {
        "Premium",
        5,
        false,
        procent = 4.348
      },
      {
        "EXP",
        100,
        nil,
        procent = 4.348
      },
      {
        "EXP",
        500,
        nil,
        procent = 4.348
      },
      {
        "EXP",
        1000,
        nil,
        procent = 4.348
      },
      {
        "EXP",
        1500,
        nil,
        procent = 4.348
      },
      {
        "EXP",
        1500,
        nil,
        procent = 4.348
      },
      {
        "EXP",
        2000,
        nil,
        procent = 4.348
      },
      {
        "EXP",
        2000,
        nil,
        procent = 4.348
      },
      {
        "PLN",
        1000000,
        nil,
        procent = 4.348
      },
      {
        "PLN",
        1000000,
        nil,
        procent = 4.348
      },
      {
        "PLN",
        2000000,
        nil,
        procent = 4.348
      },
      {
        "PLN",
        3000000,
        nil,
        procent = 4.348
      },
      {
        "PLN",
        4000000,
        nil,
        procent = 4.348
      },
      {
        "PLN",
        5000000,
        nil,
        procent = 4.348
      },
      {
        "PLN",
        6000000,
        nil,
        procent = 4.348
      },
      {
        "PLN",
        8000000,
        nil,
        procent = 4.348
      }
    }
    selfCases.wylosowano = false
    selfCases.startTime = getTickCount()
    selfCases.speedCases = math.random(-5, 5)
    selfCases.losowanie = true
    selfCases.typeCase = _ARG_2_
    selfCases.serverReward = _ARG_3_
  elseif _ARG_0_ == "setPinClient" then
    trwaLadowanie = true
    if _ARG_1_ then
      table_users_settings = _ARG_1_
    else
      enteredPin = ""
      settings_pinLoggingNext = 1
      table_pinLogging = {
        0,
        0,
        0,
        0,
        0
      }
    end
  elseif _ARG_0_ == "tabelaEventFabularnyClient" then
    trwaLadowanie = false
    tabela_eventfabularny = {
      {
        id = 1,
        name = "Odbierz nowego przejezdnego z lotniska"
      },
      {
        id = 2,
        name = "Pom\195\179\197\188 miko\197\130ajowi ulepi\196\135 ba\197\130wany"
      },
      {
        id = 3,
        name = "Pom\195\179\197\188 miko\197\130ajowi dostarczy\196\135 prezenty"
      }
    }
  end
end)
avatar_table = {}
bindKey("f2", "down", function()
  if windows.background == true then
    if selfCases.losowanie then
      return
    end
    tabela_kary_logs = {}
    tabela_logowania_logs = {}
    tabela_pieniadze_logs = {}
    tabela_pp_logs = {}
    tabela_pojazdyUrzad_logs = {}
    tabela_pojazdyGielda_logs = {}
    table_vehicles_prywatne = {}
    table_vehicles_organizacyjne = {}
    table_vehicles_klucze = {}
    tabela_nieruchomosci = {}
    open = false
    zaladowaneStatystykiPrac = false
    windows.background = false
    windows.addFriends = false
    windows.adventCalendar = false
    calendaryTable_C_Grudzien = {}
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    removeEventHandler("onClientKey", root, key)
    destroyEditBox()
    showCursor(false)
    vehicles3D("destroy")
    if isElement(ped) then
      destroyElement(ped)
      setTimer(function()
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end, 100, 1)
    end
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    for _FORV_3_, _FORV_4_ in pairs(texturesMessage) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesMessage = {}
    for _FORV_3_, _FORV_4_ in pairs(texturesSkills) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesSkills = {}
    for _FORV_3_, _FORV_4_ in pairs(texturesMap) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesMap = {}
    for _FORV_3_, _FORV_4_ in pairs(texturesChest) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesChest = {}
    trwaLadowanie = false
  elseif getTickCount() - lastTickCount > 5000 then
    if getElementData(localPlayer, "player:bw") then
      toggleControl("fire", false)
      toggleControl("aim_weapon", false)
      return
    end
    if not getElementData(localPlayer, "player:sid") then
      return
    end
    destroyEditBox()
    table_users = {}
    trwaLadowanie = true
    triggerServerEvent("showInfoUsers_dashboard", resourceRoot, localPlayer, getElementData(localPlayer, "player:sid"))
    windows.background = true
    windows.category = "KONTO"
    windows.vehicles = false
    windows.changeNick = false
    windows.addFriends = false
    windows.adventCalendar = false
    showCursor(true)
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    addEventHandler("onClientKey", root, key)
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      background2 = dxCreateTexture("img/background2.png"),
      circle = dxCreateTexture("img/circle.png"),
      character_icon = dxCreateTexture("img/character_icon.png"),
      skills_icon = dxCreateTexture("img/skills_icon.png"),
      promote_icon = dxCreateTexture("img/promote_icon.png"),
      vehicle_icon = dxCreateTexture("img/vehicle_icon.png"),
      house_icon = dxCreateTexture("img/house_icon.png"),
      shop_icon = dxCreateTexture("img/shop_icon.png"),
      logs_icon = dxCreateTexture("img/logs_icon.png"),
      job_icon = dxCreateTexture("img/job_icon.png"),
      message_icon = dxCreateTexture("img/message_icon.png"),
      calendary1_icon = dxCreateTexture("img/calendary1_icon.png"),
      settings_icon = dxCreateTexture("img/settings_icon.png"),
      chest_icon = dxCreateTexture("img/chest_icon.png"),
      task_icon = dxCreateTexture("img/task_icon.png"),
      job_blips = dxCreateTexture(":ST_radar/images/radar/blips/radar_WOOZIE.png"),
      gift_icon = dxCreateTexture("img/gift_icon.png"),
      calendary_icon = dxCreateTexture("img/calendary_icon.png"),
      ranking_icon = dxCreateTexture("img/ranking_icon.png"),
      back_arrow = dxCreateTexture("img/back_arrow.png"),
      user_icon = dxCreateTexture(":ST_storevehicle/img/user_icon.png"),
      org_icon = dxCreateTexture(":ST_storevehicle/img/org_icon.png"),
      key_icon = dxCreateTexture(":ST_storevehicle/img/key_icon.png"),
      gavel_icon = dxCreateTexture("img/gavel_icon.png"),
      history_icon = dxCreateTexture("img/history_icon.png"),
      sellcar_icon = dxCreateTexture("img/sellcar_icon.png"),
      exchangecar_icon = dxCreateTexture("img/exchangecar_icon.png"),
      blips_car = dxCreateTexture(":ST_radar/images/radar/blips/radar_enemyAttack.png"),
      graphic_card_icon = dxCreateTexture(":ST_bitcoin/img/graphic_card_icon.png"),
      premium_icon = dxCreateTexture("img/premium_icon.png"),
      nickname_icon = dxCreateTexture("img/nickname_icon.png"),
      skin_icon = dxCreateTexture("img/skin_icon.png"),
      lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png")
    }
    ped = createPed(getElementModel(localPlayer), getCameraMatrix())
    myObject = exports.ST_object_preview:createObjectPreview(ped, -10, 0, 180, windowPos.x + 785 / zoom, windowPos.y + 150 / zoom, 272 / zoom, 360 / zoom, false, true)
    table_categories = {
      {
        name = "KONTO",
        img = textures.character_icon,
        font = "font17"
      },
      {
        name = "NIERUCHOMO\197\154CI",
        img = textures.house_icon,
        font = "font17"
      },
      {
        name = "POLECANIE $",
        img = textures.promote_icon,
        font = "font17"
      },
      {
        name = "POJAZDY",
        img = textures.vehicle_icon,
        font = "font17"
      },
      {
        name = "SKRZYNIE",
        img = textures.chest_icon,
        font = "font17"
      },
      {
        name = "SKLEP",
        img = textures.shop_icon,
        font = "font17"
      },
      {
        name = "LOGI",
        img = textures.logs_icon,
        font = "font17"
      },
      {
        name = "PRACE",
        img = textures.job_icon,
        font = "font17"
      },
      {
        name = "NAGRODY",
        img = textures.calendary1_icon,
        font = "font17"
      },
      {
        name = "ZADANIA DZIENNE",
        img = textures.task_icon,
        font = "font14"
      },
      {
        name = "USTAWIENIA",
        img = textures.settings_icon,
        font = "font17"
      },
      {
        name = "SANTORI MESSAGE",
        img = textures.message_icon,
        font = "font14"
      },
      {
        name = "UMIEJ\196\152TNO\197\154CI",
        img = textures.skills_icon,
        font = "font17"
      }
    }
    lastTickCount = getTickCount()
  end
end)
function loadDataMessage(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(friends_table) do
    if _FORV_5_[1] == _ARG_0_ then
      messageUser = {}
      messageUserSettings = {}
      messageUser.nick = _FORV_5_[2]
      messageUser.avatar = _FORV_5_[4]
      messageUser.uid = _FORV_5_[1]
      messageUser.lastOnline = _FORV_5_[5]
      messageUser.active = _FORV_5_[3]
      messageUser.nickOrginal = _FORV_5_[6]
      messageUserSettings.color = _FORV_5_[7]
      messageUserSettings.emoji = _FORV_5_[8]
      loadEmoji()
    end
  end
end
function loadEmoji()
  if messageUserSettings.emoji == 1 then
    messageUserSettings.emoji1 = ":like:"
  elseif messageUserSettings.emoji == 2 then
    messageUserSettings.emoji1 = ":heart:"
  elseif messageUserSettings.emoji == 3 then
    messageUserSettings.emoji1 = ":happy:"
  elseif messageUserSettings.emoji == 4 then
    messageUserSettings.emoji1 = ":santorimessage:"
  elseif messageUserSettings.emoji == 5 then
    messageUserSettings.emoji1 = ":happy1:"
  elseif messageUserSettings.emoji == 6 then
    messageUserSettings.emoji1 = ":heartface:"
  elseif messageUserSettings.emoji == 7 then
    messageUserSettings.emoji1 = ":kissing:"
  elseif messageUserSettings.emoji == 8 then
    messageUserSettings.emoji1 = ":lol:"
  elseif messageUserSettings.emoji == 9 then
    messageUserSettings.emoji1 = ":okay:"
  elseif messageUserSettings.emoji == 10 then
    messageUserSettings.emoji1 = ":muscle:"
  elseif messageUserSettings.emoji == 11 then
    messageUserSettings.emoji1 = ":peace:"
  elseif messageUserSettings.emoji == 12 then
    messageUserSettings.emoji1 = ":punch:"
  end
  if messageUserSettings.emoji1 == ":like:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.like_emoji,
      messageUserSettings.color[1],
      messageUserSettings.color[2],
      messageUserSettings.color[3]
    }
  elseif messageUserSettings.emoji1 == ":heart:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.heart_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":happy:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.happy_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":santorimessage:" then
    messageUserSettings.emojiTextures = {
      textures.message_icon,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":happy1:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.happy1_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":lol:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.lol_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":kissing:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.kissing_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":heartface:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.heartface_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":okay:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.okay_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":muscle:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.muscle_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":peace:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.peace_emoji,
      255,
      255,
      255
    }
  elseif messageUserSettings.emoji1 == ":punch:" then
    messageUserSettings.emojiTextures = {
      texturesMessage.punch_emoji,
      255,
      255,
      255
    }
  end
end
function key(_ARG_0_, _ARG_1_)
  if windows.category == "USTAWIENIA" and categorySettings == "PIN logowania" then
    for _FORV_5_, _FORV_6_ in ipairs(table_users_settings) do
      if tonumber(_FORV_6_.pin) == 0 and _ARG_1_ and tonumber(_ARG_0_) and #enteredPin < 5 then
        enteredPin = enteredPin .. tostring((tonumber(_ARG_0_)))
        settings_pinLoggingNext = #enteredPin + 1
        if #enteredPin == 5 then
        end
      end
    end
  end
  if _ARG_0_ == "mouse_wheel_up" then
    if isMouseIn(windowPos.x + 28 / zoom, windowPos.y + 96 / zoom, 203 / zoom, 578 / zoom) then
      if windows.background == true then
        if n2 == m2 then
          return
        end
        k2 = k2 - 1
        n2 = n2 - 1
      end
    elseif windows.category == "USTAWIENIA" then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    elseif windows.category == "PRACE" then
      if isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 380 / zoom, 535 / zoom) then
        if n == m then
          return
        end
        k = k - 1
        n = n - 1
      elseif isMouseIn(mapPos.x - 2 / zoom, mapPos.y + 118 / zoom, mapPos.w + 4 / zoom, mapPos.h + 4 / zoom) and windows.selectJobs == true then
        _UPVALUE0_ = math.max(0.5, _UPVALUE0_ - 0.3)
      end
    elseif windows.category == "SANTORI MESSAGE" then
      if isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 250 / zoom, 540 / zoom) then
        if n == m then
          return
        end
        k = k - 1
        n = n - 1
      end
      if windows.message == "KONWERSACJA" and isMouseIn(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom) then
        if n7 >= #table_message then
          return
        end
        k7 = k7 + 1
        n7 = n7 + 1
      end
    elseif windows.category == "POJAZDY" then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    elseif windows.category == "POLECANIE $" then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    elseif windows.category == "LOGI" then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    elseif windows.category == "RANKING PRACY" then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" then
    if isMouseIn(windowPos.x + 28 / zoom, windowPos.y + 96 / zoom, 203 / zoom, 578 / zoom) then
      if windows.background == true then
        if n2 >= #table_categories then
          return
        end
        k2 = k2 + 1
        n2 = n2 + 1
      end
    elseif windows.category == "USTAWIENIA" then
      if n >= #table_settings then
        return
      end
      k = k + 1
      n = n + 1
    elseif windows.category == "PRACE" then
      if isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 380 / zoom, 535 / zoom) then
        if n >= #table_jobs then
          return
        end
        k = k + 1
        n = n + 1
      elseif isMouseIn(mapPos.x - 2 / zoom, mapPos.y + 118 / zoom, mapPos.w + 4 / zoom, mapPos.h + 4 / zoom) and windows.selectJobs == true then
        _UPVALUE0_ = math.min(_UPVALUE0_ + 0.3, 3.2)
      end
    elseif windows.category == "SANTORI MESSAGE" then
      if isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 115 / zoom, 250 / zoom, 540 / zoom) then
        if n >= #friends_table then
          return
        end
        k = k + 1
        n = n + 1
      end
      if windows.message == "KONWERSACJA" and isMouseIn(windowPos.x + 530 / zoom, windowPos.y + 115 / zoom, 520 / zoom, 540 / zoom) then
        if n7 == m7 then
          return
        end
        k7 = k7 - 1
        n7 = n7 - 1
      end
    elseif windows.category == "POJAZDY" then
      if n >= #table_vehicles1 then
        return
      end
      k = k + 1
      n = n + 1
    elseif windows.category == "POLECANIE $" then
      if n >= #table_promote then
        return
      end
      k = k + 1
      n = n + 1
    elseif windows.category == "LOGI" then
      if categoryLogs == "Kary" then
        if n >= #tabela_kary_logs then
          return
        end
        k = k + 1
        n = n + 1
      elseif categoryLogs == "Logowania" then
        if n >= #tabela_logowania_logs then
          return
        end
        k = k + 1
        n = n + 1
      elseif categoryLogs == "Przelewy pieni\196\153dzy" then
        if n >= #tabela_pieniadze_logs then
          return
        end
        k = k + 1
        n = n + 1
      elseif categoryLogs == "Przelewy punkt\195\179w premium" then
        if n >= #tabela_pp_logs then
          return
        end
        k = k + 1
        n = n + 1
      elseif categoryLogs == "Kupno / sprzeda\197\188 pojazd\195\179w w urz\196\153dzie" then
        if n >= #tabela_pojazdyUrzad_logs then
          return
        end
        k = k + 1
        n = n + 1
      elseif categoryLogs == "Kupno / sprzeda\197\188 pojazd\195\179w na gie\197\130dzie" then
        if n >= #tabela_pojazdyGielda_logs then
          return
        end
        k = k + 1
        n = n + 1
      end
    elseif windows.category == "RANKING PRACY" then
      if n >= #earnData then
        return
      end
      k = k + 1
      n = n + 1
    end
  end
end
function tableUsers()
  if not getElementData(localPlayer, "player:pchatoff") then
    settings_pchatoff = 1
  else
    settings_pchatoff = 0
  end
  if getElementData(localPlayer, "player:elementDat").settings_rp == 1 then
    settings_rp = 1
  else
    settings_rp = 0
  end
  if getElementData(localPlayer, "player:elementDat").settings_avatarsScoreboard == 1 then
    settings_avatarsScoreboard = 1
  else
    settings_avatarsScoreboard = 0
  end
  if not ustawionaGodzina then
    ustawionaGodzina = getTime()
  end
  for _FORV_3_, _FORV_4_ in ipairs(table_users_settings) do
    if tonumber(split(_FORV_4_.crosshair, ", ")[1]) == 0 then
      exports.ST_crosshair:switchCrosshair(0, 1)
      settings_crosshair_id = 0
      settings_crosshair_color = tonumber(split(_FORV_4_.crosshair, ", ")[2])
    else
      exports.ST_crosshair:switchCrosshair(tonumber(split(_FORV_4_.crosshair, ", ")[1]), tonumber(split(_FORV_4_.crosshair, ", ")[2]))
      settings_crosshair_id = tonumber(split(_FORV_4_.crosshair, ", ")[1])
      settings_crosshair_color = tonumber(split(_FORV_4_.crosshair, ", ")[2])
    end
    if _FORV_4_.shader_veh == 1 then
      shader_veh = 1
      exports.ST_shader_veh:enableShader(_FORV_4_.shader_veh)
    else
      shader_veh = 0
      exports.ST_shader_veh:enableShader(_FORV_4_.shader_veh)
    end
    if _FORV_4_.settings_normalAds == 1 then
      settings_normalAds = 1
      exports.ST_ads:switchAds(_FORV_4_.settings_normalAds)
    else
      settings_normalAds = 0
      exports.ST_ads:switchAds(_FORV_4_.settings_normalAds)
    end
    if _FORV_4_.settings_ads == 1 then
      settings_ads = 1
      exports.ST_ads:onOffAds(_FORV_4_.settings_ads)
    else
      settings_ads = 0
      exports.ST_ads:onOffAds(_FORV_4_.settings_ads)
    end
    if _FORV_4_.settings_liczniki == 1 then
      settings_licznik = 1
      exports.ST_speedmeter:switchSpeedMeter(_FORV_4_.settings_liczniki, true)
    else
      settings_licznik = 0
      exports.ST_speedmeter:switchSpeedMeter(false, true)
    end
    if _FORV_4_.settings_engineSound == 1 then
      settings_engineSound = 1
      exports.bengines:toggleEngines(_FORV_4_.settings_engineSound)
    else
      settings_engineSound = 0
      exports.bengines:toggleEngines(false)
    end
    if _FORV_4_.settings_customPaintjob == 1 then
      settings_customPaintjob = 1
      exports.ST_custom_paintjob:switchPaintJob(_FORV_4_.settings_customPaintjob)
    else
      settings_customPaintjob = 0
      exports.ST_custom_paintjob:switchPaintJob(_FORV_4_.settings_customPaintjob)
    end
    if _FORV_4_.settings_neon == 1 then
      settings_neon = 1
      exports.ST_neons:switchNeons(true)
    else
      settings_neon = 0
      exports.ST_neons:switchNeons(false)
    end
    if _FORV_4_.settings_3dtext == 1 then
      settings_3dtext = 1
      exports.ST_3Dtext:switch3dText(true)
    else
      settings_3dtext = 0
      exports.ST_3Dtext:switch3dText(false)
    end
    if _FORV_4_.settings_nametags == 1 then
      settings_nametags = 1
      exports.ST_nametags:enableNametags(_FORV_4_.settings_nametags, _FORV_4_.settings_showNametag)
    else
      settings_nametags = 0
      exports.ST_nametags:enableNametags(_FORV_4_.settings_nametags, _FORV_4_.settings_showNametag)
    end
    if _FORV_4_.settings_fps == 1 then
      settings_fps = 1
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    else
      settings_fps = 0
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    end
    if _FORV_4_.settings_cpu == 1 then
      settings_cpu = 1
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    else
      settings_cpu = 0
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    end
    if _FORV_4_.settings_ping == 1 then
      settings_ping = 1
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    else
      settings_ping = 0
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    end
    if _FORV_4_.settings_packet == 1 then
      settings_packet = 1
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    else
      settings_packet = 0
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    end
    if _FORV_4_.settings_oldhud == 1 then
      exports.ST_gui:setPosNoti(_FORV_4_.settings_oldhud)
      settings_oldhud = 1
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    else
      exports.ST_gui:setPosNoti(_FORV_4_.settings_oldhud)
      settings_oldhud = 0
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
    end
    if _FORV_4_.shader_details == 1 then
      settings_shader_details = 1
      exports.ST_shader_details:enableDetail()
    else
      settings_shader_details = 0
      exports.ST_shader_details:disableDetail()
    end
    if _FORV_4_.shader_distanse == 1 then
      settings_shader_distanse = 1
      setFarClipDistance(4000)
    else
      settings_shader_distanse = 0
      resetFarClipDistance()
    end
    if _FORV_4_.shader_sky == 1 then
      settings_shader_sky = 1
      exports.ST_shader_sky:startDynamicSky()
    else
      settings_shader_sky = 0
      exports.ST_shader_sky:stopDynamicSky()
    end
    if _FORV_4_.shader_water == 1 then
      settings_shader_water = 1
      exports.ST_shader_water:enableWaterShine()
    else
      settings_shader_water = 0
      exports.ST_shader_water:disableWaterShine()
    end
    if _FORV_4_.shader_dof == 1 then
      settings_shader_dof = 1
      exports.ST_shader_dof:enableDoF()
    else
      settings_shader_dof = 0
      exports.ST_shader_dof:disableDoF()
    end
    if _FORV_4_.shader_shadow == 1 then
      settings_shader_shadow = 1
      exports.ST_shader_shadow:enableAO()
    else
      settings_shader_shadow = 0
      exports.ST_shader_shadow:disableAO()
    end
    settings_radio_volume = _FORV_4_.radio_volume
    exports.ST_radio:playRadio(_FORV_4_.radio_volume)
    settings_fps_limit = _FORV_4_.fps_limit
    settings_voicevolume = _FORV_4_.voice_volume
    if _FORV_4_.shader_fxaa == 0 then
      settings_fxaa_shadow = 0
      exports.ST_shader_fxaa:switchFxaa()
    else
      settings_fxaa_shadow = _FORV_4_.shader_fxaa
      exports.ST_shader_fxaa:switchFxaa(_FORV_4_.shader_fxaa)
    end
    if _FORV_4_.snow == 1 then
      settings_shader_snow = 1
      exports.ST_snow:setSnowEnabled(true)
    else
      settings_shader_snow = 0
      exports.ST_snow:setSnowEnabled(false)
    end
    if _FORV_4_.snow_rainfall == 1 then
      settings_shader_snow_rainfall = 1
      exports.ST_snow1:toggleSnow(true)
    else
      settings_shader_snow_rainfall = 0
      exports.ST_snow1:toggleSnow(false)
    end
    if _FORV_4_.settings_showNametag == 1 then
      settings_showNametag = 1
      exports.ST_nametags:enableNametags(_FORV_4_.settings_nametags, _FORV_4_.settings_showNametag)
    else
      settings_showNametag = 0
      exports.ST_nametags:enableNametags(_FORV_4_.settings_nametags, _FORV_4_.settings_showNametag)
    end
  end
  table_settings_rozgrywka = {
    {
      "Poka\197\188 sw\195\179j nametag",
      false,
      settings_showNametag
    },
    {
      "Wska\197\186nik FPS",
      false,
      settings_fps
    },
    {
      "Wska\197\186nik pingu",
      false,
      settings_ping
    },
    {
      "Wska\197\186nik utraty pakiet\195\179w",
      false,
      settings_packet
    },
    {
      "Wska\197\186nik CPU",
      false,
      settings_cpu
    },
    {
      "Czat premium",
      false,
      settings_pchatoff
    },
    {
      "Status RP",
      false,
      settings_rp
    },
    {
      "Hud - pasek na dole ekranu",
      false,
      settings_oldhud
    },
    {
      "Wy\197\130\196\133czenie og\197\130osze\197\132",
      false,
      settings_ads
    },
    {
      "Radio w miejscach publicznych",
      false,
      settings_radio_volume
    },
    {
      "Ustaw godzin\196\153 lokalnie",
      false,
      ustawionaGodzina
    },
    {
      "Limit FPS",
      false,
      settings_fps_limit
    },
    {
      "G\197\130o\197\155no\197\155\196\135 czatu g\197\130osowego",
      false,
      settings_voicevolume
    }
  }
  table_settings_shadery = {
    {
      "Odbicia pojazd\195\179w",
      false,
      shader_veh
    },
    {
      "Detale",
      false,
      settings_shader_details
    },
    {
      "Wysoki dystans rysowania",
      false,
      settings_shader_distanse
    },
    {
      "Realistyczne niebo",
      false,
      settings_shader_sky
    },
    {
      "Realistyczna woda",
      false,
      settings_shader_water
    },
    {
      "G\197\130\196\153bia ostro\197\155ci",
      false,
      settings_shader_dof
    },
    {
      "Cienie",
      false,
      settings_shader_shadow
    },
    {
      "FXAA",
      false,
      settings_fxaa_shadow
    },
    {
      "\197\154nieg",
      false,
      settings_shader_snow
    },
    {
      "Opady \197\155niegu",
      false,
      settings_shader_snow_rainfall
    }
  }
  table_settings_fps = {
    {
      "Avatary graczy pod TAB #b50000(+PING)",
      false,
      settings_avatarsScoreboard,
      "Zalecane jest #ff0000wy\197\130\196\133czenie #fffffftej opcji w przypadku #ff0000s\197\130abego/niestabilnego #ffffff\197\130\196\133cza internetowego"
    },
    {
      "Zwyk\197\130e nametagi #08e300(+FPS)",
      false,
      settings_nametags,
      "#00ff1aW\197\130\196\133czenie #fffffftej opcji mo\197\188e #00ff1aprzy\197\155pieszy\196\135 #ffffffdzia\197\130anie gry"
    },
    {
      "Zwyk\197\130y licznik #08e300(+FPS)",
      false,
      settings_licznik,
      "#00ff1aW\197\130\196\133czenie #fffffftej opcji mo\197\188e #00ff1aprzy\197\155pieszy\196\135 #ffffffdzia\197\130anie gry"
    },
    {
      "Zwyk\197\130e og\197\130oszenia #08e300(+FPS)",
      false,
      settings_normalAds,
      "#00ff1aW\197\130\196\133czenie #fffffftej opcji mo\197\188e #00ff1aprzy\197\155pieszy\196\135 #ffffffdzia\197\130anie gry"
    },
    {
      "Customowe paintjoby na pojazdach #b50000(-FPS)",
      false,
      settings_customPaintjob,
      "#00ff1aW\197\130\196\133czenie #fffffftej opcji mo\197\188e #ff0000op\195\179\197\186ni\196\135 #ffffffdzia\197\130anie gry"
    },
    {
      "Nowe d\197\186wi\196\153ki silnik\195\179w #b50000(-FPS)",
      false,
      settings_engineSound,
      "#00ff1aW\197\130\196\133czenie #fffffftej opcji mo\197\188e #ff0000op\195\179\197\186ni\196\135 #ffffffdzia\197\130anie gry"
    },
    {
      "Neony w pojazdach #b50000(-FPS)",
      false,
      settings_neon,
      "#00ff1aW\197\130\196\133czenie #fffffftej opcji mo\197\188e #ff0000op\195\179\197\186ni\196\135 #ffffffdzia\197\130anie gry"
    },
    {
      "3D Texty | Vopisy w pojazdach #b50000(-FPS)",
      false,
      settings_3dtext,
      "#00ff1aW\197\130\196\133czenie #fffffftej opcji mo\197\188e #ff0000op\195\179\197\186ni\196\135 #ffffffdzia\197\130anie gry"
    }
  }
  if not categorySettings then
    categorySettings = "Rozgrywka"
    table_settings = table_settings_rozgrywka
  elseif categorySettings == "Rozgrywka" then
    table_settings = table_settings_rozgrywka
  elseif categorySettings == "Shadery" then
    categorySettings = "Shadery"
    table_settings = table_settings_shadery
  elseif categorySettings == "FPS" then
    categorySettings = "FPS"
    table_settings = table_settings_fps
  elseif categorySettings == "Celownik" then
    categorySettings = "Celownik"
  end
end
function przecinek(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffbf00" .. przecinek(hours) .. " #f0f0f0godzin #ffbf00" .. mins .. " #f0f0f0minut"
  end
end
function isStringNormal(_ARG_0_)
  if _ARG_0_ and tostring(_ARG_0_) and _UPVALUE0_ then
    for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
      if _FORV_5_ and string.find(_ARG_0_, _FORV_5_) then
        return false
      end
    end
    return true
  end
end
ustawionaGodzina = "Realna godzina"
function syncTime()
  if ustawionaGodzina == "Realna godzina" then
    setMinuteDuration(60000)
    setTime(getRealTime().hour, getRealTime().minute)
  end
end
setTimer(syncTime, 500, 1)
setTimer(syncTime, 3000000, 0)
function findTableByUIDFriend(_ARG_0_, _ARG_1_)
  for _FORV_5_ = 1, #_ARG_0_ do
    if _ARG_0_[_FORV_5_][1] == _ARG_1_ then
      return _ARG_0_[_FORV_5_]
    end
  end
  return nil
end
function getPlayersFromText(_ARG_0_)
  for _FORV_5_, _FORV_6_ in pairs(table_vehicles) do
    if getVehicleNameFromModel(_FORV_6_.model) == "Sabre" then
      if _FORV_6_.wariant == "1, 2" then
      end
    elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" then
      if _FORV_6_.wariant == "2, 2" then
      end
    elseif exports.ST_core:changeNameClient("BMW M2 Cabrio") == "Mercedes G63" then
      if _FORV_6_.wariant == "0, 1" then
      end
    elseif exports.ST_core:changeNameClient("Brabus G63") == "Mercedes GT63s" and _FORV_6_.wariant == "0, 2" then
    end
    if tonumber(_ARG_0_) then
      if string.find(_FORV_6_.id, _ARG_0_) then
        table.insert({}, _FORV_6_)
      end
    elseif string.find(string.lower(exports.ST_core:changeNameClient("Mercedes GT63s Brabus", _FORV_6_.custom_model)), _ARG_0_) then
      table.insert({}, _FORV_6_)
    end
  end
  return {}
end
getResourceName(getThisResource(), true, 52984665)
return
