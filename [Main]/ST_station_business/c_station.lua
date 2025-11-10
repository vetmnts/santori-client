({
  ["distributors"] = {},
  ["distributorsTable"] = {}
}).distributorsTable.d3line = {}
function windowStation()
  if _UPVALUE0_.fuelKit == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x - 1 / zoom, _UPVALUE1_.y - 1 / zoom, _UPVALUE1_.w + 2 / zoom, _UPVALUE1_.h + 2 / zoom, 25 / zoom, tocolor(255, 187, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 15 / zoom, _UPVALUE1_.y + 40 / zoom, _UPVALUE1_.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 45 / zoom, _UPVALUE1_.y + 10 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KANISTRY", _UPVALUE1_.x + 20 / zoom, _UPVALUE1_.y - 155 / zoom, _UPVALUE1_.x + 362 / zoom, _UPVALUE1_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("ILO\197\154\196\134 W MAGAZYNIE: #ffaa00" .. selfFuelKit.data.canister_litres .. "", _UPVALUE1_.x + 240 / zoom, _UPVALUE1_.y + 110 / zoom, _UPVALUE1_.x + 362 / zoom, _UPVALUE1_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    dxDrawText("KOSZT: #009419" .. przecinek(selfFuelKit.data.canister_price) .. " #ffffffPLN", _UPVALUE1_.x + 240 / zoom, _UPVALUE1_.y + 230 / zoom, _UPVALUE1_.x + 362 / zoom, _UPVALUE1_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 255 / zoom, _UPVALUE1_.y + 50 / zoom, 80 / zoom, 80 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
    dxDrawImage(_UPVALUE1_.x + 260 / zoom, _UPVALUE1_.y + 55 / zoom, 70 / zoom, 70 / zoom, textures.canister_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE1_.x + 220 / zoom, _UPVALUE1_.y + 240 / zoom, 160 / zoom, 50 / zoom, 255, 1)
  end
end
function clickFuelKit(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 45 / zoom, _UPVALUE0_.y + 10 / zoom, 25 / zoom, 25 / zoom) and _UPVALUE1_.fuelKit == true then
      removeEventHandler("onClientRender", root, windowStation)
      removeEventHandler("onClientClick", root, clickFuelKit)
      _UPVALUE1_.fuelKit = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y + 240 / zoom, 160 / zoom, 50 / zoom) and _UPVALUE1_.fuelKit == true then
      if kupilKanister then
        return
      end
      kupilKanister = true
      triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "buyCanister", localPlayer, selfFuelKit.data.canister_price, selfFuelKit.data.id)
    end
  end
end
addEvent("evcStation", true)
addEventHandler("evcStation", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_)
  if _ARG_0_ == "showGuiFuelKit" then
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      canister_icon = dxCreateTexture(":ST_invetory/img/canister_icon.png")
    }
    addEventHandler("onClientRender", root, windowStation)
    addEventHandler("onClientClick", root, clickFuelKit)
    _UPVALUE0_.fuelKit = true
    _UPVALUE0_.choice = false
    showCursor(true)
    selfFuelKit = {}
    selfFuelKit.data = _ARG_2_
    lastTickCount = getTickCount()
  elseif _ARG_0_ == "buyCanisterClient" then
    kupilKanister = false
    selfFuelKit.data = _ARG_1_
  elseif _ARG_0_ == "renderInfoStation" then
    if _ARG_1_ then
      _UPVALUE1_ = {
        lpg_icon = dxCreateTexture("img/lpg_icon.png"),
        on_icon = dxCreateTexture("img/on_icon.png"),
        p95_icon = dxCreateTexture("img/95_icon.png"),
        nitro_icon = dxCreateTexture("img/nitro_icon.png"),
        electric_icon = dxCreateTexture("img/electric_icon.png")
      }
      _UPVALUE2_.dataStation = _ARG_2_
      _UPVALUE2_.distributorsTable = _ARG_3_
      for _FORV_12_, _FORV_13_ in pairs(_UPVALUE2_.distributorsTable.distributors) do
        _UPVALUE3_[_FORV_13_[1]] = dxCreateRenderTarget(550, 298, true)
        renderTarget(_FORV_13_[1], _FORV_12_)
      end
      addEventHandler("onClientPreRender", root, renderXD)
      addEventHandler("onClientKey", root, keyRender)
      addEventHandler("onClientRender", root, drawFuelHose)
    else
      if 0 < #_UPVALUE1_ then
        for _FORV_12_, _FORV_13_ in pairs(_UPVALUE1_) do
          if isElement(_FORV_13_) then
            destroyElement(_FORV_13_)
          end
        end
        _UPVALUE1_ = {}
      end
      removeEventHandler("onClientPreRender", root, renderXD)
      removeEventHandler("onClientKey", root, keyRender)
      removeEventHandler("onClientRender", root, drawFuelHose)
      for _FORV_12_, _FORV_13_ in pairs(_UPVALUE3_) do
        if isElement(_FORV_13_) then
          destroyElement(_FORV_13_)
        end
      end
      _UPVALUE3_ = {}
    end
  elseif _ARG_0_ == "render3dLine" then
    _UPVALUE2_.distributorsTable = _ARG_1_
    for _FORV_12_, _FORV_13_ in pairs(_UPVALUE2_.distributorsTable.distributors) do
      renderTarget(_FORV_13_[1], _FORV_12_)
    end
  end
