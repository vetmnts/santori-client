dataJob = {}
startJobMarker = createMarker(2676.91, 818.58, 10.09, "cylinder", 2, 246, 255, 0, 255)
setElementData(startJobMarker, "marker:icon", "praca")
createBlip(2676.91, 818.58, 10.99, 46, 2, 0, 0, 0, 0, 0, 250)
rt_table = {}
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_15_, _FORV_16_ in ipairs(table_statistics) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 150,
          icon = textures.dolar_icon,
          status = _FORV_16_.ulepszenie_zarobek_budowlaniec,
          nameDatabase = "ulepszenie_zarobek_budowlaniec"
        },
        {
          name = "Szybszy pojazd",
          description = "Tw\195\179j pojazd osi\196\133ga szybsze przy\197\155pieszenie\noraz wi\196\153ksz\196\133 pr\196\153dko\197\155\196\135 maksymaln\196\133.",
          price = 75,
          icon = textures.car_icon,
          status = _FORV_16_.ulepszenie_pojazd_budowlaniec,
          nameDatabase = "ulepszenie_pojazd_budowlaniec"
        },
        {
          name = "Szybsze malowanie",
          description = "Rozmiar p\196\153dzla przy malowaniu jest znacznie wi\196\153kszy.",
          price = 150,
          icon = textures.car_icon,
          status = _FORV_16_.ulepszenie_malowanie_budowlaniec,
          nameDatabase = "ulepszenie_malowanie_budowlaniec"
        },
        {
          name = "Dodatkowy pojazd",
          description = "Mo\197\188liwo\197\155\196\135 wynaj\196\153cia dodatkowego pojazdu.",
          price = 130,
          icon = textures.car_icon,
          status = _FORV_16_.ulepszenie_dot_pojazd_budowlaniec,
          nameDatabase = "ulepszenie_dot_pojazd_budowlaniec"
        },
        {
          name = "Kondycja",
          description = "Dzi\196\153ki temu ulepszeniu poruszasz si\196\153 szybciej",
          price = 40,
          icon = textures.condition_icon,
          status = _FORV_16_.ulepszenie_kondycja_budowlaniec,
          nameDatabase = "ulepszenie_kondycja_budowlaniec"
        }
      }
    end
  elseif _ARG_0_ == "zwroc_zespoly" then
    zespolyTabela = _ARG_1_
  elseif _ARG_0_ == "startJob" then
    texturesJob = {
      shovel_icon = dxCreateTexture("img/shovel_icon.png"),
      column_icon = dxCreateTexture("img/column_icon.png"),
      wall_icon = dxCreateTexture("img/wall_icon.png"),
      door_icon = dxCreateTexture("img/door_icon.png"),
      window_icon = dxCreateTexture("img/window_icon.png")
    }
    tick = getTickCount()
    info = {}
    info.time = 0
    info.timeSave = 0
    info.text = ""
    info.text2 = ""
    info.text3 = ""
    info.showinfo = true
    info.exp = 0
    info.expSave = 0
    info.team = _ARG_1_
    info.lider = _ARG_5_
    if not info.team[2] then
      info.team[2] = "brak"
    end
    dataVehicle = {}
    dataVehicle.vehicle = _ARG_2_
    dataVehicle.vehicleBlip = createBlipAttachedTo(dataVehicle.vehicle, 0, 2, 0, 191, 255)
    if _ARG_3_ then
      dataVehicle.vehicle_1 = _ARG_3_
      dataVehicle.vehicleBlip_1 = createBlipAttachedTo(dataVehicle.vehicle_1, 0, 2, 0, 191, 255)
    end
    if _ARG_4_ then
      dataVehicle.betoniarka = _ARG_4_
      dataVehicle.vehicleBlip_betoniarka = createBlipAttachedTo(dataVehicle.betoniarka, 0, 2, 0, 191, 255)
    end
    addEventHandler("onClientRender", root, windowRender)
    zlecenieWybrane = {id = false, select = false}
    bindKey("k", "down", showComputer)
    bindKey("h", "down", showinfoF)
    jobsSummary = _ARG_6_
  elseif _ARG_0_ == "kopanieClient" then
    if isElement(dataJob.dziury.pozycje[_ARG_1_]) then
      setObjectScale(createObject(3054, getElementPosition(dataJob.dziury.pozycje[_ARG_1_])), 0.2)
      setElementCollisionsEnabled(createObject(3054, getElementPosition(dataJob.dziury.pozycje[_ARG_1_])), false)
      setElementAlpha(createObject(3054, getElementPosition(dataJob.dziury.pozycje[_ARG_1_])), 255)
      dataJob.dziury.wykopane[_ARG_1_] = createObject(3054, getElementPosition(dataJob.dziury.pozycje[_ARG_1_]))
      zadaniaPracy[1].number[1] = zadaniaPracy[1].number[1] + 1
      destroyElement(dataJob.dziury.pozycje[_ARG_1_])
      dataJob.dziury.pozycje[_ARG_1_] = nil
      for _FORV_15_, _FORV_16_ in pairs(dataJob.dziury.pozycje) do
        if _FORV_16_ and isElement(_FORV_16_) then
        end
      end
      if 0 + 1 == 0 then
        triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 1)
        zadaniaPracy[1].ok = true
        setSoundVolume(playSound("img/s.mp3", false), 0.4)
        outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Wykonaj wykopy pod fundamenty", 255, 175, 0, true)
        removeEventHandler("onClientRender", root, dxDrawHoleRender)
        for _FORV_17_, _FORV_18_ in ipairs(houseBuilding[dataJob.idDomu].floorPositions) do
          setElementAlpha(createObject(1307, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_18_[1], _FORV_18_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_18_[1], _FORV_18_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + _FORV_18_[3] - 1), 0)
          setElementCollisionsEnabled(createObject(1307, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_18_[1], _FORV_18_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_18_[1], _FORV_18_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + _FORV_18_[3] - 1), false)
          dataJob.fundamenty.pozycje[_FORV_17_] = createObject(1307, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_18_[1], _FORV_18_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_18_[1], _FORV_18_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + _FORV_18_[3] - 1)
        end
      end
    end
  elseif _ARG_0_ == "fundamentyClient" then
    if dataJob.fundamenty.pozycje[tonumber(_ARG_1_)] and isElement(dataJob.fundamenty.pozycje[tonumber(_ARG_1_)]) then
      destroyElement(dataJob.fundamenty.pozycje[tonumber(_ARG_1_)])
      dataJob.fundamenty.pozycje[tonumber(_ARG_1_)] = nil
      dataJob.fundamenty.postawione2[tonumber(_ARG_1_)] = createObject(8087, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][1], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][1], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][3] - 1.1 - 0.3, houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][4], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][5], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4])
      setElementData(dataJob.fundamenty.postawione2[tonumber(_ARG_1_)], "dev25tex1", 79)
      setElementData(dataJob.fundamenty.postawione2[tonumber(_ARG_1_)], "dev25tex2", 79)
      dataJob.fundamenty.postawione[tonumber(_ARG_1_)] = createObject(8087, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][1], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][1], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][3] - 1.1 - 0.245, houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][4], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][5], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4])
      setElementData(dataJob.fundamenty.postawione[tonumber(_ARG_1_)], "dev25tex1", 79)
      setElementData(dataJob.fundamenty.postawione[tonumber(_ARG_1_)], "dev25tex2", 79)
      moveObject(dataJob.fundamenty.postawione[tonumber(_ARG_1_)], 8000, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][1], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][1], houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].floorPositions[tonumber(_ARG_1_)][3] - 1.1)
      zadaniaPracy[2].number = zadaniaPracy[2].number + 1
    end
    if next(dataJob.fundamenty.pozycje) == nil then
      zadaniaPracy[2].ok = true
      triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 2)
      removeEventHandler("onClientRender", root, dxDrawLineCement)
      setSoundVolume(playSound("img/s.mp3", false), 0.4)
      outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Zalej fundamenty betoniark\196\133", 255, 175, 0, true)
      addEventHandler("onClientRender", root, nastepnaBelkaRender)
      nastepnaBelka()
      for _FORV_12_, _FORV_13_ in pairs(dataJob.dziury.wykopane) do
        if isElement(_FORV_13_) then
          destroyElement(_FORV_13_)
        end
      end
    end
  elseif _ARG_0_ == "postawElementClient" then
    if _ARG_1_ == localPlayer then
      dataJob.trzymaPrzedmiot = false
      runningBlock(localPlayer, false)
    end
    if _ARG_2_ == 3529 then
      if isElement(dataJob.belki.objGhost[dataJob.ktoraBelka]) then
        setElementAlpha(dataJob.belki.objGhost[dataJob.ktoraBelka], 255)
        dataJob.belki.postawione[dataJob.ktoraBelka] = dataJob.belki.objGhost[dataJob.ktoraBelka]
        dataJob.belki.objGhost[dataJob.ktoraBelka] = nil
        zadaniaPracy[3].number = zadaniaPracy[3].number + 1
        if #dataJob.belki.postawione >= #houseBuilding[dataJob.idDomu].beamPositions then
          zadaniaPracy[3].ok = true
          triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 3)
          removeEventHandler("onClientRender", root, nastepnaBelkaRender)
          setSoundVolume(playSound("img/s.mp3", false), 0.4)
          outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Ustaw s\197\130upki w fundamentach", 255, 175, 0, true)
          addEventHandler("onClientRender", root, nastepnaScianaRender)
          nastepnaSciana()
        else
          dataJob.ktoraBelka = dataJob.ktoraBelka + 1
          nastepnaBelka()
        end
      end
    elseif _ARG_2_ == 8083 or _ARG_2_ == 8081 or _ARG_2_ == 8595 then
      if isElement(dataJob.sciany.objGhost[dataJob.ktoraSciana]) then
        setElementAlpha(dataJob.sciany.objGhost[dataJob.ktoraSciana], 255)
        dataJob.sciany.postawione[dataJob.ktoraSciana] = dataJob.sciany.objGhost[dataJob.ktoraSciana]
        dataJob.sciany.objGhost[dataJob.ktoraSciana] = nil
        if #dataJob.sciany.postawione >= #houseBuilding[dataJob.idDomu].wallPositions then
          zadaniaPracy[4].ok = true
          triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 4)
          removeEventHandler("onClientRender", root, nastepnaScianaRender)
          setSoundVolume(playSound("img/s.mp3", false), 0.4)
          outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Zamontuj \197\155ciany domu", 255, 175, 0, true)
          addEventHandler("onClientRender", root, nastepneDrzwiOknaRender)
          nastepneDrzwiOkna()
          if dataJob.belki and dataJob.belki.postawione then
            for _FORV_11_, _FORV_12_ in ipairs(dataJob.belki.postawione) do
              if isElement(_FORV_12_) then
                destroyElement(_FORV_12_)
              end
            end
            dataJob.belki.postawione = {}
          end
          for _FORV_12_, _FORV_13_ in ipairs(houseBuilding[dataJob.idDomu].floorPositions) do
            dataJob.sufit.postawione[_FORV_12_] = createObject(8087, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_13_[1], _FORV_13_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_13_[1], _FORV_13_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + _FORV_13_[3] + 2.15, _FORV_13_[4], _FORV_13_[5], _FORV_13_[6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4])
            setElementData(dataJob.sufit.postawione[_FORV_12_], "dev25tex1", 179)
            setElementData(dataJob.sufit.postawione[_FORV_12_], "dev25tex2", 179)
            setObjectScale(dataJob.sufit.postawione[_FORV_12_], 0.995, 0.995, 0.1)
          end
        else
          dataJob.ktoraSciana = dataJob.ktoraSciana + 1
          nastepnaSciana()
        end
      end
    elseif _ARG_2_ == 1491 or _ARG_2_ == 1649 then
      if isElement(dataJob.oknaDrzwi.objGhost[dataJob.oknaDrzwi.ktoraLiczba]) then
        setElementAlpha(dataJob.oknaDrzwi.objGhost[dataJob.oknaDrzwi.ktoraLiczba], 255)
        dataJob.oknaDrzwi.postawione[dataJob.oknaDrzwi.ktoraLiczba] = dataJob.oknaDrzwi.objGhost[dataJob.oknaDrzwi.ktoraLiczba]
        dataJob.oknaDrzwi.objGhost[dataJob.oknaDrzwi.ktoraLiczba] = nil
        if #dataJob.oknaDrzwi.postawione >= #houseBuilding[dataJob.idDomu].doorWindowPos then
          zadaniaPracy[5].ok = true
          triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 5)
          removeEventHandler("onClientRender", root, nastepneDrzwiOknaRender)
          setSoundVolume(playSound("img/s.mp3", false), 0.4)
          outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Wstaw drzwi i okna", 255, 175, 0, true)
          for _FORV_12_, _FORV_13_ in ipairs(houseBuilding[dataJob.idDomu].wallPositions) do
            dataJob.malowanie.sciany[_FORV_12_] = {
              positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_13_[1], _FORV_13_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]),
              positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_13_[1], _FORV_13_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]),
              positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + _FORV_13_[3] + 0.5
            }
          end
          addEventHandler("onClientRender", root, punktyMalowaniaScian)
        else
          dataJob.oknaDrzwi.ktoraLiczba = dataJob.oknaDrzwi.ktoraLiczba + 1
          nastepneDrzwiOkna()
        end
      end
    else
      if isElement(dataJob.meble.objGhost[_ARG_2_]) then
        setElementAlpha(dataJob.meble.objGhost[_ARG_2_], 255)
      end
      zadaniaPracy[7].number = zadaniaPracy[7].number + 1
      if zadaniaPracy[7].number >= #houseBuilding[dataJob.idDomu].furniturePos then
        zadaniaPracy[7].ok = true
        setSoundVolume(playSound("img/s.mp3", false), 0.4)
        outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Umebluj dom", 255, 175, 0, true)
        triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 7)
        removeEventHandler("onClientRender", root, nastepnyMebelRender)
      end
      if _ARG_1_ == localPlayer then
        dataJob.meble.postawione = dataJob.meble.postawione or {}
        dataJob.meble.postawione[_ARG_2_] = dataJob.meble.objGhost[_ARG_2_]
        dataJob.meble.objGhost[_ARG_2_] = nil
        if dataJob.meble and dataJob.meble.reservedBy then
          dataJob.meble.reservedBy[_ARG_2_] = nil
        end
        if dataJob.meble and dataJob.meble.reservedOfPlayer then
          dataJob.meble.reservedOfPlayer[_ARG_1_] = nil
        end
        dataJob.meble.current = false
        exports.st_gui:showPlayerNotification("Ustawiono mebel", "info")
      end
    end
  elseif _ARG_0_ == "dolaczDoTeamuClient" then
  elseif _ARG_0_ == "startZlecenieClient" then
    startZlecenie(_ARG_1_, _ARG_2_, _ARG_3_)
  elseif _ARG_0_ == "rentCarInfo" then
    if _ARG_2_ == 1 then
      dataVehicle.vehicle_1 = _ARG_1_
      dataVehicle.vehicleBlip_1 = createBlipAttachedTo(dataVehicle.vehicle_1, 0, 2, 0, 191, 255)
    else
      dataVehicle.vehicle_betoniarka = _ARG_1_
      dataVehicle.vehicleBlip_betoniarka = createBlipAttachedTo(dataVehicle.vehicle_betoniarka, 0, 2, 0, 191, 255)
    end
  elseif _ARG_0_ == "odbieranieMaterialowStart" then
    if not isEventHandlerAdded("onClientRender", root, odbieranieElementowPojazd) then
      addEventHandler("onClientRender", root, odbieranieElementowPojazd)
    end
    if _ARG_1_ == 1 then
      dataJob.odbieranie.pos = _ARG_3_
      dataJob.odbieranie.iloscMeterialow = _ARG_2_
      dataJob.odbieranie.colTracking = createColSphere(0, 0, 0, 1)
      attachElements(dataJob.odbieranie.colTracking, dataVehicle.vehicle, 0, -4, 0)
      dataJob.blipOdbior = createBlip(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], 0, 41, 2, 255, 0, 0, 255, 0, 99999)
    elseif _ARG_1_ == 2 then
      dataJob.odbieranie.pos_1 = _ARG_3_
      dataJob.odbieranie.iloscMeterialow_1 = _ARG_2_
      dataJob.odbieranie.colTracking_1 = createColSphere(0, 0, 0, 1)
      attachElements(dataJob.odbieranie.colTracking_1, dataVehicle.vehicle_1, 0, -4, 0)
      dataJob.blipOdbior_1 = createBlip(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], 0, 41, 2, 255, 0, 0, 255, 0, 99999)
    end
  elseif _ARG_0_ == "wezRzecz_odbiorMaterialowClient" then
    if _ARG_1_ == localPlayer then
      exports.st_gui:showPlayerNotification("Odnie\197\155 rzecz do busa", "info")
      if _ARG_2_ == 1 then
        dataJob.odbieranie.trzymaRzecz = true
      elseif _ARG_2_ == 2 then
        dataJob.odbieranie.trzymaRzecz_1 = true
      end
      runningBlock(localPlayer, true)
    end
    if _ARG_2_ == 1 then
      dataJob.odbieranie.iloscMeterialow = _ARG_3_
    elseif _ARG_2_ == 2 then
      dataJob.odbieranie.iloscMeterialow_1 = _ARG_3_
    end
  elseif _ARG_0_ == "oddajRzeczDoPojazduClient" then
    if _ARG_1_ == localPlayer then
      if _ARG_2_ == 1 then
        dataJob.odbieranie.trzymaRzecz = false
      elseif _ARG_2_ == 2 then
        dataJob.odbieranie.trzymaRzecz_1 = false
      end
      runningBlock(localPlayer, false)
    end
    if _ARG_5_ then
      zadaniaPracy[12].number = zadaniaPracy[12].number + 1
      if zadaniaPracy[12].number >= #houseBuilding[dataJob.idDomu].furniturePos then
        zadaniaPracy[12].ok = true
        triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 12)
        setSoundVolume(playSound("img/s.mp3", false), 0.4)
        outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Zam\195\179w i spakuj wskazane meble", 255, 175, 0, true)
      end
    end
    if _ARG_2_ == 1 then
      if _ARG_4_ then
        if isElement(dataJob.blipOdbior) then
          destroyElement(dataJob.blipOdbior)
        end
        dataJob.odbieranie.pos = false
        dataJob.odbieranie.iloscMeterialow = 0
        dataJob.odbieranie.moznaRozladowac = true
        dataJob.odbieranie.moznaRozladowac_meble = false
        exports.st_gui:showPlayerNotification("Zapakowano wszystkie rzeczy.\nRoz\197\130aduj je na terenie budowy", "info")
        if _ARG_5_ then
          dataJob.odbieranie.moznaRozladowac_meble = true
          dataJob.odbieranie.mebleTabela = _ARG_6_
        end
      end
      dataJob.odbieranie.iloscMeterialow_pojazd = _ARG_3_
    elseif _ARG_2_ == 2 then
      if _ARG_4_ then
        if isElement(dataJob.blipOdbior_1) then
          destroyElement(dataJob.blipOdbior_1)
        end
        dataJob.odbieranie.pos_1 = false
        dataJob.odbieranie.iloscMeterialow_1 = 0
        dataJob.odbieranie.moznaRozladowac_1 = true
        dataJob.odbieranie.moznaRozladowac_meble_1 = false
        exports.st_gui:showPlayerNotification("Zapakowano wszystkie rzeczy.\nRoz\197\130aduj je na terenie budowy", "info")
        if _ARG_5_ then
          dataJob.odbieranie.moznaRozladowac_meble_1 = true
          dataJob.odbieranie.mebleTabela_1 = _ARG_6_
        end
      end
      dataJob.odbieranie.iloscMeterialow_1_pojazd = _ARG_3_
    end
  elseif _ARG_0_ == "wezRzecz_zPojazduClient" then
    if _ARG_1_ == localPlayer then
      exports.st_gui:showPlayerNotification("Odnie\197\155 rzecz w wyznaczone miejsce na terenie budowy", "info")
      if _ARG_2_ == 1 then
        dataJob.odbieranie.trzymaRzecz = _ARG_4_
      elseif _ARG_2_ == 2 then
        dataJob.odbieranie.trzymaRzecz_1 = _ARG_4_
      end
      runningBlock(localPlayer, true)
    end
    if _ARG_2_ == 1 then
      dataJob.odbieranie.iloscMeterialow_pojazd = _ARG_3_
    elseif _ARG_2_ == 2 then
      dataJob.odbieranie.iloscMeterialow_1_pojazd = _ARG_3_
    end
  elseif _ARG_0_ == "oddajDoMagazynuClient" then
    if _ARG_1_ == localPlayer then
      dataJob.odbieranie.trzymaRzecz = false
      dataJob.odbieranie.trzymaRzecz_1 = false
      runningBlock(localPlayer, false)
    end
    if _ARG_2_ == 1 then
      pokazRzeczyMagazyn(_ARG_3_[1], "S\197\130upki")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[1].number = _ARG_3_[1]
      zadaniaPracy[8].number = zadaniaPracy[8].number + 1
      if zadaniaPracy[8].number == #houseBuilding[dataJob.idDomu].beamPositions then
        zadaniaPracy[8].ok = true
        triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 8)
        setSoundVolume(playSound("img/s.mp3", false), 0.4)
        outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Dostarcz s\197\130upki w wyznaczone miejsce", 255, 175, 0, true)
      end
    elseif _ARG_2_ == 2 then
      pokazRzeczyMagazyn(_ARG_3_[2], "\197\154ciana")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[2].number = _ARG_3_[2]
      zadaniaPracy[9].number = zadaniaPracy[9].number + 1
      if zadaniaPracy[9].number == #houseBuilding[dataJob.idDomu].wallPositions then
        zadaniaPracy[9].ok = true
        triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 9)
        setSoundVolume(playSound("img/s.mp3", false), 0.4)
        outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Dostarcz \197\155ciany w wyznaczone miejsce", 255, 175, 0, true)
      end
    elseif _ARG_2_ == 4 then
      pokazRzeczyMagazyn(_ARG_3_[4], "Drzwi")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[4].number = _ARG_3_[4]
      zadaniaPracy[10].number = zadaniaPracy[10].number + 1
      if zadaniaPracy[10].number == policzElementyDoorWindow(houseBuilding[dataJob.idDomu].doorWindowPos) then
        zadaniaPracy[10].ok = true
        triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 10)
        setSoundVolume(playSound("img/s.mp3", false), 0.4)
        outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Dostarcz drzwi w wyznaczone miejsce", 255, 175, 0, true)
      end
    elseif _ARG_2_ == 5 then
      pokazRzeczyMagazyn(_ARG_3_[5], "Okna")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[5].number = _ARG_3_[5]
      zadaniaPracy[11].number = zadaniaPracy[11].number + 1
      if zadaniaPracy[11].number == policzElementyDoorWindow(houseBuilding[dataJob.idDomu].doorWindowPos) then
        zadaniaPracy[11].ok = true
        triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 11)
        setSoundVolume(playSound("img/s.mp3", false), 0.4)
        outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Dostarcz okna w wyznaczone miejsce", 255, 175, 0, true)
      end
    end
    if _ARG_4_ then
      if _ARG_5_ == 1 then
        dataJob.odbieranie.moznaRozladowac = false
        if isElement(dataJob.odbieranie.colTracking) then
          destroyElement(dataJob.odbieranie.colTracking)
        end
        dataJob.odbieranie.pos = false
        if isElement(dataJob.blipOdbior) then
          destroyElement(dataJob.blipOdbior)
        end
      elseif _ARG_5_ == 2 then
        dataJob.odbieranie.moznaRozladowac_1 = false
        if isElement(dataJob.odbieranie.colTracking_1) then
          destroyElement(dataJob.odbieranie.colTracking_1)
        end
        dataJob.odbieranie.pos_1 = false
        if isElement(dataJob.blipOdbior_1) then
          destroyElement(dataJob.blipOdbior_1)
        end
      end
    end
  elseif _ARG_0_ == "giveItemClient" then
    if _ARG_1_ == localPlayer then
      dataJob.trzymaPrzedmiot = _ARG_2_
      runningBlock(localPlayer, true)
    end
    if _ARG_3_ == 1 then
      pokazRzeczyMagazyn(_ARG_4_[1], "S\197\130upki")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[1].number = _ARG_4_[1]
    elseif _ARG_3_ == 2 then
      pokazRzeczyMagazyn(_ARG_4_[2], "\197\154ciana")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[2].number = _ARG_4_[2]
    elseif _ARG_3_ == 3 then
      pokazRzeczyMagazyn(_ARG_4_[3], "\197\130opata")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[3].number = _ARG_4_[3]
    elseif _ARG_3_ == 4 then
      pokazRzeczyMagazyn(_ARG_4_[4], "Drzwi")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[4].number = _ARG_4_[4]
    elseif _ARG_3_ == 5 then
      pokazRzeczyMagazyn(_ARG_4_[5], "Okna")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[5].number = _ARG_4_[5]
    end
  elseif _ARG_0_ == "giveItemBackClient" then
    if _ARG_1_ == localPlayer then
      dataJob.trzymaPrzedmiot = false
      runningBlock(localPlayer, false)
    end
    if _ARG_2_ == 1 then
      pokazRzeczyMagazyn(_ARG_3_[1], "S\197\130upki")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[1].number = _ARG_3_[1]
    elseif _ARG_2_ == 2 then
      pokazRzeczyMagazyn(_ARG_3_[2], "\197\154ciana")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[2].number = _ARG_3_[2]
    elseif _ARG_2_ == 3 then
      pokazRzeczyMagazyn(_ARG_3_[3], "\197\130opata")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[3].number = _ARG_3_[3]
    elseif _ARG_2_ == 4 then
      pokazRzeczyMagazyn(_ARG_3_[4], "Okna/drzwi")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[4].number = _ARG_3_[4]
    elseif _ARG_2_ == 5 then
      pokazRzeczyMagazyn(_ARG_3_[5], "Okna/drzwi")
      positionsHouse[dataJob.idZlecenia].branieRzeczy[5].number = _ARG_3_[5]
    end
  elseif _ARG_0_ == "malowanie_1_client" then
    if _ARG_1_ == localPlayer then
      rozpocznijMalowanieSciany(_ARG_2_)
      dataJob.malowanie.scianaID = _ARG_2_
    elseif dataJob.malowanie.scianaID == _ARG_2_ then
      dataJob.malowanie.scianaID = false
      zakonczMalowanieSciany()
      exports.st_gui:showPlayerNotification("Kto\197\155 ju\197\188 maluje t\196\153 \197\155cian\196\153", "info")
    end
    dataJob.malowanie.reservedBy[_ARG_2_] = _ARG_1_
    dataJob.malowanie.sciany[_ARG_2_] = nil
  elseif _ARG_0_ == "malowanie_2_client" then
    dataJob.malowanie.reservedBy[_ARG_2_] = nil
    if _ARG_1_ == localPlayer then
      dataJob.malowanie.scianaID = false
    end
    destroyElement(dataJob.sciany.postawione[_ARG_2_])
    dataJob.sciany.postawione[_ARG_2_] = createObject(getElementModel(dataJob.sciany.postawione[_ARG_2_]), getElementPosition(dataJob.sciany.postawione[_ARG_2_]))
    setObjectScale(dataJob.sciany.postawione[_ARG_2_], getObjectScale(dataJob.sciany.postawione[_ARG_2_]))
    setElementData(dataJob.sciany.postawione[_ARG_2_], "dev25tex1", houseBuilding[dataJob.idDomu].wallPositions[_ARG_2_].tex[1])
    setElementData(dataJob.sciany.postawione[_ARG_2_], "dev25tex2", houseBuilding[dataJob.idDomu].wallPositions[_ARG_2_].tex[2])
    zadaniaPracy[6].number = zadaniaPracy[6].number + 1
    if zadaniaPracy[6].number >= #dataJob.sciany.postawione then
      zadaniaPracy[6].ok = true
      triggerServerEvent("ev_budowniczy", resourceRoot, "updPr", 6)
      removeEventHandler("onClientRender", root, punktyMalowaniaScian)
      addEventHandler("onClientRender", root, nastepnyMebelRender)
      setSoundVolume(playSound("img/s.mp3", false), 0.4)
      outputChatBox("#00b02f\226\156\133#ffffff Pomy\197\155lnie uko\197\132czono zadanie: #FFC000Pomaluj \197\155ciany", 255, 175, 0, true)
    end
  elseif _ARG_0_ == "odbierzMebelPojazd_client" then
    if _ARG_1_ == localPlayer then
      dataJob.trzymaRzecz = _ARG_4_
    end
    if dataJob.meble and dataJob.meble.freeByModel[_ARG_4_] then
      ensureMebelTarget(_ARG_4_, _ARG_1_)
    end
    if _ARG_3_ == 0 then
      dataJob.odbieranie.mebleTabela = _ARG_2_
      dataJob.odbieranie.iloscMeterialow_pojazd = #_ARG_2_
      if #_ARG_2_ == 0 then
        if isElement(dataJob.odbieranie.colTracking) then
          destroyElement(dataJob.odbieranie.colTracking)
        end
        dataJob.odbieranie.pos = false
        dataJob.odbieranie.moznaRozladowac = false
        dataJob.odbieranie.moznaRozladowac_meble = false
        if isElement(dataJob.blipOdbior) then
          destroyElement(dataJob.blipOdbior)
        end
      end
    else
      dataJob.odbieranie.mebleTabela_1 = _ARG_2_
      dataJob.odbieranie.iloscMeterialow_1_pojazd = #_ARG_2_
      if #_ARG_2_ == 0 then
        if isElement(dataJob.odbieranie.colTracking_1) then
          destroyElement(dataJob.odbieranie.colTracking_1)
        end
        dataJob.odbieranie.pos_1 = false
        dataJob.odbieranie.moznaRozladowac_1 = false
        dataJob.odbieranie.moznaRozladowac_meble_1 = false
        if isElement(dataJob.blipOdbior_1) then
          destroyElement(dataJob.blipOdbior_1)
        end
      end
    end
  elseif _ARG_0_ == "zakonczZlecenie_client" then
    zakonczZlecenie()
  elseif _ARG_0_ == "przeladujZlecenia_client" then
    jobsSummary = _ARG_1_
  elseif _ARG_0_ == "updateLider" then
    info.lider = _ARG_1_
  elseif _ARG_0_ == "dolaczylDoTeamu" then
    if isTimer(timerText) then
      killTimer(timerText)
    end
    if _ARG_3_ then
      info.text2 = "#c40d00\226\151\143 #ededed" .. getPlayerName(_ARG_1_) .. " #c8c8c8opu\197\155ci\197\130/a zespo\197\130"
    else
      info.text2 = "#0aff2b\226\151\143 #ededed" .. getPlayerName(_ARG_1_) .. " #c8c8c8do\197\130\196\133czy\197\130/a do zespo\197\130u"
    end
    info.team[3] = _ARG_2_
    timerText = setTimer(function()
      info.text2 = ""
    end, 10000, 1)
  elseif _ARG_0_ == "refreshProgress" then
    dataJob.progressTeam = _ARG_1_
  elseif _ARG_0_ == "pieniadzeZlecenie_client" then
    if localPlayer == _ARG_1_ then
      buildJobsSummary(true)
    end
    if windows.computer == true then
      destroyAllFurniturePreviews()
      createShaderBlur(false)
      removeEventHandler("onClientRender", root, windowComputer)
      removeEventHandler("onClientClick", root, clickPC)
      removeEventHandler("onClientKey", root, key)
      windows.computer = false
      windows.computerCategory = false
      showCursor(false)
      for _FORV_10_, _FORV_11_ in pairs(texturesPC) do
        if isElement(_FORV_11_) then
          destroyElement(_FORV_11_)
        end
      end
      texturesPC = {}
    end
    wynagrodzenie = {}
    wynagrodzenie.idDomu = dataJob.idDomu
    wynagrodzenie.moneyZlecenie = _ARG_2_
    addEventHandler("onClientRender", root, moneyRozladunek)
    addEventHandler("onClientClick", root, click)
    windows.category = "rozladunek"
    showCursor(true)
    createShaderBlur(true)
    texturesWyplata = {
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    for _FORV_11_, _FORV_12_ in ipairs(table_statistics) do
      if _FORV_12_.ulepszenie_zarobek_budowlaniec == 1 then
      else
      end
    end
    triggerServerEvent("ev_budowniczy", resourceRoot, "ExpCzas", info.timeSave, wynagrodzenie.moneyZlecenie, 0)
    zakonczZlecenie()
  elseif _ARG_0_ == "wylacz_okno" then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    removeEventHandler("onClientClick", root, click)
    windows.background = false
    windows.category = false
    showCursor(false)
    for _FORV_10_, _FORV_11_ in pairs(textures) do
      if isElement(_FORV_11_) then
        destroyElement(_FORV_11_)
      end
    end
    textures = {}
    exports.ST_gui:destroyCustomEditbox("name_team_job")
    exports.ST_gui:destroyCustomEditbox("pass_team_job")
  end
end)
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == startJobMarker then
    if windows.category == "rozladunek" then
      return
    end
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
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
      car_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/car_icon.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
      unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
      requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png"),
      money_icon = dxCreateTexture(":ST_magazynier_job/img/money_icon.png"),
      card_icon = dxCreateTexture(":ST_magazynier_job/img/card_icon.png")
    }
    levelJobTable = {
      {
        levelJob = 1,
        exp = 0,
        level = 20,
        img = textures.level1_icon,
        money = 0
      },
      {
        levelJob = 2,
        exp = 40,
        level = 30,
        img = textures.level2_icon,
        money = 5
      },
      {
        levelJob = 3,
        exp = 100,
        level = 40,
        img = textures.level3_icon,
        money = 10
      },
      {
        levelJob = 4,
        exp = 200,
        level = 50,
        img = textures.level4_icon,
        money = 15
      }
    }
    createShaderBlur(true)
    triggerServerEvent("ev_budowniczy", resourceRoot, "showStatisticsJobsNew")
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    addEventHandler("onClientKey", root, key)
    windows.background = true
    windows.category = "g\197\130\195\179wne"
    showCursor(true)
  end
