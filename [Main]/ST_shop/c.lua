createBlip(204.2, -201.38, 7, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(1082.29, -1353.19, 15.02, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(1832.14, -1841.97, 13.58, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(2507.31, 1245.42, 10.82, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(-180.78, 1034.8, 19.74, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(1605.08, 760.49, 10.82, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(-2518.79, 2319.49, 4.98, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(-254.7, 2603.24, 62.86, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(-2079.5, -2448.03, 30.62, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(-1566.64, -2730.03, 48.74, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(-2442.62, 751.47, 35.18, 47, 2, 0, 0, 0, 0, 0, 250)
createBlip(1664.66, 1217.97, 10.81, 47, 2, 0, 0, 0, 0, 0, 250)
attack = {}
windows = {main = false}
function window()
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background1, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("SKLEP", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(items) do
      if _FORV_7_ >= _UPVALUE2_ and _FORV_7_ <= _UPVALUE3_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), 820 / _UPVALUE1_, 64 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(20, 20, 20, 200), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 32 / _UPVALUE1_, _UPVALUE0_.y + 77 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), 60 / _UPVALUE1_, 60 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 32 / _UPVALUE1_, _UPVALUE0_.y + 77 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), 60 / _UPVALUE1_, 60 / _UPVALUE1_, _FORV_8_[3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y - 20 / _UPVALUE1_ + 140 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 720 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), 120 / _UPVALUE1_, 45 / _UPVALUE1_, 255, 1)
        dxDrawText("" .. przecinek(_FORV_8_[2]) .. " PLN", _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 42 / _UPVALUE1_ + 140 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(items) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and isMouseIn(_UPVALUE3_.x + 720 / _UPVALUE2_, _UPVALUE3_.y + 85 / _UPVALUE2_ + 68 / _UPVALUE2_ * (0 + 1 - 1), 120 / _UPVALUE2_, 45 / _UPVALUE2_) and windows.main == true then
          if click then
            exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
            return
          end
          triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "buyItem", localPlayer, _FORV_7_[1], _FORV_7_[2], getElementData(localPlayer, "player:sid"), shopID)
          click = true
        end
      end
    end
    if isMouseIn(_UPVALUE3_.x + _UPVALUE3_.w - 61 / _UPVALUE2_, _UPVALUE3_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) and windows.main == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      showCursor(false)
    end
  end
end)
function takxd()
  toggleControl("aim_weapon", true)
  if isElement(attack.object) then
    ppx, ppy, ppz = getElementPosition(attack.object)
  else
    ppx, ppy, ppz = getElementPosition(attack.ped)
  end
  if getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) and getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) then
    dxDrawRoundedRectangle(getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - 95 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 29 / _UPVALUE0_, 190 / _UPVALUE0_, 57 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(255, 196, 0, 255))
    dxDrawRoundedRectangle(getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - 94 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 30 / _UPVALUE0_, 188 / _UPVALUE0_, 55 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(30, 30, 30, 255))
    if math.floor(getDistanceBetweenPoints3D(ppx, ppy, ppz, getElementPosition(localPlayer))) >= 50 then
      removeEventHandler("onClientRender", root, takxd)
      setPedAnimation(attack.ped, false)
      attack = {}
      if isElement(attack.object) then
        destroyElement(attack.object)
      end
      if attack.postep >= 1 then
        exports.st_gui:showPlayerNotification("Oddalono si\196\153 zbyt daleko", "error")
      end
    end
    if attack.postep == 0 then
      dxDrawText("Aby rozpocz\196\133\196\135 napad\n wyceluj z broni w sprzedawc\196\153", getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 117 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200))
      if isPedAiming(localPlayer) then
        attack.postep = 1
        setPedAnimation(attack.ped, "ped", "handsup", -1, false, false)
        posXX = 5
        triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "alarmSapd", localPlayer, attack.posZe)
      end
    elseif attack.postep == 1 then
      dxDrawText("Przestrasz sprzedawc\196\153", getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 98 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - 80 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 60 / _UPVALUE0_, 160 / _UPVALUE0_, 15 / _UPVALUE0_, 5 / _UPVALUE0_, tocolor(70, 70, 70, 255))
      if isPedAiming(localPlayer) then
        posXX = posXX + 0.05
      else
        posXX = posXX - 0.2
      end
      dxDrawRoundedRectangle(getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - 80 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 60 / _UPVALUE0_, posXX / _UPVALUE0_, 15 / _UPVALUE0_, 5 / _UPVALUE0_, tocolor(255, 196, 0, 255))
      if posXX >= 160 then
        attack.postep = 2
        setElementRotation(attack.ped, 0, 0, -90)
        setElementFrozen(attack.ped, false)
        setPedControlState(attack.ped, "forwards", true)
        setPedControlState(attack.ped, "walk", true)
        setPedAnimation(attack.ped, false)
        removeEventHandler("onClientRender", root, takxd)
        setTimer(function()
          setElementFrozen(attack.ped, true)
          setPedControlState(attack.ped, "forwards", false)
          setPedControlState(attack.ped, "walk", false)
          setElementRotation(attack.ped, 0, 0, 180)
          setPedAnimation(attack.ped, "CASINO", "dealone", -1, true, false)
          addEventHandler("onClientRender", root, takxd)
          posXX = 5
          attack.money = 0
        end, 1300, 1)
      end
      if posXX <= 2 then
        setPedAnimation(attack.ped, false)
        attack.postep = 0
        exports.st_gui:showPlayerNotification("Napad zako\197\132czy\197\130 si\196\153 niepowodzeniem", "error")
        removeEventHandler("onClientRender", root, takxd)
      end
    elseif attack.postep == 2 then
      dxDrawText("Sprzedawca wyjmuje pieni\196\133dz\196\153", getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 98 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - 80 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 60 / _UPVALUE0_, 160 / _UPVALUE0_, 20 / _UPVALUE0_, 5 / _UPVALUE0_, tocolor(70, 70, 70, 255))
      if isPedAiming(localPlayer) then
        posXX = posXX + 0.05
        attack.money = attack.money + math.random(0.1, 10)
      else
        posXX = posXX - 0.2
        if 0 >= attack.money then
          attack.money = 0
        else
          attack.money = attack.money - math.random(0.1, 10) * 2
        end
      end
      dxDrawRoundedRectangle(getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - 80 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 60 / _UPVALUE0_, posXX / _UPVALUE0_, 20 / _UPVALUE0_, 5 / _UPVALUE0_, tocolor(255, 196, 0, 255))
      dxDrawText("#09bd00+" .. attack.money .. " PLN", getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 142 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200))
      if posXX >= 160 then
        attack.object = createObject(1550, 3540.94, -734.8, 771.5)
        setElementDimension(attack.object, getElementDimension(localPlayer))
        triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "endAttack", localPlayer, attack.id)
        exports.st_gui:showPlayerNotification("Napad zako\197\132czy\197\130 si\196\153 sukcesem\nWe\197\186 pieni\196\133dz\196\153", "success")
        attack.postep = 3
        setPedAnimation(attack.ped, false)
        setElementFrozen(attack.ped, false)
        setPedControlState(attack.ped, "forwards", true)
        setPedControlState(attack.ped, "walk", true)
        setElementRotation(attack.ped, 0, 0, 90)
        setTimer(function()
          setElementFrozen(attack.ped, true)
          setPedControlState(attack.ped, "forwards", false)
          setPedControlState(attack.ped, "walk", false)
          setElementRotation(attack.ped, 0, 0, 180)
          posXX = 5
        end, 1300, 1)
      end
      if posXX <= 2 then
        attack.postep = 0
        exports.st_gui:showPlayerNotification("Napad zako\197\132czy\197\130 si\196\153 niepowodzeniem", "error")
        removeEventHandler("onClientRender", root, takxd)
        setPedAnimation(attack.ped, false)
        setElementFrozen(attack.ped, false)
        setPedControlState(attack.ped, "forwards", true)
        setPedControlState(attack.ped, "walk", true)
        setElementRotation(attack.ped, 0, 0, 90)
        attack.money = 0
        removeEventHandler("onClientRender", root, takxd)
        setTimer(function()
          setElementFrozen(attack.ped, true)
          setPedControlState(attack.ped, "forwards", false)
          setPedControlState(attack.ped, "walk", false)
          setElementRotation(attack.ped, 0, 0, 180)
          posXX = 5
        end, 1300, 1)
      end
    elseif attack.postep == 3 then
      dxDrawText("ABY WZI\196\132\196\134 PIENI\196\132DZE KLIKNIJ", getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 93 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - 10 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 58 / _UPVALUE0_, 20 / _UPVALUE0_, 20 / _UPVALUE0_, 5 / _UPVALUE0_, tocolor(70, 70, 70, 255))
      dxDrawText("Q", getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + 138 / _UPVALUE0_, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(ppx, ppy, ppz + 0.5, 200))
      if getKeyState("Q") and isElement(attack.object) then
        destroyElement(attack.object)
        setPedAnimation(localPlayer, "CARRY", "liftup105", -1, false, true, false, false)
        triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "moneyAttack", localPlayer, attack.money)
        setElementData(localPlayer, "player:ogol_zarobki", getElementData(localPlayer, "player:ogol_zarobki") + attack.money)
        removeEventHandler("onClientRender", root, takxd)
        exports.st_gui:showPlayerNotification("Otrzymujesz " .. przecinek(attack.money) .. " PLN", "money")
        attack.money = 0
        attack = {}
      end
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "click" then
    click = false
  elseif _ARG_0_ == "showGuiAttack" then
    if not isEventHandlerAdded("onClientRender", root, takxd) then
      addEventHandler("onClientRender", root, takxd)
      attack.postep = 0
      attack.ped = _ARG_2_
      attack.id = _ARG_1_
      attack.posZe = _ARG_3_
    end
  elseif _ARG_0_ == "showGuiShop" then
    items = {}
    textures = {
      background1 = dxCreateTexture(":ST_gui/img/background2.png"),
      canister_icon = dxCreateTexture(":ST_invetory/img/canister_icon.png"),
      repairkit_icon = dxCreateTexture(":ST_invetory/img/repairkit_icon.png"),
      firstaidkit_icon = dxCreateTexture(":ST_invetory/img/firstaidkit_icon.png"),
      isopropanol_icon = dxCreateTexture(":ST_invetory/img/isopropanol_icon.png"),
      mercury_nitrate_icon = dxCreateTexture(":ST_invetory/img/mercury_nitrate_icon.png"),
      acetic_acid_icon = dxCreateTexture(":ST_invetory/img/acetic_acid_icon.png"),
      methyl_chloride_icon = dxCreateTexture(":ST_invetory/img/methyl_chloride_icon.png"),
      dioxane_icon = dxCreateTexture(":ST_invetory/img/dioxane_icon.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      camera_icon = dxCreateTexture(":ST_invetory/img/camera_icon.png"),
      water_icon = dxCreateTexture(":ST_invetory/img/water_icon.png"),
      parachute_icon = dxCreateTexture(":ST_invetory/img/parachute_icon.png")
    }
    table.insert(items, {
      "Apteczka",
      8000,
      textures.firstaidkit_icon
    })
    table.insert(items, {
      "Woda",
      3000,
      textures.water_icon
    })
    table.insert(items, {
      "Spadochron",
      150000,
      textures.parachute_icon
    })
    shopID = _ARG_1_
    if _ARG_1_ == 1 then
      table.insert(items, {
        "Azotan rteci",
        2500,
        textures.mercury_nitrate_icon
      })
    end
    if _ARG_1_ == 2 then
      table.insert(items, {
        "Izopropanol",
        1000,
        textures.isopropanol_icon
      })
    end
    if _ARG_1_ == 3 then
      table.insert(items, {
        "Dioksan",
        3000,
        textures.dioxane_icon
      })
    end
    if _ARG_1_ == 4 then
      table.insert(items, {
        "Chlorek metylu",
        2000,
        textures.methyl_chloride_icon
      })
    end
    if _ARG_1_ == 5 then
      table.insert(items, {
        "Kwas octowy",
        1000,
        textures.acetic_acid_icon
      })
      table.insert(items, {
        "Aparat",
        2000000,
        textures.camera_icon
      })
    end
    addEventHandler("onClientRender", root, window)
    windows.main = true
    showCursor(true)
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
function isPedAiming(_ARG_0_)
  if isElement(_ARG_0_) and (getElementType(_ARG_0_) == "player" or getElementType(_ARG_0_) == "ped") and (getPedTask(_ARG_0_, "secondary", 0) == "TASK_SIMPLE_USE_GUN" or isPedDoingGangDriveby(_ARG_0_)) then
    return true
  end
  return false
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
getResourceName(getThisResource(), true, 348216856)
return