end)
function renderTarget(_ARG_0_, _ARG_1_)
  dxSetRenderTarget(_UPVALUE0_[_ARG_0_], false)
  dxDrawRoundedRectangle(0, 0, 550, 298, 20, tocolor(255, 187, 0, 240))
  dxDrawRoundedRectangle(2, 2, 546, 294, 20, tocolor(25, 25, 25, 240))
  dxDrawText(_UPVALUE1_.dataStation.name, 15, 10, 350, 350, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("normal15"), "left", "top", false, false, false, false, false)
  stationType = {
    {
      "DIESEL",
      _UPVALUE2_.on_icon,
      _UPVALUE1_.dataStation.on_cost,
      _UPVALUE1_.dataStation.on_litres
    },
    {
      "BENZYNA",
      _UPVALUE2_.p95_icon,
      _UPVALUE1_.dataStation.p95_cost,
      _UPVALUE1_.dataStation.p95_litres
    },
    {
      "LPG",
      _UPVALUE2_.lpg_icon,
      _UPVALUE1_.dataStation.lpg_cost,
      _UPVALUE1_.dataStation.lpg_litres
    },
    {
      "NITRO",
      _UPVALUE2_.nitro_icon,
      _UPVALUE1_.dataStation.nitro_cost,
      _UPVALUE1_.dataStation.nitro_litres
    },
    {
      "\197\129ADOWARKA",
      _UPVALUE2_.electric_icon,
      _UPVALUE1_.dataStation.electric_cost,
      0
    }
  }
  if _UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info then
    if (_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[2] then
      dxDrawText("POJAZD: #ffbb00" .. exports.ST_core:changeNameClient(getVehicleNameFromModel((getElementModel((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[2]))), getElementData((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[2], "vehicle:customID")), 15, 35, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "left", "top", false, false, false, true, false)
      dxDrawRoundedRectangle(175, 70, 200, 198, 20, tocolor(35, 35, 35, 250))
      dxDrawImage(183, 80, 30, 30, stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if _UPVALUE1_.distributorsTable.distributors[_ARG_1_].elektryk == true then
        dxDrawText("\197\129ADOWANIE - " .. stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][3] .. " PLN", 220, 87, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "left", "top", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(210, 120, 130, 65, 10, tocolor(25, 25, 25, 250))
        if (_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[1] == localPlayer then
          dxDrawText(math.floor(_UPVALUE1_.dolane * stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][3]), 220, 30, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "left", "center", false, false, false, false, false)
          dxDrawText(("%.1f"):format(_UPVALUE1_.dolane), 220, 90, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "left", "center", false, false, false, false, false)
        else
          dxDrawText(0, 210, 50, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "left", "center", false, false, false, false, false)
          dxDrawText(0, 210, 120, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "left", "center", false, false, false, false, false)
        end
        dxDrawText("PLN", 0, 30, 330, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "right", "center", false, false, false, false, false)
        dxDrawText("L", 0, 90, 330, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "right", "center", false, false, false, true, false)
        dxDrawText("" .. stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][1] .. " - " .. stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][3] .. " PLN/L", 220, 87, 350, 350, tocolor(255, 255, 255, 255), 0.9, exports.ST_gui:getGUIFont("cyfry12"), "left", "top", false, false, false, true, false)
      end
      dxDrawRoundedRectangle(190, 230, 170, 25, 10, tocolor(25, 25, 25, 250))
      if stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][1] == "NITRO" then
        fuel = getElementData((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[2], "vehicle:nitro")
        tank = getElementData((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[2], "vehicle_tuning").butlaN or 0
      elseif stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][1] == "LPG" then
        fuel = getElementData((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[2], "vehicle:gas")
        tank = 100
      else
        fuel = getElementData((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[2], "vehicle:fuel")
        tank = getElementData((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[2], "vehicle_tuning").bak or 25
      end
      if (_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[1] == localPlayer then
        fuel = fuel + _UPVALUE1_.dolane
        if _UPVALUE1_.distributorsTable.distributors[_ARG_1_].elektryk == true then
          if _UPVALUE1_.loading == true then
          else
            dxDrawText("KLIKNIJ \"#ffbb00space#ffffff\" ABY ROZPOCZ\196\132\196\134 \197\129ADOWANIE", 200, 270, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font14"), "center", "top", false, false, false, true, false)
          end
          dxDrawText("NA\197\129ADOWANO: #ffbb00" .. ("%.1f"):format(_UPVALUE1_.dolane) .. " #ffffffkWh", 200, 120, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
        else
          dxDrawText("PRZYTRZYMAJ \"#ffbb00space#ffffff\" ABY TANKOWA\196\134 POJAZD", 200, 270, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font14"), "center", "top", false, false, false, true, false)
        end
      end
      if _UPVALUE1_.distributorsTable.distributors[_ARG_1_].elektryk == true then
        if (_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[1] ~= localPlayer then
          dxDrawText("TRWA \197\129ADOWANIE", 200, 120, 350, 350, tocolor(50, 170, 50, 255), 1, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
        end
        dxDrawText("CZAS \197\129ADOWANIA:\n" .. resulted(math.floor((tank - fuel) / 10 * 10)) .. "", 200, 150, 350, 350, tocolor(240, 240, 240, 255), 1, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
        dxDrawText(("%.1f"):format(fuel) .. " KWH / " .. tank .. " KWH", 200, 80, 350, 350, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      else
        dxDrawText(("%.1f"):format(fuel) .. " L / " .. tank .. " L", 200, 80, 350, 350, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      end
      if 20 < 170 * fuel / tank / zoom then
        dxDrawRoundedRectangle(190, 230, 170 * fuel / tank, 25, 10, tocolor(252, 186, 3, 255), false)
      else
        dxDrawRoundedRectangle(190, 230, 20, 25, 10, tocolor(252, 186, 3, 255), false)
      end
    else
      dxDrawText("W\197\129A\197\154CICIEL STACJI: " .. _UPVALUE1_.dataStation.owner, 15, 35, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "left", "top", false, false, false, true, false)
      if (_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[1] == localPlayer then
        if 0 < _UPVALUE1_.dolane then
          dxDrawRoundedRectangle(175, 70, 200, 198, 20, tocolor(35, 35, 35, 250))
          dxDrawImage(183, 80, 30, 30, stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          dxDrawRoundedRectangle(190, 230, 170, 25, 10, tocolor(25, 25, 25, 250))
          if stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][1] == "NITRO" then
            fuel = getElementData(_UPVALUE1_.pojazdZatankowany, "vehicle:nitro")
            tank = getElementData(_UPVALUE1_.pojazdZatankowany, "vehicle_tuning").butlaN or 0
          elseif stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][1] == "LPG" then
            fuel = getElementData(_UPVALUE1_.pojazdZatankowany, "vehicle:gas")
            tank = 100
          else
            fuel = getElementData(_UPVALUE1_.pojazdZatankowany, "vehicle:fuel")
            tank = getElementData(_UPVALUE1_.pojazdZatankowany, "vehicle_tuning").bak or 25
          end
          fuel = fuel + _UPVALUE1_.dolane
          if _UPVALUE1_.distributorsTable.distributors[_ARG_1_].elektryk == true then
            dxDrawText("\197\129ADOWANIE - " .. przecinek(stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][3]) .. " PLN", 220, 87, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "left", "top", false, false, false, true, false)
            dxDrawText("NA\197\129ADOWANO: #ffbb00" .. ("%.1f"):format(_UPVALUE1_.dolane) .. " #ffffffkWh", 200, 140, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
            dxDrawText("KOSZT: #009419" .. przecinek(stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][3]) .. " #ffffffPLN", 200, 165, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "center", "top", false, false, false, true, false)
            dxDrawText(("%.1f"):format(fuel) .. " KWH / " .. tank .. " KWH", 200, 80, 350, 350, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
          else
            dxDrawRoundedRectangle(210, 120, 130, 65, 10, tocolor(25, 25, 25, 250))
            if (_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[1] == localPlayer then
              dxDrawText(math.floor(_UPVALUE1_.dolane * stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][3]), 220, 30, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "left", "center", false, false, false, false, false)
              dxDrawText(("%.1f"):format(_UPVALUE1_.dolane), 220, 90, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "left", "center", false, false, false, false, false)
            else
              dxDrawText(0, 210, 50, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "left", "center", false, false, false, false, false)
              dxDrawText(0, 210, 120, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "left", "center", false, false, false, false, false)
            end
            dxDrawText("PLN", 0, 30, 330, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "right", "center", false, false, false, false, false)
            dxDrawText("L", 0, 90, 330, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "right", "center", false, false, false, true, false)
            dxDrawText("" .. stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][1] .. " - " .. stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][3] .. " PLN/L", 220, 87, 350, 350, tocolor(255, 255, 255, 255), 0.9, exports.ST_gui:getGUIFont("cyfry12"), "left", "top", false, false, false, true, false)
            dxDrawText(("%.1f"):format(fuel) .. " L / " .. tank .. " L", 200, 80, 350, 350, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
          end
          if 20 < 170 * fuel / tank / zoom then
            dxDrawRoundedRectangle(190, 230, 170 * fuel / tank, 25, 10, tocolor(252, 186, 3, 255), false)
          else
            dxDrawRoundedRectangle(190, 230, 20, 25, 10, tocolor(252, 186, 3, 255), false)
          end
          dxDrawText("KLIKNIJ \"#ffbb00R#ffffff\" ABY OP\197\129ACI\196\134", 200, 270, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font14"), "center", "top", false, false, false, true, false)
        else
          dxDrawText("DYSTRYBUTOR ZAJ\196\152TY PRZEZ GRACZA: #ffbb00" .. getPlayerName((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[1]), 200, 100, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
          dxDrawText("WYBRANY RODZAJ PALIWA: #ffbb00" .. stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][1], 200, 150, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
          dxDrawText("KLIKNIJ \"#ffbb00R#ffffff\" ABY OD\197\129O\197\187Y\196\134 LUB POD\197\129\196\132CZY\196\134 PISTOLET DO POJAZDU", 200, 260, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
        end
      else
        dxDrawText("DYSTRYBUTOR ZAJ\196\152TY PRZEZ GRACZA: #ffbb00" .. getPlayerName((_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[1]), 200, 100, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
        dxDrawText("WYBRANY RODZAJ PALIWA: #ffbb00" .. stationType[(_UPVALUE1_.distributorsTable.distributors[_ARG_1_] and _UPVALUE1_.distributorsTable.distributors[_ARG_1_].info)[3]][1], 200, 150, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
      end
    end
  else
    dxDrawText("W\197\129A\197\154CICIEL STACJI: " .. _UPVALUE1_.dataStation.owner, 15, 35, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "left", "top", false, false, false, true, false)
    if _UPVALUE1_.distributorsTable.distributors[_ARG_1_].elektryk == true then
      dxDrawRoundedRectangle(212, 75, 125, 173, 20, tocolor(35, 35, 35, 250))
      dxDrawImage(245.5, 110, 60, 60, stationType[5][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(stationType[5][1], 200, -160, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, false, false)
      dxDrawText("" .. stationType[5][3] .. " PLN -", 200, 145, 350, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, true, false)
      dxDrawText("\197\129ADOWANIE", 200, 190, 350, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
    else
      xY = 0
      for _FORV_6_, _FORV_7_ in ipairs(stationType) do
        if _FORV_7_[1] ~= "\197\129ADOWARKA" then
          xY = xY + 1
          if _UPVALUE3_ == _FORV_6_ then
            dxDrawRoundedRectangle(15 + 132 * (xY - 1), 74, 122, 175, 10, tocolor(255, 187, 0, 255))
            dxDrawRoundedRectangle(16 + 132 * (xY - 1), 75, 120, 173, 10, tocolor(35, 35, 35, 255))
          else
            dxDrawRoundedRectangle(16 + 132 * (xY - 1), 75, 120, 173, 10, tocolor(35, 35, 35, 255))
          end
          dxDrawImage(55 + 132 * (xY - 1), 100, 40, 40, _FORV_7_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          dxDrawText(_FORV_7_[1], 1 + 264 * (xY - 1), -70, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
          dxDrawText("" .. _FORV_7_[3] .. " PLN / L", 1 + 264 * (xY - 1), 70, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, true, false)
          dxDrawText("DOST\196\152PNO\197\154\196\134 W MAGAZYNIE", 1 + 264 * (xY - 1), 140, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
          dxDrawText(_FORV_7_[4] .. " L", 1 + 264 * (xY - 1), 180, 150, 250, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
        end
      end
      dxDrawText("Q", 20, 265, 550, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "left", "top", false, false, false, true, false)
      dxDrawText("E", 0, 265, 530, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "right", "top", false, false, false, true, false)
    end
    dxDrawText("KLIKNIJ \"#ffbb00R#ffffff\" ABY CHWYCI\196\134 PISTOLET", 200, 260, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
  end
  dxSetRenderTarget()
end
function keyRender(_ARG_0_, _ARG_1_)
  if not _ARG_1_ then
    return
  end
  if _ARG_0_ == "e" or _ARG_0_ == "q" or _ARG_0_ == "r" then
    if _ARG_0_ == "e" then
      _UPVALUE0_ = _UPVALUE0_ + 1
      if 4 < _UPVALUE0_ then
        _UPVALUE0_ = 1
      end
    elseif _ARG_0_ == "q" then
      _UPVALUE0_ = _UPVALUE0_ - 1
      if _UPVALUE0_ < 1 then
        _UPVALUE0_ = 4
      end
    elseif _ARG_0_ == "r" then
      if _UPVALUE1_.wyborPojazdu == true or _UPVALUE1_.zaakceptowanyPojazd then
        if _UPVALUE1_.zaakceptowanyPojazd then
          return
        end
        if getClosestDistributor((getLocalPlayer())) and _UPVALUE1_.DystrybutorIndex then
          if _UPVALUE1_.DystrybutorIndex ~= getClosestDistributor((getLocalPlayer())) then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz korzysta\196\135 z tego dystrybutora", "error")
            return
          end
          if _UPVALUE1_.distributorsTable.distributors[getClosestDistributor((getLocalPlayer()))].elektryk == true then
            if math.floor(_UPVALUE1_.dolane) > 0 and getElementData(localPlayer, "player:moneyMNn") >= math.floor(stationType[_UPVALUE1_.type][3]) then
              triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "tankedVeh", localPlayer, math.floor(_UPVALUE1_.dataStation.electric_cost), math.floor(_UPVALUE1_.dolane), "ELECTRIC", _UPVALUE1_.dataStation.id, _UPVALUE1_.pojazdZatankowany)
              exports.st_gui:showPlayerNotification("Pomy\197\155lnie na\197\130adowano " .. ("%.1f"):format(_UPVALUE1_.dolane) .. " kwh za " .. math.floor(stationType[_UPVALUE1_.type][3]) .. " PLN", "success")
              _UPVALUE1_.zaakceptowanyPojazd = false
              _UPVALUE1_.pojazdZatankowany = false
              _UPVALUE1_.dolane = 0
              _UPVALUE1_.type = false
            end
          elseif 0 < math.floor(_UPVALUE1_.dolane * stationType[_UPVALUE1_.type][3]) then
            if getElementData(localPlayer, "player:moneyMNn") >= math.floor(_UPVALUE1_.dolane * stationType[_UPVALUE1_.type][3]) then
              triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "tankedVeh", localPlayer, math.floor(_UPVALUE1_.dolane * stationType[_UPVALUE1_.type][3]), math.floor(_UPVALUE1_.dolane), stationType[_UPVALUE1_.type][1], _UPVALUE1_.dataStation.id, _UPVALUE1_.pojazdZatankowany)
              exports.st_gui:showPlayerNotification("Pomy\197\155lnie zatankowano " .. stationType[_UPVALUE1_.type][1] .. " [" .. ("%.1f"):format(_UPVALUE1_.dolane) .. "l] za " .. math.floor(_UPVALUE1_.dolane * stationType[_UPVALUE1_.type][3]) .. " PLN", "success")
              if stationType[_UPVALUE1_.type][1] == "NITRO" then
                triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "tankedVehNitro", localPlayer, _UPVALUE1_.dolane, _UPVALUE1_.pojazdZatankowany)
              else
                if stationType[_UPVALUE1_.type][1] == "LPG" then
                else
                end
              end
              _UPVALUE1_.zaakceptowanyPojazd = false
              _UPVALUE1_.pojazdZatankowany = false
              _UPVALUE1_.dolane = 0
              _UPVALUE1_.type = false
            else
              exports.st_gui:showPlayerNotification("Nie masz wystarczaj\196\133co pieni\196\153dzy, aby zatankowa\196\135.", "error")
            end
          end
          _UPVALUE1_.wyborPojazdu = false
          triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "create3dline", localPlayer, _UPVALUE1_.dataStation.id, getClosestDistributor((getLocalPlayer())))
        end
      elseif getClosestDistributor((getLocalPlayer())) then
        if _UPVALUE1_.distributorsTable.distributors[getClosestDistributor((getLocalPlayer()))].elektryk == true then
          _UPVALUE1_.type = 5
        else
          _UPVALUE1_.type = _UPVALUE0_
        end
        _UPVALUE1_.DystrybutorIndex = getClosestDistributor((getLocalPlayer()))
        _UPVALUE1_.DystrybutorPosition = getClosestDistributor((getLocalPlayer()))
        _UPVALUE1_.wyborPojazdu = true
        _UPVALUE1_.dolane = 0
        _UPVALUE1_.loading = false
        triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "create3dline", localPlayer, _UPVALUE1_.dataStation.id, _UPVALUE1_.DystrybutorPosition, false, false, _UPVALUE1_.type)
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
    if getClosestDistributor((getLocalPlayer())) then
      for _FORV_8_, _FORV_9_ in pairs(_UPVALUE1_.distributorsTable.distributors) do
        if _FORV_8_ == getClosestDistributor((getLocalPlayer())) then
          renderTarget(_FORV_9_[1], getClosestDistributor((getLocalPlayer())))
        end
      end
    end
  end
end
function renderXD()
  for _FORV_3_, _FORV_4_ in pairs(_UPVALUE0_.distributorsTable.distributors) do
    if _UPVALUE1_[_FORV_4_[1]] then
      dxDrawMaterialLine3D(_FORV_4_[2] + 0.5 * math.cos((math.rad(_FORV_4_[5]))), _FORV_4_[3] + 0.5 * math.sin((math.rad(_FORV_4_[5]))), _FORV_4_[4] + 1.5 + 0.35, _FORV_4_[2] + 0.5 * math.cos((math.rad(_FORV_4_[5]))), _FORV_4_[3] + 0.5 * math.sin((math.rad(_FORV_4_[5]))), _FORV_4_[4] + 1.5 - 0.65, _UPVALUE1_[_FORV_4_[1]], 2, tocolor(255, 255, 255, 255), false, _FORV_4_[2] + 0.5 * math.cos((math.rad(_FORV_4_[5]))) + math.cos((math.rad(_FORV_4_[5]))), _FORV_4_[3] + 0.5 * math.sin((math.rad(_FORV_4_[5]))) + math.sin((math.rad(_FORV_4_[5]))), _FORV_4_[4] + 1.5 + 0.35)
    end
  end
  if _UPVALUE0_.zaakceptowanyPojazd then
    if getKeyState("SPACE") and _UPVALUE0_.loading == false then
      if stationType[_UPVALUE0_.type][1] == "\197\129ADOWARKA" then
        if not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 500, 1)
          if getElementData(localPlayer, "player:moneyMNn") >= _UPVALUE0_.dataStation.electric_cost then
            tickStation = getTickCount()
            _UPVALUE0_.loading = true
          else
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
          end
          for _FORV_3_, _FORV_4_ in pairs(_UPVALUE0_.distributorsTable.distributors) do
            if _FORV_3_ == _UPVALUE0_.DystrybutorIndex then
              renderTarget(_FORV_4_[1], _UPVALUE0_.DystrybutorIndex)
            end
          end
        end
      else
        if getTickCount() - tickStation > 100 then
          tickStation = getTickCount()
          if stationType[_UPVALUE0_.type][1] == "NITRO" then
            if tonumber(getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle:nitro") + _UPVALUE0_.dolane) >= tonumber(getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle_tuning").butlaN) then
              _UPVALUE0_.dolane = tonumber(getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle_tuning").butlaN) - tonumber((getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle:nitro")))
              exports.st_gui:showPlayerNotification("Pojazd zosta\197\130 zatankowany. Odstaw pistolet do dystrybutora", "info")
              return
            end
            _UPVALUE0_.dolane = _UPVALUE0_.dolane + 0.5
          elseif stationType[_UPVALUE0_.type][1] == "LPG" then
            if 100 <= tonumber(getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle:gas") + _UPVALUE0_.dolane) then
              exports.st_gui:showPlayerNotification("Pojazd zosta\197\130 zatankowany. Odstaw pistolet do dystrybutora", "info")
              return
            end
            _UPVALUE0_.dolane = _UPVALUE0_.dolane + 0.5
          else
            if tonumber(getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle:fuel") + _UPVALUE0_.dolane) >= tonumber(getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle_tuning").bak) then
              exports.st_gui:showPlayerNotification("Pojazd zosta\197\130 zatankowany. Odstaw pistolet do dystrybutora", "info")
              return
            end
            _UPVALUE0_.dolane = _UPVALUE0_.dolane + 0.5
          end
          for _FORV_4_, _FORV_5_ in pairs(_UPVALUE0_.distributorsTable.distributors) do
            if _FORV_4_ == _UPVALUE0_.DystrybutorIndex then
              renderTarget(_FORV_5_[1], _UPVALUE0_.DystrybutorIndex)
            end
          end
        else
        end
      end
    end
    if _UPVALUE0_.loading == true and getTickCount() - tickStation > 100 then
      tickStation = getTickCount()
      if tonumber(getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle:fuel") + _UPVALUE0_.dolane) > getElementData(_UPVALUE0_.zaakceptowanyPojazd, "vehicle_tuning").bak - 0.1 then
        _UPVALUE0_.loading = false
        exports.st_gui:showPlayerNotification("Pojazd zosta\197\130 na\197\130adowany. Odstaw pistolet do dystrybutora", "info")
        return
      end
      for _FORV_6_, _FORV_7_ in pairs(_UPVALUE0_.distributorsTable.distributors) do
        if _FORV_6_ == _UPVALUE0_.DystrybutorIndex then
          renderTarget(_FORV_7_[1], _UPVALUE0_.DystrybutorIndex)
        end
      end
      _UPVALUE0_.dolane = _UPVALUE0_.dolane + 0.1
    end
  end
  if _UPVALUE0_.wyborPojazdu == true or _UPVALUE0_.zaakceptowanyPojazd then
    for _FORV_3_, _FORV_4_ in ipairs(getElementsByType("vehicle")) do
      if getElementData(_FORV_4_, "vehicle:id") and 5 > getDistanceBetweenPoints3D(getElementPosition(_FORV_4_)) then
        if getElementData(_FORV_4_, "vehicle:customID") then
          model = getElementData(_FORV_4_, "vehicle:customID")
        else
          model = getElementModel(_FORV_4_)
        end
        if getScreenFromWorldPosition(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
          -1,
          0,
          0,
          0
        }))) and getScreenFromWorldPosition(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
          -1,
          0,
          0,
          0
        }))) then
          if 1 > getDistanceBetweenPoints3D(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
            -1,
            0,
            0,
            0
          }))) then
            dxDrawCircle(getScreenFromWorldPosition(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
              -1,
              0,
              0,
              0
            }))))
            if getKeyState("R") and not clickC then
              clickC = true
              setTimer(function()
                clickC = false
              end, 1500, 1)
              if _UPVALUE0_.zaakceptowanyPojazd and _UPVALUE0_.zaakceptowanyPojazd == _FORV_4_ then
                if _UPVALUE0_.dolane > 0 then
                  _UPVALUE0_.pojazdZatankowany = _FORV_4_
                end
                _UPVALUE0_.zaakceptowanyPojazd = false
                _UPVALUE0_.wyborPojazdu = true
                _UPVALUE0_.loading = false
                triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "create3dline", localPlayer, _UPVALUE0_.dataStation.id, _UPVALUE0_.DystrybutorPosition, false, false, _UPVALUE0_.type)
              elseif _UPVALUE0_.wyborPojazdu == true then
                if _UPVALUE0_.dolane > 0 then
                  exports.st_gui:showPlayerNotification("Najpierw op\197\130a\196\135 tankowanie/\197\130adowanie", "error")
                else
                  if stationType[_UPVALUE0_.type][1] == "BENZYNA" then
                    if getElementData(_FORV_4_, "vehicle_tuning").rodzaj ~= "Benzyna" then
                      exports.st_gui:showPlayerNotification("Ten pojazd ma inny rodzaj silnika", "info")
                      return
                    end
                  elseif stationType[_UPVALUE0_.type][1] == "DIESEL" then
                    if getElementData(_FORV_4_, "vehicle_tuning").rodzaj ~= "Diesel" then
                      exports.st_gui:showPlayerNotification("Ten pojazd ma inny rodzaj silnika", "info")
                      return
                    end
                  elseif stationType[_UPVALUE0_.type][1] == "LPG" then
                    if getElementData(_FORV_4_, "vehicle_tuning").rodzaj == "Elektryczny" then
                      exports.st_gui:showPlayerNotification("Ten pojazd jest elektryczny", "error")
                      return
                    end
                    if getElementData(_FORV_4_, "vehicle_tuning").lpg_montage ~= "Tak" then
                      exports.st_gui:showPlayerNotification("Ten pojazd nie posiada LPG", "info")
                      return
                    end
                  elseif stationType[_UPVALUE0_.type][1] == "NITRO" then
                    if getVehicleUpgradeOnSlot(_FORV_4_, 8) == 0 then
                      exports.st_gui:showPlayerNotification("Ten pojazd nie posiada nitro", "info")
                      return
                    end
                  elseif stationType[_UPVALUE0_.type][1] == "\197\129ADOWARKA" then
                    if getElementData(_FORV_4_, "vehicle_tuning").rodzaj ~= "Elektryczny" then
                      exports.st_gui:showPlayerNotification("Ten pojazd nie jest elektryczny", "error")
                      return
                    end
                    if getElementData(_FORV_4_, "vehicle:fuel") > getElementData(_FORV_4_, "vehicle_tuning").bak - 10 then
                      exports.st_gui:showPlayerNotification("Ten pojazd jest ju\197\188 na\197\130adowany", "info")
                      return
                    end
                  end
                  _UPVALUE0_.wyborPojazdu = false
                  _UPVALUE0_.zaakceptowanyPojazd = _FORV_4_
                  _UPVALUE0_.dolane = 0
                  triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "create3dline", localPlayer, _UPVALUE0_.dataStation.id, _UPVALUE0_.DystrybutorPosition, _FORV_4_, {
                    (_UPVALUE2_[model] or {
                      -1,
                      0,
                      0,
                      0
                    })[1],
                    (_UPVALUE2_[model] or {
                      -1,
                      0,
                      0,
                      0
                    })[2],
                    (_UPVALUE2_[model] or {
                      -1,
                      0,
                      0,
                      0
                    })[3],
                    (_UPVALUE2_[model] or {
                      -1,
                      0,
                      0,
                      0
                    })[4]
                  }, _UPVALUE0_.type)
                  tickStation = getTickCount()
                end
              end
              for _FORV_23_, _FORV_24_ in pairs(_UPVALUE0_.distributorsTable.distributors) do
                renderTarget(_FORV_24_[1], _FORV_23_)
              end
            end
          end
          dxDrawCircle(getScreenFromWorldPosition(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
            -1,
            0,
            0,
            0
          }))))
          dxDrawText("R", getScreenFromWorldPosition(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
            -1,
            0,
            0,
            0
          }))) - screenW / 4, getScreenFromWorldPosition(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
            -1,
            0,
            0,
            0
          }))) + 162 / zoom, getScreenFromWorldPosition(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
            -1,
            0,
            0,
            0
          }))) + screenW / 4, getScreenFromWorldPosition(getPositionFromElementOffset(_FORV_4_, unpack(_UPVALUE2_[model] or {
            -1,
            0,
            0,
            0
          }))))
        end
      end
    end
  end
