setElementData(createMarker(3364.17, -1960.57, 12.18, "cylinder", 3, 246, 255, 0, 255), "marker:icon", "praca")
createBlip(3364.17, -1960.57, 13.08, 46, 2, 0, 0, 0, 0, 0, 250)
function createDisassemblyMarker(_ARG_0_)
  if not vehicles then
    return
  end
  x, y, z = getVehicleComponentPosition(vehicles, _ARG_0_)
  x, y, z = 7627.26 - y + _UPVALUE0_[_ARG_0_].position[1], -2437.88 + x + _UPVALUE0_[_ARG_0_].position[2], 208 + z + _UPVALUE0_[_ARG_0_].position[3]
  z = getGroundPosition(x, y, z + 1) + 1
  disassemblyMarker = createMarker(x, y, z - 0.9, "cylinder", 1.5, 246, 255, 0, 255)
  setElementDimension(disassemblyMarker, 20)
end
function getNextBuildPart()
  if not vehicles then
    return
  end
  for _FORV_4_ in pairs(_UPVALUE0_) do
    if getVehicleComponentVisible(vehicles, _FORV_4_) then
      break
    end
  end
  return _FORV_4_
end
function createCar()
  setTimer(function()
    if vehicles then
      destroyElement(vehicles)
    end
    vehicles = createVehicle(_UPVALUE0_[math.random(1, #_UPVALUE0_)][1], 7627.9, -2437.88, 208 + _UPVALUE0_[math.random(1, #_UPVALUE0_)][3], 0, 0, 90)
    setElementDimension(vehicles, 20)
    setElementFrozen(vehicles, true)
    fixVehicle(vehicles)
    setTimer(function()
      currentCarry = getNextBuildPart()
      carryPos = _UPVALUE0_[currentCarry].carry
      createDisassemblyMarker(currentCarry)
    end, 500, 1)
  end, 3000, 1)
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == disassemblyMarker then
      if disassemblyMarker then
        destroyElement(disassemblyMarker)
      end
      triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "animations", localPlayer, 1)
      exports.ST_gui:createProgressbar(windowPos.x + 100 / zoom, windowPos.y + 600 / zoom, 700 / zoom, 33 / zoom, 5000)
      setTimer(function()
        setVehicleComponentVisible(vehicles, currentCarry, false)
        giveParts = createMarker(7608.93, -2437.76, 207.1, "cylinder", 3, 246, 255, 0, 255)
        setElementDimension(giveParts, 20)
        exports.st_gui:showPlayerNotification("Odnie\197\155 cz\196\153\197\155\196\135 we wskazane miejsce", "info")
        exports.ST_gui:destroyProgressbar()
        runningBlock(localPlayer, true)
      end, 5000, 1)
    elseif source == giveParts then
      if giveParts then
        destroyElement(giveParts)
      end
      triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "animations", localPlayer, 2)
      runningBlock(localPlayer, false)
      if getNextBuildPart() then
        currentCarry = getNextBuildPart()
        carryPos = _UPVALUE0_[currentCarry].carry
        createDisassemblyMarker(currentCarry)
        exports.st_gui:showPlayerNotification("Pomy\197\155lnie od\197\130o\197\188ono cz\196\153\197\155\196\135, udaj si\196\153 po nast\196\153pn\196\133", "success")
      else
        createCar()
        if getElementData(localPlayer, "player:premium") then
        end
        for _FORV_8_, _FORV_9_ in ipairs(table_info_org) do
          if _FORV_9_.upgrades_job == 1 then
          end
        end
        exports.ST_levelsystem:addExp(2 + 1)
        triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
        triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "wages", localPlayer, {
          math.floor(50000 * 1.1 * 1.2),
          4326773
        })
        exports.st_gui:showPlayerNotification("Za rozmontowanie wszystkich cz\196\153\197\155ci.\nOtrzymujesz " .. przecinek(math.floor(50000 * 1.1 * 1.2)) .. " PLN oraz " .. 2 + 1 .. " EXP", "success")
      end
    elseif source == _UPVALUE1_ then
      table_statistics = {}
      table_info_org = {}
      triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      loadTexture()
      addEventHandler("onClientRender", root, window)
      windows.main = true
      showCursor(true)
    elseif source == exitGarage then
      loadTexture()
      addEventHandler("onClientRender", root, window)
      windows.exitGarage = true
      showCursor(true)
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "enterClient" then
    table_area = {}
    isArea = false
    if getElementData(localPlayer, "player:sid") == 1 then
      startJob()
    elseif _ARG_2_ then
      table_area = _ARG_1_
      for _FORV_10_, _FORV_11_ in ipairs(table_area) do
        if isArea then
          return
        end
        if _FORV_11_.id == 4 or _FORV_11_.id == 25 or _FORV_11_.id == 15 or _FORV_11_.id == 26 or _FORV_11_.id == 11 then
          isArea = true
          startJob()
        end
      end
      if not isArea then
        exports.st_gui:showPlayerNotification("Twoja organizacja nie posiada odpowiedniej strefy", "error")
      end
    elseif getElementData(localPlayer, "org:przestepcza") then
      startJob()
    end
  elseif _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = {}
    table_statistics = _ARG_1_
    table_info_org = {}
    table_info_org = _ARG_2_
  end
end)
function startJob()
  fadeCamera(false)
  setTimer(function()
    triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "tppos", localPlayer, {
      7608.88,
      -2419.46,
      208,
      20
    })
  end, 1000, 1)
  setTimer(function()
    fadeCamera(true)
    exports.st_gui:showPlayerNotification("Udaj si\196\153 rozmontowa\196\135 pojazd", "info")
  end, 3000, 1)
  exitGarage = createMarker(7609.06, -2416.72, 207.1, "cylinder", 1, 255, 255, 255, 255)
  setElementDimension(exitGarage, 20)
  removeEventHandler("onClientRender", root, window)
  windows.main = false
  showCursor(false)
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
  triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "plrJob", localPlayer, true)
  createCar()
end
function endJob()
  if disassemblyMarker then
    destroyElement(disassemblyMarker)
  end
  if giveParts then
    destroyElement(giveParts)
    triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "animations", localPlayer, 2)
    runningBlock(localPlayer, false)
  end
  if vehicles then
    destroyElement(vehicles)
  end
  triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "plrJob", localPlayer, false)
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
    blocked = true
    toggleControl("walk", false)
    toggleControl("crouch", false)
    toggleControl("sprint", false)
    toggleControl("jump", false)
    setControlState("walk", true)
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
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function loadTexture()
  textures = {
    background = dxCreateTexture(":ST_gui/img/background1.png"),
    cross = dxCreateTexture(":ST_gui/img/cross.png"),
    game_photo = dxCreateTexture("img/game_photo.png")
  }
end
getResourceName(getThisResource(), true, 754840547)
return
