markerStartJob = createMarker(957.03, 2112.68, 9.92, "cylinder", 5, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
createBlip(974.71, 2134.78, 10.82, 46, 2, 0, 0, 0, 0, 0, 250)
markerStartJob2 = createMarker(-2140.93, -169.07, 34.42, "cylinder", 5, 246, 255, 0, 255)
setElementData(markerStartJob2, "marker:icon", "praca")
createBlip(-2140.93, -169.07, 35.32, 46, 2, 0, 0, 0, 0, 0, 250)
markerStartJob3 = createMarker(2152.82, -2288.74, 12.459999999999999, "cylinder", 5, 246, 255, 0, 255)
setElementData(markerStartJob3, "marker:icon", "praca")
createBlip(2152.82, -2288.74, 13.36, 46, 2, 0, 0, 0, 0, 0, 250)
unlockTruck = {
  [514] = true,
  [515] = true,
  [403] = true
}
function endJobAll()
  removeCommandHandler("podlaczprzyczepe", podlaczPrzyczepke)
  jestkomenda = false
  triggerServerEvent("evEwenciks_sayytrdgfjh", resourceRoot, "plrJob", localPlayer, false)
  triggerServerEvent("evEwenciks_sayytrdgfjh", resourceRoot, "destroyTruckAndTrailer", localPlayer)
  if isElement(blip) then
    destroyElement(blip)
  end
  if isElement(zlecenieMarker) then
    destroyElement(zlecenieMarker)
  end
  if isElement(trailerClient) then
    destroyElement(trailerClient)
  end
  removeEventHandler("onClientRender", root, window1)
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
  trailerZmienna = false
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "finishJob" then
    windows.endJob = true
    addEventHandler("onClientRender", root, window)
    showCursor(true, false)
  elseif _ARG_0_ == "startPokazPunkt" then
    if getElementData(localPlayer, "player:job") == "Logistyka l\196\133dowa" then
      blip = createBlip(XselectDokad, YselectDokad, ZselectDokad, 41, 2, 0, 0, 0, 0, 0, 9999)
      brakNaczepy = false
    end
    if not jestkomenda then
      jestkomenda = true
      outputChatBox("\226\151\143#ffffff Aby pod\197\130\196\133czy\196\135 przyczepe wpisz /#FFC000podlaczprzyczepe", 255, 175, 0, true)
      addCommandHandler("podlaczprzyczepe", podlaczPrzyczepke)
    end
  elseif _ARG_0_ == "schowajPunkty" then
    if getElementData(localPlayer, "player:job") == "Logistyka l\196\133dowa" then
      if isElement(blip) then
        destroyElement(blip)
      end
      if isElement(zlecenieMarker) then
        destroyElement(zlecenieMarker)
      end
      brakNaczepy = true
    end
  elseif _ARG_0_ == "damage" then
    if getElementData(localPlayer, "player:job") == "Logistyka l\196\133dowa" then
      for _FORV_8_, _FORV_9_ in ipairs(table_statistics) do
        if _FORV_9_.ulepszenie_uszkodzenia_trucki == 0 then
          stanTowaru = stanTowaru - _ARG_1_ / 2
          if stanTowaru < 75 then
            exports.st_gui:showPlayerNotification("Towar zosta\197\130 zniszczony\nKo\197\132czysz prac\196\153", "error")
            endJobAll()
          end
        end
      end
    end
  elseif _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_11_, _FORV_12_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 150,
          icon = textures.dolar_icon,
          status = _FORV_12_.ulepszenie_zarobek_trucki,
          nameDatabase = "ulepszenie_zarobek_trucki"
        },
        {
          name = "Szybki roz\197\130adunek",
          description = "Od teraz z\195\179\197\130te linie przy roz\197\130adunku zostaj\196\133 usuni\196\153te",
          price = 200,
          icon = textures.condition_icon,
          status = _FORV_12_.ulepszenie_rozladunek_trucki,
          nameDatabase = "ulepszenie_rozladunek_trucki"
        },
        {
          name = "Brak uszkodze\197\132 \197\130adunku",
          description = "Dzi\196\153ki ulepszeniu \197\130adunek nie b\196\153dzie si\196\153 uszkadza\197\130",
          price = 160,
          icon = textures.energy_icon,
          status = _FORV_12_.ulepszenie_uszkodzenia_trucki,
          nameDatabase = "ulepszenie_uszkodzenia_trucki"
        }
      }
    end
  elseif _ARG_0_ == "trailerZmienna" then
    if _ARG_3_ then
      exports.st_gui:showPlayerNotification("Wszystkie miejsca na przyczep\196\153 s\196\133 zaj\196\153te\nPoczekaj chwil\196\153", "error")
      addEventHandler("onClientRender", root, window)
      windows.main = true
      windows.background = true
      showCursor(true, false)
    else
      trailerZmienna = _ARG_1_
      addEventHandler("onClientRender", root, window1)
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        if _FORV_18_.ulepszenie_rozladunek_trucki == 0 then
          trailerClient = createVehicle(_ARG_2_, XselectDokad - 2.5 * math.sin(-math.rad(RselectDokad + 180)), YselectDokad - 2.5 * math.cos(-math.rad(RselectDokad + 180)), ZselectDokad + 0.5, 0, 0, RselectDokad + 180)
          setElementAlpha(trailerClient, 150)
          setElementCollisionsEnabled(trailerClient, false)
          setElementFrozen(trailerClient, true)
        end
      end
    end
  end
