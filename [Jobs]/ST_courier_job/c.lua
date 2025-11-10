createBlip(1133.66, 1266.73, 10.85, 46, 2, 0, 0, 0, 0, 0, 250)
createBlip(855.66, -1203.37, 24.41, 46, 2, 0, 0, 0, 0, 0, 250)
createBlip(-1699.72, -79.42, 3.57, 46, 2, 0, 0, 0, 0, 0, 250)
line = {
  {
    1140.05,
    1276.03,
    10.89,
    0,
    1
  },
  {
    1129.73,
    1276.03,
    10.87,
    0,
    2
  },
  {
    1119.42,
    1276.03,
    10.87,
    0,
    3
  },
  {
    846.14,
    -1205.52,
    17.1,
    0,
    4
  },
  {
    856.25,
    -1205.52,
    17.11,
    0,
    5
  },
  {
    866.61,
    -1205.52,
    17.09,
    0,
    6
  },
  {
    -1711.67,
    -85,
    3.67,
    0,
    7
  },
  {
    -1702,
    -85,
    3.68,
    0,
    8
  },
  {
    -1691.51,
    -85,
    3.68,
    0,
    9
  }
}
bindKey("l", "down", function()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
    return
  end
  if blockOpenGuiTarget then
    return
  end
  if blockOpenGuiP then
    return
  end
  if getVehicleController((getPedOccupiedVehicle(localPlayer))) ~= localPlayer then
    if not getElementData(localPlayer, "player:job") then
      return
    end
    if getElementData(localPlayer, "player:job") ~= "Kurier" then
      return
    end
  end
  if not _UPVALUE0_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
    exports.st_gui:showPlayerNotification("Tym pojazdem nie mo\197\188esz tu pracowa\196\135", "error")
    return
  end
  if getElementData(localPlayer, "player:lvl") < 10 then
    exports.st_gui:showPlayerNotification("Musisz posiada\196\135 10 level aby pracowa\196\135 jako kurier", "error")
    return
  end
  playerX, playerY = getElementPosition(localPlayer)
  if windows.computer == true or windows.startJob == true or windows.upgrades == true or windows.level == true or windows.selectFriends == true then
    removeEventHandler("onClientRender", root, window1)
    windows.computer = false
    windows.startJob = false
    windows.upgrades = false
    windows.level = false
    windows.selectFriends = false
    showCursor(false)
    select = false
    for _FORV_4_, _FORV_5_ in pairs(textures) do
      if isElement(_FORV_5_) then
        destroyElement(_FORV_5_)
      end
    end
    textures = {}
    if isEventHandlerAdded("onClientClick", root, moveBigMap) then
      removeEventHandler("onClientClick", root, moveBigMap)
    end
  else
    if trackingLoadingPack then
      exports.st_gui:showPlayerNotification("Najpierw zapakuj paczki", "error")
      return
    end
    if isElement(komputer) then
      exports.st_gui:showPlayerNotification("Najpierw zapakuj paczki", "error")
      return
    end
    if blockOpenGui then
      exports.st_gui:showPlayerNotification("Zaczekaj na odpowied\197\186 wsp\195\179\197\130pracy", "error")
      return
    end
    triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    if getElementData(localPlayer, "player:job") == "Kurier" then
      if getElementData(idVehGlobal, "vehicle:id") == getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
        triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "showCourse", localPlayer, getElementData(idVehGlobal, "vehicle:id"))
        loadTextures()
        addEventHandler("onClientRender", root, window1)
        showCursor(true, false)
        windows.startJob = false
        windows.computer = true
        select = false
      end
    elseif getVehicleController((getPedOccupiedVehicle(localPlayer))) then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_job_Courier") then
        return
      end
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "showCourse", localPlayer, getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id"))
      loadTextures()
      addEventHandler("onClientRender", root, window1)
      showCursor(true, false)
      windows.startJob = true
      windows.computer = false
      select = false
    end
  end