end)
function showComputer()
  if windows.computer == true then
    destroyAllFurniturePreviews()
    createShaderBlur(false)
    removeEventHandler("onClientRender", root, windowComputer)
    removeEventHandler("onClientClick", root, clickPC)
    removeEventHandler("onClientKey", root, key)
    windows.computer = false
    windows.computerCategory = false
    showCursor(false)
    for _FORV_3_, _FORV_4_ in pairs(texturesPC) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesPC = {}
  else
    if windows.furniture == true then
      return
    end
    if windows.category == "rozladunek" then
      return
    end
    texturesPC = {
      list_icon = dxCreateTexture("img/list_icon.png"),
      shop_icon = dxCreateTexture(":ST_dashboard/img/shop_icon.png"),
      rent_icon = dxCreateTexture("img/rent_icon.png"),
      cement_truck_icon = dxCreateTexture("img/cement_truck_icon.png"),
      transit_icon = dxCreateTexture("img/transit_icon.png"),
      furniture_icon = dxCreateTexture("img/furniture_icon.png"),
      off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png")
    }
    rentItem = {
      {
        "Podstawowy pojazd",
        texturesPC.transit_icon,
        wynajety = true
      },
      {
        "Betoniarka",
        texturesPC.cement_truck_icon,
        wynajety = dataVehicle.vehicle_betoniarka
      },
      {
        "Dodatkowy pojazd",
        texturesPC.transit_icon,
        wynajety = dataVehicle.vehicle_1
      }
    }
    addEventHandler("onClientRender", root, windowComputer)
    addEventHandler("onClientClick", root, clickPC)
    addEventHandler("onClientKey", root, key)
    windows.computer = true
    showCursor(true)
    createShaderBlur(true)
    if dataJob.idZlecenia then
      windows.computerCategory = "przyjeteZlecenie"
      shopItems = {
        {
          "S\197\130upki",
          100,
          select = 0,
          wymagane = #houseBuilding[dataJob.idDomu].beamPositions
        },
        {
          "\197\154ciana",
          200,
          select = 0,
          wymagane = policzElementyWallPositions(houseBuilding[dataJob.idDomu].wallPositions)
        },
        {
          "\197\154ciana z oknem",
          300,
          select = 0,
          wymagane = policzElementyWallPositions(houseBuilding[dataJob.idDomu].wallPositions)
        },
        {
          "\197\154ciana z futryn\196\133 drzwi",
          500,
          select = 0,
          wymagane = policzElementyWallPositions(houseBuilding[dataJob.idDomu].wallPositions)
        },
        {
          "Okno",
          1000,
          select = 0,
          wymagane = policzElementyDoorWindow(houseBuilding[dataJob.idDomu].doorWindowPos)
        },
        {
          "Drzwi",
          1000,
          select = 0,
          wymagane = policzElementyDoorWindow(houseBuilding[dataJob.idDomu].doorWindowPos)
        }
      }
      rotZObject3D = 0
      furnitureShop = {
        {
          "\197\129\195\179\197\188ko",
          100,
          id = 1700,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 1700)
        },
        {
          "Ma\197\130a szafka",
          100,
          id = 2331,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2331)
        },
        {
          "Komoda",
          100,
          id = 2585,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2585)
        },
        {
          "Stolik",
          100,
          id = 2592,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2592)
        },
        {
          "Kanapa",
          100,
          id = 1707,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 1707)
        },
        {
          "Szafka RTV",
          100,
          id = 2017,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2017)
        },
        {
          "Wisz\196\133ca szafka z ksi\196\133\197\188kami",
          100,
          id = 2162,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2162)
        },
        {
          "Lod\195\179wka",
          100,
          id = 2140,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2140)
        },
        {
          "Kuchenka z okapem",
          100,
          id = 2135,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2135)
        },
        {
          "Szafka z zlewem",
          100,
          id = 2136,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2136)
        },
        {
          "Szafka naro\197\188na",
          100,
          id = 2305,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2305)
        },
        {
          "Szafka",
          100,
          id = 2139,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2139)
        },
        {
          "Szafka z g\195\179rn\196\133 szafk\196\133",
          100,
          id = 2138,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2138)
        },
        {
          "Szafka zlewozmywak",
          100,
          id = 2132,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2132)
        },
        {
          "Szafka naro\197\188na",
          100,
          id = 2341,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2341)
        },
        {
          "Szafka z szufladami",
          100,
          id = 2133,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2133)
        },
        {
          "Szafa wysoka",
          100,
          id = 2141,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2141)
        },
        {
          "Szafa podw\195\179jna",
          100,
          id = 2131,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2131)
        },
        {
          "Szafka kuchenna",
          100,
          id = 2339,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2339)
        },
        {
          "Kaloryfer",
          100,
          id = 14494,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 14494)
        },
        {
          "Toaleta",
          100,
          id = 2521,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2521)
        },
        {
          "Umywalka",
          100,
          id = 14480,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 14480)
        },
        {
          "Prysznic",
          100,
          id = 2517,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2517)
        },
        {
          "Pralka",
          100,
          id = 1208,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 1208)
        },
        {
          "Ro\197\155lina ma\197\130a",
          100,
          id = 2203,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2203)
        },
        {
          "Ro\197\155lina du\197\188a",
          100,
          id = 2194,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2194)
        },
        {
          "Laptop",
          300,
          id = 2190,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2190)
        },
        {
          "Telewizor",
          200,
          id = 1791,
          select = 0,
          wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 1791)
        }
      }
    else
      windows.computerCategory = "wyborZlecenia"
    end
  end
