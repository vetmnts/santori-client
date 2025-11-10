markerStartJob = createMarker(-2274.35, 536.31, 34.28, "cylinder", 3, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
createBlip(-2274.35, 536.31, 35.18, 46, 2, 0, 0, 0, 0, 0, 250)
table_statistics = {}
textures0 = {}
textures1 = {}
route = {
  {
    -2265.22,
    719.18,
    49.3
  },
  {
    -2264.82,
    1030.71,
    83.7
  },
  {
    -2053.61,
    1291.29,
    7.13
  },
  {
    -1728.67,
    1342.26,
    7.04
  },
  {
    -1528.3,
    941.14,
    7.04
  },
  {
    -2001.94,
    883.02,
    45.3
  },
  {
    -1724.23,
    848.81,
    24.73
  },
  {
    -1544.63,
    741.13,
    7.03
  },
  {
    -1852.78,
    603.46,
    35.02
  },
  {
    -2006.63,
    139.52,
    27.54
  },
  {
    -2166.9,
    -22.75,
    35.17
  },
  {
    -2251.57,
    136.25,
    35.17
  },
  {
    -2264.84,
    524.64,
    35.16
  }
}
route2 = {
  {
    -2264.91,
    795.4,
    49.3
  },
  {
    -2231.75,
    1274.6,
    38.73
  },
  {
    -1911.56,
    1318.9,
    7.04
  },
  {
    -1584,
    1099.8,
    7.05
  },
  {
    -1864.48,
    921.13,
    35.02
  },
  {
    -1868.19,
    848.93,
    35.01
  },
  {
    -1540.11,
    788.22,
    7.04
  },
  {
    -1711.53,
    675.29,
    24.73
  },
  {
    -2003.75,
    444.51,
    35.02
  },
  {
    -2051.79,
    30.38,
    35.17
  },
  {
    -2209.55,
    -70.02,
    35.17
  },
  {
    -2255.71,
    -38.97,
    35.17
  },
  {
    -2251.86,
    126.21,
    35.17
  },
  {
    -2275.15,
    386.13,
    34.51
  },
  {
    -2348.08,
    508.57,
    29.6
  },
  {
    -2264.73,
    527.91,
    35.24
  }
}
route3 = {
  {
    -2265.22,
    719.18,
    49.3
  },
  {
    -2264.82,
    1030.71,
    83.7
  },
  {
    -2053.61,
    1291.29,
    7.13
  },
  {
    -1728.67,
    1342.26,
    7.04
  },
  {
    -1528.3,
    941.14,
    7.04
  },
  {
    -2001.94,
    883.02,
    45.3
  },
  {
    -1724.23,
    848.81,
    24.73
  },
  {
    -1544.63,
    741.13,
    7.03
  },
  {
    -1852.78,
    603.46,
    35.02
  },
  {
    -2006.63,
    139.52,
    27.54
  },
  {
    -2166.9,
    -22.75,
    35.17
  },
  {
    -2251.57,
    136.25,
    35.17
  },
  {
    -2264.84,
    524.64,
    35.16
  }
}
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
  triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "plrJob", localPlayer, true)
  triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "createVehicle", localPlayer)
  textures1 = {
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    ulgowy = dxCreateTexture("img/ulgowy.png"),
    normalny = dxCreateTexture("img/normalny.png"),
    tramstop_icon = dxCreateTexture("img/tramstop_icon.png"),
    smile = dxCreateTexture("img/smile.png"),
    neutral = dxCreateTexture("img/neutral.png"),
    angry = dxCreateTexture("img/angry.png")
  }
  addEventHandler("onClientRender", root, tracking)
  trasa = math.random(1, 3)
  if trasa == 1 then
    route = route
  elseif trasa == 2 then
    route = route2
  elseif trasa == 3 then
    route = route3
  end
  maxTarget = #route
  jobTarget = 0
  showMarker()
  zadowolenie = 100
  tick = getTickCount()
  bindKey("F", "down", exitGUI)
  bindKey("enter", "down", exitGUI)
end
function showMarker()
  jobTarget = jobTarget + 1
  jobMarker = createMarker(route[jobTarget][1], route[jobTarget][2], route[jobTarget][3] - 5.9, "cylinder", 3.3, 246, 255, 0, 255)
  posTracking = {
    route[jobTarget][1],
    route[jobTarget][2],
    route[jobTarget][3]
  }
  addEventHandler("onClientMarkerHit", jobMarker, enterTramStom)