end
function drawFuelHose()
  for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE0_.distributorsTable.d3line) do
    if isElement(_FORV_7_[4]) then
      handPosX, handPosY, handPosZ = getElementPosition(_FORV_7_[4])
      for _FORV_15_ = 0, 40 - 1 do
        dxDrawLine3D(getBezierPoint({
          x = _FORV_7_[1],
          y = _FORV_7_[2],
          z = _FORV_7_[3]
        }, {
          x = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).x,
          y = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).y,
          z = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).z - 0.8
        }, {
          x = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).x,
          y = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).y,
          z = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).z - 0.5
        }, {
          x = handPosX,
          y = handPosY,
          z = handPosZ
        }, _FORV_15_ / 40).x, getBezierPoint({
          x = _FORV_7_[1],
          y = _FORV_7_[2],
          z = _FORV_7_[3]
        }, {
          x = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).x,
          y = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).y,
          z = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).z - 0.8
        }, {
          x = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).x,
          y = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).y,
          z = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).z - 0.5
        }, {
          x = handPosX,
          y = handPosY,
          z = handPosZ
        }, _FORV_15_ / 40).y, getBezierPoint({
          x = _FORV_7_[1],
          y = _FORV_7_[2],
          z = _FORV_7_[3]
        }, {
          x = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).x,
          y = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).y,
          z = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).z - 0.8
        }, {
          x = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).x,
          y = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).y,
          z = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).z - 0.5
        }, {
          x = handPosX,
          y = handPosY,
          z = handPosZ
        }, _FORV_15_ / 40).z, getBezierPoint({
          x = _FORV_7_[1],
          y = _FORV_7_[2],
          z = _FORV_7_[3]
        }, {
          x = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).x,
          y = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).y,
          z = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).z - 0.8
        }, {
          x = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).x,
          y = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).y,
          z = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).z - 0.5
        }, {
          x = handPosX,
          y = handPosY,
          z = handPosZ
        }, (_FORV_15_ + 1) / 40).x, getBezierPoint({
          x = _FORV_7_[1],
          y = _FORV_7_[2],
          z = _FORV_7_[3]
        }, {
          x = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).x,
          y = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).y,
          z = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).z - 0.8
        }, {
          x = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).x,
          y = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).y,
          z = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).z - 0.5
        }, {
          x = handPosX,
          y = handPosY,
          z = handPosZ
        }, (_FORV_15_ + 1) / 40).y, getBezierPoint({
          x = _FORV_7_[1],
          y = _FORV_7_[2],
          z = _FORV_7_[3]
        }, {
          x = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).x,
          y = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).y,
          z = ({
            x = _FORV_7_[1],
            y = _FORV_7_[2],
            z = _FORV_7_[3]
          }).z - 0.8
        }, {
          x = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).x,
          y = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).y,
          z = ({
            x = handPosX,
            y = handPosY,
            z = handPosZ
          }).z - 0.5
        }, {
          x = handPosX,
          y = handPosY,
          z = handPosZ
        }, (_FORV_15_ + 1) / 40).z, tocolor(10, 10, 10, 255), 3)
      end
    end
  end
