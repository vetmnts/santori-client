screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = screenW / 2 - 882 / zoom / 2,
  y = screenH / 2 - 573 / zoom / 2,
  w = 882 / zoom,
  h = 573 / zoom
}
windows = {main = false, exitGarage = false}
function window()
  if windows.main == true then
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ROZMONTOWYWANIE POJAZD\195\147W", windowPos.x + 90 / zoom, windowPos.y - 60 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "left", "center", false, false, false, false, false)
    if isMouseIn(windowPos.x + 759 / zoom, windowPos.y + 59 / zoom, 34 / zoom, 34 / zoom) then
      dxDrawImage(windowPos.x + 759 / zoom, windowPos.y + 59 / zoom, 34 / zoom, 34 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(windowPos.x + 760 / zoom, windowPos.y + 60 / zoom, 32 / zoom, 32 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    exports.ST_buttons:dxCreateButton("PRACUJ", windowPos.x + 350 / zoom, windowPos.y + 450 / zoom, 180 / zoom, 61 / zoom, 255)
    dxDrawText("STATYSTYKI", windowPos.x, windowPos.y + math.floor(428 / zoom), windowPos.x + 362 / zoom + math.floor(430 / zoom), windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "top", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      dxDrawText("EXP: " .. _FORV_8_.exp_rozmontowywanie .. "\n\197\129\196\133czne zarobki: " .. przecinek(_FORV_8_.zarobek_rozmontowywanie) .. "", windowPos.x, windowPos.y + math.floor(458 / zoom), windowPos.x + 362 / zoom + math.floor(430 / zoom), windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("light16"), "right", "top", false, false, false, false, false)
    end
    dxDrawImage(windowPos.x + 75 / zoom, windowPos.y + 100 / zoom, 400 / zoom, 253 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("Praca polega na rozmontowywaniu\ncz\196\153\197\155ci ze skradzionych pojazd\195\179w.\nWynagrodzenie otrzymuje si\196\153 za\nka\197\188dy rozmontowany pojazd.\n\nAby pracowa\196\135 w tej pracy twoja\norganizacja musi przej\196\133\196\135\nodpowiedni\196\133 stref\196\153.", windowPos.x + 480 / zoom, windowPos.y + 220 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, false, false)
  end
  if windows.exitGarage == true then
    dxDrawImage(windowPos.x + 200 / zoom, windowPos.y, windowPos.w - 400 / zoom, windowPos.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("CZY NA PEWNO CHCESZ WYJ\197\154\196\134?", windowPos.x + 250 / zoom, windowPos.y + 50 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "left", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("WYJD\197\185", windowPos.x + 350 / zoom, windowPos.y + 450 / zoom, 180 / zoom, 61 / zoom, 255)
    if isMouseIn(windowPos.x + 599 / zoom, windowPos.y + 59 / zoom, 34 / zoom, 34 / zoom) then
      dxDrawImage(windowPos.x + 599 / zoom, windowPos.y + 59 / zoom, 34 / zoom, 34 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(windowPos.x + 600 / zoom, windowPos.y + 60 / zoom, 32 / zoom, 32 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(windowPos.x + 350 / zoom, windowPos.y + 450 / zoom, 180 / zoom, 61 / zoom) and windows.main == true then
      if getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
        if getElementData(localPlayer, "player:job") == "Rozmontowywanie pojazd\195\179w" then
          exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
          return
        end
        if getElementData(localPlayer, "player:job") then
          exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
          return
        end
        if getElementData(localPlayer, "org:przestepcza") then
          triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "enter", localPlayer, (getElementData(localPlayer, "player:organization")))
        elseif getElementData(localPlayer, "org:group") then
          triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "enter", localPlayer, getElementData(localPlayer, "player:organization"), true)
        end
      else
        exports.st_gui:showPlayerNotification("Nie jeste\197\155 w organizacji lub grupie przestepczej.", "error")
      end
    elseif isMouseIn(windowPos.x + 760 / zoom, windowPos.y + 60 / zoom, 32 / zoom, 32 / zoom) and windows.main == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(windowPos.x + 600 / zoom, windowPos.y + 60 / zoom, 32 / zoom, 32 / zoom) and windows.exitGarage == true then
      removeEventHandler("onClientRender", root, window)
      windows.exitGarage = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(windowPos.x + 350 / zoom, windowPos.y + 450 / zoom, 180 / zoom, 61 / zoom) and windows.exitGarage == true then
      fadeCamera(false)
      setTimer(function()
        triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "tppos", localPlayer, {
          3369.43,
          -1963.45,
          13.13,
          0
        })
      end, 1000, 1)
      setTimer(function()
        fadeCamera(true)
      end, 3000, 1)
      removeEventHandler("onClientRender", root, window)
      windows.exitGarage = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      endJob()
    end
  end
end)
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
getResourceName(getThisResource(), true, 28696703)
return
