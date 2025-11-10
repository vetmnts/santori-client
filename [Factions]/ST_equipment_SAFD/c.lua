screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windows = {background = false}
textures = {}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    xY = 0
    for _FORV_7_ = 1, 9 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 72 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 60 / zoom, 50 / zoom, 15 / zoom, tocolor(50, 50, 50, 30), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 60 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("SCHOWEK", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(items) do
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 72 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 60 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 72 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 60 / zoom, 50 / zoom, 15 / zoom, tocolor(80, 80, 80, 30), false)
        dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 45 / zoom, _UPVALUE0_.y - 5 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 72 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 60 / zoom, 50 / zoom, 15 / zoom, tocolor(130, 130, 130, 30), false)
        dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 45 / zoom, _UPVALUE0_.y - 5 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      end
    end
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and getElementData(source, "markerEquipmnetSAFD") and getElementData(_ARG_0_, "player:faction") == "SAFD" then
    if windows.background == true then
      return
    end
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png")
    }
    if getElementData(localPlayer, "vehicle:jumping") then
      useSkokochron = "Schowaj"
    else
      useSkokochron = "Wyjmij"
    end
    if getElementData(localPlayer, "user:line") then
      useWaz = "Schowaj"
    else
      useWaz = "Wyjmij"
    end
    if getElementModel(localPlayer) == 276 then
      useSkin = "Zdejmij"
    else
      useSkin = "Za\197\130\195\179\197\188"
    end
    if not useWiadro then
      useWiadro = "Wyjmij"
    end
    if not usePila then
      usePila = "Wyjmij"
    end
    items = {
      {name = "Ga\197\155nica", use = "Wyjmij"},
      {
        name = "Pi\197\130a mechaniczna",
        use = usePila
      },
      {name = "Skokochron", use = useSkokochron},
      {name = "W\196\133\197\188", use = useSkin},
      {name = "Rozpierak", use = "Wyjmij"},
      {name = "Skin AODO", use = useSkin},
      {name = "Hooligan", use = "Wyjmij"},
      {
        name = "Wiadro z sorbentem",
        use = useWiadro
      }
    }
    showCursor(true, false)
    addEventHandler("onClientRender", root, window)
    windows.background = true
  end
