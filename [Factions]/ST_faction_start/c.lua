createBlip(1372.32, 1145.29, 10.82, 20, 2, 0, 0, 0, 0, 0, 250)
createBlip(2340.8, 2456.93, 14.97, 30, 2, 0, 0, 0, 0, 0, 250)
createBlip(-2655.69, 631.97, 14.45, 22, 2, 0, 0, 0, 0, 0, 250)
pension = {
  [1] = 5550,
  [2] = 5800,
  [3] = 6050,
  [4] = 6300,
  [5] = 6550,
  [6] = 6800,
  [7] = 7050,
  [8] = 7300,
  [9] = 7550,
  [10] = 7800,
  [11] = 8050,
  [12] = 8300,
  [13] = 8550,
  [14] = 8800,
  [15] = 9050,
  [16] = 9300,
  [17] = 9550
}
position = {
  {
    1306.5,
    1132.94,
    10.91,
    0,
    0,
    "SAFD",
    {
      201,
      13,
      0
    },
    "#c90d00",
    "#c90d00San Andreas Fire Department",
    305
  },
  {
    -2646.6,
    652.72,
    14.46,
    0,
    0,
    "SAFD",
    {
      0,
      195,
      255
    },
    "#00c3ff",
    "#00ffeeSan Andreas Medical Department",
    251
  },
  {
    2342.83765,
    2470.85669,
    14.97656,
    0,
    0,
    "SAPD",
    {
      0,
      21,
      184
    },
    "#0015b8",
    "#0015b8San Andreas Police Department",
    285
  },
  {
    624.29998779297,
    -575.09997558594,
    17.9,
    0,
    0,
    "SAPD",
    {
      0,
      21,
      184
    },
    "#0015b8",
    "#0015b8San Andreas Police Department",
    285
  }
}
marker = {}
for _FORV_12_, _FORV_13_ in ipairs(position) do
  marker[_FORV_13_[1]] = createMarker(_FORV_13_[1], _FORV_13_[2], _FORV_13_[3] - 0.9, "cylinder", 1.5, _FORV_13_[7][1], _FORV_13_[7][2], _FORV_13_[7][3])
  setElementInterior(marker[_FORV_13_[1]], _FORV_13_[4])
  setElementDimension(marker[_FORV_13_[1]], _FORV_13_[5])
  setElementDimension(createElement("text"), _FORV_13_[5])
  setElementInterior(createElement("text"), _FORV_13_[4])
  setElementPosition(createElement("text"), getElementPosition(marker[_FORV_13_[1]]))
  setElementData(createElement("text"), "name", "Rozpocz\196\153cie s\197\130u\197\188by " .. _FORV_13_[8] .. "" .. _FORV_13_[9])
  addEventHandler("onClientMarkerHit", marker[_FORV_13_[1]], function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    nameFaction = _UPVALUE0_[9]
    faction = _UPVALUE0_[6]
    idFaction = _UPVALUE0_[10]
    windows = {main = false, payment = false}
    createShaderBlur(true)
    addEventHandler("onClientRender", root, window)
    windows.main = true
    bindKey("h", "down", startFaction, _UPVALUE0_[1])
  end)
  addEventHandler("onClientMarkerLeave", marker[_FORV_13_[1]], function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    createShaderBlur(false)
    removeEventHandler("onClientRender", root, window)
    windows.main = false
    unbindKey("h", "down", startFaction)
  end)