end
function getBezierPoint(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  return {
    x = 0,
    y = 0,
    z = 0,
    ["x"] = (1 - _ARG_4_) * (1 - _ARG_4_) * (1 - _ARG_4_) * _ARG_0_.x + 3 * ((1 - _ARG_4_) * (1 - _ARG_4_)) * _ARG_4_ * _ARG_1_.x + 3 * (1 - _ARG_4_) * (_ARG_4_ * _ARG_4_) * _ARG_2_.x + _ARG_4_ * _ARG_4_ * _ARG_4_ * _ARG_3_.x,
    ["y"] = (1 - _ARG_4_) * (1 - _ARG_4_) * (1 - _ARG_4_) * _ARG_0_.y + 3 * ((1 - _ARG_4_) * (1 - _ARG_4_)) * _ARG_4_ * _ARG_1_.y + 3 * (1 - _ARG_4_) * (_ARG_4_ * _ARG_4_) * _ARG_2_.y + _ARG_4_ * _ARG_4_ * _ARG_4_ * _ARG_3_.y,
    ["z"] = (1 - _ARG_4_) * (1 - _ARG_4_) * (1 - _ARG_4_) * _ARG_0_.z + 3 * ((1 - _ARG_4_) * (1 - _ARG_4_)) * _ARG_4_ * _ARG_1_.z + 3 * (1 - _ARG_4_) * (_ARG_4_ * _ARG_4_) * _ARG_2_.z + _ARG_4_ * _ARG_4_ * _ARG_4_ * _ARG_3_.z
  }
end
function getClosestDistributor(_ARG_0_, _ARG_1_)
  for _FORV_7_, _FORV_8_ in pairs(_UPVALUE0_.distributorsTable.distributors) do
    if 2 > getDistanceBetweenPoints3D(_FORV_8_[2], _FORV_8_[3], _FORV_8_[4], getElementPosition(_ARG_0_)) and (not nil or nil > getDistanceBetweenPoints3D(_FORV_8_[2], _FORV_8_[3], _FORV_8_[4], getElementPosition(_ARG_0_))) then
      closestDistributorIndex = _FORV_7_
    end
  end
  return {
    _FORV_8_[2],
    _FORV_8_[3],
    _FORV_8_[4],
    _FORV_7_
  }, closestDistributorIndex
end
function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
function resulted(_ARG_0_)
  return "#ffc800" .. math.floor(_ARG_0_ / 60) .. " #f0f0f0minut #ffc800" .. _ARG_0_ - math.floor(_ARG_0_ / 60) * 60 .. " #f0f0f0sekund"
end
getResourceName(getThisResource(), true, 363210143)
return
