startJobMarker = createMarker(2565.79, -530.09, 1779.29, "cylinder", 2, 246, 255, 0, 255)
setElementData(startJobMarker, "marker:icon", "praca")
setElementDimension(startJobMarker, 45)
saleCoal = createMarker(2588.39, -540.88, 1779.1499999999999, "cylinder", 3, 246, 255, 0, 255)
setElementDimension(saleCoal, 45)
setElementPosition(createElement("text"), 2588.39, -540.88, 1780.05)
setElementData(createElement("text"), "name", "Sprzeda\197\188 zasob\195\179w")
setElementDimension(createElement("text"), 45)
createBlip(2575.61, -554.77, 87.05, 46, 2, 0, 0, 0, 0, 0, 250)
setElementDimension(createBlip(2575.61, -554.77, 1780.05, 46, 2, 0, 0, 0, 0, 0, 250), 45)
czasZmiany = 60
keyRandom = {
  {"q"},
  {"w"},
  {"e"},
  {"r"},
  {"a"},
  {"s"},
  {"d"},
  {"f"},
  {"g"},
  {"x"},
  {"c"}
}
rt_table = {}
shaderStoneColor = {}
oddaniePos = {
  {
    2437.69,
    -482.82,
    1780.05
  },
  {
    2624.7,
    -449.26,
    1780.05
  },
  {
    2647.66,
    -577.29,
    1780.05
  },
  {
    2555.02,
    -551.21,
    1780.05
  }
}
markersOddanie = {}
blipsOddanie = {}
function endJobAll()
  if isElement(shader) then
    destroyElement(shader)
  end
  if isElement(avatars) then
    destroyElement(avatars)
  end
  if isElement(hudMaskShader) then
    destroyElement(hudMaskShader)
  end
  if isElement(maska) then
    destroyElement(maska)
  end
  if isElement(avatarIMG) then
    destroyElement(avatarIMG)
  end
  for _FORV_3_, _FORV_4_ in pairs(stoneBigTable) do
    if isElement(stoneBig[_FORV_4_[1]]) then
      destroyElement(stoneBig[_FORV_4_[1]])
    end
    if isElement(blips[_FORV_4_[1]]) then
      destroyElement(blips[_FORV_4_[1]])
    end
    if shaderStoneColor[_FORV_4_[1]] then
      destroyElement(shaderStoneColor[_FORV_4_[1]])
      shaderStoneColor[_FORV_4_[1]] = nil
    end
  end
  for _FORV_3_, _FORV_4_ in pairs(stoneSmallTable) do
    if isElement(stoneSmall[_FORV_4_[1]]) then
      destroyElement(stoneSmall[_FORV_4_[1]])
    end
    if shaderStoneColor[_FORV_4_[1]] then
      destroyElement(shaderStoneColor[_FORV_4_[1]])
      shaderStoneColor[_FORV_4_[1]] = nil
    end
  end
  for _FORV_3_, _FORV_4_ in pairs(oddaniePos) do
    if isElement(blipsOddanie[_FORV_3_]) then
      destroyElement(blipsOddanie[_FORV_3_])
    end
  end
  if isElement(rt_table[1]) then
    destroyElement(rt_table[1])
    rt_table[1] = nil
  end
  if isElement(shaderStoneServerColor) then
    destroyElement(shaderStoneServerColor)
  end
  if isElement(shaderStoneServerColorDuo) then
    destroyElement(shaderStoneServerColorDuo)
  end
  if isEventHandlerAdded("onClientPreRender", root, preRenderTrailer) then
    removeEventHandler("onClientPreRender", root, preRenderTrailer)
  end
  if isEventHandlerAdded("onClientRender", root, windowRender) then
    removeEventHandler("onClientRender", root, windowRender)
  end
  unbindKey("h", "down", showinfoF)
  triggerServerEvent("ev_gornik", resourceRoot, "plrJob", localPlayer, false)
  removeCommandHandler("podlaczprzyczepke", podlaczPrzyczepke)
  data = {}
  info = {}
  removeEventHandler("onClientVehicleStartEnter", dataJob.vehicle, onVehEnter)
  removeEventHandler("onClientVehicleStartExit", dataJob.vehicle, onVehExit)
  triggerServerEvent("ev_gornik", resourceRoot, "destroyVehicle", localPlayer)
  if dataJob.trzymaKamien then
    triggerServerEvent("ev_gornik", resourceRoot, "destroyStone", localPlayer, twojWspolpracownik)
  end
  dataJob = {}
  runningBlock(localPlayer, false)
  triggerServerEvent("ev_gornik", resourceRoot, "givePick", localPlayer, false)
