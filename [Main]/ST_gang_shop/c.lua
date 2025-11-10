setElementDimension(createMarker(3630.17, 7332.53, 798.2, "cylinder", 3, 255, 255, 255, 255), 5)
setElementDimension(createPed(19, 3630.17, 7332.53, 803.2, 60), 5)
setElementFrozen(createPed(19, 3630.17, 7332.53, 803.2, 60), true)
setElementDimension(createElement("text"), 5)
setElementPosition(createElement("text"), getElementPosition((createPed(19, 3630.17, 7332.53, 803.2, 60))))
setElementData(createElement("text"), "name", "Sprzedawca")
function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("SPRZEDAWCA", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 125 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 25 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(items) do
      if _FORV_7_ >= _UPVALUE3_ and _FORV_7_ <= _UPVALUE4_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_ + 70 / _UPVALUE2_ * (xY - 1), 820 / _UPVALUE2_, 64 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(20, 20, 20, 200), false)
        dxDrawRoundedRectangle(_UPVALUE1_.x + 32 / _UPVALUE2_, _UPVALUE1_.y + 77 / _UPVALUE2_ + 70 / _UPVALUE2_ * (xY - 1), 60 / _UPVALUE2_, 60 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE1_.x + 32 / _UPVALUE2_, _UPVALUE1_.y + 77 / _UPVALUE2_ + 70 / _UPVALUE2_ * (xY - 1), 60 / _UPVALUE2_, 60 / _UPVALUE2_, _FORV_8_[3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_[1], _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y - 20 / _UPVALUE2_ + 140 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE1_.x + 720 / _UPVALUE2_, _UPVALUE1_.y + 85 / _UPVALUE2_ + 70 / _UPVALUE2_ * (xY - 1), 120 / _UPVALUE2_, 45 / _UPVALUE2_, 255, 1)
        dxDrawText("#00ad23" .. przecinek(_FORV_8_[2]) .. " #dededePLN", _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y + 42 / _UPVALUE2_ + 140 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        if _FORV_8_[4] then
          dxDrawText("Maski nie s\196\133 przystosowane do wszystkich skin\195\179w!", _UPVALUE1_.x + 270 / _UPVALUE2_, _UPVALUE1_.y + 10 / _UPVALUE2_ + 140 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 50), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        end
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(items) do
        if _FORV_6_ >= _UPVALUE1_ and _FORV_6_ <= _UPVALUE2_ and isMouseIn(_UPVALUE4_.x + 720 / _UPVALUE3_, _UPVALUE4_.y + 85 / _UPVALUE3_ + 68 / _UPVALUE3_ * (0 + 1 - 1), 120 / _UPVALUE3_, 45 / _UPVALUE3_) and _UPVALUE0_.main == true then
          if not lastTickCount then
            lastTickCount = 500
          end
          if getTickCount() - lastTickCount > 1000 then
            lastTickCount = getTickCount()
            if _UPVALUE5_ then
              exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
              return
            end
            triggerServerEvent("evEwenciks_35hjdhgkhf", resourceRoot, "buyItem", localPlayer, _FORV_7_[1], _FORV_7_[2], (getElementData(localPlayer, "player:sid")))
            _UPVALUE5_ = true
          else
            exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "info")
          end
        end
      end
    end
    if isMouseIn(_UPVALUE4_.x + _UPVALUE4_.w - 61 / _UPVALUE3_, _UPVALUE4_.y + 24 / _UPVALUE3_, 27 / _UPVALUE3_, 27 / _UPVALUE3_) and _UPVALUE0_.main == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      _UPVALUE0_.main = false
      showCursor(false)
    end
  end
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_.main == true then
      if _UPVALUE1_ == _UPVALUE2_ then
        return
      end
      _UPVALUE3_ = _UPVALUE3_ - 1
      _UPVALUE1_ = _UPVALUE1_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and _UPVALUE0_.main == true then
    if _UPVALUE1_ >= #items then
      return
    end
    _UPVALUE3_ = _UPVALUE3_ + 1
    _UPVALUE1_ = _UPVALUE1_ + 1
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "click" then
    _UPVALUE0_ = false
  end
end)
addEventHandler("onClientMarkerHit", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == _UPVALUE0_ then
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    if getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        mask_monster = dxCreateTexture(":ST_invetory/img/mask_monster.png"),
        mask_dog = dxCreateTexture(":ST_invetory/img/mask_dog.png"),
        mask_pig = dxCreateTexture(":ST_invetory/img/mask_pig.png"),
        mask_monkey = dxCreateTexture(":ST_invetory/img/mask_monkey.png"),
        mask1 = dxCreateTexture(":ST_invetory/img/mask1.png"),
        handcuffs_icon = dxCreateTexture(":ST_invetory/img/handcuffs_icon.png"),
        ammo_icon = dxCreateTexture(":ST_invetory/img/ammo_icon.png"),
        seeds_icon = dxCreateTexture(":ST_invetory/img/seeds_icon.png"),
        mask_icon = dxCreateTexture(":ST_invetory/img/mask_icon.png"),
        mask_pumpkin = dxCreateTexture(":ST_invetory/img/mask_pumpkin.png")
      }
      items = {
        {
          "Maska dyni",
          2500000,
          textures.mask_pumpkin,
          true
        },
        {
          "Maska potwora",
          2500000,
          textures.mask_monster,
          true
        },
        {
          "Maska hokejowa",
          2500000,
          textures.mask1,
          true
        },
        {
          "Maska ma\197\130py",
          2500000,
          textures.mask_monkey,
          true
        },
        {
          "Maska \197\155wini",
          2500000,
          textures.mask_pig,
          true
        },
        {
          "Maska psa",
          2500000,
          textures.mask_dog,
          true
        },
        {
          "Amunicja",
          100000,
          textures.ammo_icon
        },
        {
          "Kajdanki",
          2000000,
          textures.handcuffs_icon
        },
        {
          "Nasiona sativa",
          2000,
          textures.seeds_icon
        },
        {
          "Nasiona indica",
          2000,
          textures.seeds_icon
        },
        {
          "Maska",
          1000000,
          textures.mask_icon
        }
      }
      addEventHandler("onClientClick", root, click)
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientKey", root, key)
      _UPVALUE1_.main = true
      showCursor(true)
      _UPVALUE2_ = false
    else
      exports.st_gui:showPlayerNotification("Nie jeste\197\155 w organizacji lub grupie przestepczej.", "error")
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
getResourceName(getThisResource(), true, 724270293)
return