end
function startZlecenie(_ARG_0_, _ARG_1_, _ARG_2_)
  resetEtapPracy()
  info.timeSave = 0
  dataJob.etapPracy = 1
  dataJob.idZlecenia = _ARG_0_
  dataJob.idDomu = _ARG_1_
  dataJob.ktoraSciana = 1
  dataJob.moneyZlecenie = _ARG_2_
  dataJob.ktoraBelka = 1
  dataJob.blipBudowy = createBlip(positionsHouse[dataJob.idZlecenia].posCenterHouse[1], positionsHouse[dataJob.idZlecenia].posCenterHouse[2], 0, 41, 2, 255, 0, 0, 255, 0, 99999)
  dataJob.progressBranieRzeczy = 0
  dataJob.dziury = {}
  dataJob.dziury.pozycje = {}
  dataJob.dziury.wykopane = {}
  dataJob.fundamenty = {}
  dataJob.fundamenty.pozycje = {}
  dataJob.fundamenty.postawione = {}
  dataJob.fundamenty.postawione2 = {}
  dataJob.sufit = {}
  dataJob.sufit.postawione = {}
  dataJob.belki = {}
  dataJob.belki.objGhost = {}
  dataJob.belki.postawione = {}
  dataJob.sciany = {}
  dataJob.sciany.objGhost = {}
  dataJob.sciany.postawione = {}
  dataJob.oknaDrzwi = {}
  dataJob.oknaDrzwi.objGhost = {}
  dataJob.oknaDrzwi.postawione = {}
  dataJob.oknaDrzwi.ktoraLiczba = 1
  dataJob.malowanie = {}
  dataJob.malowanie.sciany = {}
  dataJob.malowanie.scianaID = false
  dataJob.malowanie.reservedBy = {}
  dataJob.odbieranie = {}
  dataJob.odbieranie.iloscMeterialow = 0
  dataJob.odbieranie.iloscMeterialow_pojazd = 0
  dataJob.odbieranie.pos = false
  dataJob.odbieranie.trzymaRzecz = false
  dataJob.odbieranie.moznaRozladowac = false
  dataJob.odbieranie.moznaRozladowac_meble = false
  dataJob.odbieranie.mebleTabela = {}
  dataJob.odbieranie.iloscMeterialow_1 = 0
  dataJob.odbieranie.iloscMeterialow_1_pojazd = 0
  dataJob.odbieranie.pos_1 = false
  dataJob.odbieranie.trzymaRzecz_1 = false
  dataJob.odbieranie.moznaRozladowac_1 = false
  dataJob.odbieranie.moznaRozladowac_meble_1 = false
  dataJob.odbieranie.mebleTabela_1 = {}
  dataJob.odbieranie.meblePojazd = false
  dataJob.meble = {}
  dataJob.meble.freeByModel = {}
  dataJob.meble.objGhost = {}
  dataJob.meble.current = false
  dataJob.meble.reservedBy = {}
  dataJob.meble.reservedOfPlayer = {}
  dataJob.meble.modelByIndex = {}
  dataJob.progressTeam = 0
  for _FORV_6_, _FORV_7_ in ipairs(houseBuilding[dataJob.idDomu].furniturePos) do
    dataJob.meble.modelByIndex[_FORV_6_] = _FORV_7_.id
  end
  for _FORV_8_, _FORV_9_ in ipairs(houseBuilding[dataJob.idDomu].furniturePos) do
    dataJob.meble.freeByModel[_FORV_9_.id] = dataJob.meble.freeByModel[_FORV_9_.id] or {}
    table.insert(dataJob.meble.freeByModel[_FORV_9_.id], _FORV_8_)
  end
  for _FORV_8_, _FORV_9_ in ipairs(houseBuilding[dataJob.idDomu].floorPositions) do
    setElementData(createObject(8087, _FORV_9_[1], _FORV_9_[2], _FORV_9_[3], _FORV_9_[4], _FORV_9_[5], _FORV_9_[6]), "dev25tex1", 79)
    setElementData(createObject(8087, _FORV_9_[1], _FORV_9_[2], _FORV_9_[3], _FORV_9_[4], _FORV_9_[5], _FORV_9_[6]), "dev25tex2", 79)
  end
  for _FORV_8_, _FORV_9_ in ipairs(positionsHouse[dataJob.idZlecenia].branieRzeczy) do
    rt_table[_FORV_8_] = dxCreateRenderTarget(300, 198, true)
    renderTarget(_FORV_8_, _FORV_9_.pos)
  end
  windows.computerCategory = "przyjeteZlecenie"
  for _FORV_10_, _FORV_11_ in ipairs((generateHolePositionsAroundFloors(houseBuilding[dataJob.idDomu].floorPositions, 2.5))) do
    setElementCollisionsEnabled(createObject(1307, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_11_[1], _FORV_11_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_11_[1], _FORV_11_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + _FORV_11_[3] - 0.9), false)
    setElementAlpha(createObject(1307, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_11_[1], _FORV_11_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_11_[1], _FORV_11_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + _FORV_11_[3] - 0.9), 0)
    dataJob.dziury.pozycje[_FORV_10_] = createObject(1307, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_11_[1], _FORV_11_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_11_[1], _FORV_11_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + _FORV_11_[3] - 0.9)
  end
  zadaniaPracy[1].number = {
    0,
    #generateHolePositionsAroundFloors(houseBuilding[dataJob.idDomu].floorPositions, 2.5)
  }
  addEventHandler("onClientRender", root, dxDrawLineCement)
  addEventHandler("onClientRender", root, dxDrawHoleRender)
  shopItems = {
    {
      "S\197\130upki",
      100,
      select = 0,
      wymagane = #houseBuilding[dataJob.idDomu].beamPositions
    },
    {
      "\197\154ciana",
      200,
      select = 0,
      wymagane = policzElementyWallPositions(houseBuilding[dataJob.idDomu].wallPositions)
    },
    {
      "\197\154ciana z oknem",
      300,
      select = 0,
      wymagane = policzElementyWallPositions(houseBuilding[dataJob.idDomu].wallPositions)
    },
    {
      "\197\154ciana z futryn\196\133 drzwi",
      500,
      select = 0,
      wymagane = policzElementyWallPositions(houseBuilding[dataJob.idDomu].wallPositions)
    },
    {
      "Okno",
      1000,
      select = 0,
      wymagane = policzElementyDoorWindow(houseBuilding[dataJob.idDomu].doorWindowPos)
    },
    {
      "Drzwi",
      1000,
      select = 0,
      wymagane = policzElementyDoorWindow(houseBuilding[dataJob.idDomu].doorWindowPos)
    }
  }
  rotZObject3D = 0
  furnitureShop = {
    {
      "\197\129\195\179\197\188ko",
      100,
      id = 1700,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 1700)
    },
    {
      "Ma\197\130a szafka",
      100,
      id = 2331,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2331)
    },
    {
      "Komoda",
      100,
      id = 2585,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2585)
    },
    {
      "Stolik",
      100,
      id = 2592,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2592)
    },
    {
      "Kanapa",
      100,
      id = 1707,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 1707)
    },
    {
      "Szafka RTV",
      100,
      id = 2017,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2017)
    },
    {
      "Wisz\196\133ca szafka z ksi\196\133\197\188kami",
      100,
      id = 2162,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2162)
    },
    {
      "Lod\195\179wka",
      100,
      id = 2140,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2140)
    },
    {
      "Kuchenka z okapem",
      100,
      id = 2135,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2135)
    },
    {
      "Szafka z zlewem",
      100,
      id = 2136,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2136)
    },
    {
      "Szafka naro\197\188na",
      100,
      id = 2305,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2305)
    },
    {
      "Szafka",
      100,
      id = 2139,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2139)
    },
    {
      "Szafka z g\195\179rn\196\133 szafk\196\133",
      100,
      id = 2138,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2138)
    },
    {
      "Szafka zlewozmywak",
      100,
      id = 2132,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2132)
    },
    {
      "Szafka naro\197\188na",
      100,
      id = 2341,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2341)
    },
    {
      "Szafka z szufladami",
      100,
      id = 2133,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2133)
    },
    {
      "Szafa wysoka",
      100,
      id = 2141,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2141)
    },
    {
      "Szafa podw\195\179jna",
      100,
      id = 2131,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2131)
    },
    {
      "Szafka kuchenna",
      100,
      id = 2339,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2339)
    },
    {
      "Kaloryfer",
      100,
      id = 14494,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 14494)
    },
    {
      "Toaleta",
      100,
      id = 2521,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2521)
    },
    {
      "Umywalka",
      100,
      id = 14480,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 14480)
    },
    {
      "Prysznic",
      100,
      id = 2517,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2517)
    },
    {
      "Pralka",
      100,
      id = 1208,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 1208)
    },
    {
      "Ro\197\155lina ma\197\130a",
      100,
      id = 2203,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2203)
    },
    {
      "Ro\197\155lina du\197\188a",
      100,
      id = 2194,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2194)
    },
    {
      "Laptop",
      300,
      id = 2190,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 2190)
    },
    {
      "Telewizor",
      200,
      id = 1791,
      select = 0,
      wymagane = policzElementyFurniture(houseBuilding[dataJob.idDomu].furniturePos, 1791)
    }
  }
  pokazRzeczyMagazyn(4, "\197\130opata")