end
function startJob()
  triggerServerEvent("ev_gornik", resourceRoot, "plrJob", localPlayer, true)
  bindKey("h", "down", showinfoF)
  triggerServerEvent("ev_gornik", resourceRoot, "givePick", localPlayer, true)
  if data.lider == true then
    triggerServerEvent("ev_gornik", resourceRoot, "createCar", localPlayer, {twojWspolpracownik})
    addCommandHandler("podlaczprzyczepke", podlaczPrzyczepke)
    outputChatBox("\226\151\143#ffffff Aby pod\197\130\196\133czy\196\135 przyczepk\196\153 wpisz /#FFC000podlaczprzyczepke", 255, 175, 0, true)
  end
  for _FORV_3_, _FORV_4_ in pairs(oddaniePos) do
    blipsOddanie[_FORV_3_] = createBlip(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3], 0, 1.5, 0, 191, 0)
    setElementDimension(blipsOddanie[_FORV_3_], 45)
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == startJobMarker then
      loadTextures()
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      triggerServerEvent("ev_gornik", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      windows.background = true
      windows.category = "g\197\130\195\179wne"
      showCursor(true)
      setCursorAlpha(255)
    end
    if source == saleCoal then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        coal_icon = dxCreateTexture("img/coal_icon.png"),
        loading = dxCreateTexture(":ST_download/loading.png")
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      triggerServerEvent("ev_gornik", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      windows.saleCoal = true
      showCursor(true)
      setCursorAlpha(255)
      table_stockExchange = {
        {
          gold = 0,
          gold2 = 0,
          gold3 = 0,
          gold4 = 0,
          gold5 = 0,
          gold6 = 1,
          iron = 0,
          iron2 = 0,
          iron3 = 0,
          iron4 = 0,
          iron5 = 0,
          iron6 = 1,
          coal = 0,
          coal2 = 0,
          coal3 = 0,
          coal4 = 0,
          coal5 = 0,
          coal6 = 1
        }
      }
      triggerServerEvent("ev_gornik", resourceRoot, "showStockExchange")
      setTimer(function()
        cacheChartData()
        addEventHandler("onClientRestore", root, cacheChartDrawing)
      end, 500, 1)
      CzasZmiany = 0
      graph.coalNumber = 0
      graph.goldNumber = 0
      graph.ironNumber = 0
      graph.diamondsNumber = 0
    end
    if source == wywoz then
      if isElement(wywoz) then
        destroyElement(wywoz)
        wywoz = nil
      end
      if isElement(blip) then
        destroyElement(blip)
        blip = nil
      end
      setTimer(function()
        triggerServerEvent("ev_gornik", resourceRoot, "setElementPosition", 2571.64, -536.52, 1780.08, 45)
      end, 500, 1)
      triggerServerEvent("ev_gornik", resourceRoot, "destroyVehicle", localPlayer)
      unbindKey("F", "down", exitGUI)
      unbindKey("enter", "down", exitGUI)
      triggerServerEvent("ev_gornik", resourceRoot, "plrJob", localPlayer, false)
      triggerServerEvent("ev_gornik", resourceRoot, "exportCoal", localPlayer, {
        graph.coalNumber,
        graph.goldNumber,
        graph.ironNumber,
        money,
        5433475,
        graph.diamondsNumber,
        false
      }, cenySurowcow)
      exports.st_gui:showPlayerNotification("Otrzymujesz " .. przecinek(money) .. " PLN", "money")
    end
  end
end)
function cacheChartData()
  highest_value = false
  for _FORV_3_, _FORV_4_ in ipairs(table_stockExchange) do
    iron01 = _FORV_4_.iron
    iron2 = _FORV_4_.iron2
    iron3 = _FORV_4_.iron3
    iron4 = _FORV_4_.iron4
    iron5 = _FORV_4_.iron5
    iron6 = _FORV_4_.iron6
    iron7 = _FORV_4_.iron7
    iron8 = _FORV_4_.iron8
    iron9 = _FORV_4_.iron9
    data_iron = {
      iron9,
      iron8,
      iron7,
      iron6,
      iron5,
      iron4,
      iron3,
      iron2,
      iron01
    }
    coal01 = _FORV_4_.coal
    coal2 = _FORV_4_.coal2
    coal3 = _FORV_4_.coal3
    coal4 = _FORV_4_.coal4
    coal5 = _FORV_4_.coal5
    coal6 = _FORV_4_.coal6
    coal4 = _FORV_4_.coal4
    coal5 = _FORV_4_.coal5
    coal6 = _FORV_4_.coal6
    coal7 = _FORV_4_.coal7
    coal8 = _FORV_4_.coal8
    coal9 = _FORV_4_.coal9
    data_coal = {
      coal9,
      coal8,
      coal7,
      coal6,
      coal5,
      coal4,
      coal3,
      coal2,
      coal01
    }
    gold01 = _FORV_4_.gold
    gold2 = _FORV_4_.gold2
    gold3 = _FORV_4_.gold3
    gold4 = _FORV_4_.gold4
    gold5 = _FORV_4_.gold5
    gold6 = _FORV_4_.gold6
    gold4 = _FORV_4_.gold4
    gold5 = _FORV_4_.gold5
    gold6 = _FORV_4_.gold6
    gold7 = _FORV_4_.gold7
    gold8 = _FORV_4_.gold8
    gold9 = _FORV_4_.gold9
    data_gold = {
      gold9,
      gold8,
      gold7,
      gold6,
      gold5,
      gold4,
      gold3,
      gold2,
      gold01
    }
    diamonds01 = _FORV_4_.diamonds
    diamonds2 = _FORV_4_.diamonds2
    diamonds3 = _FORV_4_.diamonds3
    diamonds4 = _FORV_4_.diamonds4
    diamonds5 = _FORV_4_.diamonds5
    diamonds6 = _FORV_4_.diamonds6
    diamonds4 = _FORV_4_.diamonds4
    diamonds5 = _FORV_4_.diamonds5
    diamonds6 = _FORV_4_.diamonds6
    diamonds7 = _FORV_4_.diamonds7
    diamonds8 = _FORV_4_.diamonds8
    diamonds9 = _FORV_4_.diamonds9
    data_diamonds = {
      diamonds9,
      diamonds8,
      diamonds7,
      diamonds6,
      diamonds5,
      diamonds4,
      diamonds3,
      diamonds2,
      diamonds01
    }
    data_highest_value = {
      diamonds9,
      diamonds8,
      diamonds7,
      diamonds6,
      diamonds5,
      diamonds4,
      diamonds3,
      diamonds2,
      diamonds01,
      gold9,
      gold8,
      gold7,
      gold6,
      gold5,
      gold4,
      gold3,
      gold2,
      gold01,
      coal9,
      coal8,
      coal7,
      coal6,
      coal5,
      coal4,
      coal3,
      coal2,
      coal01,
      iron9,
      iron8,
      iron7,
      iron6,
      iron5,
      iron4,
      iron3,
      iron2,
      iron01
    }
  end
  for _FORV_3_ = 1, #data_highest_value do
    if not highest_value or data_highest_value[_FORV_3_] > highest_value then
      highest_value = data_highest_value[_FORV_3_]
    end
  end
  chart_data_iron = data_iron
  chart_data_coal = data_coal
  chart_data_gold = data_gold
  chart_data_diamonds = data_diamonds
  chart_columns_iron = #data_iron - 1
  chart_columns_coal = #data_coal - 1
  chart_columns_gold = #data_gold - 1
  chart_columns_diamonds = #data_diamonds - 1
  cacheChartDrawing()
end
function addKGtrailer()
  if levelJob == 1 then
    if dataJob.stoneType == "w\196\153giel" then
      key.kg = math.random(4, 7)
    elseif dataJob.stoneType == "\197\188elazo" then
      key.kg = math.random(2, 4)
    elseif dataJob.stoneType == "z\197\130oto" then
      key.kg = 1
    elseif dataJob.stoneType == "diament" then
      key.kg = 1
    end
  elseif levelJob == 2 then
    if dataJob.stoneType == "w\196\153giel" then
      key.kg = math.random(7, 9)
    elseif dataJob.stoneType == "\197\188elazo" then
      key.kg = math.random(3, 5)
    elseif dataJob.stoneType == "z\197\130oto" then
      key.kg = math.random(1, 3)
    elseif dataJob.stoneType == "diament" then
      key.kg = math.random(1, 2)
    end
  elseif levelJob == 3 then
    if dataJob.stoneType == "w\196\153giel" then
      key.kg = math.random(8, 11)
    elseif dataJob.stoneType == "\197\188elazo" then
      key.kg = math.random(4, 8)
    elseif dataJob.stoneType == "z\197\130oto" then
      key.kg = math.random(2, 4)
    elseif dataJob.stoneType == "diament" then
      key.kg = math.random(1, 4)
    end
  elseif levelJob == 4 then
    if dataJob.stoneType == "w\196\153giel" then
      key.kg = math.random(10, 13)
    elseif dataJob.stoneType == "\197\188elazo" then
      key.kg = math.random(5, 9)
    elseif dataJob.stoneType == "z\197\130oto" then
      key.kg = math.random(4, 6)
    elseif dataJob.stoneType == "diament" then
      key.kg = math.random(2, 5)
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
    if _FORV_4_.ulepszenie_drop_kopalnia == 1 then
      key.kg = key.kg + 1
    end
  end
  if getElementData(localPlayer, "player:premium") then
    key.kg = key.kg + 1
    exports.ST_levelsystem:addExp((math.random(1, 3)))
    info.exp = info.exp + math.random(1, 3)
  else
    exports.ST_levelsystem:addExp((math.random(1, 2)))
    info.exp = info.exp + math.random(1, 2)
  end
  if (getElementData(localPlayer, "player:bonusJob") or false) and (getElementData(localPlayer, "player:bonusJob") or false).name == "G\195\179rnik" then
    key.kg = key.kg * (getElementData(localPlayer, "player:bonusJob") or false).addMoney
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
    key.kg = key.kg * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
  end
  key.kg = math.floor(key.kg)
  if dataJob.stoneType == "w\196\153giel" then
    info.coal = info.coal + math.floor(key.kg)
    dataJob.coal = dataJob.coal + math.floor(key.kg)
  elseif dataJob.stoneType == "\197\188elazo" then
    info.iron = info.iron + math.floor(key.kg)
    dataJob.iron = dataJob.iron + math.floor(key.kg)
  elseif dataJob.stoneType == "z\197\130oto" then
    info.gold = info.gold + math.floor(key.kg)
    dataJob.gold = dataJob.gold + math.floor(key.kg)
  elseif dataJob.stoneType == "diament" then
    info.diamonds = info.diamonds + math.floor(key.kg)
    dataJob.diamonds = dataJob.diamonds + math.floor(key.kg)
  end
  triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 2)
  if twojWspolpracownik then
    triggerServerEvent("ev_gornik", resourceRoot, "oddawanieSkaleSynchro", localPlayer, {
      twojWspolpracownik,
      key.kg,
      dataJob.stoneType,
      42135
    })
  end
  renderTargetTrailer(dataJob.trailer)
  exports.st_gui:showPlayerNotification("Pomy\197\155lnie od\197\130o\197\188ono " .. dataJob.stoneType .. " " .. math.floor(key.kg) .. " kg", "money")
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showStockExchangeClient" then
    table_stockExchange = _ARG_1_
    CzasZmiany = _ARG_2_
    for _FORV_10_, _FORV_11_ in ipairs(table_stockExchange) do
      cenySurowcow = {
        _FORV_11_.coal,
        _FORV_11_.gold,
        _FORV_11_.iron,
        _FORV_11_.diamonds
      }
    end
  elseif _ARG_0_ == "zlecWyplateWspolpracownikClient" then
    if _ARG_2_ == twojWspolpracownik then
      triggerServerEvent("ev_gornik", resourceRoot, "rozladunek", localPlayer, {
        {
          dataJob.coal / 2,
          dataJob.iron / 2,
          dataJob.gold / 2,
          dataJob.diamonds / 2
        },
        false,
        6542373,
        dataJob.stanKilofa
      })
      dataJob.coal = 0
      dataJob.iron = 0
      dataJob.gold = 0
      dataJob.diamonds = 0
      renderTargetTrailer(dataJob.trailer)
    end
  elseif _ARG_0_ == "exportCoalClient" then
    setTimer(function()
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.loading = false
      exports.st_gui:showPlayerNotification("Otrzymujesz " .. przecinek(money) .. " PLN", "money")
    end, 5000, 1)
  elseif _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_15_, _FORV_16_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy drop",
          description = "Potrafisz zebra\196\135 1 kg wi\196\153cej",
          price = 2000,
          icon = textures.coal_icon,
          status = _FORV_16_.ulepszenie_drop_kopalnia,
          nameDatabase = "ulepszenie_drop_kopalnia"
        },
        {
          name = "Automatyczna sprzeda\197\188",
          description = "Mo\197\188esz sprzeda\196\135 zasoby automatycznie",
          price = 3000,
          icon = textures.dolar_icon,
          status = _FORV_16_.ulepszenie_sprzedaz_kopalnia,
          nameDatabase = "ulepszenie_sprzedaz_kopalnia"
        },
        {
          name = "Pojemno\197\155\196\135 przyczepki",
          description = "Twoja przyczepka mo\197\188e zmie\197\155ci\196\135 wi\196\153cej KG. Ulepszenie #c77100" .. _FORV_16_.ulepszenie_maxKG_kopalnia .. " #a0a0a0/ #c771004",
          price = 500,
          icon = textures.trailer1_icon,
          status = _FORV_16_.ulepszenie_maxKG_kopalnia,
          nameDatabase = "ulepszenie_maxKG_kopalnia"
        },
        {
          name = "Ulepszenie kilofa",
          description = "Tw\195\179j kilof mniej si\196\153 zu\197\188ywa. Ulepszenie #c77100" .. _FORV_16_.ulepszenie_kilof_kopalnia .. " #a0a0a0/ #c771004",
          price = 600,
          icon = textures.pick_icon,
          status = _FORV_16_.ulepszenie_kilof_kopalnia,
          nameDatabase = "ulepszenie_kilof_kopalnia"
        },
        {
          name = "Kondycja",
          description = "Dzi\196\153ki temu ulepszeniu poruszasz si\196\153 szybciej",
          price = 250,
          icon = textures.condition_icon,
          status = _FORV_16_.ulepszenie_kondycja_kopalnia,
          nameDatabase = "ulepszenie_kondycja_kopalnia"
        }
      }
    end
  elseif _ARG_0_ == "startJobClient" then
    if _ARG_5_ then
      if twojWspolpracownik ~= _ARG_5_ then
        return
      end
      triggerServerEvent("ev_gornik", resourceRoot, "setElementPosition", getElementPosition(_ARG_2_))
      texturesRender = {
        user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
        trailer1_icon = dxCreateTexture("img/trailer1_icon.png"),
        pick_icon = dxCreateTexture("img/pick_icon.png"),
        coal_icon = dxCreateTexture("img/coal_icon.png")
      }
      startJob()
      exports.st_gui:showPlayerNotification("Rozpoczeto prace", "info")
      addEventHandler("onClientRender", root, windowRender)
    end
    dataJob.vehicle = _ARG_1_
    dataJob.trailer = _ARG_2_
    table_stockExchange = _ARG_4_
    tick = getTickCount()
    info.time = 0
    info.gold = 0
    info.iron = 0
    info.coal = 0
    info.diamonds = 0
    info.exp = 0
    info.showinfo = true
    dataJob.maxKgTrailer = _ARG_3_
    dataJob.coal = 0
    dataJob.iron = 0
    dataJob.gold = 0
    dataJob.diamonds = 0
    dataJob.stanKilofa = 0
    rt_table[1] = dxCreateRenderTarget(600, 326, true)
    addEventHandler("onClientVehicleStartEnter", dataJob.vehicle, onVehEnter)
    addEventHandler("onClientVehicleStartExit", dataJob.vehicle, onVehExit)
    setTimer(function()
      addEventHandler("onClientPreRender", root, preRenderTrailer)
      renderTargetTrailer(dataJob.trailer)
    end, 2000, 1)
    for _FORV_10_, _FORV_11_ in ipairs(table_statistics) do
      dataJob.stanKilofa = _FORV_11_.stanKilofa_kopalnia
    end
  elseif _ARG_0_ == "sendOfferJobClient" then
    setElementData(localPlayer, "player_offerTrade", true)
    exports.st_gui:showPlayerNotification("Otrzymano zaproszenie do pracy duo od gracza " .. getPlayerName(_ARG_1_) .. " kliknij przycisk \"P\" aby zaakceptowa\196\135", "info", 0, 10000)
    triggerServerEvent("ev_gornik", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    bindKey("P", "down", function()
      data = {}
      twojWspolpracownik = _UPVALUE0_
      if not isEventHandlerAdded("onClientRender", root, window) then
        loadTextures()
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        showCursor(true)
      end
      dataJob = {}
      data.lider = false
      windows.category = "level"
      windows.background = false
      data.offerLevel = true
      if isTimer(timer) then
        killTimer(timer)
      end
      unbindKey("P")
      triggerServerEvent("ev_gornik", resourceRoot, "sendOfferJob2", localPlayer, _UPVALUE0_, "akceptacja")
      setElementData(localPlayer, "player_offerTrade", false)
      triggerServerEvent("ev_gornik", resourceRoot, "plrJob", localPlayer, true)
    end)
    timer = setTimer(function()
      exports.st_gui:showPlayerNotification("Odrzucono ofert\196\153 wsp\195\179\197\130pracy", "info")
      unbindKey("P")
      triggerServerEvent("ev_gornik", resourceRoot, "sendOfferJob2", localPlayer, _UPVALUE0_, "odrzucil")
      setElementData(localPlayer, "player_offerTrade", false)
    end, 10500, 1)
  elseif _ARG_0_ == "sendOfferJob2Client" then
    if _ARG_3_ == "akceptacja" then
      if isElement(shader) then
        destroyElement(shader)
      end
      if isElement(avatars) then
        destroyElement(avatars)
      end
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      if isElement(avatarIMG) then
        destroyElement(avatarIMG)
      end
      avatarIMG = nil
      if _ARG_2_ then
        hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
        maska = dxCreateTexture(":ST_avatars/kolo.png")
        dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
        shader = dxCreateShader(":ST_avatars/masked.fx")
        avatars = dxCreateTexture(_ARG_2_, "argb", false, "clamp")
        dxSetShaderValue(shader, "sMaskTexture", maska)
        dxSetShaderValue(shader, "sPicTexture", avatars)
        avatarIMG = shader
      end
      twojWspolpracownik = _ARG_1_
      windows.category = false
      windows.background = false
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      for _FORV_10_, _FORV_11_ in pairs(textures) do
        if isElement(_FORV_11_) then
          destroyElement(_FORV_11_)
        end
      end
      textures = {}
      texturesRender = {
        user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
        trailer1_icon = dxCreateTexture("img/trailer1_icon.png"),
        pick_icon = dxCreateTexture("img/pick_icon.png"),
        coal_icon = dxCreateTexture("img/coal_icon.png")
      }
      data.lider = true
      dataJob = {}
      startJob()
      setTimer(function()
        createStone()
        triggerServerEvent("ev_gornik", resourceRoot, "wyslijTabeleSkaly", {twojWspolpracownik, stoneBigTable})
        addEventHandler("onClientRender", root, windowRender)
      end, 1000, 1)
      exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " zaakceptowa\197\130/a twoje zaproszenie do wsp\195\179\197\130pracy", "success")
    else
      exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " odrzuci\197\130/a twoje zaproszenie do wsp\195\179\197\130pracy", "error")
      windows.category = "g\197\130\195\179wne"
      windows.background = true
    end
  elseif _ARG_0_ == "setAvatar" then
    if isElement(shader) then
      destroyElement(shader)
    end
    if isElement(avatars) then
      destroyElement(avatars)
    end
    if isElement(hudMaskShader) then
      destroyElement(hudMaskShader)
    end
    if isElement(maska) then
      destroyElement(maska)
    end
    if isElement(avatarIMG) then
      destroyElement(avatarIMG)
    end
    avatarIMG = nil
    if _ARG_1_ then
      hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
      maska = dxCreateTexture(":ST_avatars/kolo.png")
      dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
      shader = dxCreateShader(":ST_avatars/masked.fx")
      avatars = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
      dxSetShaderValue(shader, "sMaskTexture", maska)
      dxSetShaderValue(shader, "sPicTexture", avatars)
      avatarIMG = shader
    end
  elseif _ARG_0_ == "oddawanieSkaleSynchroClient" then
    if twojWspolpracownik == _ARG_1_ then
      if _ARG_3_ == "w\196\153giel" then
        info.coal = info.coal + math.floor(_ARG_2_)
        dataJob.coal = dataJob.coal + math.floor(_ARG_2_)
      elseif _ARG_3_ == "\197\188elazo" then
        info.iron = info.iron + math.floor(_ARG_2_)
        dataJob.iron = dataJob.iron + math.floor(_ARG_2_)
      elseif _ARG_3_ == "z\197\130oto" then
        info.gold = info.gold + math.floor(_ARG_2_)
        dataJob.gold = dataJob.gold + math.floor(_ARG_2_)
      elseif _ARG_3_ == "diament" then
        info.diamonds = info.diamonds + math.floor(_ARG_2_)
        dataJob.diamonds = dataJob.diamonds + math.floor(_ARG_2_)
      end
      renderTargetTrailer(dataJob.trailer)
      exports.st_gui:showPlayerNotification("Wsp\195\179\197\130pracownik odni\195\179s\197\130 " .. _ARG_3_ .. " " .. math.floor(_ARG_2_) .. " kg", "money")
    end
  elseif _ARG_0_ == "wyslijTabeleSkalyClient" then
    for _FORV_10_, _FORV_11_ in ipairs(stoneBigTable) do
      if isElement(stoneBig[_FORV_11_[1]]) then
        destroyElement(stoneBig[_FORV_11_[1]])
      end
      if isElement(blips[_FORV_11_[1]]) then
        destroyElement(blips[_FORV_11_[1]])
      end
      if shaderStoneColor[_FORV_11_[1]] then
        destroyElement(shaderStoneColor[_FORV_11_[1]])
        shaderStoneColor[_FORV_11_[1]] = nil
      end
    end
    stoneBigTable = _ARG_1_
    for _FORV_10_, _FORV_11_ in pairs(stoneBigTable) do
      if isElement(stoneBig[_FORV_11_[1]]) then
        destroyElement(stoneBig[_FORV_11_[1]])
      end
      if isElement(blips[_FORV_11_[1]]) then
        destroyElement(blips[_FORV_11_[1]])
      end
      for _FORV_16_, _FORV_17_ in ipairs(randomPosition) do
        if _FORV_17_[1] == _FORV_11_[1] then
          stoneBig[_FORV_11_[1]] = createObject(896, _FORV_17_[2], _FORV_17_[3], _FORV_17_[4])
          setElementDimension(stoneBig[_FORV_11_[1]], 45)
          setElementCollisionsEnabled(stoneBig[_FORV_11_[1]], false)
          setObjectScale(stoneBig[_FORV_11_[1]], 0.1)
          if _FORV_11_[2] == "w\196\153giel" then
            r, g, _UPVALUE0_ = 0.15, 0.15, 0.15
          elseif _FORV_11_[2] == "\197\188elazo" then
            r, g, _UPVALUE0_ = 215, 115, 115
          elseif _FORV_11_[2] == "z\197\130oto" then
            r, g, _UPVALUE0_ = 1.79, 1.61, 0.73
          elseif _FORV_11_[2] == "diament" then
            r, g, _UPVALUE0_ = 0.97, 2.26, 2.55
          end
          shaderStoneColor[_FORV_11_[1]] = dxCreateShader("shader.fx", 1000, 0, false)
          engineApplyShaderToWorldTexture(shaderStoneColor[_FORV_11_[1]], "*", stoneBig[_FORV_11_[1]])
          dxSetShaderValue(shaderStoneColor[_FORV_11_[1]], "gColor", r, g, _UPVALUE0_, 255)
          blips[_FORV_11_[1]] = createBlip(_FORV_17_[2], _FORV_17_[3], _FORV_17_[4], 0, 1, 255, 191, 0)
          setElementDimension(blips[_FORV_11_[1]], 45)
        end
      end
    end
  elseif _ARG_0_ == "synchroUsuwanieSkalyClient" then
    if _ARG_2_ == "usunTabele" then
      if data.lider == true and dataJob.bigStoneID == _ARG_1_ then
        windows.breakingStone = false
        triggerServerEvent("ev_gornik", resourceRoot, "stopAnimationMine", localPlayer)
        removeEventHandler("onClientRender", root, window)
        showCursor(false)
        outputChatBox("antybug")
      end
      removeById(stoneBigTable, _ARG_1_)
    elseif _ARG_2_ == "usunObiektSkalaDuza" then
      usunDuzyKamien(_ARG_1_)
    elseif _ARG_2_ == "stworzMalyKamien" then
      stworzMalyKamien(_ARG_1_[1], _ARG_1_[2])
    end
  elseif _ARG_0_ == "synchroBranieMalegoKamieniaClient" then
    if data.lider == true and dataJob.trzymaKamien == _ARG_1_ then
      dataJob.trzymaKamien = false
      triggerServerEvent("ev_gornik", resourceRoot, "destroyStone", localPlayer)
      runningBlock(localPlayer, false)
      outputChatBox("antybug")
    end
    usunMalyKamien(_ARG_1_)
  elseif _ARG_0_ == "pobierzPozycjeOdLideraClient" then
    createStone()
    if twojWspolpracownik then
      setTimer(function()
        triggerServerEvent("ev_gornik", resourceRoot, "wyslijTabeleSkaly", {twojWspolpracownik, stoneBigTable})
      end, 1000, 1)
    end
  elseif _ARG_0_ == "setColorStone" then
    if _ARG_4_ then
      if _ARG_3_ then
        if isElement(shaderStoneServerColorDuo) then
          destroyElement(shaderStoneServerColorDuo)
        end
      elseif isElement(shaderStoneServerColor) then
        destroyElement(shaderStoneServerColor)
      end
    else
      if _ARG_1_ == "w\196\153giel" then
        r, g, _UPVALUE0_ = 0.15, 0.15, 0.15
      elseif _ARG_1_ == "\197\188elazo" then
        r, g, _UPVALUE0_ = 215, 115, 115
      elseif _ARG_1_ == "z\197\130oto" then
        r, g, _UPVALUE0_ = 1.79, 1.61, 0.73
      elseif _ARG_1_ == "diament" then
        r, g, _UPVALUE0_ = 0.97, 2.26, 2.55
      end
      if _ARG_3_ then
        shaderStoneServerColorDuo = dxCreateShader("shader.fx", 1000, 0, false)
        engineApplyShaderToWorldTexture(shaderStoneServerColorDuo, "*", _ARG_2_)
        dxSetShaderValue(shaderStoneServerColorDuo, "gColor", r, g, _UPVALUE0_, 255)
      else
        shaderStoneServerColor = dxCreateShader("shader.fx", 1000, 0, false)
        engineApplyShaderToWorldTexture(shaderStoneServerColor, "*", _ARG_2_)
        dxSetShaderValue(shaderStoneServerColor, "gColor", r, g, _UPVALUE0_, 255)
      end
    end
  elseif _ARG_0_ == "naprawaKilofaClient" then
    if _ARG_1_ then
      dataJob.stanKilofa = 1000
    end
    clickKilof = false
  elseif _ARG_0_ == "endJobClient" and twojWspolpracownik == _ARG_1_ then
    exports.st_gui:showPlayerNotification("Tw\195\179j wsp\195\179\197\130pracownik zako\197\132czy\197\130 prac\196\153", "info")
    endJobAll()
  end