end)
function tracking()
  if not posLoadingPackVehicles and #table_course <= 0 then
    for _FORV_6_, _FORV_7_ in ipairs(line) do
      if math.floor(getDistanceBetweenPoints3D(_FORV_7_[1], _FORV_7_[2], _FORV_7_[3], getElementPosition(localPlayer))) < 20 then
        if isLineOfSightClear(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 3)
        else
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 3)
        end
        if isLineOfSightClear(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 3)
        else
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 3)
        end
        if isLineOfSightClear(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, tocolor(255, 187, 5, 255), 3)
        else
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 3)
        end
        if isLineOfSightClear(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 3)
        else
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 3)
        end
        if isLineOfSightClear(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, tocolor(255, 187, 0, 255), 2)
        else
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, tocolor(255, 0, 0, 255), 2)
        end
        if isLineOfSightClear(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, tocolor(255, 187, 0, 255), 2)
        else
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, tocolor(255, 0, 0, 255), 2)
        end
        if isLineOfSightClear(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, tocolor(255, 187, 5, 255), 2)
        else
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, tocolor(255, 0, 0, 255), 2)
        end
        if isLineOfSightClear(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), getGroundPosition(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[4])), ({
          _FORV_7_[1],
          _FORV_7_[2],
          _FORV_7_[3],
          _FORV_7_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, tocolor(255, 187, 0, 255), 2)
        else
          dxDrawLine3D(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), getGroundPosition(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.sin(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 180)) - 2.7 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4] + 270)) - 6.9 * math.cos(-math.rad(({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[4])), ({
            _FORV_7_[1],
            _FORV_7_[2],
            _FORV_7_[3],
            _FORV_7_[4]
          })[3] + 5) + 0.3, tocolor(255, 0, 0, 255), 2)
        end
      end
    end
  end
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    selfTracking.time = selfTracking.time + 1
  end
  dxDrawRoundedRectangle(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, 15 / zoom, tocolor(25, 25, 25, 200))
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(selfTracking.time) .. "", windowsUP.x + 10 / zoom, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("EXP: #ffbf00" .. selfTracking.exp .. "", windowsUP.x + 10 / zoom, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("ZAROBEK: #ffbf00" .. przecinek(selfTracking.money) .. " #f0f0f0PLN", windowsUP.x, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  if trackingLoadingPack then
    dxDrawText("ZAPAKOWANE: #ffbf00" .. selfLoadingPack.oddanePaczki .. "#ffffff/#ffbf00" .. selfLoadingPack.paczkiDoOddania .. "", windowsUP.x, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  else
    dxDrawText("LEVEL: #ffbf00" .. selectLevel, windowsUP.x, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  end
  if associateUserSelect then
    if getElementData(associateUserSelect, "player:sid") then
      dxDrawImage(windowsUP.x - 15 / zoom, windowsUP.y - 10 / zoom, 70 / zoom, 70 / zoom, texturesTracking.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if avatarIMG then
        dxDrawImage(windowsUP.x - 15 / zoom, windowsUP.y - 10 / zoom, 70 / zoom, 70 / zoom, avatarIMG, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText("Wsp\195\179\197\130praca z #ffbf00" .. getPlayerName(associateUserSelect) .. "", windowsUP.x + 60 / zoom, windowsUP.y - 85 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
    else
      endJobAll()
    end
  else
    dxDrawText("KURIER - LEVEL #00a118" .. selectLevel, windowsUP.x, windowsUP.y - 60 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  end
  for _FORV_10_, _FORV_11_ in ipairs(table_paczki) do
    if getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) and getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) then
      dxDrawImage(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, texturesTracking.courier_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 2, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
      dxDrawText("#ffe100" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
      if 2 > math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) then
        if getKeyState("Q") and hold_package and isElement(pedBlip[_FORV_11_.id]) and isElement(pedBot[_FORV_11_.id]) then
          if getElementData(localPlayer, "player:premium") then
            exports.ST_levelsystem:addExp(3)
          else
            exports.ST_levelsystem:addExp(2)
          end
          for _FORV_20_, _FORV_21_ in ipairs(table_statistics) do
            if _FORV_21_.ulepszenie_zarobek_kurier == 1 then
            end
          end
          if getElementData(localPlayer, "player:sid") == 5 then
          end
          if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Kurier" then
          end
          if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
          end
          triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "wages", localPlayer, math.floor((math.floor(_FORV_11_.money * moneyADD * 1.1 * 1.1 * 1.1 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")))), getElementData(localPlayer, "player:sid"))
          table.removeValue(table_paczki, _FORV_11_.id)
          if isElement(pedBot[_FORV_11_.id]) then
            destroyElement(pedBot[_FORV_11_.id])
          end
          if isElement(pedBlip[_FORV_11_.id]) then
            destroyElement(pedBlip[_FORV_11_.id])
          end
          triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, false)
          hold_package = false
          runningBlock(localPlayer, false)
          selfSelectOsiedle.oddane = selfSelectOsiedle.oddane + 1
          selfTracking.money = selfTracking.money + math.floor((math.floor(_FORV_11_.money * moneyADD * 1.1 * 1.1 * 1.1 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))))
          selfTracking.exp = selfTracking.exp + 1
          if selfSelectOsiedle.oddane >= selfSelectOsiedle.ilosc then
            selfSelectOsiedle = {}
            table_paczki = {}
            selfSelect = {}
            exports.st_gui:showPlayerNotification("Dostarczono ostatni\196\133 paczk\196\153 klientowi.\nOtrzymujesz " .. przecinek(math.floor((math.floor(_FORV_11_.money * moneyADD * 1.1 * 1.1 * 1.1 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))))) .. " PLN", "money")
            windows.select = false
          else
            exports.st_gui:showPlayerNotification("Dostarczono paczk\196\153 klientowi.\nOtrzymujesz " .. przecinek(math.floor((math.floor(_FORV_11_.money * moneyADD * 1.1 * 1.1 * 1.1 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))))) .. " PLN", "money")
          end
          if associateUserSelect then
            triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendRefreshTable", localPlayer, associateUserSelect, table_paczki, math.floor(_FORV_11_.money), _FORV_11_.id)
          end
        end
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 91 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 90 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        if hold_package then
          dxDrawText("ABY ODDA\196\134 PACZK\196\152 KLIKNIJ", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 93 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 10 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
          dxDrawText("Q", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 138 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
        else
          dxDrawText("NAJPIERW WYJMIJ PACZK\196\152 Z POJAZDU", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 115 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
        end
      end
    end
  end
  if trackingVehicleStatus then
    if posLoadingPackVehicles then
      xPackVeh, yPackVeh, zPackVeh = posLoadingPackVehicles[1], posLoadingPackVehicles[2], posLoadingPackVehicles[3]
    else
      xPackVeh, yPackVeh, zPackVeh = getElementPosition(colVehTracking)
    end
    if getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) and getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) then
      dxDrawImage(getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, texturesTracking.truck_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(xPackVeh, yPackVeh, zPackVeh, getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + 2, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(xPackVeh, yPackVeh, zPackVeh, getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200))
      if 2 > math.floor(getDistanceBetweenPoints3D(xPackVeh, yPackVeh, zPackVeh, getElementPosition(localPlayer))) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) - 91 / zoom, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) - 90 / zoom, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        if trackingLoadingPack then
          if not selfLoadingPack.maPaczke then
            trackingText = "ZAPAKOWANE PACZKI: #ffe100" .. selfLoadingPack.oddanePaczki .. "#ffffff/#ffe100" .. selfLoadingPack.paczkiDoOddania .. ""
          else
            trackingText = "ABY ZAPAKOWA\196\134 PACZK\196\152 KLIKNIJ"
          end
        elseif not hold_package then
          trackingText = "ABY WZI\196\132\196\134 PACZK\196\152 KLIKNIJ"
        else
          trackingText = "ABY ODDA\196\134 PACZK\196\152 KLIKNIJ"
        end
        dxDrawText(trackingText, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + 93 / zoom + 25 / zoom, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200))
        if 25 / zoom == 0 then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) - 10 / zoom, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
          dxDrawText("Q", getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + 138 / zoom, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(xPackVeh, yPackVeh, zPackVeh + 0.1, 200))
        end
        if getKeyState("Q") and not getPedOccupiedVehicle(localPlayer) then
          if trackingLoadingPack then
            if selfLoadingPack.maPaczke then
              if click then
                return
              end
              click = true
              if selfLoadingPack.oddanePaczki + 1 >= selfLoadingPack.paczkiDoOddania then
                triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "setPackVehicle", localPlayer, associateUserSelect, positionsPack, idVehGlobal)
              end
              triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendAddPackLoading", localPlayer, associateUserSelect)
              triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, false)
              runningBlock(localPlayer, false)
              removeEventHandler("onClientVehicleStartEnter", idVehGlobal, onVehEnter1)
              selfLoadingPack.maPaczke = false
              setTimer(function()
                click = false
              end, 1500, 1)
            end
          elseif not hold_package then
            if click then
              return
            end
            click = true
            runningBlock(localPlayer, true)
            triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, true)
            hold_package = true
            setTimer(function()
              click = false
            end, 1500, 1)
          else
            if click then
              return
            end
            click = true
            runningBlock(localPlayer, false)
            triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, false)
            hold_package = false
            setTimer(function()
              click = false
            end, 1500, 1)
          end
        end
      end
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    if _ARG_2_ then
    else
      for _FORV_8_, _FORV_9_ in ipairs(table_statistics) do
        upgrades = {
          {
            name = "Po\197\155pieszny",
            description = "Czas \197\130adowania paczek jest znacznie kr\195\179tszy",
            price = upgradesPKT.timeUGR,
            icon = textures.energy_icon,
            status = _FORV_9_.ulepszenie_czas_kurier,
            nameDatabase = "ulepszenie_czas_kurier"
          },
          {
            name = "Kondycja",
            description = "Dzi\196\153ki temu ulepszeniu poruszasz\nsi\196\153 szybciej",
            price = upgradesPKT.condition,
            icon = textures.condition_icon,
            status = _FORV_9_.ulepszenie_kondycja_kurier,
            nameDatabase = "ulepszenie_kondycja_kurier"
          },
          {
            name = "Wi\196\153kszy zarobek",
            description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
            price = upgradesPKT.profit,
            icon = textures.dolar_icon,
            status = _FORV_9_.ulepszenie_zarobek_kurier,
            nameDatabase = "ulepszenie_zarobek_kurier"
          },
          {
            name = "Energiczny",
            description = "Dodaje jedno zlecenie wi\196\153cej",
            price = upgradesPKT.energy,
            icon = textures.energy_icon,
            status = _FORV_9_.ulepszenie_obrotny_kurier,
            nameDatabase = "ulepszenie_obrotny_kurier"
          }
        }
      end
    end
  elseif _ARG_0_ == "showCourseClient" then
    table_course = _ARG_1_
  elseif _ARG_0_ == "sendOfferJobClient" then
    triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"), true)
    exports.st_gui:showPlayerNotification("Otrzymano zaproszenie wsp\195\179\197\130pracy od gracza " .. getPlayerName(_ARG_1_) .. " kliknij przycisk \"P\" aby zaakceptowa\196\135", "info", 0, 10000)
    blockOpenGuiP = true
    bindKey("P", "down", function()
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      idVehGlobal = _UPVALUE0_
      loadTextures()
      levelJob = {
        {
          levelJob = 1,
          exp = 0,
          moneyJob = "3,600 - 7,200",
          level = 10,
          img = textures.level1_icon,
          money = 1
        },
        {
          levelJob = 2,
          exp = 10,
          moneyJob = "3,600 - 7,200",
          level = 15,
          img = textures.level2_icon,
          money = 1.1
        },
        {
          levelJob = 3,
          exp = 30,
          moneyJob = "3,600 - 7,200",
          level = 25,
          img = textures.level3_icon,
          money = 1.2
        },
        {
          levelJob = 4,
          exp = 50,
          moneyJob = "3,600 - 7,200",
          level = 35,
          img = textures.level4_icon,
          money = 1.3
        }
      }
      if isTimer(timer) then
        killTimer(timer)
      end
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "plrJob", localPlayer, true)
      setElementData(localPlayer, "player_offerTrade", false)
      addEventHandler("onClientRender", root, window1)
      showCursor(true, false)
      windows.computer = false
      windows.startJob = false
      windows.upgrades = false
      windows.level = true
      windows.selectFriends = false
      windows.select = false
      blockOpenGui = true
      blockOpenGuiTarget = true
      blockOpenGuiP = false
      unbindKey("P")
      associateUserSelect = _UPVALUE1_
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendOfferJobAccept", localPlayer, _UPVALUE1_, _UPVALUE0_)
      selfTracking = {}
      selfTracking.money = 0
      selfTracking.time = 0
    end)
    timer = setTimer(function()
      exports.st_gui:showPlayerNotification("Odrzucono ofert\196\153 wsp\195\179\197\130pracy", "info")
      unbindKey("P")
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendOfferJobReject", localPlayer, _UPVALUE0_)
      setElementData(localPlayer, "player_offerTrade", false)
    end, 10500, 1)
  elseif _ARG_0_ == "sendOfferJobRejectClient" then
    exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " odrzuci\197\130 twoje zaproszenie do wsp\195\179\197\130pracy", "error")
    idVehGlobal = nil
    blockOpenGui = false
    blockOpenGuiP = false
  elseif _ARG_0_ == "sendOfferJobAcceptClient" then
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
    triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "plrJob", localPlayer, true)
    blockOpenGui = false
    exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " zaakceptowa\197\130/a twoje zaproszenie do wsp\195\179\197\130pracy", "success")
    associateUserSelect = _ARG_1_
    windows.level = false
    selfTracking = {}
    tick = getTickCount()
    addEventHandler("onClientRender", root, tracking)
    texturesTracking = {
      courier_icon = dxCreateTexture("img/courier_icon.png"),
      truck_icon = dxCreateTexture("img/truck_icon.png"),
      user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png")
    }
    selfTracking.money = 0
    selfTracking.time = 0
    selfTracking.exp = 0
  elseif _ARG_0_ == "sendJobTablePaczkiClient" then
    if getElementData(localPlayer, "player:job") == "Kurier" and associateUserSelect == _ARG_3_ then
      selfSelectOsiedle = {}
      table_paczki = _ARG_1_
      for _FORV_8_, _FORV_9_ in ipairs(table_paczki) do
        pedBot[_FORV_9_.id] = createPed(skins[_FORV_9_.skin], _FORV_9_.pos[1], _FORV_9_.pos[2], _FORV_9_.pos[3], _FORV_9_.pos[4])
        pedBlip[_FORV_9_.id] = createBlip(_FORV_9_.pos[1], _FORV_9_.pos[2], _FORV_9_.pos[3], 0, 1, 255, 191, 0)
        setElementFrozen(pedBot[_FORV_9_.id], true)
      end
      selfSelectOsiedle.idOsiedla = _ARG_2_[1]
      selfSelectOsiedle.posCenter = _ARG_2_[2]
      selfSelectOsiedle.ilosc = _ARG_2_[3]
      selfSelectOsiedle.oddane = _ARG_2_[4]
      exports.st_gui:showPlayerNotification("" .. getPlayerName(_ARG_3_) .. " wybra\197\130 osiedle, udaj si\196\153 dostarczy\196\135 paczki klientom", "info")
    end
  elseif _ARG_0_ == "sendRefreshTableClient" then
    if isElement(pedBlip[_ARG_4_]) then
      table_paczki = _ARG_1_
      selfSelectOsiedle.oddane = selfSelectOsiedle.oddane + 1
      if isElement(pedBot[_ARG_4_]) then
        destroyElement(pedBot[_ARG_4_])
      end
      if isElement(pedBlip[_ARG_4_]) then
        destroyElement(pedBlip[_ARG_4_])
      end
      if getElementData(localPlayer, "player:premium") then
        exports.ST_levelsystem:addExp(3)
      else
        exports.ST_levelsystem:addExp(2)
      end
      for _FORV_9_, _FORV_10_ in ipairs(table_statistics) do
        if _FORV_10_.ulepszenie_zarobek_kurier == 1 then
        end
      end
      if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Kurier" then
      end
      if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
      end
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "wages", localPlayer, math.floor((math.floor(math.floor(_ARG_3_ * moneyADD) * 1.1 * 1.1 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")))), getElementData(localPlayer, "player:sid"))
      selfTracking.money = selfTracking.money + math.floor((math.floor(math.floor(_ARG_3_ * moneyADD) * 1.1 * 1.1 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))))
      selfTracking.exp = selfTracking.exp + 1
      if selfSelectOsiedle.oddane >= selfSelectOsiedle.ilosc then
        selfSelectOsiedle = {}
        table_paczki = {}
        selfSelect = {}
        exports.st_gui:showPlayerNotification("" .. getPlayerName(_ARG_2_) .. " dostarczy\197\130/a ostatni\196\133 paczk\196\153 klientowi, wybierz kolejne osiedle", "info")
        windows.select = false
      else
        exports.st_gui:showPlayerNotification("" .. getPlayerName(_ARG_2_) .. " dostarczy\197\130/a paczk\196\153 klientowi", "info")
      end
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
  elseif _ARG_0_ == "sendStartLoadingPackClient" then
    posLoadingPackVehicles = {
      getElementPosition(colVehTracking)
    }
    if isEventHandlerAdded("onClientRender", root, window1) then
      removeEventHandler("onClientRender", root, window1)
      for _FORV_11_, _FORV_12_ in pairs(textures) do
        if isElement(_FORV_12_) then
          destroyElement(_FORV_12_)
        end
      end
      textures = {}
    end
    windows.computer = false
    windows.startJob = false
    windows.upgrades = false
    windows.level = false
    windows.selectFriends = false
    windows.selectPack = false
    showCursor(false)
    if _ARG_2_ then
      exports.st_gui:showPlayerNotification("" .. getPlayerName(_ARG_1_) .. " uda\197\130/a si\196\153 przygotowywa\196\135 paczki", "info")
    else
      if _ARG_1_ == 1 or _ARG_1_ == 2 or _ARG_1_ == 3 then
        komputer = createMarker(1160.88, 1248.33, 17.32, "cylinder", 3, 246, 255, 0, 255)
      elseif _ARG_1_ == 4 or _ARG_1_ == 5 or _ARG_1_ == 6 then
        komputer = createMarker(825.41, -1170.62, 23.520000000000003, "cylinder", 3, 246, 255, 0, 255)
      elseif _ARG_1_ == 7 or _ARG_1_ == 8 or _ARG_1_ == 9 then
        komputer = createMarker(-1732.5, -50.32, 10.12, "cylinder", 3, 246, 255, 0, 255)
      end
      exports.st_gui:showPlayerNotification("Udaj si\196\153 do biura aby rozpocz\196\133\196\135 \197\130adowanie paczek", "info")
    end
  elseif _ARG_0_ == "sendStartLoadingPack1Client" then
    if _ARG_2_ then
      selfLoadingPack.Pos = _ARG_1_
      selfLoadingPack.oddanePaczki = 0
      selfLoadingPack.paczkiDoOddania = _ARG_2_
      positionsPack = _ARG_3_
      exports.st_gui:showPlayerNotification("We\197\186 paczk\196\153 z ta\197\155moci\196\133gu i zapakuj do pojazdu", "info")
    end
    if isElement(pack) then
      destroyElement(pack)
    end
    if isElement(colPack) then
      destroyElement(colPack)
    end
    najblizszeXYZ = _ARG_4_
    trackingLoadingPack = true
    if _ARG_4_ == 1 or _ARG_4_ == 2 or _ARG_4_ == 3 then
      pack = createObject(1271, selfLoadingPack.Pos[1], selfLoadingPack.Pos[2], selfLoadingPack.Pos[3])
      moveObject(pack, 5000, selfLoadingPack.Pos[1], selfLoadingPack.Pos[2] + 7, selfLoadingPack.Pos[3])
      setTimer(function()
        colPack = createColSphere(selfLoadingPack.Pos[1], selfLoadingPack.Pos[2] + 7, selfLoadingPack.Pos[3], 2)
      end, 5000, 1)
    elseif _ARG_4_ == 4 or _ARG_4_ == 5 or _ARG_4_ == 6 then
      pack = createObject(1271, selfLoadingPack.Pos[1], selfLoadingPack.Pos[2], selfLoadingPack.Pos[3])
      moveObject(pack, 5000, selfLoadingPack.Pos[1], selfLoadingPack.Pos[2] - 7, selfLoadingPack.Pos[3])
      setTimer(function()
        colPack = createColSphere(selfLoadingPack.Pos[1], selfLoadingPack.Pos[2] - 7, selfLoadingPack.Pos[3], 2)
      end, 5000, 1)
    elseif _ARG_4_ == 7 or _ARG_4_ == 8 or _ARG_4_ == 9 then
      pack = createObject(1271, selfLoadingPack.Pos[1], selfLoadingPack.Pos[2], selfLoadingPack.Pos[3])
      moveObject(pack, 5000, selfLoadingPack.Pos[1], selfLoadingPack.Pos[2] - 7, selfLoadingPack.Pos[3])
      setTimer(function()
        colPack = createColSphere(selfLoadingPack.Pos[1], selfLoadingPack.Pos[2] - 7, selfLoadingPack.Pos[3], 2)
      end, 5000, 1)
    end
  elseif _ARG_0_ == "sendAddPackLoadingClient" then
    selfLoadingPack.oddanePaczki = selfLoadingPack.oddanePaczki + 1
    if selfLoadingPack.oddanePaczki >= selfLoadingPack.paczkiDoOddania then
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendEndPackLoading", localPlayer, associateUserSelect)
    end
  elseif _ARG_0_ == "sendEndPackLoadingClient" then
    posLoadingPackVehicles = false
    positionsPack = {}
    exports.st_gui:showPlayerNotification("Zapakowano wszystkie paczki do pojazdu\nWejd\197\186 do pojazdu aby wybra\196\135 zlecenie", "info")
    trackingLoadingPack = false
    if isElement(pack) then
      destroyElement(pack)
    end
    if isElement(colPack) then
      destroyElement(colPack)
    end
    if selfLoadingPack.maPaczke then
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, false)
      runningBlock(localPlayer, false)
      removeEventHandler("onClientVehicleStartEnter", idVehGlobal, onVehEnter1)
    end
  elseif _ARG_0_ == "endJobAllClient" then
    exports.st_gui:showPlayerNotification("Tw\195\179j wsp\195\179\197\130pracownik zako\197\132czy\197\130 prac\196\153", "info")
    endJobAll()
  end
end)
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == markerLoading1 or source == markerLoading2 or source == markerLoading3 then
      if not getPedOccupiedVehicle(localPlayer) then
        return
      end
      if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
        return
      end
      if not _UPVALUE0_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
        exports.st_gui:showPlayerNotification("Tym pojazdem nie mo\197\188esz tu pracowa\196\135", "error")
        return
      end
      if getElementData(localPlayer, "player:job") == "Kurier" then
        if source == markerLoading1 then
          selfLoadingPack.Pos = {
            1139.32,
            1248,
            10.95
          }
        elseif source == markerLoading2 then
          selfLoadingPack.Pos = {
            1129.82,
            1248,
            10.95
          }
        elseif source == markerLoading3 then
          selfLoadingPack.Pos = {
            1119.32,
            1248,
            10.95
          }
        end
        if #table_course <= 0 and getVehicleController((getPedOccupiedVehicle(localPlayer))) == localPlayer then
          selfLoadingPack.unlockButton = true
          exports.st_gui:showPlayerNotification("Zaparkuj ty\197\130em, otw\195\179rz komputer i kliknij przycisk \"za\197\130aduj\"", "info")
        end
      end
    elseif source == komputer then
      positionsPack = {}
      if isElement(komputer) then
        destroyElement(komputer)
      end
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      selfLoadingPack.wybraneOsiedla = 0
      selfLoadingPack.oddanePaczki = 0
      selfLoadingPack.paczkiDoOddania = 0
      loadTextures()
      refreshPacks()
      addEventHandler("onClientRender", root, window1)
      windows.selectPack = true
      showCursor(true)
    end
  end