end
zoom = exports.st_gui:getInterfaceZoom()
function windowRender()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    info.time = info.time + 1
    info.timeSave = info.timeSave + 1
    textt3 = "#edbd02\226\151\143 #c8c8c8kierownik: #c29b02" .. getPlayerName(info.lider) .. ""
    textt4 = "#edbd02\226\151\143 #c8c8c8nazwa: #c29b02" .. info.team[1] .. " #c8c8c8has\197\130o: #c29b02" .. info.team[2] .. ""
    textt5 = "#edbd02\226\151\143 #c8c8c8cz\197\130onkowie zespo\197\130u: #c29b02" .. info.team[3] .. "#c8c8c8/#c29b024"
    if math.floor(info.time / 5) % 3 == 0 then
      info.text3 = textt3
    elseif math.floor(info.time / 5) % 3 == 1 then
      info.text3 = textt4
    elseif math.floor(info.time / 5) % 3 == 2 then
      info.text3 = textt5
    end
  end
  if info.showinfo then
    dxDrawRoundedBorder(_UPVALUE0_.x - 1 / zoom, _UPVALUE0_.y - 1 / zoom, _UPVALUE0_.w + 1 / zoom, _UPVALUE0_.h + 1 / zoom, 20 / zoom, tocolor(150, 150, 150, 255), 4 / zoom)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 20 / zoom, tocolor(15, 15, 15, 220))
    dxDrawText("budowniczy - level #00a118" .. levelJob, _UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    dxDrawText("EXP: #ffbf00" .. info.exp .. "", _UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("CZAS: #ffbf00" .. secondsToClock(info.time) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 115 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("ABY UKRY\196\134 INFORMACJE KLIKNIJ #ffbc00H", _UPVALUE0_.x, _UPVALUE0_.y + 143 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    dxDrawText("#a80000WERSJA BETA", _UPVALUE0_.x, _UPVALUE0_.y + 220 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
    if info.text2 == "" then
      dxDrawText(info.text3, _UPVALUE0_.x, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal11"), "right", "center", false, false, false, true, false)
    else
      dxDrawText(info.text2, _UPVALUE0_.x, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal11"), "right", "center", false, false, false, true, false)
    end
    if dataJob.idZlecenia then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 80 / zoom, _UPVALUE0_.w - 240 / zoom, 18 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      if (_UPVALUE0_.w - 240 / zoom) / #zadaniaPracy * dataJob.progressTeam / zoom < 20 / zoom then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 80 / zoom, 20 / zoom, 18 / zoom, 5 / zoom, tocolor(255, 196, 0, 255))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 80 / zoom, (_UPVALUE0_.w - 240 / zoom) / #zadaniaPracy * dataJob.progressTeam / zoom, 18 / zoom, 5 / zoom, tocolor(255, 196, 0, 255))
      end
      dxDrawText("Wykonane zadania: #ffbf00" .. dataJob.progressTeam .. "#ffffff/#ffbf00" .. #zadaniaPracy, _UPVALUE0_.x, _UPVALUE0_.y - 50 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
    else
      dxDrawText("Wybierz zlecenie pod \"#ffbf00k#ffffff\"", _UPVALUE0_.x, _UPVALUE0_.y - 15 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, true, false, true, false)
    end
  end
  if dataJob.idZlecenia then
    for _FORV_10_, _FORV_11_ in ipairs(positionsHouse[dataJob.idZlecenia].branieRzeczy) do
      if getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) and getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) then
        if 20 > math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) then
          dxDrawMaterialLine3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.9 + 0.5 / 2, _FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.9 - 0.5 / 2, rt_table[_FORV_10_], 1, tocolor(255, 255, 255, 255), false, getLookAtDirection(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[4]))
        end
        if 5 > math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) then
          renderTarget(_FORV_10_, _FORV_11_.pos)
        end
        if 1 > math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) then
          if getKeyState("R") then
            dataJob.progressBranieRzeczy = dataJob.progressBranieRzeczy + 2
            if dataJob.progressBranieRzeczy >= 100 and not clickC then
              clickC = true
              setTimer(function()
                clickC = false
              end, 1500, 1)
              dataJob.progressBranieRzeczy = 0
              if dataJob.odbieranie.trzymaRzecz or dataJob.odbieranie.trzymaRzecz_1 then
                triggerServerEvent("ev_budowniczy", resourceRoot, "oddajDoMagazynu", localPlayer, dataJob.odbieranie.trzymaRzecz, dataJob.odbieranie.trzymaRzecz_1, _FORV_10_)
              elseif dataJob.trzymaPrzedmiot == _FORV_11_.id then
                triggerServerEvent("ev_budowniczy", resourceRoot, "giveItemBack", localPlayer, dataJob.odbieranie.trzymaRzecz, _FORV_10_)
              else
                triggerServerEvent("ev_budowniczy", resourceRoot, "giveItem", localPlayer, _FORV_11_.id, _FORV_11_.scale, _FORV_10_)
              end
            end
          else
            dataJob.progressBranieRzeczy = 0
          end
        end
      end
    end
  end
end
function dxDrawHoleRender()
  for _FORV_6_, _FORV_7_ in pairs(dataJob.dziury.pozycje) do
    if _FORV_7_ and isElement(_FORV_7_) and getScreenFromWorldPosition(getElementPosition(_FORV_7_)) and getScreenFromWorldPosition(getElementPosition(_FORV_7_)) and math.floor(getDistanceBetweenPoints3D(getElementPosition(_FORV_7_))) < 1 then
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        if dataJob.trzymaPrzedmiot == 337 then
          triggerServerEvent("ev_budowniczy", resourceRoot, "kopanieAnims", localPlayer, _FORV_6_)
        end
      end
      dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
      dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
      dxDrawText("R", getScreenFromWorldPosition(getElementPosition(_FORV_7_)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_7_)) + 161.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_7_)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
    end
  end
end
function dxDrawLineCement()
  for _FORV_3_, _FORV_4_ in pairs(dataJob.fundamenty.pozycje) do
    if _FORV_4_ and isElement(_FORV_4_) and getPedOccupiedVehicle(localPlayer) and getElementModel((getPedOccupiedVehicle(localPlayer))) == 524 and math.floor(getDistanceBetweenPoints3D(getElementPosition(_FORV_4_))) < 10 then
      if getScreenFromWorldPosition(getPositionFromElementOffset(getPedOccupiedVehicle(localPlayer), 0, -4, -0.5)) and getScreenFromWorldPosition(getPositionFromElementOffset(getPedOccupiedVehicle(localPlayer), 0, -4, -0.5)) then
        dxDrawCircle(getScreenFromWorldPosition(getPositionFromElementOffset(getPedOccupiedVehicle(localPlayer), 0, -4, -0.5)))
      end
      dxDrawLine3D(getPositionFromElementOffset(getPedOccupiedVehicle(localPlayer), 0, -4, -0.5))
      if getDistanceBetweenPoints3D(getPositionFromElementOffset(getPedOccupiedVehicle(localPlayer), 0, -4, -0.5)) < 1.5 then
        if getScreenFromWorldPosition(getElementPosition(_FORV_4_)) and getScreenFromWorldPosition(getElementPosition(_FORV_4_)) then
          dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)))
          dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)))
          dxDrawText("R", getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 161.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_4_)))
        end
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1000, 1)
          triggerServerEvent("ev_budowniczy", resourceRoot, "zalewanieBetonem", _FORV_3_)
        end
      end
    end
  end
  for _FORV_7_, _FORV_8_ in ipairs(houseBuilding[dataJob.idDomu].floorPositions) do
    dxDrawLine3D(positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) - 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) - 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[3] - 0.85, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) + 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) - 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[3] - 0.85, tocolor(255, 0, 0, 255), 2)
    dxDrawLine3D(positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) + 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) - 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[3] - 0.85, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) + 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) + 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[3] - 0.85, tocolor(255, 0, 0, 255), 2)
    dxDrawLine3D(positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) + 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) + 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[3] - 0.85, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) - 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) + 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[3] - 0.85, tocolor(255, 0, 0, 255), 2)
    dxDrawLine3D(positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) - 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) + 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[3] - 0.85, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) - 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(_FORV_8_[1], _FORV_8_[2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]) - 5 / 2, positionsHouse[dataJob.idZlecenia].posCenterHouse[3] - 0.85, tocolor(255, 0, 0, 255), 2)
  end