end
position_payment = {
  {
    1316.2,
    1075.08,
    16.39,
    0,
    0
  },
  {
    2264.12207,
    2458.32373,
    32.375,
    0,
    101
  },
  {
    616.5,
    -580.5,
    22.2,
    0,
    0
  }
}
for _FORV_12_, _FORV_13_ in ipairs(position_payment) do
  marker_payment = createMarker(_FORV_13_[1], _FORV_13_[2], _FORV_13_[3] - 0.9, "cylinder", 1.5, 255, 162, 0)
  setElementDimension(marker_payment, _FORV_13_[5])
  setElementInterior(marker_payment, _FORV_13_[4])
  setElementDimension(createElement("text"), _FORV_13_[5])
  setElementInterior(createElement("text"), _FORV_13_[4])
  setElementPosition(createElement("text"), getElementPosition(marker_payment))
  setElementData(createElement("text"), "name", "Odebieranie wynagrodzenia")
  addEventHandler("onClientMarkerHit", marker_payment, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if not getElementData(localPlayer, "player:faction") then
      exports.st_gui:showPlayerNotification("Nie jeste\197\155 na s\197\130u\197\188bie", "error")
      return
    end
    triggerServerEvent("evEwenciks_l867gsf", resourceRoot, "checkPayouts", localPlayer, getElementData(localPlayer, "player:faction"))
    windows = {main = false, payment = false}
    createShaderBlur(true)
    addEventHandler("onClientRender", root, window)
    windows.payment = true
    bindKey("h", "down", payment)
  end)
  addEventHandler("onClientMarkerLeave", marker_payment, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if not getElementData(localPlayer, "player:faction") then
      return
    end
    createShaderBlur(false)
    removeEventHandler("onClientRender", root, window)
    windows.payment = false
    unbindKey("h", "down", payment)
  end)
end
function payment()
  if not wyplatyWlaczone then
    exports.st_gui:showPlayerNotification("Wyp\197\130aty s\196\133 wy\197\130\196\133czone przez lidera", "error")
    return
  end
  triggerServerEvent("evEwenciks_l867gsf", resourceRoot, "paymentFaction", localPlayer, getElementData(localPlayer, "player:sid"), getElementData(localPlayer, "player:faction"), pension[getElementData(localPlayer, "player:rank") or "B\197\130\196\133d"] * getElementData(localPlayer, "player:workinjob") * 1.3)
end
blipsCarSAFD = {}
blipsCarSAPD = {}
function createFactionCarsBlips()
  for _FORV_3_, _FORV_4_ in pairs(getElementsByType("vehicle")) do
    if getElementData(_FORV_4_, "vehicle:duty") and not _UPVALUE0_[getElementModel(_FORV_4_)] then
      if getElementData(_FORV_4_, "vehicle:duty") == "SAFD" then
        if isElement(blipsCarSAFD[_FORV_4_]) then
          destroyElement(blipsCarSAFD[_FORV_4_])
        end
        blipsCarSAFD[_FORV_4_] = createBlipAttachedTo(_FORV_4_, 0, 1, 255, 0, 0, 50, 9999)
      end
      if getElementData(_FORV_4_, "vehicle:duty") == "SAPD" then
        if isElement(blipsCarSAPD[_FORV_4_]) then
          destroyElement(blipsCarSAPD[_FORV_4_])
        end
        blipsCarSAPD[_FORV_4_] = createBlipAttachedTo(_FORV_4_, 0, 1, 26, 18, 255, 50, 9999)
      end
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "render" then
    if _ARG_1_ then
      timerBlips = setTimer(function()
        createFactionCarsBlips()
      end, 30000, 0)
      addEventHandler("onClientRender", root, render)
    else
      if isTimer(timerBlips) then
        killTimer(timerBlips)
      end
      removeEventHandler("onClientRender", root, render)
      for _FORV_10_, _FORV_11_ in pairs(getElementsByType("vehicle")) do
        if getElementData(_FORV_11_, "vehicle:duty") and not _UPVALUE0_[getElementModel(_FORV_11_)] then
          if getElementData(_FORV_11_, "vehicle:duty") == "SAFD" and isElement(blipsCarSAFD[_FORV_11_]) then
            destroyElement(blipsCarSAFD[_FORV_11_])
          end
          if getElementData(_FORV_11_, "vehicle:duty") == "SAPD" and isElement(blipsCarSAPD[_FORV_11_]) then
            destroyElement(blipsCarSAPD[_FORV_11_])
          end
        end
      end
    end
  elseif _ARG_0_ == "checkPayoutsClient" then
    wyplatyWlaczone = _ARG_2_
  elseif _ARG_0_ == "loadCustomSkin" then
    if tonumber(string.sub(_ARG_1_, 9, 14)) >= 351 and tonumber(string.sub(_ARG_1_, 9, 14)) <= 400 then
      exports.ST_customs_skins2:loadCustomSkin(_ARG_1_)
    elseif tonumber(string.sub(_ARG_1_, 9, 14)) >= 201 and tonumber(string.sub(_ARG_1_, 9, 14)) <= 300 then
      exports.ST_customs_skins3:loadCustomSkin(_ARG_1_)
    else
      exports.ST_customs_skins1:loadCustomSkin(_ARG_1_)
    end
  elseif _ARG_0_ == "sprawdzOrganizacje" then
    if _ARG_2_ then
      if getElementData(localPlayer, "org:group") then
        bylwGrupie = true
        setElementData(localPlayer, "org:group", false)
      end
    elseif bylwGrupie then
      bylwGrupie = false
      setElementData(localPlayer, "org:group", true)
    end
  end