end)
addEventHandler("onClientMarkerLeave", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and getElementData(source, "markerEquipmnetSAFD") then
    showCursor(false)
    removeEventHandler("onClientRender", root, window)
    windows.background = false
    for _FORV_5_, _FORV_6_ in pairs(textures) do
      if isElement(_FORV_6_) then
        destroyElement(_FORV_6_)
      end
    end
    textures = {}
  end
end)
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and windows.background == true then
    for _FORV_6_, _FORV_7_ in ipairs(items) do
      if isMouseIn(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 72 / zoom + math.floor(53 / zoom) * (0 + 1 - 1), _UPVALUE0_.w - 60 / zoom, 50 / zoom) and windows.background == true then
        showCursor(false)
        removeEventHandler("onClientRender", root, window)
        windows.background = false
        for _FORV_12_, _FORV_13_ in pairs(textures) do
          if isElement(_FORV_13_) then
            destroyElement(_FORV_13_)
          end
        end
        textures = {}
        if _FORV_7_.name == "Ga\197\155nica" then
          triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "wyci\196\133ga ga\197\155nic\196\153 ze schowka")
          triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "gasnica")
          exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to ga\197\155nic\196\153", "success")
        elseif _FORV_7_.name == "Pi\197\130a mechaniczna" then
          if usePila == "Wyjmij" then
            usePila = "Schowaj"
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "wyci\196\133ga pi\197\130\196\153 mechaniczn\196\133 ze schowka")
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "pila", true)
            exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to pi\197\130\196\153 mechaniczn\196\133", "success")
          else
            usePila = "Wyjmij"
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "chowa pi\197\130\196\153 mechaniczn\196\133 ze schowka")
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "pila", false)
            exports.st_gui:showPlayerNotification("Schowano pi\197\130\196\153 mechaniczn\196\133", "info")
          end
        elseif _FORV_7_.name == "Skokochron" then
          if getElementData(localPlayer, "vehicle:jumping") then
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "chowa skokochron do schowka")
            setElementData(localPlayer, "vehicle:jumping", false)
            exports.st_gui:showPlayerNotification("Schowano skokochron do schowka", "success")
          else
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "wyci\196\133ga skokochron ze schowka")
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "skokochron")
            exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to skokochron do schowka\n(u\197\188ycie /skokochron)", "success")
          end
        elseif _FORV_7_.name == "W\196\133\197\188" then
          if getElementData(localPlayer, "user:line") then
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "chowa w\196\133\197\188 stra\197\188acki")
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "waz", true)
            exports.st_gui:showPlayerNotification("Schowano w\196\133\197\188 stra\197\188acki", "success")
          else
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "wyci\196\133ga w\196\133\197\188 stra\197\188acki")
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "waz", false)
            exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to w\196\133\197\188 stra\197\188acki", "success")
          end
        elseif _FORV_7_.name == "Rozpierak" then
          triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "wyci\196\133ga rozpierak ze schowka")
          triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "rozpierak")
          exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to rozpierak\n(podejd\197\186 do drzwi pojazdu i kliknij \"h\")", "success")
        elseif _FORV_7_.name == "Skin AODO" then
          if getElementModel(localPlayer) == 276 then
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "setElementModel", localPlayer, false)
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "zdejmuje skin AODO")
            if isElement(soundAodo) then
              destroyElement(soundAodo)
            end
          else
            setElementData(localPlayer, "lastSkinEK", getElementModel(localPlayer))
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "zak\197\130ada skin AODO")
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "setElementModel", localPlayer, true)
            soundAodo = playSound("images/sound_aodo.wav", true)
          end
        elseif _FORV_7_.name == "Hooligan" then
          triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "wyci\196\133ga hooligan'a ze schowka")
          triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "hooligan")
          exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to hooligan'a\n(podejd\197\186 do maski lub baga\197\188nika pojazdu i kliknij 'h')", "success")
        elseif _FORV_7_.name == "Wiadro z sorbentem" then
          if useWiadro == "Wyjmij" then
            outputChatBox("\226\151\143#ffffff Kliknij \"#FFC000R#ffffff\", aby po\197\130o\197\188y\196\135 wiaderko na ziemi", 255, 175, 0, true)
            useWiadro = "Schowaj"
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "wyci\196\133ga wiadro z sorbentem ze schowka")
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "Wiadro z sorbentem", true)
            exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to wiadro z sorbentem", "success")
          else
            useWiadro = "Wyjmij"
            _UPVALUE1_ = {}
            _UPVALUE1_.table_oil = {}
            removeEventHandler("onClientRender", root, renderPlamki)
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "chatME", localPlayer, "chowa wiadro z sorbentem ze schowka")
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "giveItems", localPlayer, "Wiadro z sorbentem", false)
            exports.st_gui:showPlayerNotification("Schowano wiadro z sorbentem", "info")
          end
        end
      end
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
function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
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
addEventHandler("onClientPlayerDamage", root, function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 41 then
    cancelEvent()
  end
  if _ARG_1_ == 41 and _ARG_0_ and getElementData(_ARG_0_, "player:faction") == "SAFD" then
    if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) > 2 then
      return
    end
    if getElementHealth(localPlayer) + 1 < 100 then
      setElementHealth(localPlayer, getElementHealth(localPlayer) + 1)
      if math.floor(getElementHealth(localPlayer) + 1) == 99 then
        setElementHealth(localPlayer, 100)
        triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "heal", localPlayer, _ARG_0_)
      end
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "renderPlamki" then
    if _ARG_2_ then
      _UPVALUE0_ = {}
      _UPVALUE0_.table_oil = _ARG_1_
      if not isEventHandlerAdded("onClientRender", root, renderPlamki) then
        addEventHandler("onClientRender", root, renderPlamki)
      end
    else
      _UPVALUE0_ = {}
      removeEventHandler("onClientRender", root, renderPlamki)
    end
  elseif _ARG_0_ == "moznaPodniesc" then
    if _ARG_2_ then
      _UPVALUE0_.wiadro = _ARG_1_
    else
      _UPVALUE0_.wiadro = false
    end
  elseif _ARG_0_ == "renderDrzewa" then
    if _ARG_3_ == true then
      selfDrzewa = {}
      selfDrzewa.count = 0
      if not isEventHandlerAdded("onClientRender", root, renderDrzewa) then
        addEventHandler("onClientRender", root, renderDrzewa)
      end
    end
    selfDrzewa.objectTresss = _ARG_1_
    selfDrzewa.drewnoTable = _ARG_2_
    if _ARG_3_ == "trzyma" then
      selfDrzewa.oddanie = {
        _ARG_4_[1],
        _ARG_4_[2],
        _ARG_4_[3]
      }
    elseif _ARG_3_ == "odklada" then
      if not selfDrzewa.oddanieCount then
        selfDrzewa.oddanieCount = 0
      end
      selfDrzewa.oddanieCount = selfDrzewa.oddanieCount + 1
      if 3 <= selfDrzewa.oddanieCount then
        selfDrzewa.oddanieCount = 0
        triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "moneyTree", localPlayer)
      end
      selfDrzewa.oddanie = false
    elseif _ARG_3_ == "Schowaj" then
      selfDrzewa = {}
      if isEventHandlerAdded("onClientRender", root, renderDrzewa) then
        removeEventHandler("onClientRender", root, renderDrzewa)
      end
    end
  end