end
function odbieranieElementowPojazd()
  if dataJob.odbieranie.pos and getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) and getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) then
    dxDrawText("\226\134\134", getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 2 - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - 83, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - 85, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 2 / zoom - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - 12 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200))
    if 2 > math.floor(getDistanceBetweenPoints3D(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3], getElementPosition(localPlayer))) then
      dxDrawText("Ilo\197\155\196\135 rzeczy: " .. dataJob.odbieranie.iloscMeterialow, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 2 / zoom - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 32 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200))
      dxDrawText("Ilo\197\155\196\135 rzeczy: #ffbf00" .. dataJob.odbieranie.iloscMeterialow, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 30 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - 91 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - 90 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("Aby chwyci\196\135 rzecz kliknij", getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos[1], dataJob.odbieranie.pos[2], dataJob.odbieranie.pos[3] + 0.5, 200))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        if not dataJob.odbieranie.trzymaRzecz and not dataJob.odbieranie.trzymaRzecz_1 then
          triggerServerEvent("ev_budowniczy", resourceRoot, "wezRzecz_odbiorMaterialow", localPlayer, 1)
        else
          exports.st_gui:showPlayerNotification("Ju\197\188 trzymasz jak\196\133\197\155 rzecz", "error")
        end
      end
    end
  end
  if dataJob.odbieranie.pos_1 and getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) and getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) then
    dxDrawText("\226\134\134", getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 2 - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - 83, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - 85, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 2 / zoom - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - 12 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200))
    if 2 > math.floor(getDistanceBetweenPoints3D(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3], getElementPosition(localPlayer))) then
      dxDrawText("Ilo\197\155\196\135 rzeczy: " .. dataJob.odbieranie.iloscMeterialow_1, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 2 / zoom - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 32 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200))
      dxDrawText("Ilo\197\155\196\135 rzeczy: #ffbf00" .. dataJob.odbieranie.iloscMeterialow_1, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 30 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - 91 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - 90 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("Aby chwyci\196\135 rzecz kliknij", getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(dataJob.odbieranie.pos_1[1], dataJob.odbieranie.pos_1[2], dataJob.odbieranie.pos_1[3] + 0.5, 200))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        if not dataJob.odbieranie.trzymaRzecz and not dataJob.odbieranie.trzymaRzecz_1 then
          triggerServerEvent("ev_budowniczy", resourceRoot, "wezRzecz_odbiorMaterialow", localPlayer, 2)
        else
          exports.st_gui:showPlayerNotification("Ju\197\188 trzymasz jak\196\133\197\155 rzecz", "error")
        end
      end
    end
  end
  if isElement(dataJob.odbieranie.colTracking) and getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) and getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) and 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(dataJob.odbieranie.colTracking))) then
    dxDrawText("Ilo\197\155\196\135 rzeczy: " .. dataJob.odbieranie.iloscMeterialow_pojazd, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 2 / zoom - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 27 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)))
    dxDrawText("Ilo\197\155\196\135 rzeczy: #ffbf00" .. dataJob.odbieranie.iloscMeterialow_pojazd, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 25 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)))
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) - 91 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) - 90 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
    if dataJob.odbieranie.moznaRozladowac_meble == true then
      dxDrawText("Aby otworzy\196\135 gui kliknij", getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)))
    elseif dataJob.odbieranie.moznaRozladowac == true then
      dxDrawText("Aby chwyci\196\135 rzecz kliknij", getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)))
    else
      dxDrawText("Aby odda\196\135 rzecz kliknij", getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)))
    end
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
    dxDrawText("R", getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking)))
    if getKeyState("R") and not clickC then
      clickC = true
      setTimer(function()
        clickC = false
      end, 1500, 1)
      if dataJob.odbieranie.moznaRozladowac_meble == true then
        if windows.computer == false then
          k1 = 1
          n1 = 7
          m1 = 7
          dataJob.odbieranie.meblePojazd = 0
          windows.furniture = true
          addEventHandler("onClientRender", root, windowFurniture)
          addEventHandler("onClientClick", root, clickPC)
          addEventHandler("onClientKey", root, key)
          showCursor(true)
          createShaderBlur(true)
          texturesFurtniture = {
            cross = dxCreateTexture(":ST_gui/img/cross.png")
          }
        end
      elseif dataJob.odbieranie.moznaRozladowac == true then
        triggerServerEvent("ev_budowniczy", resourceRoot, "wezRzecz_zPojazdu", localPlayer, 1)
      elseif dataJob.odbieranie.trzymaRzecz then
        triggerServerEvent("ev_budowniczy", resourceRoot, "oddajRzeczDoPojazdu", localPlayer, 1)
      end
    end
  end
  if isElement(dataJob.odbieranie.colTracking_1) and getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) and getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) and 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(dataJob.odbieranie.colTracking_1))) then
    dxDrawText("Ilo\197\155\196\135 rzeczy: " .. dataJob.odbieranie.iloscMeterialow_1_pojazd, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 2 / zoom - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 27 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)))
    dxDrawText("Ilo\197\155\196\135 rzeczy: #ffbf00" .. dataJob.odbieranie.iloscMeterialow_1_pojazd, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 25 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)))
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) - 91 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) - 90 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
    if dataJob.odbieranie.moznaRozladowac_meble_1 == true then
      dxDrawText("Aby otworzy\196\135 gui kliknij", getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)))
    elseif dataJob.odbieranie.moznaRozladowac_1 == true then
      dxDrawText("Aby chwyci\196\135 rzecz kliknij", getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)))
    else
      dxDrawText("Aby odda\196\135 rzecz kliknij", getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)))
    end
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
    dxDrawText("R", getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(dataJob.odbieranie.colTracking_1)))
    if getKeyState("R") and not clickC then
      clickC = true
      setTimer(function()
        clickC = false
      end, 1500, 1)
      if dataJob.odbieranie.moznaRozladowac_meble_1 == true then
        if windows.computer == false then
          k1 = 1
          n1 = 9
          m1 = 9
          dataJob.odbieranie.meblePojazd = 1
          windows.furniture = true
          addEventHandler("onClientRender", root, windowFurniture)
          addEventHandler("onClientClick", root, clickPC)
          addEventHandler("onClientKey", root, key)
          showCursor(true)
          createShaderBlur(true)
          texturesFurtniture = {
            cross = dxCreateTexture(":ST_gui/img/cross.png")
          }
        end
      elseif dataJob.odbieranie.moznaRozladowac_1 == true then
        triggerServerEvent("ev_budowniczy", resourceRoot, "wezRzecz_zPojazdu", localPlayer, 2)
      elseif dataJob.odbieranie.trzymaRzecz_1 then
        triggerServerEvent("ev_budowniczy", resourceRoot, "oddajRzeczDoPojazdu", localPlayer, 2)
      end
    end
  end