end)
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == markerStartJob or source == markerStartJob2 or source == markerStartJob3 then
      if source == markerStartJob3 then
        bazaSF = "LS"
      elseif source == markerStartJob2 then
        bazaSF = "SF"
      else
        bazaSF = false
      end
      if not getPedOccupiedVehicle(localPlayer) then
        return
      end
      if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
        return
      end
      if not unlockTruck[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
        exports.st_gui:showPlayerNotification("Tym pojazdem nie mo\197\188esz tu pracowa\196\135", "error")
        return
      end
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) then
        exports.st_gui:showPlayerNotification("W poje\197\186dzie nie mo\197\188e by\196\135 pasa\197\188era", "error")
        return
      end
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 2) then
        exports.st_gui:showPlayerNotification("W poje\197\186dzie nie mo\197\188e by\196\135 pasa\197\188era", "error")
        return
      end
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 3) then
        exports.st_gui:showPlayerNotification("W poje\197\186dzie nie mo\197\188e by\196\135 pasa\197\188era", "error")
        return
      end
      table_statistics = {}
      money = nil
      if not getElementData(localPlayer, "player:job") then
        textures = {
          background = dxCreateTexture(":ST_gui/img/background2.png"),
          cross = dxCreateTexture(":ST_gui/img/cross.png"),
          widget = dxCreateTexture(":ST_jobs_settings/img/widget_jobs.png"),
          off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
          info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
          start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
          stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
          game_photo = dxCreateTexture("img/game_photo.png"),
          level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
          level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
          level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
          level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
          requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png"),
          lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
          unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
          improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
          condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
          dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
          energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png"),
          food_icon = dxCreateTexture("img/food_icon.png"),
          pus_icon = dxCreateTexture("img/pus_icon.png"),
          furniture_icon = dxCreateTexture("img/furniture_icon.png"),
          motorcycle_icon = dxCreateTexture("img/motorcycle_icon.png"),
          electronics_icon = dxCreateTexture("img/electronics_icon.png"),
          illegal_icon = dxCreateTexture("img/illegal_icon.png"),
          tuningParts_icon = dxCreateTexture("img/tuningParts_icon.png"),
          car_luxury = dxCreateTexture("img/car_luxury.png"),
          car_icon = dxCreateTexture("img/car_icon.png"),
          imigrant_icon = dxCreateTexture("img/imigrant_icon.png"),
          clothing_icon = dxCreateTexture("img/clothing_icon.png"),
          boat_icon = dxCreateTexture("img/boat_icon.png"),
          marihuana_icon = dxCreateTexture("img/marihuana_icon.png"),
          animal_icon = dxCreateTexture("img/animal_icon.png"),
          petrol_icon = dxCreateTexture("img/petrol_icon.png"),
          nuklear_icon = dxCreateTexture("img/nuklear_icon.png"),
          finish_icon = dxCreateTexture(":ST_taximeter_job/img/finish_icon.png"),
          trailer_icon = dxCreateTexture("img/trailer_icon.png")
        }
      end
      addEventHandler("onClientRender", root, window)
      triggerServerEvent("evEwenciks_sayytrdgfjh", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      windows.main = true
      windows.background = true
      showCursor(true, false)
      namePos = {
        {
          "\197\187ywno\197\155\196\135",
          textures.food_icon
        },
        {
          "Meble",
          textures.furniture_icon
        },
        {
          "Luksusowy pojazd",
          textures.car_luxury
        },
        {
          "Nielegalny towar",
          textures.illegal_icon
        },
        {
          "Imigranci",
          textures.imigrant_icon
        },
        {
          "Ropa",
          textures.pus_icon
        },
        {
          "Elektronika",
          textures.electronics_icon
        },
        {
          "Pojazdy osobowe",
          textures.car_icon
        },
        {
          "Motocykle",
          textures.motorcycle_icon
        },
        {
          "Cz\196\153\197\155ci tuningowe",
          textures.tuningParts_icon
        },
        {
          "Odzie\197\188",
          textures.clothing_icon
        },
        {
          "L\195\179d\197\186",
          textures.boat_icon
        },
        {
          "Tajna bro\197\132",
          textures.nuklear_icon
        },
        {
          "Marihuana",
          textures.marihuana_icon
        },
        {
          "Pojazdy frakcyjne",
          textures.car_icon
        },
        {
          "Zwierz\196\153ta",
          textures.animal_icon
        },
        {
          "Benzyna",
          textures.petrol_icon
        }
      }
      if zaladowanePozycje == true then
      else
        zaladowanePozycje = true
        refreshPos()
      end
    end
    if source == zlecenieMarker then
      endJobAll()
      exp = 3
      if getElementData(localPlayer, "player:premium") then
        exp = exp + 2
      end
      refreshPos()
      triggerServerEvent("evEwenciks_sayytrdgfjh", resourceRoot, "wages", math.floor(paymentSelect))
      exports.ST_levelsystem:addExp(exp)
      triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
      exports.st_gui:showPlayerNotification("Otrzymujesz " .. przecinek(math.floor(paymentSelect)) .. " PLN", "money")
    end
  end
end)
addEventHandler("onClientMarkerLeave", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and (source == markerStartJob or source == markerStartJob2) then
    removeEventHandler("onClientRender", root, window)
    windows.main = false
    windows.background = false
    windows.upgrades = false
    windows.level = false
    windows.zlecenia = false
    showCursor(false)
    if getElementData(localPlayer, "player:job") then
      return
    end
    if getElementData(localPlayer, "player:job") == "Logistyka l\196\133dowa" then
      return
    end
    for _FORV_6_, _FORV_7_ in pairs(textures) do
      if isElement(_FORV_7_) then
        destroyElement(_FORV_7_)
      end
    end
    textures = {}
  end
end)
function podlaczPrzyczepke()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if not lastTickCountPrzyczepka then
    lastTickCountPrzyczepka = 120000
  end
  if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 100 then
    exports.st_gui:showPlayerNotification("Jeste\197\155 zbyt blisko punktu ko\197\132cowego", "error")
    return
  end
  if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) <= 13 then
    if 120000 < getTickCount() - lastTickCountPrzyczepka then
      lastTickCountPrzyczepka = getTickCount()
      if getVehicleTowedByVehicle((getPedOccupiedVehicle(localPlayer))) == trailerZmienna then
        exports.st_gui:showPlayerNotification("Przyczepka jest ju\197\188 pod\197\130\196\133czona", "info")
        return
      end
      triggerServerEvent("evEwenciks_sayytrdgfjh", resourceRoot, "podlaczPrzyczepke", localPlayer)
    else
      exports.st_gui:showPlayerNotification("Mo\197\188esz uzy\196\135 tej komendy raz na 2 minuty", "error")
    end
  else
    exports.st_gui:showPlayerNotification("Jeste\197\155 zbyt daleko przyczepki", "info")
  end
end
getResourceName(getThisResource(), true, 63997779)
return
