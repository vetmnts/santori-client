markerStartJob = createMarker(1259.28, -1640.95, 12.67, "cylinder", 3, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
createBlip(1259.28, -1640.95, 13.57, 46, 2, 0, 0, 0, 0, 0, 250)
table_statistics = {}
package_objects = {}
posVehicle = {
  {
    1236.12,
    -1671.78,
    13.69,
    0,
    0,
    360
  },
  {
    1246.35,
    -1671.78,
    13.69,
    0,
    0,
    360
  },
  {
    1256.22,
    -1671.78,
    13.69,
    0,
    0,
    360
  },
  {
    1265.4,
    -1671.78,
    13.69,
    0,
    0,
    360
  }
}
amt_positions = {
  {
    1303.95,
    -1367.88,
    12.54,
    0,
    0,
    90,
    1,
    false
  },
  {
    1470.12,
    -1692.99,
    12.54,
    0,
    0,
    180,
    2,
    false
  },
  {
    1450.49,
    29.81,
    30.7,
    0,
    0,
    90,
    3,
    false
  },
  {
    105.78,
    -174.88,
    0.5800000000000001,
    0,
    0,
    180,
    5,
    false
  },
  {
    1743.85,
    -2053.83,
    12.57,
    0,
    0,
    90,
    6,
    false
  },
  {
    2122.78,
    896.78,
    10.18,
    0,
    0,
    -90,
    7,
    false
  },
  {
    1356.89,
    755.34,
    9.82,
    0,
    0,
    0,
    8,
    false
  },
  {
    661.34,
    -554.51,
    15.34,
    0,
    0,
    0,
    9,
    false
  },
  {
    1003.35,
    -1371.67,
    12.25,
    0,
    0,
    -90,
    10,
    false
  },
  {
    -344.72,
    -413.76,
    5.92,
    0,
    0,
    126.75,
    21,
    false
  },
  {
    1742.29,
    925.77,
    9.78,
    0,
    0,
    0,
    23,
    false
  },
  {
    1556.8,
    952.59,
    9.82,
    0,
    0,
    0,
    24,
    false
  },
  {
    -240.2,
    1181.45,
    18.74,
    0,
    0,
    180,
    26,
    false
  },
  {
    1915.29,
    -1779.52,
    12.56,
    0,
    0,
    180,
    27,
    false
  },
  {
    1484.44,
    -1411.47,
    10.88,
    0,
    0,
    0,
    28,
    false
  },
  {
    1746.27,
    -1129.31,
    23.08,
    0,
    0,
    90,
    29,
    false
  },
  {
    2043.82,
    -1420.74,
    16.16,
    0,
    0,
    0,
    30,
    false
  },
  {
    1263.41,
    -1790,
    12.6,
    0,
    0,
    90,
    31,
    false
  },
  {
    1832.98,
    -1837.48,
    12.58,
    0,
    0,
    0,
    32,
    false
  },
  {
    489.97,
    -1753.64,
    13.11,
    0,
    0,
    80,
    33,
    false
  },
  {
    603.74,
    -1248.26,
    17.43,
    0,
    0,
    -70,
    34,
    false
  },
  {
    1683.79,
    -1470.38,
    12.55,
    0,
    0,
    90,
    35,
    false
  },
  {
    810.99,
    -585.49,
    15.34,
    0,
    0,
    90,
    36,
    false
  },
  {
    2253.93,
    64.35,
    25.47,
    0,
    0,
    90,
    37,
    false
  },
  {
    1244.71,
    324.41,
    18.76,
    0,
    0,
    245,
    38,
    false
  },
  {
    208.97,
    -183.48,
    0.58,
    0,
    0,
    -90,
    39,
    false
  },
  {
    50.31,
    1230.6,
    17.95,
    0,
    0,
    90,
    40,
    false
  },
  {
    2778.16,
    -2424.3,
    12.64,
    0,
    0,
    90,
    42,
    false
  }
}
packages_positions = {
  {
    0.4,
    -1.2,
    0.1
  },
  {
    -0.4,
    -1.2,
    0.1
  },
  {
    0.4,
    -1.8,
    0.1
  },
  {
    -0.4,
    -1.8,
    0.1
  },
  {
    0,
    -2.4,
    0.1
  }
}
textures0 = {}
textures1 = {}
textures2 = {}
function startJob()
  removeEventHandler("onClientRender", root, window)
  windows.main = false
  windows.upgrades = false
  windows.background = false
  windows.level = false
  showCursor(false)
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
  triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "plrJob", localPlayer, true)
  textures1 = {
    bag_money_icon = dxCreateTexture("img/bag_money_icon.png"),
    truck_icon = dxCreateTexture("img/truck_icon.png"),
    atm_icon = dxCreateTexture("img/atm_icon.png")
  }
  addEventHandler("onClientRender", root, tracking)
  vehiclePos = {
    posVehicle[math.random(1, #posVehicle)][1],
    posVehicle[math.random(1, #posVehicle)][2],
    posVehicle[math.random(1, #posVehicle)][3],
    posVehicle[math.random(1, #posVehicle)][4],
    posVehicle[math.random(1, #posVehicle)][5],
    posVehicle[math.random(1, #posVehicle)][6]
  }
  vehicle = createVehicle(428, posVehicle[math.random(1, #posVehicle)][1], posVehicle[math.random(1, #posVehicle)][2], posVehicle[math.random(1, #posVehicle)][3], posVehicle[math.random(1, #posVehicle)][4], posVehicle[math.random(1, #posVehicle)][5], posVehicle[math.random(1, #posVehicle)][6])
  setElementFrozen(vehicle, true)
  setVehicleDoorOpenRatio(vehicle, 4, 1)
  setVehicleDoorOpenRatio(vehicle, 5, 1)
  posTracking = {
    1218.31,
    -1665.62,
    14.39
  }
  trackingTEXT = "ABY WZI\196\132\196\134 TORB\196\152 KLIKNIJ"
  carBag = 0
  for _FORV_4_, _FORV_5_ in ipairs(table_statistics) do
    if _FORV_5_.ulepszenie_energiczny_konwojent == 1 then
      max_bag = 5
    else
      max_bag = 4
    end
    if _FORV_5_.ulepszenie_tuning_konwojent == 1 then
      setVehicleColor(vehicle, 209, 146, 0, 0, 0, 0)
    end
  end
  setElementData(localPlayer, "blokadawsiadania", true)
end
function endJobAll()
  for _FORV_3_, _FORV_4_ in ipairs(package_objects) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  if isEventHandlerAdded("onClientRender", root, tracking) then
    removeEventHandler("onClientRender", root, tracking)
    for _FORV_3_, _FORV_4_ in pairs(textures2) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures2 = {}
  end
  runningBlock(localPlayer, false)
  triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "giveBag", localPlayer, false)
  unbindKey("k", "down", openComputer)
  if isElement(vehicle) then
    destroyElement(vehicle)
  end
  if isElement(markerEND) then
    destroyElement(markerEND)
  end
  if isElement(blip) then
    destroyElement(blip)
  end
  triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "destroyVehicle", localPlayer)
  trackingVehicleStatus = false
  setElementData(localPlayer, "blokadawsiadania", false)
  triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "plrJob1", localPlayer, false)
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == markerStartJob then
      if getPedOccupiedVehicle(_ARG_0_) then
        return
      end
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        game_photo = dxCreateTexture("img/game_photo.png"),
        lock_icon = dxCreateTexture("img/lock_icon.png"),
        unlock_icon = dxCreateTexture("img/unlock_icon.png"),
        dolar1_icon = dxCreateTexture("img/dolar_icon.png"),
        requirements_icon = dxCreateTexture("img/requirements_icon.png"),
        finishline_icon = dxCreateTexture("img/finishline_icon.png"),
        tuning_icon = dxCreateTexture("img/tuning_icon.png"),
        off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
        info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
        improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
        start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
        stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
        level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
        level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
        level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
        level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
        condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
        energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png")
      }
      addEventHandler("onClientRender", root, window)
      windows.main = true
      windows.background = true
      windows.upgrades = false
      windows.level = false
      triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      showCursor(true)
    end
    if source == markerEND then
      endJobAll()
      triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "plrJob", localPlayer, false)
      startJob()
      exports.st_gui:showPlayerNotification("Udaj si\196\153 zapakowa\196\135 torby pieni\196\153dzy do pojazdu", "info")
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_13_, _FORV_14_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 250,
          icon = textures.dolar1_icon,
          status = _FORV_14_.ulepszenie_zarobek_konwojent,
          nameDatabase = "ulepszenie_zarobek_konwojent"
        },
        {
          name = "Kondycja",
          description = "Dzi\196\153ki temu ulepszeniu poruszasz si\196\153 szybciej",
          price = 150,
          icon = textures.condition_icon,
          status = _FORV_14_.ulepszenie_kondycja_konwojent,
          nameDatabase = "ulepszenie_kondycja_konwojent"
        },
        {
          name = "Energiczny",
          description = "Dodaje jedno zlecenie wi\196\153cej",
          price = 300,
          icon = textures.energy_icon,
          status = _FORV_14_.ulepszenie_energiczny_konwojent,
          nameDatabase = "ulepszenie_energiczny_konwojent"
        },
        {
          name = "Szybkie zako\197\132czenie",
          description = "Ko\197\132czysz prac\196\153 od razu po rozwiezieniu wszystkich toreb",
          price = 500,
          icon = textures.finishline_icon,
          status = _FORV_14_.ulepszenie_zakonczenie_konwojent,
          nameDatabase = "ulepszenie_zakonczenie_konwojent"
        },
        {
          name = "Zmodyfikowany pojazd",
          description = "Tw\195\179j pojazd s\197\130u\197\188bowy jest ulepszony",
          price = 400,
          icon = textures.tuning_icon,
          status = _FORV_14_.ulepszenie_tuning_konwojent,
          nameDatabase = "ulepszenie_tuning_konwojent"
        }
      }
    end
  elseif _ARG_0_ == "prepareToDrive" then
    setTimer(function()
      fadeCamera(true)
      exports.st_gui:showPlayerNotification("Zapakowano wszystkie torby, kliknij \"k\" aby otworzy\196\135 komputer", "info")
    end, 2000, 1)
    bindKey("k", "down", openComputer)
    bag_left = max_bag
    attachPackagesToVehicle(_ARG_1_, bag_left)
    colVehTracking = createColSphere(0, 0, 0, 1)
    attachElements(colVehTracking, _ARG_1_, 0, -3, 0)
    addEventHandler("onClientVehicleEnter", _ARG_1_, function(_ARG_0_, _ARG_1_)
      setVehicleDoorOpenRatio(_UPVALUE0_, 4, 0, 2000)
      setVehicleDoorOpenRatio(_UPVALUE0_, 5, 0, 2000)
      trackingVehicleStatus = false
    end)
    addEventHandler("onClientVehicleExit", _ARG_1_, function(_ARG_0_, _ARG_1_)
      if _ARG_0_ == localPlayer then
        setVehicleDoorOpenRatio(_UPVALUE0_, 4, 1, 2000)
        setVehicleDoorOpenRatio(_UPVALUE0_, 5, 1, 2000)
        trackingVehicleStatus = true
      end
    end)
    vehicle_server = _ARG_1_
  end
end)
function attachPackagesToVehicle(_ARG_0_, _ARG_1_)
  if not _ARG_0_ or not _ARG_1_ then
    return
  end
  if #package_objects > 0 then
    for _FORV_5_, _FORV_6_ in ipairs(package_objects) do
      if isElement(_FORV_6_) then
        destroyElement(_FORV_6_)
      end
    end
  end
  package_objects = {}
  if _ARG_1_ ~= 0 then
    for _FORV_5_, _FORV_6_ in ipairs(packages_positions) do
      setElementCollisionsEnabled(createObject(1550, getElementPosition(_ARG_0_)), false)
      table.insert(package_objects, (createObject(1550, getElementPosition(_ARG_0_))))
      attachElements(createObject(1550, getElementPosition(_ARG_0_)), _ARG_0_, _FORV_6_[1], _FORV_6_[2], _FORV_6_[3])
      if _FORV_5_ == _ARG_1_ then
        break
      end
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
function openComputer()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if blockComputer then
    return
  end
  if not getElementData(localPlayer, "player:job") then
    return
  end
  if getElementData(localPlayer, "player:job") ~= "Konwojent bankowy" then
    return
  end
  if windows.computer == true then
    removeEventHandler("onClientRender", root, window1)
    windows.computer = false
    for _FORV_5_, _FORV_6_ in pairs(textures2) do
      if isElement(_FORV_6_) then
        destroyElement(_FORV_6_)
      end
    end
    textures2 = {}
    showCursor(false)
    unbindKey("mouse_wheel_up", "down", scrollBigMap)
    unbindKey("mouse_wheel_down", "down", scrollBigMap)
    removeEventHandler("onClientClick", root, moveBigMap)
  else
    textures2 = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      player = dxCreateTexture("img/player.png"),
      blip = dxCreateTexture("img/blip.png"),
      map = dxCreateTexture("img/map.png")
    }
    addEventHandler("onClientRender", root, window1)
    windows.computer = true
    showCursor(true, false)
    dxSetTextureEdge(textures2.map, "border", tocolor(110, 158, 204, 255))
    bindKey("mouse_wheel_up", "down", scrollBigMap)
    bindKey("mouse_wheel_down", "down", scrollBigMap)
    addEventHandler("onClientClick", root, moveBigMap)
  end
end
function tracking()
  if posTracking and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) then
    if trackingTEXT == "ABY WZI\196\132\196\134 TORB\196\152 KLIKNIJ" then
      imgTracking = textures1.bag_money_icon
    elseif trackingTEXT == "ABY ODDA\196\134 TORB\196\152 " .. carBag + 1 .. "/" .. max_bag .. " KLIKNIJ" then
      imgTracking = textures1.truck_icon
    elseif trackingTEXT == "PODEJD\197\185 I ROZPAKUJ TORB\196\152" then
      imgTracking = textures1.atm_icon
      if getElementData(localPlayer, "end_unpacking_escort") then
        setElementData(localPlayer, "end_unpacking_escort", false)
        posTracking = false
        triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "giveBag", localPlayer)
        blockComputer = false
        hold_package = false
        windows.select = false
        runningBlock(localPlayer, false)
        for _FORV_12_, _FORV_13_ in ipairs(table_statistics) do
          if _FORV_13_.ulepszenie_zarobek_konwojent == 1 then
            moneyJob = math.random(24000, 28500)
          else
            moneyJob = math.random(22500, 24000)
          end
        end
        if getElementData(localPlayer, "player:premium") then
          exp = 3
          moneyPremium = 500
        else
          exp = 2
          moneyPremium = 0
        end
        exports.ST_levelsystem:addExp(exp)
        for _FORV_12_, _FORV_13_ in ipairs(table_statistics) do
          if _FORV_13_.ulepszenie_zarobek_konwojent == 1 then
            moneyUpgrade = 750
          else
            moneyUpgrade = 0
          end
        end
        if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "KonwojentBankowy" then
          moneyJob = moneyJob * getElementData(localPlayer, "player:bonusJob").addMoney
        end
        if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
          moneyJob = moneyJob * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
        end
        exports.st_gui:showPlayerNotification("Pomy\197\155lnie wypakowano pieni\196\133dze.\nOtrzymujesz " .. przecinek(math.floor(moneyJob) + moneyADD + moneyUpgrade) .. " PLN", "money")
        triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "wages", localPlayer, {
          math.floor(moneyJob) + moneyADD + moneyUpgrade,
          5327523
        })
        windows.select = false
        idSelect = nil
        posAtm = nil
        idATM = nil
        if isElement(blip) then
          destroyElement(blip)
        end
        if #table_course == 0 then
          hold_package = true
          for _FORV_15_, _FORV_16_ in ipairs(table_statistics) do
            if _FORV_16_.ulepszenie_zakonczenie_konwojent == 1 then
              endJobAll()
              fadeCamera(false)
              setTimer(function()
                triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "tpPos", localPlayer, {
                  1223.14,
                  -1653.85,
                  13.57
                })
              end, 1000, 1)
              setTimer(function()
                fadeCamera(true)
              end, 2000, 1)
              triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "plrJob", localPlayer, false)
              startJob()
              exports.st_gui:showPlayerNotification("Udaj si\196\153 zapakowa\196\135 torby pieni\196\153dzy do pojazdu", "info")
            else
              setTimer(function()
                exports.st_gui:showPlayerNotification("Rozwieziono wszystkie torby\nWr\195\179\196\135 na baz\196\153 aby zako\197\132czy\196\135 prac\196\153", "info")
                markerEND = createMarker(1234.81, -1648.11, 12.67, "cylinder", 3, 255, 255, 255, 255)
                blip = createBlipAttachedTo(markerEND, 41)
              end, 2500, 1)
            end
          end
        end
      end
    elseif trackingTEXT == "WYJMIJ TORB\196\152 Z POJAZDU!" then
      imgTracking = textures1.atm_icon
    end
    dxDrawImage(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, imgTracking, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    if 2 > math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) then
      if getKeyState("Q") then
        if trackingTEXT == "ABY WZI\196\132\196\134 TORB\196\152 KLIKNIJ" then
          posTracking = {
            vehiclePos[1],
            vehiclePos[2] - 3,
            vehiclePos[3] + 0.5
          }
          setTimer(function()
            trackingTEXT = "ABY ODDA\196\134 TORB\196\152 " .. carBag + 1 .. "/" .. max_bag .. " KLIKNIJ"
            exports.st_gui:showPlayerNotification("Zanie\197\155 torb\196\153 do pojazdu", "info")
          end, 500, 1)
          runningBlock(localPlayer, true)
          triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "giveBag", localPlayer, true)
        elseif trackingTEXT == "ABY ODDA\196\134 TORB\196\152 " .. carBag + 1 .. "/" .. max_bag .. " KLIKNIJ" then
          runningBlock(localPlayer, false)
          if carBag >= max_bag - 1 then
            carBag = carBag + 1
            attachPackagesToVehicle(vehicle, carBag)
            triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "giveBag", localPlayer)
            setTimer(function()
              if isElement(vehicle) then
                destroyElement(vehicle)
              end
              for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
                triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "createVehicle", localPlayer, vehiclePos, _FORV_4_.ulepszenie_tuning_konwojent)
              end
              for _FORV_3_, _FORV_4_ in ipairs(package_objects) do
                destroyElement(_FORV_4_)
              end
            end, 1000, 1)
            table_course = {}
            for _FORV_12_ = 1, max_bag do
              table.insert(table_course, {
                pos = {
                  amt_positions[math.random(1, #amt_positions)][1],
                  amt_positions[math.random(1, #amt_positions)][2],
                  amt_positions[math.random(1, #amt_positions)][3]
                },
                id = amt_positions[math.random(1, #amt_positions)][7]
              })
            end
            carBag = 0
            posTracking = false
            fadeCamera(false)
          else
            posTracking = {
              1218.31,
              -1665.62,
              14.39
            }
            setTimer(function()
              trackingTEXT = "ABY WZI\196\132\196\134 TORB\196\152 KLIKNIJ"
            end, 500, 1)
            carBag = carBag + 1
            attachPackagesToVehicle(vehicle, carBag)
            exports.st_gui:showPlayerNotification("Id\197\186 po nastepn\196\133 torb\196\153, pozosta\197\130e torby: " .. max_bag - carBag .. "", "info")
            triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "giveBag", localPlayer)
          end
        end
      end
      dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 86 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 85 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      if trackingTEXT == "WYJMIJ TORB\196\152 Z POJAZDU!" or trackingTEXT == "PODEJD\197\185 I ROZPAKUJ TORB\196\152" then
        dxDrawText(trackingTEXT, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 117 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      else
        dxDrawText(trackingTEXT, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 93 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 10 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 138 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      end
    end
  end
  if trackingVehicleStatus and getScreenFromWorldPosition(getElementPosition(colVehTracking)) and getScreenFromWorldPosition(getElementPosition(colVehTracking)) then
    if not blockComputer then
      return
    end
    dxDrawImage(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 25 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 65 / zoom, 50 / zoom, 50 / zoom, textures1.truck_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) .. "m", getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 2, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) .. "m", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
    if 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 86 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 85 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      if not hold_package then
        dxDrawText("ABY WZI\196\132\196\134 TORB\196\152 KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      else
        dxDrawText("ABY ODDA\196\134 TORB\196\152 KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      end
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("Q", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      if getKeyState("Q") then
        if not hold_package then
          if click then
            return
          end
          click = true
          trackingTEXT = "PODEJD\197\185 I ROZPAKUJ TORB\196\152"
          triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "giveBag", localPlayer, true)
          runningBlock(localPlayer, true)
          bag_left = bag_left - 1
          setTimer(function()
            attachPackagesToVehicle(vehicle_server, bag_left)
          end, 600, 1)
          hold_package = true
          setTimer(function()
            click = false
          end, 1500, 1)
          triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "plrJob1", localPlayer, idATM)
        else
          if click then
            return
          end
          click = true
          trackingTEXT = "WYJMIJ TORB\196\152 Z POJAZDU!"
          runningBlock(localPlayer, false)
          triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "giveBag", localPlayer, false)
          bag_left = bag_left + 1
          attachPackagesToVehicle(vehicle_server, bag_left)
          hold_package = false
          setTimer(function()
            click = false
          end, 1500, 1)
          triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "plrJob1", localPlayer, true)
        end
      end
    end
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
      if _FORV_6_.ulepszenie_kondycja_konwojent == 1 then
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
getResourceName(getThisResource(), true, 625592352)
return
