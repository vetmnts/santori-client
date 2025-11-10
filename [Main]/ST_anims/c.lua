screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windows = {main = false}
k = 1
n = 13
m = 13
customIfp = engineLoadIFP("a/ft1.ifp", "Fortnite_1")
customIfp2 = engineLoadIFP("a/ft2.ifp", "Fortnite_2")
customIfp3 = engineLoadIFP("a/ft3.ifp", "Fortnite_3")
customOtur = engineLoadIFP("a/a1.ifp", "otur")
customSinav = engineLoadIFP("a/a2.ifp", "sinav")
customHandsup = engineLoadIFP("a/a3.ifp", "handsup")
function window()
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y - 2 / zoom, _UPVALUE0_.w + 4 / zoom, _UPVALUE0_.h + 4 / zoom, 25 / zoom, tocolor(255, 196, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 25 / zoom, tocolor(30, 30, 30, 255))
    dxDrawText("PANEL ANIMACJI", _UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y - 145 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 50 / zoom, _UPVALUE0_.w - 40 / zoom, 2 / zoom, 2 / zoom, tocolor(255, 196, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 58 / zoom, 200 / zoom, _UPVALUE0_.h - 108 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 58 / zoom, 200 / zoom, _UPVALUE0_.h - 108 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("ABY WY\197\129\196\132CZY\196\134 ANIMACJ\196\152 KLIKNIJ \"#ffbb00ENTER#e6e6e6\"\nKOMENDY ANIMACJI DOST\196\152PN\196\152 POD /#ffbb00animacje", _UPVALUE0_.x + 90 / zoom, _UPVALUE0_.y + 808 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(categories) do
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom, 7 / zoom, tocolor(27, 27, 27, 255))
        dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y - 50 / zoom + 64 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 63 / zoom + 32 / zoom * (xY - 1), 27 / zoom, 27 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom, 7 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y - 50 / zoom + 64 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 63 / zoom + 32 / zoom * (xY - 1), 27 / zoom, 27 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    if category == "Ulubione" then
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(ulubione) do
        if _FORV_7_ >= k and _FORV_7_ <= n then
          xY = xY + 1
          if isMouseIn(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom) then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom, 7 / zoom, tocolor(27, 27, 27, 255))
            dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 242 / zoom, _UPVALUE0_.y - 49 / zoom + 64 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom, 7 / zoom, tocolor(30, 30, 30, 255))
            dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 242 / zoom, _UPVALUE0_.y - 49 / zoom + 64 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
          end
          if _FORV_8_[3] == "custom" then
            dxDrawImage(_UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y + 65 / zoom + 32 / zoom * (xY - 1), 22 / zoom, 22 / zoom, textures.man_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
      end
    else
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(animations_table) do
        if _FORV_7_ >= k and _FORV_7_ <= n then
          xY = xY + 1
          if isMouseIn(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom) then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom, 7 / zoom, tocolor(27, 27, 27, 255))
            dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 242 / zoom, _UPVALUE0_.y - 49 / zoom + 64 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (xY - 1), 190 / zoom, 29 / zoom, 7 / zoom, tocolor(30, 30, 30, 255))
            dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 242 / zoom, _UPVALUE0_.y - 49 / zoom + 64 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
          end
          savedNameUlubione = {}
          for _FORV_14_, _FORV_15_ in ipairs(ulubione) do
            if _FORV_8_[1] == _FORV_15_[1] then
              savedNameUlubione[_FORV_8_[1]] = true
            end
          end
          if savedNameUlubione[_FORV_8_[1]] then
            dxDrawImage(_UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y + 65 / zoom + 32 / zoom * (xY - 1), 22 / zoom, 22 / zoom, textures.star_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
          else
            dxDrawImage(_UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y + 65 / zoom + 32 / zoom * (xY - 1), 22 / zoom, 22 / zoom, textures.star_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
          end
        end
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(categories) do
        if isMouseIn(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y + 62 / zoom + 32 / zoom * (0 + 1 - 1), 190 / zoom, 29 / zoom) and windows.main == true then
          if _FORV_7_.name == "Ulubione" then
            category = "Ulubione"
            ulubione = {}
            loadFavourites()
          else
            animations_table = animationsS[_FORV_7_.name]
            category = _FORV_7_.name
          end
        end
      end
    end
    if windows.main == true then
      if category == "Ulubione" then
        for _FORV_6_, _FORV_7_ in ipairs(ulubione) do
          if _FORV_6_ >= k and _FORV_6_ <= n and isMouseIn(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 60 / zoom + 32 / zoom * (0 + 1 - 1), 150 / zoom, 25 / zoom) then
            if getElementData(localPlayer, "player:bw") then
              return
            end
            if getElementData(localPlayer, "player:job") then
              return
            end
            if _FORV_7_.typeAnim == "custom" then
              bindKey("enter", "down", endAnimationCustom)
              useAnimsCustom = true
            else
              bindKey("enter", "down", endAnimation)
            end
            triggerServerEvent("ev", resourceRoot, "animations", localPlayer, _FORV_7_.animation, _FORV_7_.typeAnim)
          end
        end
      else
        for _FORV_6_, _FORV_7_ in ipairs(animations_table) do
          if _FORV_6_ >= k and _FORV_6_ <= n then
            if isMouseIn(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 60 / zoom + 32 / zoom * (0 + 1 - 1), 150 / zoom, 25 / zoom) then
              if getElementData(localPlayer, "player:bw") then
                return
              end
              if getElementData(localPlayer, "player:job") then
                return
              end
              if _FORV_7_.typeAnim == "custom" then
                bindKey("enter", "down", endAnimationCustom)
                useAnimsCustom = true
              else
                bindKey("enter", "down", endAnimation)
              end
              triggerServerEvent("ev", resourceRoot, "animations", localPlayer, _FORV_7_.animation, _FORV_7_.typeAnim)
            end
            savedNameUlubione = {}
            for _FORV_12_, _FORV_13_ in ipairs(ulubione) do
              if _FORV_7_[1] == _FORV_13_[1] then
                savedNameUlubione[_FORV_7_[1]] = true
              end
            end
            if isMouseIn(_UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y + 65 / zoom + 32 / zoom * (0 + 1 - 1), 22 / zoom, 22 / zoom) then
              if savedNameUlubione[_FORV_7_[1]] then
                removeFromFavourite(animationsS[category][_FORV_6_])
              else
                addToFavourite(animationsS[category][_FORV_6_], false, true)
              end
            end
          end
        end
      end
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showGuiOrganizationInfoClient" then
  elseif _ARG_0_ == "animationsCustom" then
    if #plrAnims > 50 then
      return
    end
    table.removeValue(plrAnims, _ARG_1_)
    table.insert(plrAnims, {_ARG_1_, _ARG_2_})
  elseif _ARG_0_ == "endAnimationCustomClient" then
    table.removeValue(plrAnims, _ARG_1_)
  elseif _ARG_0_ == "animationsCustomFortnite" then
    if type(_ARG_2_) ~= "string" or type(-1) ~= "number" or type(true) ~= "boolean" or type(false) ~= "boolean" or type(false) ~= "boolean" then
      return false
    end
    if isElement(_ARG_1_) and (_ARG_2_ == "baile 1" or _ARG_2_ == "baile 2" or _ARG_2_ == "baile 3" or _ARG_2_ == "baile 4" or _ARG_2_ == "baile 5" or _ARG_2_ == "baile 6" or _ARG_2_ == "baile 7" or _ARG_2_ == "baile 8" or _ARG_2_ == "baile 9" or _ARG_2_ == "baile 10" or _ARG_2_ == "baile 11" or _ARG_2_ == "baile 12" or _ARG_2_ == "baile 13") then
      for _FORV_9_ = 1, 3 do
        setPedAnimation(_ARG_1_, "Fortnite_" .. _FORV_9_ .. "", _ARG_2_, -1, true, false, false)
        if -1 > 1 then
          setTimer(setPedAnimation, -1, 1, _ARG_1_, false)
          setTimer(setPedAnimation, 99, 1, _ARG_1_, false)
        end
      end
    end
  elseif _ARG_0_ == "animationsCustomOtur" then
    setPedAnimation(_ARG_1_, "otur", "WEAPON_crouch", -1, true, false)
  elseif _ARG_0_ == "animationsCustomSinav" then
    setPedAnimation(_ARG_1_, "sinav", "Otji_2", -1, true, false)
  elseif _ARG_0_ == "animationsCustomSinav" then
    setPedAnimation(_ARG_1_, "handsup", "SHP_HandsUp_Scr", -1, false, false)
  elseif _ARG_0_ == "customAclient" then
    setPedAnimation(_ARG_1_, _ARG_2_[1], _ARG_2_[2], _ARG_2_[3], _ARG_2_[4], _ARG_2_[5])
  end
end)
function table.removeValue(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_[1] == _ARG_1_ then
      table.remove(_ARG_0_, _FORV_5_)
      return _FORV_5_
    end
  end
  return false
end
function endAnimation()
  triggerServerEvent("ev", resourceRoot, "endAnimation", localPlayer)
  unbindKey("ENTER", "down", endAnimation)
end
function endAnimationCustom()
  triggerServerEvent("ev", resourceRoot, "endAnimationCustom", localPlayer)
  unbindKey("ENTER", "down", endAnimationCustom)
  useAnimsCustom = false
end
bindKey("j", "down", function()
  if not getElementData(localPlayer, "player:sid") then
    return
  end
  if windows.main == true then
    windows.main = false
    removeEventHandler("onClientRender", root, window)
  else
    ulubione = {}
    loadFavourites()
    animations_table = {}
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      lying_icon = dxCreateTexture("img/lying_icon.png"),
      seat_icon = dxCreateTexture("img/seat_icon.png"),
      star_icon = dxCreateTexture("img/star_icon.png"),
      dance_icon = dxCreateTexture("img/dance_icon.png"),
      car_icon = dxCreateTexture("img/car_icon.png"),
      c18_icon = dxCreateTexture("img/c18_icon.png"),
      talk_icon = dxCreateTexture("img/talk_icon.png"),
      man_icon = dxCreateTexture("img/man_icon.png"),
      other_icon = dxCreateTexture("img/other_icon.png"),
      gesture_icon = dxCreateTexture("img/gesture_icon.png"),
      gang_icon = dxCreateTexture("img/gang_icon.png")
    }
    categories = {
      {
        name = "Ulubione",
        icon = textures.star_icon
      },
      {
        name = "Ta\197\132ce",
        icon = textures.dance_icon
      },
      {
        name = "Rozmowa",
        icon = textures.talk_icon
      },
      {
        name = "Siedzenie",
        icon = textures.seat_icon
      },
      {
        name = "Le\197\188enie",
        icon = textures.lying_icon
      },
      {
        name = "Samoch\195\179d",
        icon = textures.car_icon
      },
      {
        name = "Postawa",
        icon = textures.man_icon
      },
      {
        name = "Style chodzenia",
        icon = textures.dance_icon
      },
      {
        name = "Erotyczne (18+)",
        icon = textures.c18_icon
      },
      {
        name = "Gesty",
        icon = textures.gesture_icon
      },
      {
        name = "Gangowe",
        icon = textures.gang_icon
      },
      {
        name = "Inne",
        icon = textures.other_icon
      },
      {
        name = "Customowe animacje",
        icon = textures.man_icon
      }
    }
    addEventHandler("onClientRender", root, window)
    windows.main = true
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
function przecinek(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
function addToFavourite(_ARG_0_, _ARG_1_, _ARG_2_)
  table.insert(ulubione, _ARG_0_)
  if _ARG_2_ then
    saveFavourites()
  end
end
function removeFromFavourite(_ARG_0_)
  for _FORV_4_, _FORV_5_ in pairs(ulubione) do
    if _FORV_5_[1] == _ARG_0_[1] then
      table.remove(ulubione, _FORV_4_)
      break
    end
  end
  saveFavourites()
end
function saveFavourites()
  if fileExists("saveAnims.xml") then
    fileDelete("saveAnims.xml")
  end
  if not xmlCreateFile("saveAnims.xml", "saveAnims") then
    return
  end
  for _FORV_4_, _FORV_5_ in pairs(ulubione) do
    xmlNodeSetValue(xmlCreateChild(xmlCreateFile("saveAnims.xml", "saveAnims"), "animation"), _FORV_5_[1])
  end
  xmlSaveFile((xmlCreateFile("saveAnims.xml", "saveAnims")))
  xmlUnloadFile((xmlCreateFile("saveAnims.xml", "saveAnims")))
end
function loadFavourites()
  if not xmlLoadFile("saveAnims.xml") then
    createXml()
    return
  end
  for _FORV_5_, _FORV_6_ in pairs(xmlNodeGetChildren((xmlLoadFile("saveAnims.xml")))) do
  end
  for _FORV_5_, _FORV_6_ in pairs(animationsS) do
    for _FORV_10_, _FORV_11_ in pairs(animationsS[_FORV_5_]) do
      if ({
        [xmlNodeGetValue(_FORV_6_)] = true
      })[_FORV_11_[1]] then
        addToFavourite(_FORV_11_)
      end
    end
  end
end
function createXml()
  xmlSaveFile((xmlCreateFile("saveAnims.xml", "saveAnims")))
  xmlUnloadFile((xmlCreateFile("saveAnims.xml", "saveAnims")))
  loadFavourites()
end
plrAnims = {}
addEventHandler("onClientPedsProcessed", root, function()
  for _FORV_3_, _FORV_4_ in ipairs(plrAnims) do
    for _FORV_8_, _FORV_9_ in ipairs(_UPVALUE0_[_FORV_4_[2]]) do
      setElementBoneRotation(_FORV_4_[1], _FORV_9_[1], _FORV_9_[2], _FORV_9_[3], _FORV_9_[4])
    end
    updateElementRpHAnim(_FORV_4_[1])
  end
end)
bindKey("mouse_wheel_down", "both", function()
  if windows.main == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.main == true then
    scrollDown()
  end
end)
function scrollDown()
  if n == m then
    return
  end
  k = k - 1
  n = n - 1
end
function scrollUp()
  if n >= #animations_table then
    return
  end
  k = k + 1
  n = n + 1
end
categoriesXD = {
  {name = "Ta\197\132ce"},
  {name = "Rozmowa"},
  {name = "Siedzenie"},
  {name = "Le\197\188enie"},
  {name = "Samoch\195\179d"},
  {name = "Postawa"},
  {
    name = "Style chodzenia"
  },
  {
    name = "Erotyczne (18+)"
  },
  {name = "Gesty"},
  {name = "Gangowe"},
  {name = "Inne"},
  {
    name = "Customowe animacje"
  }
}
for _FORV_6_, _FORV_7_ in ipairs(categoriesXD) do
  for _FORV_11_, _FORV_12_ in ipairs(animationsS[_FORV_7_.name]) do
    if _FORV_12_.command then
      addCommandHandler(_FORV_12_.command, function()
        if getElementData(localPlayer, "player:bw") then
          return
        end
        if getElementData(localPlayer, "player:job") then
          return
        end
        if _UPVALUE0_.typeAnim == "custom" then
          bindKey("enter", "down", endAnimationCustom)
          useAnimsCustom = true
        else
          bindKey("enter", "down", endAnimation)
        end
        triggerServerEvent("ev", resourceRoot, "animations", localPlayer, _UPVALUE0_.animation, _UPVALUE0_.typeAnim)
      end)
    end
  end
end
addCommandHandler("animacje", function()
  for _FORV_3_, _FORV_4_ in ipairs(categoriesXD) do
    outputChatBox("#ffffff" .. _FORV_4_.name .. "", 255, 255, 255, true)
    for _FORV_8_, _FORV_9_ in ipairs(animationsS[_FORV_4_.name]) do
      if _FORV_9_.command then
        outputChatBox("#ffc400\226\128\162 #ffffff/#ffc400" .. _FORV_9_.command .. "", 255, 255, 255, true)
      end
    end
  end
end)
getResourceName(getThisResource(), true, 915248704)
return