end)
addEventHandler("onClientMarkerLeave", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and (source == markerLoading1 or source == markerLoading2 or source == markerLoading3) and getElementData(localPlayer, "player:job") == "Kurier" then
    selfLoadingPack.unlockButton = false
  end
end)
addEventHandler("onClientColShapeHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == colPack and trackingLoadingPack and not selfLoadingPack.maPaczke and isElement(colPack) and isElement(pack) and not getPedOccupiedVehicle(localPlayer) then
    triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, true)
    runningBlock(localPlayer, true)
    addEventHandler("onClientVehicleStartEnter", idVehGlobal, onVehEnter1)
    triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendStartLoadingPack1", localPlayer, associateUserSelect, false, false, false, najblizszeXYZ)
    selfLoadingPack.maPaczke = true
  end
end)
function loadTextures()
  textures = {
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    cross = dxCreateTexture(":ST_gui/img/cross.png"),
    widget = dxCreateTexture(":ST_jobs_settings/img/widget_jobs.png"),
    off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
    improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
    requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png"),
    dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
    energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png"),
    condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
    map = dxCreateTexture(":ST_dashboard/img/map.png"),
    blip = dxCreateTexture("img/blip.png"),
    player = dxCreateTexture("img/player.png"),
    duo_icon = dxCreateTexture("img/duo_icon.png"),
    solo_icon = dxCreateTexture("img/solo_icon.png"),
    level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
    level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
    level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
    level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
    lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
    unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png")
  }
  upgradesPKT = {
    timeUGR = 500,
    condition = 750,
    profit = 1000,
    energy = 1500
  }
  upgrades = {
    {
      name = "Po\197\155pieszny",
      description = "Czas \197\130adowania jest znacznie kr\195\179tszy",
      price = upgradesPKT.timeUGR,
      icon = textures.energy_icon,
      status = 2,
      nameDatabase = "ulepszenie_czas_kurier"
    },
    {
      name = "Kondycja",
      description = "Dzi\196\153ki temu ulepszeniu poruszasz\nsi\196\153 szybciej",
      price = upgradesPKT.condition,
      icon = textures.condition_icon,
      status = 2,
      nameDatabase = "ulepszenie_kondycja_kurier"
    },
    {
      name = "Wi\196\153kszy zarobek",
      description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
      price = upgradesPKT.profit,
      icon = textures.dolar_icon,
      status = 2,
      nameDatabase = "ulepszenie_zarobek_kurier"
    },
    {
      name = "Energiczny",
      description = "Dodaje jedno zlecenie wi\196\153cej",
      price = upgradesPKT.energy,
      icon = textures.energy_icon,
      status = 2,
      nameDatabase = "ulepszenie_obrotny_kurier"
    }
  }
  dxSetTextureEdge(textures.map, "border", tocolor(110, 158, 204, 255))
  bindKey("mouse_wheel_up", "down", scrollBigMap)
  bindKey("mouse_wheel_down", "down", scrollBigMap)
  if not isEventHandlerAdded("onClientClick", root, moveBigMap) then
    addEventHandler("onClientClick", root, moveBigMap)
  end