end
function nastepnaBelkaRender()
  for _FORV_6_, _FORV_7_ in pairs(dataJob.belki.objGhost) do
    if isElement(_FORV_7_) and getScreenFromWorldPosition(getElementPosition(_FORV_7_)) and getScreenFromWorldPosition(getElementPosition(_FORV_7_)) then
      if math.floor(getDistanceBetweenPoints3D(getElementPosition(_FORV_7_))) < 1.5 then
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if dataJob.trzymaPrzedmiot == 3529 then
            triggerServerEvent("ev_budowniczy", resourceRoot, "postawElement", dataJob.trzymaPrzedmiot)
          end
        end
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
      end
      dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
      dxDrawText("R", getScreenFromWorldPosition(getElementPosition(_FORV_7_)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_7_)) + 161.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_7_)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
    end
  end
end
function nastepnaScianaRender()
  for _FORV_6_, _FORV_7_ in pairs(dataJob.sciany.objGhost) do
    if isElement(_FORV_7_) and getScreenFromWorldPosition(getElementPosition(_FORV_7_)) and getScreenFromWorldPosition(getElementPosition(_FORV_7_)) then
      if math.floor(getDistanceBetweenPoints3D(getElementPosition(_FORV_7_))) < 1.5 then
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if dataJob.trzymaPrzedmiot == 8083 or dataJob.trzymaPrzedmiot == 8081 or dataJob.trzymaPrzedmiot == 8595 then
            triggerServerEvent("ev_budowniczy", resourceRoot, "postawElement", dataJob.trzymaPrzedmiot)
          end
        end
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
      end
      dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
      dxDrawText("R", getScreenFromWorldPosition(getElementPosition(_FORV_7_)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_7_)) + 161.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_7_)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
    end
  end
end
function nastepneDrzwiOknaRender()
  for _FORV_6_, _FORV_7_ in pairs(dataJob.oknaDrzwi.objGhost) do
    if isElement(_FORV_7_) and getScreenFromWorldPosition(getElementPosition(_FORV_7_)) and getScreenFromWorldPosition(getElementPosition(_FORV_7_)) then
      if math.floor(getDistanceBetweenPoints3D(getElementPosition(_FORV_7_))) < 1.5 then
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if dataJob.trzymaPrzedmiot == getElementModel(_FORV_7_) then
            triggerServerEvent("ev_budowniczy", resourceRoot, "postawElement", dataJob.trzymaPrzedmiot)
          end
        end
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
      end
      dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
      dxDrawText("R", getScreenFromWorldPosition(getElementPosition(_FORV_7_)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_7_)) + 161.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_7_)) + _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_7_)))
    end
  end