end)
function generatePositionsAround(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  for _FORV_9_ = 0, _ARG_4_ - 1 do
    table.insert({}, {
      _ARG_0_ + _ARG_3_ * math.cos(_FORV_9_ / _ARG_4_ * 2 * math.pi),
      _ARG_1_ + _ARG_3_ * math.sin(_FORV_9_ / _ARG_4_ * 2 * math.pi),
      _ARG_2_
    })
  end
  return {}
end
function renderPlamki()
  if not _UPVALUE0_.wiadro then
    for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE0_.table_oil) do
      for _FORV_13_, _FORV_14_ in ipairs((generatePositionsAround(tonumber(split(_FORV_7_.pos, ",")[1]), tonumber(split(_FORV_7_.pos, ",")[2]), tonumber(split(_FORV_7_.pos, ",")[3]), 0.8, 4))) do
        if getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) and getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) and math.floor(getDistanceBetweenPoints3D(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3], getElementPosition(localPlayer))) < 100 then
          dxDrawText("\226\134\134", getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) - 83, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200))
          dxDrawText("\226\134\134", getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) - 85, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200))
          dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) + 2, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200))
          dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200))
          if math.floor(getDistanceBetweenPoints3D(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3], getElementPosition(localPlayer))) < 0.3 then
            dxDrawCircle(getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200))
            dxDrawText("H", getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) - screenW / 4, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) + 162 / zoom, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200) + screenW / 4, getScreenFromWorldPosition(_FORV_14_[1], _FORV_14_[2], _FORV_14_[3] - 0.1, 200))
            if getKeyState("H") and not clickC then
              clickC = true
              triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "createGravelOil", localPlayer, {
                _FORV_14_[1],
                _FORV_14_[2],
                _FORV_14_[3]
              }, _FORV_7_.id)
              setTimer(function()
                clickC = false
              end, 2100, 1)
            end
          end
        end
      end
    end
  end
  if _UPVALUE0_.wiadro and getScreenFromWorldPosition(getElementPosition(_UPVALUE0_.wiadro)) and getScreenFromWorldPosition(getElementPosition(_UPVALUE0_.wiadro)) and 3 > math.floor(getDistanceBetweenPoints3D(getElementPosition(_UPVALUE0_.wiadro))) then
    dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_UPVALUE0_.wiadro)))
    dxDrawText("R", getScreenFromWorldPosition(getElementPosition(_UPVALUE0_.wiadro)) - screenW / 4, getScreenFromWorldPosition(getElementPosition(_UPVALUE0_.wiadro)) + 162 / zoom, getScreenFromWorldPosition(getElementPosition(_UPVALUE0_.wiadro)) + screenW / 4, getScreenFromWorldPosition(getElementPosition(_UPVALUE0_.wiadro)))
    if getKeyState("R") and not clickC then
      _UPVALUE0_.wiadro = false
      triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "podnies_wiadro", localPlayer, true)
      setTimer(function()
        clickC = false
      end, 1500, 1)
    end
  end