end)
function loadTextures()
  textures = {
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    cross = dxCreateTexture(":ST_gui/img/cross.png"),
    widget = dxCreateTexture(":ST_jobs_settings/img/widget_jobs.png"),
    off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
    info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
    improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
    start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
    stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
    game_photo = dxCreateTexture("img/game_photo.png"),
    dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
    condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
    level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
    level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
    level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
    level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
    condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
    loading = dxCreateTexture(":ST_download/loading.png"),
    lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
    unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
    requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png"),
    duo_icon = dxCreateTexture(":ST_mower_job/img/duo_icon.png"),
    solo_icon = dxCreateTexture(":ST_mower_job/img/solo_icon.png"),
    trailer1_icon = dxCreateTexture("img/trailer1_icon.png"),
    pick_icon = dxCreateTexture("img/pick_icon.png"),
    coal_icon = dxCreateTexture("img/coal_icon.png")
  }
  levelJobTable = {
    {
      levelJob = 1,
      exp = 0,
      moneyJob = "0",
      level = 0,
      img = textures.level1_icon,
      money = 1
    },
    {
      levelJob = 2,
      exp = 500,
      moneyJob = "0",
      level = 10,
      img = textures.level2_icon,
      money = 1.2
    },
    {
      levelJob = 3,
      exp = 1000,
      moneyJob = "0",
      level = 25,
      img = textures.level3_icon,
      money = 1.4
    },
    {
      levelJob = 4,
      exp = 2000,
      moneyJob = "0",
      level = 40,
      img = textures.level4_icon,
      money = 1.6
    }
  }