end
function punktyMalowaniaScian()
  for _FORV_3_, _FORV_4_ in pairs(dataJob.malowanie.reservedBy) do
    if _FORV_4_ and not isElement(_FORV_4_) then
      dataJob.malowanie.reservedBy[_FORV_3_] = nil
      if not houseBuilding[dataJob.idDomu].wallPositions[_FORV_3_] then
        return
      end
      dataJob.malowanie.sciany[_FORV_3_] = {
        positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].wallPositions[_FORV_3_][1], houseBuilding[dataJob.idDomu].wallPositions[_FORV_3_][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]),
        positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].wallPositions[_FORV_3_][1], houseBuilding[dataJob.idDomu].wallPositions[_FORV_3_][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]),
        positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].wallPositions[_FORV_3_][3] + 0.5
      }
    end
  end
  for _FORV_6_, _FORV_7_ in pairs(dataJob.malowanie.sciany) do
    if getScreenFromWorldPosition(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3] + 0.5, 200) and getScreenFromWorldPosition(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3] + 0.5, 200) and 3 > math.floor(getDistanceBetweenPoints3D(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3], getElementPosition(localPlayer))) then
      if math.floor(getDistanceBetweenPoints3D(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3], getElementPosition(localPlayer))) < 1.1 then
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if dataJob.malowanie.scianaID == false then
            triggerServerEvent("ev_budowniczy", resourceRoot, "malowanie_1", localPlayer, _FORV_6_)
          end
        end
        dxDrawCircle(getScreenFromWorldPosition(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3] + 0.5, 200))
      end
      dxDrawCircle(getScreenFromWorldPosition(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3] + 0.5, 200))
      dxDrawText("R", getScreenFromWorldPosition(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3] + 0.5, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3] + 0.5, 200) + 161.5 / zoom, getScreenFromWorldPosition(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3] + 0.5, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3] + 0.5, 200))
    end
  end
end
addEventHandler("onClientResourceStart", resourceRoot, function()
end)
function generateHolePositionsAroundFloors(_ARG_0_, _ARG_1_)
  for _FORV_9_, _FORV_10_ in ipairs(_ARG_0_) do
    (function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] - _ARG_1_ / 1.5, _FORV_10_[2] + _ARG_1_, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1], _FORV_10_[2] + _ARG_1_, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] + _ARG_1_ / 1.5, _FORV_10_[2] + _ARG_1_, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] - _ARG_1_ / 1.5, _FORV_10_[2] - _ARG_1_, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1], _FORV_10_[2] - _ARG_1_, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] + _ARG_1_ / 1.5, _FORV_10_[2] - _ARG_1_, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] - _ARG_1_, _FORV_10_[2] - _ARG_1_ / 1.5, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] - _ARG_1_, _FORV_10_[2], _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] - _ARG_1_, _FORV_10_[2] + _ARG_1_ / 1.5, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] + _ARG_1_, _FORV_10_[2] - _ARG_1_ / 1.5, _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] + _ARG_1_, _FORV_10_[2], _FORV_10_[3])
    ;(function(_ARG_0_, _ARG_1_, _ARG_2_)
      if not _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] then
        table.insert(_UPVALUE2_, {
          _ARG_0_,
          _ARG_1_,
          _ARG_2_
        })
        _UPVALUE1_[_UPVALUE0_(_ARG_0_, _ARG_1_, _ARG_2_)] = true
      end
    end)(_FORV_10_[1] + _ARG_1_, _FORV_10_[2] + _ARG_1_ / 1.5, _FORV_10_[3])
  end
  return {}
end
function nastepnaBelka()
  dataJob.belki.objGhost[dataJob.ktoraBelka] = createObject(3529, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].beamPositions[dataJob.ktoraBelka][1], houseBuilding[dataJob.idDomu].beamPositions[dataJob.ktoraBelka][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].beamPositions[dataJob.ktoraBelka][1], houseBuilding[dataJob.idDomu].beamPositions[dataJob.ktoraBelka][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].beamPositions[dataJob.ktoraBelka][3] + 1, houseBuilding[dataJob.idDomu].beamPositions[dataJob.ktoraBelka][4], houseBuilding[dataJob.idDomu].beamPositions[dataJob.ktoraBelka][5], houseBuilding[dataJob.idDomu].beamPositions[dataJob.ktoraBelka][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4])
  setObjectScale(dataJob.belki.objGhost[dataJob.ktoraBelka], 0.3, 0.3, 0.66)
  setElementAlpha(dataJob.belki.objGhost[dataJob.ktoraBelka], 145)
end
function nastepnaSciana()
  dataJob.sciany.objGhost[dataJob.ktoraSciana] = createObject(houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana].id, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana][1], houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana][1], houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana][3] + 0.5, houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana][4], houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana][5], houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4])
  setElementData(dataJob.sciany.objGhost[dataJob.ktoraSciana], "dev25tex1", 264)
  setElementData(dataJob.sciany.objGhost[dataJob.ktoraSciana], "dev25tex2", 264)
  if houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana].scale then
    setObjectScale(dataJob.sciany.objGhost[dataJob.ktoraSciana], houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana].scale[1], houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana].scale[2], houseBuilding[dataJob.idDomu].wallPositions[dataJob.ktoraSciana].scale[3])
  end
  setElementAlpha(dataJob.sciany.objGhost[dataJob.ktoraSciana], 145)
end
function nastepneDrzwiOkna()
  dataJob.oknaDrzwi.objGhost[dataJob.oknaDrzwi.ktoraLiczba] = createObject(houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba].id, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba][1], houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba][1], houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba][3] + 1, houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba][4], houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba][5], houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4])
  if houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba].scale then
    setElementDoubleSided(dataJob.oknaDrzwi.objGhost[dataJob.oknaDrzwi.ktoraLiczba], true)
    setObjectScale(dataJob.oknaDrzwi.objGhost[dataJob.oknaDrzwi.ktoraLiczba], houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba].scale[1], houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba].scale[2], houseBuilding[dataJob.idDomu].doorWindowPos[dataJob.oknaDrzwi.ktoraLiczba].scale[3])
  end
  setElementAlpha(dataJob.oknaDrzwi.objGhost[dataJob.oknaDrzwi.ktoraLiczba], 145)
end
function nastepnyMebelRender()
  if not dataJob.meble or not dataJob.meble.objGhost then
    return
  end
  for _FORV_3_, _FORV_4_ in pairs(dataJob.meble.objGhost) do
    if dataJob.meble.reservedBy and dataJob.meble.reservedBy[_FORV_3_] and not isElement(dataJob.meble.reservedBy and dataJob.meble.reservedBy[_FORV_3_]) then
      releaseMebelReservationByIndex(_FORV_3_)
    end
  end
  if not dataJob.meble or not dataJob.meble.current then
    return
  end
  if not isElement(dataJob.meble.objGhost[dataJob.meble.current.index]) then
    return
  end
  if not getScreenFromWorldPosition(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])) or not getScreenFromWorldPosition(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])) then
    return
  end
  if getDistanceBetweenPoints3D(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])) < 1.5 then
    if getKeyState("R") and not clickC then
      clickC = true
      setTimer(function()
        clickC = false
      end, 1500, 1)
      if dataJob.trzymaRzecz == dataJob.meble.current.model then
        triggerServerEvent("ev_budowniczy", resourceRoot, "postawElement", dataJob.meble.current.index)
      else
        exports.st_gui:showPlayerNotification("Trzymasz inny przedmiot", "error")
      end
    end
    dxDrawCircle(getScreenFromWorldPosition(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])))
  end
  dxDrawCircle(getScreenFromWorldPosition(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])))
  dxDrawText("R", getScreenFromWorldPosition(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])) - _UPVALUE0_ / 4, getScreenFromWorldPosition(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])) + 161.5 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])) + _UPVALUE0_ / 4, getScreenFromWorldPosition(getElementPosition(dataJob.meble.objGhost[dataJob.meble.current.index])))
