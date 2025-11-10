tick = getTickCount()
randomPosition = {
  {
    -2080.2,
    477.35,
    35.17
  },
  {
    -2023.09,
    -41.94,
    35.36
  },
  {
    -2417.89,
    963.87,
    45.3
  },
  {
    -2631.57,
    2272.84,
    8.34
  },
  {
    -2186.73,
    -2322.2,
    30.63
  },
  {
    -1561.58,
    -2733.86,
    48.74
  },
  {
    24.25,
    -2646.65,
    40.46
  },
  {
    -381.67,
    -1438.88,
    25.73
  },
  {
    1919.5,
    946.48,
    10.82
  },
  {
    1898.58,
    678.25,
    10.82
  },
  {
    1022.4,
    2366.84,
    10.82
  },
  {
    249.44,
    -157.92,
    1.57
  },
  {
    702.52,
    -440.71,
    16.34
  },
  {
    2287.93,
    -2323.75,
    13.55
  },
  {
    411.42,
    -1320.25,
    14.91
  },
  {
    1552.98,
    2223.89,
    10.81
  }
}
windows = {start = false, shop = false}
function window()
  if getElementData(localPlayer, "player_Trade") then
    removeEventHandler("onClientRender", root, window)
    windows.start = false
    showCursor(false)
    return
  end
  if getElementData(localPlayer, "player_offerTrade") then
    removeEventHandler("onClientRender", root, window)
    windows.start = false
    showCursor(false)
    return
  end
  if windows.start == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KUPNO BRONI", _UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("bold23"), "center", "center", false, false, false, false, false)
    dxDrawText("Diler broni wyznaczy ci tras\196\153", _UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Wyznacz tras\196\153", _UPVALUE2_.x + 12 / _UPVALUE1_, _UPVALUE2_.y + 1 / _UPVALUE1_, 150 / _UPVALUE1_, 45 / _UPVALUE1_, 255)
  end
  if windows.shop == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KUPNO BRONI", _UPVALUE0_.x + 90 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h) then
      dxDrawImage(_UPVALUE3_.x - 1 / _UPVALUE1_, _UPVALUE3_.y - 1 / _UPVALUE1_, _UPVALUE3_.w + 2 / _UPVALUE1_, _UPVALUE3_.h + 2 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(items) do
      if _FORV_7_ >= _UPVALUE4_ and _FORV_7_ <= _UPVALUE5_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 720 / _UPVALUE1_, 64 / _UPVALUE1_, 4 / _UPVALUE1_, tocolor(20, 20, 20, 200), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 83 / _UPVALUE1_, _UPVALUE0_.y + 112 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 60 / _UPVALUE1_, 60 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(27, 27, 27, 230))
        dxDrawImage(_UPVALUE0_.x + 83 / _UPVALUE1_, _UPVALUE0_.y + 112 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 60 / _UPVALUE1_, 60 / _UPVALUE1_, _FORV_8_[3], 0, 0, 0, tocolor(200, 200, 200, 255), false)
        dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 136 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
        dxDrawText("Koszt: " .. przecinek(_FORV_8_[2]) .. " PLN", _UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 136 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, false, false)
        exports.ST_buttons:dxCreateButton("Zakup", _UPVALUE2_.x + 320 / _UPVALUE1_, _UPVALUE2_.y - 328 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 120 / _UPVALUE1_, 45 / _UPVALUE1_, 255)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.shop == true then
      for _FORV_6_, _FORV_7_ in ipairs(items) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and isMouseIn(_UPVALUE3_.x + 320 / _UPVALUE2_, _UPVALUE3_.y - 328 / _UPVALUE2_ + 68 / _UPVALUE2_ * (0 + 1 - 1), 120 / _UPVALUE2_, 45 / _UPVALUE2_) and windows.shop == true then
          if click then
            exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
            return
          end
          for _FORV_12_, _FORV_13_ in ipairs(player_table) do
            if _FORV_13_.rank ~= 5 then
              exports.st_gui:showPlayerNotification("Nie posiadasz rangi lidera", "error")
              return
            end
          end
          triggerServerEvent("evEwenciks_mwe64gtrf", resourceRoot, "buyItem", localPlayer, _FORV_7_[1], _FORV_7_[2])
          click = true
        end
      end
    end
    if isMouseIn(_UPVALUE3_.x + 12 / _UPVALUE2_, _UPVALUE3_.y + 1 / _UPVALUE2_, 150 / _UPVALUE2_, 45 / _UPVALUE2_) and windows.start == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.start = false
      showCursor(false)
      random = math.random(2, #randomPosition)
      shop = createMarker(randomPosition[random][1], randomPosition[random][2], randomPosition[random][3] - 0.9, "cylinder", 1.5, 246, 255, 0, 255)
      blip = createBlipAttachedTo(shop, 41)
      exports.st_gui:showPlayerNotification("Wyznaczono tras\196\153", "success")
    elseif isMouseIn(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h) and windows.shop == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.shop = false
      showCursor(false)
    end
  end
end)
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == shop then
    triggerServerEvent("evEwenciks_mwe64gtrf", resourceRoot, "selectUserOrganization", localPlayer, getElementData(localPlayer, "player:sid"))
    textures = {
      background = dxCreateTexture(":ST_gui/img/background1.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      m4_img = dxCreateTexture("img/m4_icon.png"),
      uzi_img = dxCreateTexture("img/uzi_icon.png"),
      obrzyn_img = dxCreateTexture("img/obrzyn_icon.png"),
      bejsbol_img = dxCreateTexture("img/bejsbol_icon.png"),
      lopata_img = dxCreateTexture("img/lopata_icon.png"),
      mp5_img = dxCreateTexture("img/mp5_icon.png"),
      tec9_img = dxCreateTexture("img/tec9_icon.png"),
      Deagle_icon = dxCreateTexture("img/Deagle_icon.png"),
      ak47_icon = dxCreateTexture("img/ak47_icon.png"),
      sniper_icon = dxCreateTexture("img/sniper_icon.png"),
      knife_icon = dxCreateTexture("img/knife_icon.png"),
      combat_icon = dxCreateTexture("img/combat_icon.png")
    }
    items = {}
    bonus = 0
    for _FORV_5_, _FORV_6_ in ipairs(table_info_org) do
      if _FORV_6_.upgrades_arms_dealer == 1 then
        bonus = -0.15
      else
        bonus = 0
      end
    end
    for _FORV_5_, _FORV_6_ in ipairs(area_table) do
      if _FORV_6_.id == 8 or _FORV_6_.id == 10 or _FORV_6_.id == 4 or _FORV_6_.id == 1 or _FORV_6_.id == 2 or _FORV_6_.id == 13 then
        table.insert(items, {
          "Noz",
          1100000 + 1100000 * bonus,
          textures.knife_icon
        })
        table.insert(items, {
          "Bejsbol",
          900000 + 900000 * bonus,
          textures.bejsbol_img
        })
        table.insert(items, {
          "\197\129opata",
          700000 + 700000 * bonus,
          textures.lopata_img
        })
      end
      if _FORV_6_.id == 24 or _FORV_6_.id == 25 then
        table.insert(items, {
          "Tec9",
          2200000 + 2200000 * bonus,
          textures.tec9_img
        })
        table.insert(items, {
          "Uzi",
          2500000 + 2500000 * bonus,
          textures.uzi_img
        })
        table.insert(items, {
          "Karabin snajperski",
          5500000 + 5500000 * bonus,
          textures.sniper_icon
        })
        table.insert(items, {
          "AK47",
          4300000 + 4300000 * bonus,
          textures.ak47_icon
        })
        table.insert(items, {
          "Strzelba bojowa",
          4000000 + 4000000 * bonus,
          textures.combat_icon
        })
        table.insert(items, {
          "M4",
          4600000 + 4600000 * bonus,
          textures.m4_img
        })
        table.insert(items, {
          "MP5",
          3100000 + 3100000 * bonus,
          textures.mp5_img
        })
        table.insert(items, {
          "Deagle",
          1900000 + 1900000 * bonus,
          textures.Deagle_icon
        })
      end
    end
    addEventHandler("onClientRender", root, window)
    windows.shop = true
    showCursor(true)
    if isElement(shop) then
      destroyElement(shop)
      shop = nil
    end
    if isElement(blip) then
      destroyElement(blip)
      blip = nil
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showGui" then
    if _ARG_1_ then
      if getElementData(localPlayer, "org:przestepcza") then
        area_table = _ARG_2_
        isArea = false
        for _FORV_10_, _FORV_11_ in ipairs(area_table) do
          if _FORV_11_.id == 8 or _FORV_11_.id == 10 or _FORV_11_.id == 4 or _FORV_11_.id == 1 or _FORV_11_.id == 2 or _FORV_11_.id == 13 or _FORV_11_.id == 24 or _FORV_11_.id == 25 then
            isArea = true
            player_table = {}
            table_info_org = {}
            triggerServerEvent("evEwenciks_mwe64gtrf", resourceRoot, "selectUserOrganization", localPlayer, getElementData(localPlayer, "player:sid"))
            if isElement(shop) then
              exports.st_gui:showPlayerNotification("Diler ju\197\188 ci wyznaczy\197\130 tras\196\153", "error")
              return
            end
            textures = {
              background = dxCreateTexture(":ST_gui/img/background1.png"),
              cross = dxCreateTexture(":ST_gui/img/cross.png"),
              m4_img = dxCreateTexture("img/m4_icon.png"),
              uzi_img = dxCreateTexture("img/uzi_icon.png"),
              obrzyn_img = dxCreateTexture("img/obrzyn_icon.png"),
              bejsbol_img = dxCreateTexture("img/bejsbol_icon.png"),
              lopata_img = dxCreateTexture("img/lopata_icon.png"),
              mp5_img = dxCreateTexture("img/mp5_icon.png"),
              tec9_img = dxCreateTexture("img/tec9_icon.png"),
              Deagle_icon = dxCreateTexture("img/Deagle_icon.png"),
              ak47_icon = dxCreateTexture("img/ak47_icon.png"),
              sniper_icon = dxCreateTexture("img/sniper_icon.png"),
              knife_icon = dxCreateTexture("img/knife_icon.png"),
              combat_icon = dxCreateTexture("img/combat_icon.png")
            }
            addEventHandler("onClientRender", root, window)
            windows.start = true
            showCursor(true, false)
          end
        end
      end
    else
      for _FORV_10_, _FORV_11_ in pairs(textures) do
        if isElement(_FORV_11_) then
          destroyElement(_FORV_11_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.start = false
      showCursor(false)
    end
  elseif _ARG_0_ == "selectUserOrganizationClient" then
    player_table = _ARG_1_
    table_info_org = _ARG_2_
  elseif _ARG_0_ == "click" then
    click = false
  end
end)
function przecinek(_ARG_0_)
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
bindKey("mouse_wheel_down", "both", function()
  if windows.shop == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.shop == true then
    scrollDown()
  end
end)
function scrollDown()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp()
  if _UPVALUE0_ >= #items then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
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
getResourceName(getThisResource(), true, 91994905)
return