end
function renderDrzewa()
  for _FORV_6_, _FORV_7_ in ipairs(selfDrzewa.objectTresss) do
    for _FORV_17_ = 1.5, 6, 1.8 do
      table.insert({}, {
        tonumber(split(_FORV_7_.pos, ",")[1]) + _FORV_17_ * math.cos((math.rad((tonumber(split(_FORV_7_.pos, ",")[4] - 90))))),
        tonumber(split(_FORV_7_.pos, ",")[2]) + _FORV_17_ * math.sin((math.rad((tonumber(split(_FORV_7_.pos, ",")[4] - 90))))),
        (tonumber(split(_FORV_7_.pos, ",")[3]))
      })
      table.insert(_UPVALUE0_, true)
    end
    for _FORV_17_, _FORV_18_ in ipairs({}) do
      if _UPVALUE0_[_FORV_17_] and getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) and getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) and math.floor(getDistanceBetweenPoints3D(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3], getElementPosition(localPlayer))) < 100 then
        dxDrawText("\226\134\134", getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) - 83, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200))
        dxDrawText("\226\134\134", getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) - 85, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200))
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) + 2, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200))
        dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200))
        if math.floor(getDistanceBetweenPoints3D(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3], getElementPosition(localPlayer))) < 0.3 then
          dxDrawCircle(getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200))
          dxDrawText("H", getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) - screenW / 4, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) + 162 / zoom, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200) + screenW / 4, getScreenFromWorldPosition(_FORV_18_[1], _FORV_18_[2], _FORV_18_[3] + 0.5, 200))
          if getKeyState("H") and not clickC then
            selfDrzewa.count = selfDrzewa.count + 1
            clickC = true
            _UPVALUE0_[_FORV_17_] = false
            triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "animationSaw", localPlayer)
            if 3 <= selfDrzewa.count then
              setTimer(function()
                for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
                  if not _UPVALUE1_[_FORV_4_] then
                    table.insert({}, _FORV_5_)
                  end
                end
                triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "scinanieDrewna", localPlayer, _UPVALUE2_.id, {}, _UPVALUE2_.posOddanie)
                _UPVALUE1_ = {}
                selfDrzewa.count = 0
              end, 3000, 1)
            end
            setTimer(function()
              clickC = false
            end, 1500, 1)
          end
        end
      end
    end
  end
  for _FORV_6_, _FORV_7_ in ipairs(selfDrzewa.drewnoTable) do
    if getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) and getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) and math.floor(getDistanceBetweenPoints3D(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3], getElementPosition(localPlayer))) < 100 then
      dxDrawText("\226\134\134", getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) - 83, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200))
      dxDrawText("\226\134\134", getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) - 85, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200))
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) + 2, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200))
      if 1.5 > math.floor(getDistanceBetweenPoints3D(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3], getElementPosition(localPlayer))) then
        dxDrawCircle(getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200))
        dxDrawText("H", getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) - screenW / 4, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) + 162 / zoom, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200) + screenW / 4, getScreenFromWorldPosition(_FORV_7_[1][1], _FORV_7_[1][2], _FORV_7_[1][3] - 0.1, 200))
        if getKeyState("H") and not clickC then
          clickC = true
          triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "attachTress", localPlayer, _FORV_7_[1])
          setTimer(function()
            clickC = false
          end, 1500, 1)
        end
      end
    end
  end
  if selfDrzewa.oddanie and getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) and getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) and 100 > math.floor(getDistanceBetweenPoints3D(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3], getElementPosition(localPlayer))) then
    dxDrawText("\226\134\134", getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - 83, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - 85, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + 2, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200))
    if 2 > math.floor(getDistanceBetweenPoints3D(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3], getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - 95 / zoom, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + 29 / zoom, 190 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - 94 / zoom, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + 30 / zoom, 188 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("ABY OD\197\129O\197\187Y\196\134 DREWNO KLIKNIJ", getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(selfDrzewa.oddanie[1], selfDrzewa.oddanie[2], selfDrzewa.oddanie[3] + 0.5, 200))
      if getKeyState("R") and not clickC then
        clickC = true
        triggerServerEvent("evEwenciks_lgdfnrj", resourceRoot, "odlozDrewno", localPlayer)
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
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
getResourceName(getThisResource(), true, 822878075)
return