end
function enterTramStom(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if #route < jobTarget and getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    if jobTarget == #route and not getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    if math.ceil((getElementVelocity((getPedOccupiedVehicle(_ARG_0_))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(_ARG_0_))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(_ARG_0_))) ^ 2) ^ 0.5 * 161) > 40 then
      zadowolenie = zadowolenie - 10
    end
    if getElementModel((getPedOccupiedVehicle(_ARG_0_))) ~= 449 then
      return
    end
    if math.ceil((getElementVelocity((getPedOccupiedVehicle(_ARG_0_))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(_ARG_0_))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(_ARG_0_))) ^ 2) ^ 0.5 * 161) > 30 then
      exports.st_gui:showPlayerNotification("Nie mo\197\188esz jecha\196\135 wi\196\153cej ni\197\188 30 km/h", "info")
      return
    end
    if windows.endJob == true then
      return
    end
    if jobMarker and isElement(jobMarker) then
      destroyElement(jobMarker)
      jobMarker = nil
    end
    money = 1500
    for _FORV_11_, _FORV_12_ in ipairs(table_statistics) do
      if _FORV_12_.ulepszenie_zarobek_tramwajarz == 1 then
        money = money * 1.1
      end
    end
    exp = 1
    if getElementData(localPlayer, "player:premium") then
      money = money * 1.1
      exp = exp + 1
    end
    if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Tramwajarz" then
      money = money * getElementData(localPlayer, "player:bonusJob").addMoney
    end
    if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
      money = money * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
    end
    money = money + moneyADD
    money = math.floor(money * 1.1)
    triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 2)
    if zadowolenie < 30 then
      money = 0
    elseif 40 < zadowolenie and zadowolenie < 65 then
      money = money - 550
    elseif zadowolenie > 65 then
      money = money - 0
    end
    triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "wages", localPlayer, {
      math.floor(money),
      642743
    })
    exports.ST_levelsystem:addExp(exp)
    exports.st_gui:showPlayerNotification("Za przyjazd na przystanek otrzymujesz " .. math.floor(money) .. " PLN oraz " .. exp .. " EXP", "money")
    if jobTarget == #route then
      if jobMarker and isElement(jobMarker) then
        destroyElement(jobMarker)
        jobMarker = nil
      end
      trasa = math.random(1, 3)
      if trasa == 1 then
        route = route
      elseif trasa == 2 then
        route = route2
      elseif trasa == 3 then
        route = route3
      end
      jobTarget = 0
      showMarker()
      zadowolenie = 100
    else
      setElementSpeed(getPedOccupiedVehicle(localPlayer), "km/h", 0)
      ileos = math.random(2, 3)
      for _FORV_13_, _FORV_14_ in ipairs(table_statistics) do
        if _FORV_14_.ulepszenie_bilety_autobusy == 1 then
          ileos = ileos + 1
        end
      end
      randomBilet()
      addEventHandler("onClientRender", root, window)
      windows.ticket = true
      showCursor(true)
    end
  end
end
function randomBilet()
  bilet = math.random(1, 2)
  if bilet == 1 then
    jakibilet = "#ff7400NORMALNY#d2d2d2"
  elseif bilet == 2 then
    jakibilet = "#ffff00ULGOWY#d2d2d2"
  end