end
stoneBigTable = {}
stoneBig = {}
blips = {}
hitCounter = 0
lastPositions = {}
function createStone()
  for _FORV_3_, _FORV_4_ in ipairs(stoneBigTable) do
    if isElement(stoneBig[_FORV_4_[1]]) then
      destroyElement(stoneBig[_FORV_4_[1]])
    end
    if isElement(blips[_FORV_4_[1]]) then
      destroyElement(blips[_FORV_4_[1]])
    end
    if shaderStoneColor[_FORV_4_[1]] then
      destroyElement(shaderStoneColor[_FORV_4_[1]])
      shaderStoneColor[_FORV_4_[1]] = nil
    end
  end
  stoneBigTable = {}
  if #_UPVALUE0_({
    getElementPosition(localPlayer)
  }, 50) == 0 then
    outputChatBox("Brak dost\196\153pnych miejsc. Zbierz ma\197\130e kamienie, aby kontynuowa\196\135.")
    return
  end
  for _FORV_8_, _FORV_9_ in ipairs((_UPVALUE0_({
    getElementPosition(localPlayer)
  }, 50))) do
    table.insert(lastPositions, _FORV_9_)
  end
  while #lastPositions > 40 do
    table.remove(lastPositions, 1)
  end
  for _FORV_8_, _FORV_9_ in ipairs((_UPVALUE0_({
    getElementPosition(localPlayer)
  }, 50))) do
    stoneBig[_FORV_9_[1]] = createObject(896, _FORV_9_[2], _FORV_9_[3], _FORV_9_[4])
    setElementDimension(stoneBig[_FORV_9_[1]], 45)
    setElementCollisionsEnabled(stoneBig[_FORV_9_[1]], false)
    setObjectScale(stoneBig[_FORV_9_[1]], 0.1)
    if levelJob == 1 then
      key.resourcesRandom = math.random(1, 100)
      if 1 <= key.resourcesRandom and key.resourcesRandom <= 55 then
        resource = "w\196\153giel"
      elseif key.resourcesRandom >= 56 and key.resourcesRandom <= 86 then
        resource = "\197\188elazo"
      elseif key.resourcesRandom >= 87 and key.resourcesRandom <= 95 then
        resource = "z\197\130oto"
      elseif key.resourcesRandom >= 96 and key.resourcesRandom <= 100 then
        resource = "diament"
      end
    elseif levelJob == 2 then
      key.resourcesRandom = math.random(1, 100)
      if 1 <= key.resourcesRandom and 50 >= key.resourcesRandom then
        resource = "w\196\153giel"
      elseif key.resourcesRandom >= 51 and key.resourcesRandom <= 78 then
        resource = "\197\188elazo"
      elseif key.resourcesRandom >= 79 and key.resourcesRandom <= 93 then
        resource = "z\197\130oto"
      elseif key.resourcesRandom >= 94 and key.resourcesRandom <= 100 then
        resource = "diament"
      end
    elseif levelJob == 3 then
      key.resourcesRandom = math.random(1, 100)
      if 1 <= key.resourcesRandom and key.resourcesRandom <= 41 then
        resource = "w\196\153giel"
      elseif key.resourcesRandom >= 42 and key.resourcesRandom <= 73 then
        resource = "\197\188elazo"
      elseif key.resourcesRandom >= 74 and key.resourcesRandom <= 91 then
        resource = "z\197\130oto"
      elseif key.resourcesRandom >= 92 and key.resourcesRandom <= 100 then
        resource = "diament"
      end
    elseif levelJob == 4 then
      key.resourcesRandom = math.random(1, 100)
      if 1 <= key.resourcesRandom and key.resourcesRandom <= 35 then
        resource = "w\196\153giel"
      elseif key.resourcesRandom >= 36 and key.resourcesRandom <= 66 then
        resource = "\197\188elazo"
      elseif key.resourcesRandom >= 67 and key.resourcesRandom <= 89 then
        resource = "z\197\130oto"
      elseif key.resourcesRandom >= 90 and key.resourcesRandom <= 100 then
        resource = "diament"
      end
    end
    if resource == "w\196\153giel" then
      r, g, _UPVALUE1_ = 0.15, 0.15, 0.15
    elseif resource == "\197\188elazo" then
      r, g, _UPVALUE1_ = 215, 115, 115
    elseif resource == "z\197\130oto" then
      r, g, _UPVALUE1_ = 1.79, 1.61, 0.73
    elseif resource == "diament" then
      r, g, _UPVALUE1_ = 0.97, 2.26, 2.55
    end
    shaderStoneColor[_FORV_9_[1]] = dxCreateShader("shader.fx", 1000, 0, false)
    engineApplyShaderToWorldTexture(shaderStoneColor[_FORV_9_[1]], "*", stoneBig[_FORV_9_[1]])
    dxSetShaderValue(shaderStoneColor[_FORV_9_[1]], "gColor", r, g, _UPVALUE1_, 255)
    blips[_FORV_9_[1]] = createBlip(_FORV_9_[2], _FORV_9_[3], _FORV_9_[4], 0, 1, 255, 191, 0)
    setElementDimension(blips[_FORV_9_[1]], 45)
    table.insert(stoneBigTable, {
      _FORV_9_[1],
      resource
    })
  end