end
function endJobAll()
  removeEventHandler("onClientVehicleEnter", idVehGlobal, onVehEnter)
  removeEventHandler("onClientVehicleExit", idVehGlobal, onVehExit)
  if isEventHandlerAdded("onClientVehicleStartEnter", idVehGlobal, onVehEnter1) then
    removeEventHandler("onClientVehicleStartEnter", idVehGlobal, onVehEnter1)
  end
  if isElement(pack) then
    destroyElement(pack)
  end
  if isElement(shader) then
    destroyElement(shader)
  end
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
  for _FORV_3_, _FORV_4_ in pairs(table_paczki) do
    if isElement(pedBot[_FORV_4_.id]) then
      destroyElement(pedBot[_FORV_4_.id])
    end
    if isElement(pedBlip[_FORV_4_.id]) then
      destroyElement(pedBlip[_FORV_4_.id])
    end
  end
  table_paczki = {}
  removeEventHandler("onClientRender", root, tracking)
  for _FORV_3_, _FORV_4_ in pairs(texturesTracking) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  texturesTracking = {}
  triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "plrJob", localPlayer, false, idVehGlobal)
  idVehGlobal = nil
  associateUserSelect = nil
  selfSelect = {}
  blockOpenGui = nil
  blockOpenGuiP = nil
  if isEventHandlerAdded("onClientRender", root, window1) then
    removeEventHandler("onClientRender", root, window1)
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
  end
  windows.computer = false
  windows.startJob = false
  windows.upgrades = false
  windows.level = false
  windows.selectFriends = false
  runningBlock(localPlayer, false)
  trackingVehicleStatus = false
  hold_package = false
  showCursor(false)
  if isElement(colVehTracking) then
    destroyElement(colVehTracking)
  end
  if isElement(komputer) then
    destroyElement(komputer)
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
      if _FORV_6_.ulepszenie_kondycja_kurier == 1 then
        toggleControl("walk", true)
        toggleControl("crouch", true)
        toggleControl("sprint", false)
        toggleControl("jump", false)
        setControlState("walk", false)
        blocked = false
      else
        blocked = true
        toggleControl("walk", false)
        toggleControl("crouch", false)
        toggleControl("sprint", false)
        toggleControl("jump", false)
        setControlState("walk", true)
      end
    end
  else
    removeEventHandler("onClientRender", root, renderBieganie)
    blocked = false
    toggleControl("walk", true)
    toggleControl("crouch", true)
    toggleControl("sprint", true)
    toggleControl("jump", true)
    setControlState("walk", false)
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
  end
