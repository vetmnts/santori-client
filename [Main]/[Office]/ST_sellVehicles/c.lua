textures = {}
for _FORV_12_, _FORV_13_ in ipairs({
  {
    3794.82,
    -2037.73,
    71.8,
    23,
    0
  },
  {
    -1615.71,
    773.63,
    7.28,
    0,
    0
  },
  {
    1474.68,
    -1805.14,
    18.73,
    0,
    0
  },
  {
    -1958.23,
    -843.58,
    32.22,
    0,
    0
  },
  {
    1709.43,
    1835.82,
    10.96,
    0,
    0
  },
  {
    1721.88,
    -2065.43,
    13.51,
    0,
    0
  }
}) do
  s_marker = createMarker(_FORV_13_[1], _FORV_13_[2], _FORV_13_[3] - 0.93, "cylinder", 1.5, 255, 175, 0, 75)
  setElementDimension(s_marker, _FORV_13_[4])
  setElementInterior(s_marker, _FORV_13_[5])
  setElementDimension(({
    [_FORV_12_] = createColSphere(_FORV_13_[1], _FORV_13_[2], _FORV_13_[3], 3)
  })[_FORV_12_], _FORV_13_[4])
  setElementInterior(({
    [_FORV_12_] = createColSphere(_FORV_13_[1], _FORV_13_[2], _FORV_13_[3], 3)
  })[_FORV_12_], _FORV_13_[5])
  setElementPosition(createElement("text"), _FORV_13_[1], _FORV_13_[2], _FORV_13_[3])
  setElementDimension(createElement("text"), _FORV_13_[4])
  setElementInterior(createElement("text"), _FORV_13_[5])
  setElementData(createElement("text"), "name", "Handel pojazdami")
  addEventHandler("onClientMarkerHit", s_marker, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if getElementData(localPlayer, "sendOfferVehicleSelling") then
      exports.st_gui:showPlayerNotification("Nie mo\197\188esz tego zrobi\196\135", "error")
      return
    end
    hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
    maska = dxCreateTexture(":ST_avatars/kolo.png")
    dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    addEventHandler("onClientKey", root, key)
    showCursor(true)
    _UPVALUE0_.main = true
    players_table = getElementsWithinColShape(_UPVALUE1_[_UPVALUE2_], "player")
    avatar_table = {}
    self = {}
    exports.ST_gui:createCustomEditbox("edit:selling", "Wpisz kwot\196\153...", _UPVALUE3_.x + 30 / _UPVALUE4_, _UPVALUE3_.y + 492.5 / _UPVALUE4_, 330 / _UPVALUE4_, 55 / _UPVALUE4_, false, "", "", 1)
    triggerServerEvent("evEwenciks_ajse6fhj", resourceRoot, "showVehicles", localPlayer, players_table)
    k2 = 1
    n2 = 8
    m2 = 8
    k = 1
    n = 7
    m = 7
  end)
  addEventHandler("onClientMarkerLeave", s_marker, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if _UPVALUE0_.main then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("edit:selling")
      _UPVALUE0_.main = false
      players = nil
      _UPVALUE1_ = {}
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end)
end
function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 50 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawText("HANDEL POJAZDAMI", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 135 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 65 / _UPVALUE2_, 400 / _UPVALUE2_, 410 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 230))
    dxDrawText("WYBIERZ GRACZA", _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y - 33 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 100 / _UPVALUE2_, 380 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(60, 60, 60, 230))
    for _FORV_8_, _FORV_9_ in ipairs(players_table) do
      if localPlayer ~= _FORV_9_ and _FORV_8_ >= k and _FORV_8_ <= n and _FORV_9_ and getElementData(_FORV_9_, "player:sid") then
        if self.selectPlayer == _FORV_9_ then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 110 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), 380 / _UPVALUE2_, 45 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(22, 22, 22, 255))
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 110 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), 380 / _UPVALUE2_, 45 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(30, 30, 30, 255))
        end
        dxDrawText("#bdbdbd[#ffbf00" .. getElementData(_FORV_9_, "player:sid") .. "#bdbdbd] #ffffff" .. getPlayerName(_FORV_9_) .. "", _UPVALUE1_.x + 90 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_ + 104 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE1_.x + 45 / _UPVALUE2_, _UPVALUE1_.y + 112.5 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), 40 / _UPVALUE2_, 40 / _UPVALUE2_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        for _FORV_16_, _FORV_17_ in ipairs(avatar_table) do
          if _FORV_17_[1] == getElementData(_FORV_9_, "player:sid") and _FORV_17_[2] then
            dxDrawImage(_UPVALUE1_.x + 45 / _UPVALUE2_, _UPVALUE1_.y + 112.5 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), 40 / _UPVALUE2_, 40 / _UPVALUE2_, _FORV_17_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
      end
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 450 / _UPVALUE2_, _UPVALUE1_.y + 65 / _UPVALUE2_, 400 / _UPVALUE2_, 410 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 230))
    dxDrawText("WYBIERZ POJAZD", _UPVALUE1_.x + 460 / _UPVALUE2_, _UPVALUE1_.y - 33 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 460 / _UPVALUE2_, _UPVALUE1_.y + 100 / _UPVALUE2_, 380 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(60, 60, 60, 230))
    for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE3_) do
      if _FORV_9_ >= k2 and _FORV_9_ <= n2 then
        if self.selectVehicle == _FORV_10_.id then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 460 / _UPVALUE2_, _UPVALUE1_.y + 110 / _UPVALUE2_ + 45 / _UPVALUE2_ * (0 + 1 - 1), 380 / _UPVALUE2_, 40 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(22, 22, 22, 255))
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 460 / _UPVALUE2_, _UPVALUE1_.y + 110 / _UPVALUE2_ + 45 / _UPVALUE2_ * (0 + 1 - 1), 380 / _UPVALUE2_, 40 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(30, 30, 30, 255))
        end
        dxDrawText("" .. exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_10_.model), _FORV_10_.custom_model) .. "", _UPVALUE1_.x + 470 / _UPVALUE2_, _UPVALUE1_.y + 60 / _UPVALUE2_ + 90 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
        dxDrawText("#ffbf00" .. _FORV_10_.id .. "", _UPVALUE1_.x, _UPVALUE1_.y + 60 / _UPVALUE2_ + 90 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 465 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      end
    end
    if self.selectPlayer and self.selectVehicle then
      exports.ST_buttons:dxCreateButton("WY\197\154LIJ OFERT\196\152", _UPVALUE1_.x + 670 / _UPVALUE2_, _UPVALUE1_.y + 492.5 / _UPVALUE2_, 170 / _UPVALUE2_, 55 / _UPVALUE2_, 255, 1)
    end
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 17 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 17 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 18 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if _UPVALUE0_.offerVehicle == true then
    if self.offerPlayer then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
      dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 50 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
      dxDrawText("OFERTA SPRZEDA\197\187Y POJAZDU OD #ffbf00" .. getPlayerName(self.offerPlayer) .. "", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 135 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      for _FORV_7_, _FORV_8_ in ipairs(self.infoVehicle_table) do
        upgrades = {}
        if _FORV_8_.us1 == 1 then
        else
        end
        if _FORV_8_.us2 == 1 then
        else
        end
        if _FORV_8_.us3 == 1 then
        else
        end
        if _FORV_8_.us4 == 1 then
        else
        end
        if _FORV_8_.chip == 1 then
        else
        end
        if _FORV_8_.turbo == 1 then
        else
        end
        if _FORV_8_.rh == 1 then
          table.insert(upgrades, "RH")
        end
        if _FORV_8_.instalacja_lpg == "Tak" then
          table.insert(upgrades, "LPG")
        end
        if _FORV_8_.hamulce == "KRX01" then
          table.insert(upgrades, "Hamulce KRX01")
        end
        if _FORV_8_.hamulce == "KRX02" then
          table.insert(upgrades, "Hamulce KRX02")
        end
        if _FORV_8_.hamulce == "KRX03" then
          table.insert(upgrades, "Hamulce KRX03")
        end
        if _FORV_8_.taxometr == 1 then
          table.insert(upgrades, "Taksometr")
        end
        if _FORV_8_.neon == 1 then
          table.insert(upgrades, "Neony")
        end
        if _FORV_8_.naped == 1 then
          table.insert(upgrades, "Zmienny nap\196\153d")
        end
        if _FORV_8_.trakcja == 1 then
          table.insert(upgrades, [[

Trakcja]])
        end
        if _FORV_8_.drift == 1 then
          table.insert(upgrades, "Licznik driftu")
        end
        if _FORV_8_.windows == 1 then
          table.insert(upgrades, "Przyciemniane szyby")
        end
        for _FORV_25_, _FORV_26_ in ipairs(split(_FORV_8_.tuning, ",")) do
          if _FORV_26_ == "1010" then
            table.insert(upgrades, "Nitro")
          end
        end
        if 0 < #upgrades then
          additives = "#ffbf00" .. table.concat(upgrades, "#ffffff, #ffbf00") .. "#ffffff"
        else
          additives = "Brak"
        end
        dxDrawText("ID: #ffbf00" .. _FORV_8_.id .. [[

#ffffffModel: #ffbf00]] .. exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_8_.model), _FORV_8_.custom_model) .. [[

#ffffffCena: #ffbf00]] .. przecinek(self.moneyVehicle) .. [[
 #ffffffPLN
Silnik: #ffbf00]] .. (_FORV_8_.pojemnosc or "1.2") .. " " .. (_FORV_8_.cylindry or "V4") .. " " .. (_FORV_8_.engineType or "Diesel") .. "\n#ffffffPojemno\197\155\196\135 baku: #ffbf00" .. _FORV_8_.bak .. [[
 #ffffffL
Przebieg: #ffbf00]] .. przecinek(math.floor(_FORV_8_.mileage)) .. [[
 #ffffffKM
US1: ]] .. "#ff0000NIE" .. " #ffffff, US2: " .. "#ff0000NIE" .. "#ffffff, US3: " .. "#ff0000NIE" .. "#ffffff, US4: " .. "#ff0000NIE" .. "#ffffff, TURBO: " .. "#ff0000NIE" .. "#ffffff, CHIP: " .. "#ff0000NIE" .. [[
#ffffff
Dodatki: ]] .. additives .. "", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 70 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(250, 250, 250, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light17"), "left", "top", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("ANULUJ", _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 492.5 / _UPVALUE2_, 170 / _UPVALUE2_, 55 / _UPVALUE2_, 255, 1)
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE1_.x + 670 / _UPVALUE2_, _UPVALUE1_.y + 492.5 / _UPVALUE2_, 170 / _UPVALUE2_, 55 / _UPVALUE2_, 255, 1)
      end
    else
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
      _UPVALUE0_.offerVehicle = false
      _UPVALUE0_.confirm = false
      for _FORV_3_, _FORV_4_ in pairs(textures) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      textures = {}
    end
  end
  if _UPVALUE0_.confirm == true then
    if self.offerPlayer then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
      dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 50 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
      dxDrawText("OFERTA SPRZEDA\197\187Y POJAZDU OD #ffbf00" .. getPlayerName(self.offerPlayer) .. "", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 135 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      dxDrawText("Wybierz form\196\153 p\197\130atno\197\155ci", _UPVALUE1_.x + 500 / _UPVALUE2_, _UPVALUE1_.y + 70 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light25"), "center", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE1_.x + 270 / _UPVALUE2_, _UPVALUE1_.y + 205 / _UPVALUE2_, 100 / _UPVALUE2_, 100 / _UPVALUE2_) then
        dxDrawImage(_UPVALUE1_.x + 270 / _UPVALUE2_, _UPVALUE1_.y + 200 / _UPVALUE2_, 100 / _UPVALUE2_, 100 / _UPVALUE2_, textures.wallet_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        dxDrawText("" .. przecinek(getElementData(localPlayer, "player:moneyMNn")) .. " PLN", _UPVALUE1_.x + 280 / _UPVALUE2_, _UPVALUE1_.y + 487 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      else
        dxDrawImage(_UPVALUE1_.x + 270 / _UPVALUE2_, _UPVALUE1_.y + 200 / _UPVALUE2_, 100 / _UPVALUE2_, 100 / _UPVALUE2_, textures.wallet_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("" .. przecinek(getElementData(localPlayer, "player:moneyMNn")) .. " PLN", _UPVALUE1_.x + 280 / _UPVALUE2_, _UPVALUE1_.y + 487 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      end
      if isMouseIn(_UPVALUE1_.x + 480 / _UPVALUE2_, _UPVALUE1_.y + 200 / _UPVALUE2_, 100 / _UPVALUE2_, 100 / _UPVALUE2_) then
        dxDrawImage(_UPVALUE1_.x + 480 / _UPVALUE2_, _UPVALUE1_.y + 200 / _UPVALUE2_, 100 / _UPVALUE2_, 100 / _UPVALUE2_, textures.atm_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        for _FORV_7_, _FORV_8_ in ipairs(self.infoAMT) do
          dxDrawText(przecinek(_FORV_8_.bank_money .. " PLN"), _UPVALUE1_.x + 700 / _UPVALUE2_, _UPVALUE1_.y + 487 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        end
      else
        dxDrawImage(_UPVALUE1_.x + 480 / _UPVALUE2_, _UPVALUE1_.y + 200 / _UPVALUE2_, 100 / _UPVALUE2_, 100 / _UPVALUE2_, textures.atm_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        for _FORV_7_, _FORV_8_ in ipairs(self.infoAMT) do
          dxDrawText(przecinek(_FORV_8_.bank_money .. " PLN"), _UPVALUE1_.x + 700 / _UPVALUE2_, _UPVALUE1_.y + 487 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        end
      end
    else
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
      _UPVALUE0_.offerVehicle = false
      _UPVALUE0_.confirm = false
      for _FORV_3_, _FORV_4_ in pairs(textures) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      textures = {}
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(players_table) do
        if localPlayer ~= _FORV_7_ and _FORV_6_ >= k and _FORV_6_ <= n and getElementData(_FORV_7_, "player:sid") and isMouseIn(_UPVALUE2_.x + 40 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 52 / _UPVALUE1_ * (0 + 1 - 1), 380 / _UPVALUE1_, 45 / _UPVALUE1_) then
          self.selectPlayer = _FORV_7_
        end
      end
    end
    if _UPVALUE0_.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE3_) do
        if _FORV_6_ >= k2 and _FORV_6_ <= n2 and isMouseIn(_UPVALUE2_.x + 460 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 45 / _UPVALUE1_ * (0 + 1 - 1), 380 / _UPVALUE1_, 40 / _UPVALUE1_) then
          if _FORV_7_.model == 420 then
            exports.st_gui:showPlayerNotification("Tego pojazdu nie mo\197\188na sprzeda\196\135", "error")
            return
          end
          self.selectVehicle = _FORV_7_.id
        end
      end
    end
    if isMouseIn(_UPVALUE2_.x + _UPVALUE2_.w - 61 / _UPVALUE1_, _UPVALUE2_.y + 17 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) and _UPVALUE0_.main == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("edit:selling")
      _UPVALUE0_.main = false
      _UPVALUE0_.offerVehicle = false
      _UPVALUE0_.confirm = false
      players = nil
      _UPVALUE3_ = {}
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE2_.x + 670 / _UPVALUE1_, _UPVALUE2_.y + 492.5 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_) and _UPVALUE0_.main == true then
      if self.selectPlayer and self.selectVehicle then
        if getElementData(localPlayer, "sendOfferVehicleSelling") then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz tego zrobi\196\135", "error")
          return
        end
        if getElementData(self.selectPlayer, "sendOfferVehicleSelling") then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz tego zrobi\196\135", "error")
          return
        end
        if not tonumber((exports.ST_gui:getCustomEditboxText("edit:selling"))) then
          exports.st_gui:showPlayerNotification("Wpisz cen\196\153!", "error")
          return
        end
        if 1 > tonumber((exports.ST_gui:getCustomEditboxText("edit:selling"))) then
          exports.st_gui:showPlayerNotification("Wpisz cen\196\153!", "error")
          return
        end
        triggerServerEvent("evEwenciks_ajse6fhj", resourceRoot, "sendOffer", localPlayer, self.selectPlayer, self.selectVehicle, (tonumber((exports.ST_gui:getCustomEditboxText("edit:selling")))))
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        removeEventHandler("onClientKey", root, key)
        showCursor(false)
        exports.ST_gui:destroyCustomEditbox("edit:selling")
        _UPVALUE0_.main = false
        _UPVALUE0_.offerVehicle = false
        _UPVALUE0_.confirm = false
        players = nil
        _UPVALUE3_ = {}
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
      end
    elseif isMouseIn(_UPVALUE2_.x + 670 / _UPVALUE1_, _UPVALUE2_.y + 492.5 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_) and _UPVALUE0_.offerVehicle == true then
      _UPVALUE0_.offerVehicle = false
      _UPVALUE0_.confirm = true
    elseif isMouseIn(_UPVALUE2_.x + 40 / _UPVALUE1_, _UPVALUE2_.y + 492.5 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_) and _UPVALUE0_.offerVehicle == true then
      triggerServerEvent("evEwenciks_ajse6fhj", resourceRoot, "cancelOffer", localPlayer, self.offerPlayer)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("edit:selling")
      _UPVALUE0_.main = false
      _UPVALUE0_.offerVehicle = false
      _UPVALUE0_.confirm = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      self = {}
    elseif isMouseIn(_UPVALUE2_.x + 270 / _UPVALUE1_, _UPVALUE2_.y + 205 / _UPVALUE1_, 100 / _UPVALUE1_, 100 / _UPVALUE1_) and _UPVALUE0_.confirm == true then
      if getPlayerPing(localPlayer) > 150 then
        exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
        return
      end
      if getElementData(localPlayer, "player:moneyMNn") < tonumber(self.moneyVehicle) then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(self.infoVehicle_table) do
        if getVehicleNameFromModel(_FORV_7_.model) == "Sabre" then
          if _FORV_7_.wariant == "1, 2" then
          end
        elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" then
          if _FORV_7_.wariant == "2, 2" then
          end
        elseif exports.ST_core:changeNameClient("BMW M2 Cabrio") == "Mercedes G63" then
          if _FORV_7_.wariant == "0, 1" then
          end
        elseif exports.ST_core:changeNameClient("Brabus G63") == "Mercedes GT63s" and _FORV_7_.wariant == "0, 2" then
        end
        nameVeh = exports.ST_core:changeNameClient("Mercedes GT63s Brabus", _FORV_7_.customModel)
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      _UPVALUE0_.confirm = false
      showCursor(false)
      for _FORV_6_, _FORV_7_ in pairs(textures) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      textures = {}
      triggerServerEvent("evEwenciks_ajse6fhj", resourceRoot, "buyVehicle", localPlayer, self.offerPlayer, self.vehicleID, "gotowka", self.moneyVehicle, nameVeh)
    elseif isMouseIn(_UPVALUE2_.x + 480 / _UPVALUE1_, _UPVALUE2_.y + 200 / _UPVALUE1_, 100 / _UPVALUE1_, 100 / _UPVALUE1_) and _UPVALUE0_.confirm == true then
      if getPlayerPing(localPlayer) > 150 then
        exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(self.infoAMT) do
        if _FORV_7_.bank_money < tonumber(self.moneyVehicle) then
          exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
          return
        end
      end
      for _FORV_6_, _FORV_7_ in ipairs(self.infoVehicle_table) do
        if getVehicleNameFromModel(_FORV_7_.model) == "Sabre" then
          if _FORV_7_.wariant == "1, 2" then
          end
        elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" then
          if _FORV_7_.wariant == "2, 2" then
          end
        elseif exports.ST_core:changeNameClient("BMW M2 Cabrio") == "Mercedes G63" then
          if _FORV_7_.wariant == "0, 1" then
          end
        elseif exports.ST_core:changeNameClient("Brabus G63") == "Mercedes GT63s" and _FORV_7_.wariant == "0, 2" then
        end
        nameVeh = exports.ST_core:changeNameClient("Mercedes GT63s Brabus", _FORV_7_.customModel)
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      _UPVALUE0_.confirm = false
      showCursor(false)
      for _FORV_6_, _FORV_7_ in pairs(textures) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      textures = {}
      triggerServerEvent("evEwenciks_ajse6fhj", resourceRoot, "buyVehicle", localPlayer, self.offerPlayer, self.vehicleID, "bank", self.moneyVehicle, nameVeh)
    end
  end
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_.main == true then
      if n2 == m2 then
        return
      end
      k2 = k2 - 1
      n2 = n2 - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and _UPVALUE0_.main == true then
    if n2 >= #_UPVALUE1_ then
      return
    end
    k2 = k2 + 1
    n2 = n2 + 1
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showVehiclesClient" then
    _UPVALUE0_ = _ARG_1_
  elseif _ARG_0_ == "downloadAvatarClient" then
    if _ARG_1_ then
      shader = dxCreateShader(":ST_avatars/masked.fx")
      avatars = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
      dxSetShaderValue(shader, "sMaskTexture", maska)
      dxSetShaderValue(shader, "sPicTexture", avatars)
      table.insert(avatar_table, {_ARG_2_, shader})
    end
  elseif _ARG_0_ == "sendOfferClient" then
    self = {}
    exports.st_gui:showPlayerNotification("Otrzymano ofert\196\153 sprzeda\197\188y pojazdu od gracza " .. getPlayerName(_ARG_1_) .. "", "info", 0, 10000)
    self.offerPlayer = _ARG_1_
    self.infoVehicle_table = _ARG_2_
    self.moneyVehicle = _ARG_3_
    self.infoAMT = _ARG_4_
    self.vehicleID = _ARG_5_
    for _FORV_9_, _FORV_10_ in pairs(textures) do
      if isElement(_FORV_10_) then
        destroyElement(_FORV_10_)
      end
    end
    textures = {}
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      wallet_icon = dxCreateTexture(":ST_exchange/img/wallet_icon.png"),
      atm_icon = dxCreateTexture(":ST_exchange/img/atm_icon.png")
    }
    if not isEventHandlerAdded("onClientRender", root, window) then
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
    end
    _UPVALUE1_.main = false
    _UPVALUE1_.offerVehicle = true
    exports.ST_gui:destroyCustomEditbox("edit:selling")
    showCursor(true)
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
function RGBToHex(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ < 0 or 255 < _ARG_0_ or _ARG_1_ < 0 or 255 < _ARG_1_ or _ARG_2_ < 0 or 255 < _ARG_2_ or _ARG_3_ and (_ARG_3_ < 0 or 255 < _ARG_3_) then
    return nil
  end
  if _ARG_3_ then
    return string.format("#%.2X%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  else
    return string.format("#%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_)
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
getResourceName(getThisResource(), true, 205368087)
return