end
function usunDuzyKamien(_ARG_0_)
  if isElement(stoneBig[_ARG_0_]) then
    destroyElement(stoneBig[_ARG_0_])
  end
  if shaderStoneColor[_ARG_0_] then
    destroyElement(shaderStoneColor[_ARG_0_])
    shaderStoneColor[_ARG_0_] = nil
  end
  if isElement(blips[_ARG_0_]) then
    destroyElement(blips[_ARG_0_])
  end
end
function podlaczPrzyczepke()
  if not lastTickCountPrzyczepka then
    lastTickCountPrzyczepka = 120000
  end
  if 120000 < getTickCount() - lastTickCountPrzyczepka then
    lastTickCountPrzyczepka = getTickCount()
    triggerServerEvent("ev_gornik", resourceRoot, "podlaczPrzyczepke", localPlayer)
  else
    exports.st_gui:showPlayerNotification("Mo\197\188esz uzy\196\135 tej komendy raz na 2 minuty", "error")
  end
end
function onVehEnter(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    triggerServerEvent("ev_gornik", resourceRoot, "reczny", localPlayer, false)
  end
end
function onVehExit(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    triggerServerEvent("ev_gornik", resourceRoot, "reczny", localPlayer, true)
  end
end
stoneSmallTable = {}
stoneSmall = {}
function stworzMalyKamien(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(randomPosition) do
    if _FORV_6_[1] == _ARG_0_ then
      if shaderStoneColor[_ARG_0_] then
        destroyElement(shaderStoneColor[_ARG_0_])
        shaderStoneColor[_ARG_0_] = nil
      end
      setTimer(function()
        stoneSmall[_UPVALUE0_] = createObject(896, _UPVALUE1_[5], _UPVALUE1_[6], _UPVALUE1_[7] - 0.8)
        setElementDimension(stoneSmall[_UPVALUE0_], 45)
        setElementCollisionsEnabled(stoneSmall[_UPVALUE0_], false)
        setObjectScale(stoneSmall[_UPVALUE0_], 0.035)
        table.insert(stoneSmallTable, {_UPVALUE0_, _UPVALUE2_})
        if _UPVALUE2_ == "w\196\153giel" then
          r, g, _UPVALUE3_ = 0.15, 0.15, 0.15
        elseif _UPVALUE2_ == "\197\188elazo" then
          r, g, _UPVALUE3_ = 215, 115, 115
        elseif _UPVALUE2_ == "z\197\130oto" then
          r, g, _UPVALUE3_ = 1.79, 1.61, 0.73
        elseif _UPVALUE2_ == "diament" then
          r, g, _UPVALUE3_ = 0.97, 2.26, 2.55
        end
        shaderStoneColor[_UPVALUE0_] = dxCreateShader("shader.fx", 1000, 0, false)
        engineApplyShaderToWorldTexture(shaderStoneColor[_UPVALUE0_], "*", stoneSmall[_UPVALUE0_])
        dxSetShaderValue(shaderStoneColor[_UPVALUE0_], "gColor", r, g, _UPVALUE3_, 255)
      end, 100, 1)
    end
  end
end
function usunMalyKamien(_ARG_0_)
  setTimer(function()
    if isElement(stoneSmall[_UPVALUE0_]) then
      destroyElement(stoneSmall[_UPVALUE0_])
    end
    if shaderStoneColor[_UPVALUE0_] then
      destroyElement(shaderStoneColor[_UPVALUE0_])
      shaderStoneColor[_UPVALUE0_] = nil
    end
  end, 500, 1)
  removeById(stoneSmallTable, _ARG_0_)
end
function showinfoF()
  if info.showinfo == true then
    info.showinfo = false
  else
    info.showinfo = true
  end
end
function renderBieganie()
  keys = getBoundKeys("forwards")
  for _FORV_3_, _FORV_4_ in pairs(keys) do
    if _FORV_4_ and blocked then
      setPedControlState(localPlayer, "walk", true)
    end
  end
end
function runningBlock(_ARG_0_, _ARG_1_)
  if _ARG_1_ then
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
    addEventHandler("onClientRender", root, renderBieganie)
    for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
      if _FORV_6_.ulepszenie_kondycja_kopalnia == 1 then
        toggleControl("walk", true)
        toggleControl("crouch", true)
        toggleControl("sprint", false)
        toggleControl("jump", false)
        setPedControlState("walk", false)
        blocked = false
      else
        blocked = true
        toggleControl("walk", false)
        toggleControl("crouch", false)
        toggleControl("sprint", false)
        toggleControl("jump", false)
        setPedControlState("walk", true)
      end
    end
  else
    removeEventHandler("onClientRender", root, renderBieganie)
    blocked = false
    toggleControl("walk", true)
    toggleControl("crouch", true)
    toggleControl("sprint", true)
    toggleControl("jump", true)
    setPedControlState("walk", false)
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
  end
end
getResourceName(getThisResource(), true, 713871033)
return