end)
function startFaction(_ARG_0_, _ARG_1_, _ARG_2_)
  if isElementWithinMarker(localPlayer, marker[_ARG_2_]) then
    if getTickCount() - _UPVALUE0_ > 5000 then
      if getElementData(localPlayer, "player:afk") then
        return
      end
      if getElementData(localPlayer, "player:plants_on") then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz wej\197\155\196\135 na duty, poniewa\197\188 produkujesz narkotyki", "error")
        return
      end
      triggerServerEvent("evEwenciks_l867gsf", resourceRoot, "startDUTY", localPlayer, getElementData(localPlayer, "player:sid"), faction, getElementData(localPlayer, "player:faction"), idFaction)
      _UPVALUE0_ = getTickCount()
    else
      return exports.st_gui:showPlayerNotification("Odczekaj 5 sekund!", "error")
    end
  end
end
function window()
  dxUpdateScreenSource(screenSource, true)
  dxSetShaderValue(blurShader, "screenSource", screenSource)
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 67 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 150), false)
    dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, 20 / _UPVALUE1_, tocolor(12, 12, 12, 190), false)
    dxDrawText(nameFaction, _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 200 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("bold20"), "center", "center", false, false, false, true, false)
    if getElementData(localPlayer, "player:faction") then
      dxDrawText("Aby zako\197\132czy\196\135 s\197\130u\197\188b\196\153, kliknij #ffa200H", _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 70 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("Aby rozpocz\196\133\196\135 s\197\130u\197\188b\196\153, kliknij #ffa200H", _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 70 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
    end
  end
  if windows.payment == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 67 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 150), false)
    dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y - 65 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, 20 / _UPVALUE1_, tocolor(12, 12, 12, 190), false)
    if wyplatyWlaczone then
      dxDrawText("ODBIERANIE WYNAGRODZENIA", _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 225 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("bold19"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("ODBIERANIE WYNAGRODZENIA", _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 225 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("bold19"), "center", "center", false, false, false, true, false)
    end
    dxDrawText("Twoje wynagrodzenie to #00ad23" .. przecinek(pension[getElementData(localPlayer, "player:rank") or "B\197\130\196\133d"] * getElementData(localPlayer, "player:workinjob") * 1.3) .. [[
 #ffffffPLN
za przepracowane ]] .. secondsToClock1(60 * getElementData(localPlayer, "player:workinjob")), _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
    dxDrawText("Aby odebra\196\135 wynagrodzenie, kliknij #ffa200H", _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 30 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
  end
end
function render()
  if getElementData(localPlayer, "player:faction") then
    rank = getElementData(localPlayer, "player:rank") or "B\197\130\196\133d"
    if getElementData(localPlayer, "player:faction") == "SAPD" then
      if rank == 17 then
        rank = "Chief of Police"
      elseif rank == 16 then
        rank = "Assistant Chief of Police"
      elseif rank == 15 then
        rank = "Deputy Chief"
      elseif rank == 14 then
        rank = "Commander"
      elseif rank == 13 then
        rank = "Captain II"
      elseif rank == 12 then
        rank = "Captain I"
      elseif rank == 11 then
        rank = "Lieutenant"
      elseif rank == 10 then
        rank = "Detective III"
      elseif rank == 9 then
        rank = "Detective II"
      elseif rank == 8 then
        rank = "Detective I"
      elseif rank == 7 then
        rank = "Sergeant II"
      elseif rank == 6 then
        rank = "Sergeant I"
      elseif rank == 5 then
        rank = "Police Officer III+I"
      elseif rank == 4 then
        rank = "Police Officer III"
      elseif rank == 3 then
        rank = "Police Officer II"
      elseif rank == 2 then
        rank = "Police Officer I"
      elseif rank == 1 then
        rank = "Cadet"
      end
      factionName = "#0015b8SAPD#d1d1d1"
    elseif getElementData(localPlayer, "player:faction") == "SAFD" then
      if rank == 17 then
        rank = "Fire Chief"
      elseif rank == 16 then
        rank = "Assistant Chief"
      elseif rank == 15 then
        rank = "Battalion Chief"
      elseif rank == 14 then
        rank = "Commander"
      elseif rank == 13 then
        rank = "Captain II"
      elseif rank == 12 then
        rank = "Captain I"
      elseif rank == 11 then
        rank = "Divisional Officer"
      elseif rank == 10 then
        rank = "Lieutenant II"
      elseif rank == 9 then
        rank = "Lieutenant I"
      elseif rank == 8 then
        rank = "Station Officer"
      elseif rank == 7 then
        rank = "Driver Engineer"
      elseif rank == 6 then
        rank = "Corporal II"
      elseif rank == 5 then
        rank = "Corporal I"
      elseif rank == 4 then
        rank = "Firefighter III"
      elseif rank == 3 then
        rank = "Firefighter II"
      elseif rank == 2 then
        rank = "Firefighter I"
      elseif rank == 1 then
        rank = "Probationary Firefighter"
      end
      factionName = "#c90d00SAFD#d1d1d1"
    end
    dxDrawText(factionName .. " | " .. rank .. "\n" .. secondsToClock(60 * (getElementData(localPlayer, "player:workinjob") or "00:00")) .. "", 1002 * _UPVALUE0_, 1514 * _UPVALUE1_, 1911 * _UPVALUE0_, 477 * _UPVALUE1_, tocolor(255, 255, 255, 255), 1 * _UPVALUE0_, exports.ST_gui:getGUIFont("normal18"), "right", "center", false, false, false, true)
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function secondsToClock1(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    return "" .. hours .. " godzin/y i " .. mins .. " minut"
  end
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    return "" .. hours .. ":" .. mins
  end
end
function createShaderBlur(_ARG_0_)
  if _ARG_0_ == true then
    screenSource = dxCreateScreenSource(_UPVALUE0_, _UPVALUE1_, true)
    blurShader = dxCreateShader(":ST_blurUI/liquidGlass.fx")
    dxSetShaderValue(blurShader, "screenSize", _UPVALUE0_, _UPVALUE1_)
    dxSetShaderValue(blurShader, "opacity", 1)
    dxSetShaderValue(blurShader, "blurStrength", 2.6)
    dxSetShaderValue(blurShader, "tintColor", 0, 0, 0)
    dxSetShaderValue(blurShader, "tintAlpha", 0.05)
    dxSetShaderValue(blurShader, "rectLT", _UPVALUE2_.x / _UPVALUE0_, (_UPVALUE2_.y - 65 / _UPVALUE3_) / _UPVALUE1_)
    dxSetShaderValue(blurShader, "rectSize", _UPVALUE2_.w / _UPVALUE0_, _UPVALUE2_.h / _UPVALUE1_)
    dxSetShaderValue(blurShader, "radiusUV", 20 / _UPVALUE3_ / _UPVALUE2_.w, 20 / _UPVALUE3_ / _UPVALUE2_.h)
  else
    if isElement(blurShader) then
      destroyElement(blurShader)
    end
    if isElement(screenSource) then
      destroyElement(screenSource)
    end
  end
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
getResourceName(getThisResource(), true, 876095281)
return