end
function renderTarget(_ARG_0_, _ARG_1_)
  dxSetRenderTarget(rt_table[_ARG_0_], false)
  dxDrawRoundedRectangle(95, 30, 110, 165, 15, tocolor(255, 187, 0, 255))
  dxDrawRoundedRectangle(97, 32, 106, 161, 15, tocolor(25, 25, 25, 255))
  dxDrawRoundedRectangle(125, 40, 50, 55, 15, tocolor(35, 35, 35, 255))
  dxDrawText(positionsHouse[dataJob.idZlecenia].branieRzeczy[_ARG_0_].name .. "\n ilo\197\155\196\135: #ffbf00" .. positionsHouse[dataJob.idZlecenia].branieRzeczy[_ARG_0_].number, 0, 100, 300, 300, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font10"), "center", "top", false, false, false, true, false)
  if positionsHouse[dataJob.idZlecenia].branieRzeczy[_ARG_0_].name == "\197\130opata" then
    dxDrawImage(127, 42, 45, 45, texturesJob.shovel_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  elseif positionsHouse[dataJob.idZlecenia].branieRzeczy[_ARG_0_].name == "S\197\130upki" then
    dxDrawImage(125, 42, 50, 50, texturesJob.column_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  elseif positionsHouse[dataJob.idZlecenia].branieRzeczy[_ARG_0_].name == "\197\154ciana" then
    dxDrawImage(125, 42, 50, 50, texturesJob.wall_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  elseif positionsHouse[dataJob.idZlecenia].branieRzeczy[_ARG_0_].name == "Drzwi" then
    dxDrawImage(125, 42, 50, 50, texturesJob.door_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  elseif positionsHouse[dataJob.idZlecenia].branieRzeczy[_ARG_0_].name == "Okna" then
    dxDrawImage(125, 42, 50, 50, texturesJob.window_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if 1 > getDistanceBetweenPoints3D(_ARG_1_[1], _ARG_1_[2], _ARG_1_[3], getElementPosition(localPlayer)) then
    dxDrawCircle(150, 152, 16, 270, 270 + dataJob.progressBranieRzeczy * 3.6, tocolor(255, 187, 0, 255))
    dxDrawCircle(150, 152, 14, 0, 360, tocolor(35, 35, 35, 255))
    dxDrawText("R", 0, 139, 300, 300, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
    if dataJob.trzymaPrzedmiot == positionsHouse[dataJob.idZlecenia].branieRzeczy[_ARG_0_].id then
      dxDrawText("ABY ODSTAWI\196\134 KLIKNIJ", 1, 171, 300, 300, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font10"), "center", "top", false, false, false, true, false)
    else
      dxDrawText("ABY CHWYCI\196\134 KLIKNIJ", 1, 171, 300, 300, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font10"), "center", "top", false, false, false, true, false)
    end
  end
  dxSetRenderTarget()
end
function zakonczZlecenie()
  dataJob.idZlecenia = false
  dataJob.idDomu = false
  if dataJob.sufit and dataJob.sufit.postawione then
    for _FORV_3_, _FORV_4_ in ipairs(dataJob.sufit.postawione) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    dataJob.sufit.postawione = {}
  end
  if dataJob.fundamenty then
    if dataJob.fundamenty.postawione then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.fundamenty.postawione) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.fundamenty.postawione = {}
    end
    if dataJob.fundamenty.postawione2 then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.fundamenty.postawione2) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.fundamenty.postawione2 = {}
    end
    if dataJob.fundamenty.pozycje then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.fundamenty.pozycje) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.fundamenty.pozycje = {}
    end
  end
  if isEventHandlerAdded("onClientRender", root, dxDrawLineCement) then
    removeEventHandler("onClientRender", root, dxDrawLineCement)
  end
  if dataJob.belki then
    if dataJob.belki.postawione then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.belki.postawione) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.belki.postawione = {}
    end
    if dataJob.belki.objGhost then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.belki.objGhost) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.belki.objGhost = {}
    end
  end
  dataJob.ktoraBelka = 1
  if isEventHandlerAdded("onClientRender", root, nastepnaBelkaRender) then
    removeEventHandler("onClientRender", root, nastepnaBelkaRender)
  end
  if dataJob.sciany then
    if dataJob.sciany.postawione then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.sciany.postawione) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.sciany.postawione = {}
    end
    if dataJob.sciany.objGhost then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.sciany.objGhost) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.sciany.objGhost = {}
    end
  end
  dataJob.ktoraSciana = 1
  if isEventHandlerAdded("onClientRender", root, nastepnaScianaRender) then
    removeEventHandler("onClientRender", root, nastepnaScianaRender)
  end
  if dataJob.dziury then
    if dataJob.dziury.wykopane then
      for _FORV_3_, _FORV_4_ in pairs(dataJob.dziury.wykopane) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
    end
    if dataJob.dziury.pozycje then
      for _FORV_3_, _FORV_4_ in pairs(dataJob.dziury.pozycje) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
    end
  end
  if isEventHandlerAdded("onClientRender", root, dxDrawHoleRender) then
    removeEventHandler("onClientRender", root, dxDrawHoleRender)
  end
  if dataJob.meble then
    if dataJob.meble.objGhost then
      for _FORV_3_, _FORV_4_ in pairs(dataJob.meble.objGhost) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.meble.objGhost = {}
    end
    if dataJob.meble.postawione then
      for _FORV_3_, _FORV_4_ in pairs(dataJob.meble.postawione) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.meble.postawione = {}
    end
    if dataJob.meble.freeByModel then
      for _FORV_3_, _FORV_4_ in pairs(dataJob.meble.freeByModel) do
        _FORV_4_ = {}
      end
    end
    dataJob.meble.current = false
  end
  if isEventHandlerAdded("onClientRender", root, nastepnyMebelRender) then
    removeEventHandler("onClientRender", root, nastepnyMebelRender)
  end
  if dataJob.oknaDrzwi then
    if dataJob.oknaDrzwi.postawione then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.oknaDrzwi.postawione) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.oknaDrzwi.postawione = {}
    end
    if dataJob.oknaDrzwi.objGhost then
      for _FORV_3_, _FORV_4_ in ipairs(dataJob.oknaDrzwi.objGhost) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      dataJob.oknaDrzwi.objGhost = {}
    end
    dataJob.oknaDrzwi.ktoraLiczba = 1
  end
  if isEventHandlerAdded("onClientRender", root, nastepneDrzwiOknaRender) then
    removeEventHandler("onClientRender", root, nastepneDrzwiOknaRender)
  end
  if isEventHandlerAdded("onClientRender", root, odbieranieElementowPojazd) then
    removeEventHandler("onClientRender", root, odbieranieElementowPojazd)
  end
  if dataJob.odbieranie then
    if isElement(dataJob.odbieranie.colTracking) then
      destroyElement(dataJob.odbieranie.colTracking)
    end
    dataJob.odbieranie.pos = false
    if isElement(dataJob.odbieranie.colTracking_1) then
      destroyElement(dataJob.odbieranie.colTracking_1)
    end
    dataJob.odbieranie.pos_1 = false
    dataJob.odbieranie.iloscMeterialow_1 = 0
    dataJob.odbieranie.iloscMeterialow_1_pojazd = 0
    dataJob.odbieranie.moznaRozladowac_1 = false
    dataJob.odbieranie.iloscMeterialow = 0
    dataJob.odbieranie.iloscMeterialow_pojazd = 0
    dataJob.odbieranie.moznaRozladowac = false
    dataJob.odbieranie.moznaRozladowac_meble = false
    dataJob.odbieranie.moznaRozladowac_meble_1 = false
    dataJob.odbieranie.mebleTabela_1 = {}
    dataJob.odbieranie.mebleTabela = {}
    dataJob.odbieranie.meblePojazd = false
    if dataJob.odbieranie.trzymaRzecz or dataJob.odbieranie.trzymaRzecz_1 then
      dataJob.odbieranie.trzymaRzecz = false
      dataJob.odbieranie.trzymaRzecz_1 = false
      triggerServerEvent("ev_budowniczy", resourceRoot, "destroyItem")
    end
  end
  if rt_table then
    for _FORV_3_, _FORV_4_ in pairs(rt_table) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
      rt_table[_FORV_3_] = nil
    end
  end
  if windows.computerCategory == "przyjeteZlecenie" or windows.computerCategory == "Sklep" or windows.computerCategory == "Wynajem" or windows.computerCategory == "Meble" then
    windows.computerCategory = "wyborZlecenia"
  end
  if isEventHandlerAdded("onClientRender", root, punktyMalowaniaScian) then
    removeEventHandler("onClientRender", root, punktyMalowaniaScian)
    zakonczMalowanieSciany()
  end
  dataJob.malowanie = {}
  dataJob.malowanie.sciany = {}
  dataJob.malowanie.scianaID = false
  if isEventHandlerAdded("onClientRender", root, windowFurniture) then
    createShaderBlur(false)
    windows.furniture = false
    removeEventHandler("onClientRender", root, windowFurniture)
    removeEventHandler("onClientKey", root, key)
    removeEventHandler("onClientClick", root, clickPC)
    showCursor(false)
    for _FORV_3_, _FORV_4_ in pairs(texturesFurtniture) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesFurtniture = {}
  end
  if dataJob.trzymaPrzedmiot then
    dataJob.trzymaPrzedmiot = false
    triggerServerEvent("ev_budowniczy", resourceRoot, "destroyItem")
  end
  runningBlock(localPlayer, false)
  if isElement(dataJob.blipBudowy) then
    destroyElement(dataJob.blipBudowy)
  end
  if isElement(dataJob.blipOdbior) then
    destroyElement(dataJob.blipOdbior)
  end
  if isElement(dataJob.blipOdbior_1) then
    destroyElement(dataJob.blipOdbior_1)
  end
end
function endJobAll()
  zakonczZlecenie()
  if isElement(dataVehicle.vehicleBlip) then
    destroyElement(dataVehicle.vehicleBlip)
  end
  if isElement(dataVehicle.vehicleBlip_1) then
    destroyElement(dataVehicle.vehicleBlip_1)
  end
  if isElement(dataVehicle.vehicleBlip_betoniarka) then
    destroyElement(dataVehicle.vehicleBlip_betoniarka)
  end
  triggerServerEvent("ev_budowniczy", resourceRoot, "zakoncz_prace")
  unbindKey("k", "down", showComputer)
  unbindKey("h", "down", showinfoF)
  removeEventHandler("onClientRender", root, windowRender)
end
function ensureMebelTarget(_ARG_0_, _ARG_1_)
  if not dataJob.meble or not dataJob.meble.freeByModel then
    return false
  end
  if _ARG_1_ == localPlayer then
    if dataJob.meble.current then
      return true
    end
    if not dataJob.meble.freeByModel[_ARG_0_] or #dataJob.meble.freeByModel[_ARG_0_] == 0 then
      exports.st_gui:showPlayerNotification("Brak miejsca na ten mebel w tym domu", "error")
      return false
    end
  end
  setElementAlpha(createObject(_ARG_0_, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][1], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][1], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][3], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][4], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][5], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), 0)
  setElementCollisionsEnabled(createObject(_ARG_0_, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][1], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][1], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][3], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][4], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][5], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), false)
  dataJob.meble.objGhost[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)] = createObject(_ARG_0_, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][1], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][1], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][3], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][4], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][5], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4])
  dataJob.meble.reservedBy[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)] = _ARG_1_
  dataJob.meble.reservedOfPlayer[_ARG_1_] = {
    idx = table.remove(dataJob.meble.freeByModel[_ARG_0_], 1),
    model = _ARG_0_
  }
  if _ARG_1_ == localPlayer then
    setElementAlpha(createObject(_ARG_0_, positionsHouse[dataJob.idZlecenia].posCenterHouse[1] + rotateAroundCenter(houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][1], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[2] + rotateAroundCenter(houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][1], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][2], positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), positionsHouse[dataJob.idZlecenia].posCenterHouse[3] + houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][3], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][4], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][5], houseBuilding[dataJob.idDomu].furniturePos[table.remove(dataJob.meble.freeByModel[_ARG_0_], 1)][6] + positionsHouse[dataJob.idZlecenia].posCenterHouse[4]), 145)
    dataJob.meble.current = {
      index = table.remove(dataJob.meble.freeByModel[_ARG_0_], 1),
      model = _ARG_0_
    }
  end
  return true
end
function clearMebelTarget(_ARG_0_, _ARG_1_)
  if _ARG_1_ == nil then
    _ARG_1_ = true
  end
  if not dataJob.meble or not dataJob.meble.current then
    return
  end
  if _ARG_1_ and isElement(dataJob.meble.objGhost[dataJob.meble.current.index]) then
    destroyElement(dataJob.meble.objGhost[dataJob.meble.current.index])
  end
  dataJob.meble.objGhost[dataJob.meble.current.index] = nil
  if _ARG_0_ then
    dataJob.meble.freeByModel[dataJob.meble.current.model] = dataJob.meble.freeByModel[dataJob.meble.current.model] or {}
    table.insert(dataJob.meble.freeByModel[dataJob.meble.current.model], 1, dataJob.meble.current.index)
  end
  dataJob.meble.current = false
end
function showinfoF()
  if info.showinfo == true then
    info.showinfo = false
  else
    info.showinfo = true
  end
end
function releaseMebelReservationByIndex(_ARG_0_)
  if not dataJob.meble or not _ARG_0_ then
    return
  end
  if dataJob.meble.reservedBy[_ARG_0_] then
    dataJob.meble.reservedOfPlayer[dataJob.meble.reservedBy[_ARG_0_]] = nil
  end
  dataJob.meble.reservedBy[_ARG_0_] = nil
  if dataJob.meble.postawione and dataJob.meble.postawione[_ARG_0_] then
    return
  end
  if isElement(dataJob.meble.objGhost[_ARG_0_]) then
    destroyElement(dataJob.meble.objGhost[_ARG_0_])
  end
  dataJob.meble.objGhost[_ARG_0_] = nil
  if dataJob.meble.modelByIndex and dataJob.meble.modelByIndex[_ARG_0_] then
    dataJob.meble.freeByModel[dataJob.meble.modelByIndex and dataJob.meble.modelByIndex[_ARG_0_]] = dataJob.meble.freeByModel[dataJob.meble.modelByIndex and dataJob.meble.modelByIndex[_ARG_0_]] or {}
    table.insert(dataJob.meble.freeByModel[dataJob.meble.modelByIndex and dataJob.meble.modelByIndex[_ARG_0_]], _ARG_0_)
  end
end
function releaseMebelReservationByPlayer(_ARG_0_)
  if not dataJob.meble or not dataJob.meble.reservedOfPlayer then
    return
  end
  if dataJob.meble.reservedOfPlayer[_ARG_0_] and dataJob.meble.reservedOfPlayer[_ARG_0_].idx then
    releaseMebelReservationByIndex(dataJob.meble.reservedOfPlayer[_ARG_0_].idx)
  end
end