end
function endJobAll()
  if isEventHandlerAdded("onClientRender", root, tracking) then
    removeEventHandler("onClientRender", root, tracking)
    for _FORV_3_, _FORV_4_ in pairs(textures1) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures1 = {}
  end
  triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "destroyVehicle", localPlayer)
  trackingVehicleStatus = false
  triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "plrJob", localPlayer, false)
  unbindKey("F")
  unbindKey("enter")
  if jobMarker and isElement(jobMarker) then
    destroyElement(jobMarker)
    jobMarker = nil
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == markerStartJob then
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
    triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    showCursor(true)
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_10_, _FORV_11_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 1750,
          icon = textures.dolar1_icon,
          status = _FORV_11_.ulepszenie_zarobek_tramwajarz,
          nameDatabase = "ulepszenie_zarobek_tramwajarz"
        },
        {
          name = "Energiczny",
          description = "Sprzedajesz 1 bilet wi\196\153cej",
          price = 1250,
          icon = textures.dolar1_icon,
          status = _FORV_11_.ulepszenie_bilety_tramwajarz,
          nameDatabase = "ulepszenie_bilety_tramwajarz"
        }
      }
    end
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
function tracking()
  if getTickCount() - tick > 1400 then
    tick = getTickCount()
    zadowolenie = zadowolenie - 1
    if zadowolenie < 0 then
      zadowolenie = 0
    end
  end
  dxDrawImage(windowPos1.x, windowPos1.y - 50 / zoom, windowPos1.w, windowPos1.h, textures1.background, 0, 0, 0, tocolor(25, 25, 25, 200), false)
  dxDrawText("ZADOWOLENIE", windowPos1.x + 860 / zoom, windowPos1.y - 110 / zoom, windowPos1.w, windowPos1.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
  dxDrawText(zadowolenie .. "%", windowPos1.x + 860 / zoom, windowPos1.y - 30 / zoom, windowPos1.w, windowPos1.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
  if zadowolenie < 41 then
    dxDrawImage(windowPos1.x + 20 / zoom, windowPos1.y - 30 / zoom, 85 / zoom, 85 / zoom, textures1.angry, 0, 0, 0, tocolor(255, 0, 0, 220), false)
    dxDrawText("Pasa\197\188erowie s\196\133 \197\186li!", windowPos1.x + 860 / zoom, windowPos1.y + 40 / zoom, windowPos1.w, windowPos1.h, tocolor(255, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, false, false)
  elseif zadowolenie > 40 and zadowolenie < 66 then
    dxDrawImage(windowPos1.x + 20 / zoom, windowPos1.y - 30 / zoom, 85 / zoom, 85 / zoom, textures1.neutral, 0, 0, 0, tocolor(186, 162, 4, 220), false)
    dxDrawText("Pasa\197\188erowie s\196\133 neutralni", windowPos1.x + 860 / zoom, windowPos1.y + 40 / zoom, windowPos1.w, windowPos1.h, tocolor(186, 162, 4, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, false, false)
  elseif zadowolenie > 65 then
    dxDrawImage(windowPos1.x + 20 / zoom, windowPos1.y - 30 / zoom, 85 / zoom, 85 / zoom, textures1.smile, 0, 0, 0, tocolor(4, 224, 0, 220), false)
    dxDrawText("Pasa\197\188erowie s\196\133 zadowoleni", windowPos1.x + 860 / zoom, windowPos1.y + 40 / zoom, windowPos1.w, windowPos1.h, tocolor(4, 224, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, false, false)
  end
  if posTracking and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) then
    dxDrawImage(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, textures1.tramstop_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
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
function exitGUI()
  if windows.ticket == true then
    exports.st_gui:showPlayerNotification("Najpierw sprzedaj bilety!", "error")
    return
  end
  addEventHandler("onClientRender", root, window)
  windows.endJob = true
  showCursor(true, false)
end
function setElementSpeed(_ARG_0_, _ARG_1_, _ARG_2_)
  if getElementSpeed(_ARG_0_, _ARG_1_ or 0) and getElementSpeed(_ARG_0_, _ARG_1_ or 0) ~= 0 then
    if (tonumber(_ARG_2_) or 0) / getElementSpeed(_ARG_0_, _ARG_1_ or 0) ~= (tonumber(_ARG_2_) or 0) / getElementSpeed(_ARG_0_, _ARG_1_ or 0) then
      return false
    end
    return setElementVelocity(_ARG_0_, getElementVelocity(_ARG_0_) * ((tonumber(_ARG_2_) or 0) / getElementSpeed(_ARG_0_, _ARG_1_ or 0)), getElementVelocity(_ARG_0_) * ((tonumber(_ARG_2_) or 0) / getElementSpeed(_ARG_0_, _ARG_1_ or 0)), getElementVelocity(_ARG_0_) * ((tonumber(_ARG_2_) or 0) / getElementSpeed(_ARG_0_, _ARG_1_ or 0)))
  end
  return false
end
function getElementSpeed(_ARG_0_, _ARG_1_)
  assert(isElement(_ARG_0_), "Bad argument 1 @ getElementSpeed (element expected, got " .. type(_ARG_0_) .. ")")
  assert(getElementType(_ARG_0_) == "player" or getElementType(_ARG_0_) == "ped" or getElementType(_ARG_0_) == "object" or getElementType(_ARG_0_) == "vehicle" or getElementType(_ARG_0_) == "projectile", "Invalid element type @ getElementSpeed (player/ped/object/vehicle/projectile expected, got " .. getElementType(_ARG_0_) .. ")")
  assert((_ARG_1_ == nil or type(_ARG_1_) == "string" or type(_ARG_1_) == "number") and (_ARG_1_ == nil or tonumber(_ARG_1_) and (tonumber(_ARG_1_) == 0 or tonumber(_ARG_1_) == 1 or tonumber(_ARG_1_) == 2) or _ARG_1_ == "m/s" or _ARG_1_ == "km/h" or _ARG_1_ == "mph"), "Bad argument 2 @ getElementSpeed (invalid speed unit)")
  _ARG_1_ = _ARG_1_ == nil and 0 or not tonumber(_ARG_1_) and _ARG_1_ or tonumber(_ARG_1_)
  return (Vector3(getElementVelocity(_ARG_0_)) * ((_ARG_1_ == 0 or _ARG_1_ == "m/s") and 50 or (_ARG_1_ == 1 or _ARG_1_ == "km/h") and 180 or 111.84681456)).length
end
getResourceName(getThisResource(), true, 857825255)
return