end
function onVehEnter(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    setVehicleDoorOpenRatio(idVehGlobal, 4, 0, 2000)
    setVehicleDoorOpenRatio(idVehGlobal, 5, 0, 2000)
    trackingVehicleStatus = false
    attachElements(colVehTracking, idVehGlobal, 0, -3, 0)
    if hold_package then
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, false)
      hold_package = false
    end
    if trackingLoadingPack and selfLoadingPack.maPaczke then
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, false)
      selfLoadingPack.maPaczke = false
    end
  end
end
function onVehExit(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    setVehicleDoorOpenRatio(idVehGlobal, 4, 1, 2000)
    setVehicleDoorOpenRatio(idVehGlobal, 5, 1, 2000)
    trackingVehicleStatus = true
    attachElements(colVehTracking, idVehGlobal, 0, -3, 0)
    if hold_package then
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, false)
      hold_package = false
    end
    if trackingLoadingPack and selfLoadingPack.maPaczke then
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "givePack", localPlayer, false)
      selfLoadingPack.maPaczke = false
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
function table.removeValue(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_.id == _ARG_1_ then
      table.remove(_ARG_0_, _FORV_5_)
      return _FORV_5_
    end
  end
  return false
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "" .. hours .. ":" .. mins .. ":" .. secs
  end
end
function onVehEnter1(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    cancelEvent()
  end
end
getResourceName(getThisResource(), true, 966051220)
return
