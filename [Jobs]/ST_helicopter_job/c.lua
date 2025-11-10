markerStartJob = createMarker(-1423.15, -529.66, 13.379999999999999, "cylinder", 3, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
createBlip(-1423.15, -529.66, 14.28, 46, 2, 0, 0, 0, 0, 0, 250)
table_statistics = {}
textures0 = {}
textures1 = {}
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
  if isElement(self.blipCar) then
    destroyElement(self.blipCar)
  end
  if isElement(self.blipTarget) then
    destroyElement(self.blipTarget)
  end
  triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "destroyVehicle", localPlayer)
  triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "destroyObject", localPlayer)
  setTimer(function()
    triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "tpPos", localPlayer, {
      -1433.84,
      -533.14,
      14.15
    })
  end, 500, 1)
  triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "plrJob", localPlayer, false)
  posTracking = false
  unbindKey("f")
  unbindKey("enter")
  setTimer(function()
    triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "destroyObject", localPlayer)
    if isElement(self.blipCar) then
      destroyElement(self.blipCar)
    end
    if isElement(self.blipTarget) then
      destroyElement(self.blipTarget)
    end
    setTimer(function()
      self = {}
    end, 1000, 1)
  end, 1000, 1)
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == markerStartJob then
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    loadTextures()
    addEventHandler("onClientRender", root, window)
    windows.main = true
    windows.background = true
    windows.upgrades = false
    windows.level = false
    showCursor(true)
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 300,
          icon = textures.dolar_icon,
          status = _FORV_10_.ulepszenie_zarobek_helikoptery,
          nameDatabase = "ulepszenie_zarobek_helikoptery"
        }
      }
    end
  elseif _ARG_0_ == "prepareToDrive" then
    self.vehicle = _ARG_1_
    if _ARG_2_ then
      trackingVehicleStatus = true
    end
    addEventHandler("onClientVehicleEnter", self.vehicle, function(_ARG_0_, _ARG_1_)
      if _ARG_0_ == localPlayer then
        trackingVehicleStatus = false
        selfTracking.text = "Zwi\196\153ksz pu\197\130ap"
        bindKey("F", "down", exitGUI)
        bindKey("enter", "down", exitGUI)
        textures = {
          background = dxCreateTexture(":ST_gui/img/background2.png"),
          mouse_icon = dxCreateTexture(":ST_house/img/mouse_icon.png")
        }
        addEventHandler("onClientRender", root, window)
        windows.keyboard = true
        showCursor(true, false)
      end
    end)
  elseif _ARG_0_ == "objectInfo" then
    self.object = _ARG_1_
    self.blipCar = createBlipAttachedTo(self.object, 41)
  elseif _ARG_0_ == "startJob" then
    if _ARG_1_ then
      blockOpenGui = false
      selfTracking = {}
      tick = getTickCount()
      addEventHandler("onClientRender", root, tracking)
      selfTracking.money = 0
      selfTracking.time = 0
      selfTracking.exp = 0
      removeEventHandler("onClientRender", root, window)
      windows.level = false
      showCursor(false)
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153\nUdaj si\196\153 po sw\195\179j helikopter", "success")
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "plrJob", localPlayer, true)
      selfTracking.text = "Wsi\196\133d\197\186 do #ffbf00helikoptera"
      textures1 = {
        helicopter_icon = dxCreateTexture("img/helicopter_icon.png"),
        cars_icon = dxCreateTexture("img/cars_icon.png"),
        finish_icon = dxCreateTexture(":ST_taximeter_job/img/finish_icon.png"),
        container_icon = dxCreateTexture("img/container_icon.png")
      }
    else
      exports.st_gui:showPlayerNotification("Wszystkie helipady s\196\133 zaj\196\153te, odczekaj chwil\196\153", "error")
      removeEventHandler("onClientRender", root, window)
      windows.level = false
      showCursor(false)
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
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
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    selfTracking.time = selfTracking.time + 1
  end
  dxDrawRoundedRectangle(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, 15 / zoom, tocolor(25, 25, 25, 200))
  dxDrawText(selfTracking.text, windowsUP.x, windowsUP.y + 15 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, true, false, true, false)
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(selfTracking.time) .. "", windowsUP.x + 10 / zoom, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("EXP: #ffbf00" .. selfTracking.exp .. "", windowsUP.x + 10 / zoom, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("ZAROBEK: #ffbf00" .. przecinek(selfTracking.money) .. " #f0f0f0PLN", windowsUP.x, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  dxDrawText("LEVEL: #ffbf00" .. selectLevel, windowsUP.x, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  dxDrawText("LOGISTYKA LOTNICZA - LEVEL #00a118" .. selectLevel, windowsUP.x, windowsUP.y - 60 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
  if not self.magnet_helicopter then
    if 25 < getElementPosition(localPlayer) then
      self.magnet_helicopter = true
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createMagnet", localPlayer)
      exports.st_gui:showPlayerNotification("Udaj si\196\153 po \197\130adunek", "info")
      selfTracking.text = "Udaj si\196\153 po #ffbf00\197\130adunek"
      createObiectP()
    end
  elseif getElementData(self.vehicle, "magnet") then
    dxDrawLine3D(getElementPosition((getElementData(self.vehicle, "magnet"))))
  end
  if trackingVehicleStatus and getScreenFromWorldPosition(getElementPosition(self.vehicle)) and getScreenFromWorldPosition(getElementPosition(self.vehicle)) then
    dxDrawImage(getScreenFromWorldPosition(getElementPosition(self.vehicle)) - 25 / zoom, getScreenFromWorldPosition(getElementPosition(self.vehicle)) - 65 / zoom, 50 / zoom, 50 / zoom, textures1.helicopter_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(self.vehicle))) .. "m", getScreenFromWorldPosition(getElementPosition(self.vehicle)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.vehicle)) + 2, getScreenFromWorldPosition(getElementPosition(self.vehicle)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.vehicle)))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(self.vehicle))) .. "m", getScreenFromWorldPosition(getElementPosition(self.vehicle)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.vehicle)))
  end
  if isElement(self.object) and getScreenFromWorldPosition(getElementPosition(self.object)) and getScreenFromWorldPosition(getElementPosition(self.object)) then
    if not self.attachObject then
      if getElementType(self.object) == "object" then
        imgtrakcking = textures1.container_icon
      else
        imgtrakcking = textures1.cars_icon
      end
      dxDrawImage(getScreenFromWorldPosition(getElementPosition(self.object)) - 25 / zoom, getScreenFromWorldPosition(getElementPosition(self.object)) - 65 / zoom, 50 / zoom, 50 / zoom, imgtrakcking, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(self.object))) .. "m", getScreenFromWorldPosition(getElementPosition(self.object)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.object)) + 2, getScreenFromWorldPosition(getElementPosition(self.object)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.object)))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(self.object))) .. "m", getScreenFromWorldPosition(getElementPosition(self.object)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.object)))
    end
    if 5 > math.floor(getDistanceBetweenPoints3D(getElementPosition(self.object))) then
      if not self.attachObject then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(self.object)) - 86 / zoom, getScreenFromWorldPosition(getElementPosition(self.object)) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(self.object)) - 85 / zoom, getScreenFromWorldPosition(getElementPosition(self.object)) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("ABY CHWYCI\196\134 OBIEKT KLIKNIJ", getScreenFromWorldPosition(getElementPosition(self.object)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.object)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(self.object)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.object)))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(self.object)) - 20.5 / zoom, getScreenFromWorldPosition(getElementPosition(self.object)) + 58 / zoom, 40 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("CTRL", getScreenFromWorldPosition(getElementPosition(self.object)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.object)) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(self.object)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.object)))
      end
      if getKeyState("lctrl") and not clickC then
        clickC = true
        if not self.attachObject then
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "attachObject", localPlayer, true)
          self.attachObject = true
          if isElement(self.blipCar) then
            destroyElement(self.blipCar)
          end
          posTracking = self.posTrackingNormal
          if not isElement(self.blipTarget) then
            self.blipTarget = createBlip(posTracking[1], posTracking[2], posTracking[3], 41, 2, 0, 0, 0, 0, 0, 9999)
          end
          selfTracking.text = "Dostarcz \197\130adunek do #ffbf00celu"
        else
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "attachObject", localPlayer, false)
          self.attachObject = false
          self.blipCar = createBlipAttachedTo(self.object, 41)
        end
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
  if posTracking and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) then
    if math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(self.object))) < 100 then
      if isLineOfSightClear(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), posTracking[3] + 5) + 1.5, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), posTracking[3] + 5) + 1.5, false, true, false, false, false) then
        dxDrawLine3D(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), posTracking[3] + 5) + 0.1, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), posTracking[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 5)
      else
        dxDrawLine3D(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), posTracking[3] + 5) + 0.1, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), posTracking[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 5)
      end
      if isLineOfSightClear(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), posTracking[3] + 5) + 1.5, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 1.5, false, true, false, false, false) then
        dxDrawLine3D(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), posTracking[3] + 5) + 0.1, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 5)
      else
        dxDrawLine3D(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)), posTracking[3] + 5) + 0.1, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 5)
      end
      if isLineOfSightClear(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), posTracking[3] + 5) + 1.5, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 1.5, false, true, false, false, false) then
        dxDrawLine3D(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), posTracking[3] + 5) + 0.1, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 5)
      else
        dxDrawLine3D(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)), posTracking[3] + 5) + 0.1, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 5)
      end
      if isLineOfSightClear(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 1.5, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 1.5, false, true, false, false, false) then
        dxDrawLine3D(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 0.1, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 5)
      else
        dxDrawLine3D(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 0.1, posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), getGroundPosition(posTracking[1] - 4 * math.sin(-math.rad(posTracking[4] + 90)) - 5 * math.sin(-math.rad(posTracking[4] + 180)) - 8 * math.sin(-math.rad(posTracking[4] + 270)) - 10 * math.sin(-math.rad(posTracking[4])), posTracking[2] - 4 * math.cos(-math.rad(posTracking[4] + 90)) - 5 * math.cos(-math.rad(posTracking[4] + 180)) - 8 * math.cos(-math.rad(posTracking[4] + 270)) - 10 * math.cos(-math.rad(posTracking[4])), posTracking[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 5)
      end
    end
    if not self.attachObject and math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(self.object))) < 3 and not clickGiveMoney and 1 > getElementSpeed(self.object, 1) then
      clickGiveMoney = true
      posTracking = nil
      self.object = nil
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "destroyObject", localPlayer)
      if isElement(self.blipCar) then
        destroyElement(self.blipCar)
      end
      if isElement(self.blipTarget) then
        destroyElement(self.blipTarget)
      end
      setTimer(function()
        clickGiveMoney = false
      end, 10000, 1)
      if getElementData(localPlayer, "player:premium") then
        exp = 3
        self.selectMoney = self.selectMoney * 1.1
      else
        exp = 2
      end
      exports.ST_levelsystem:addExp(exp)
      for _FORV_19_, _FORV_20_ in ipairs(table_statistics) do
        if _FORV_20_.ulepszenie_zarobek_helikoptery == 1 then
          self.selectMoney = self.selectMoney * 1.1
        end
      end
      if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "LogistykaLotnicza" then
        self.selectMoney = self.selectMoney * getElementData(localPlayer, "player:bonusJob").addMoney
      end
      if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
        self.selectMoney = self.selectMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
      end
      self.selectMoney = self.selectMoney * moneyADD
      self.selectMoney = math.floor(self.selectMoney)
      selfTracking.money = selfTracking.money + self.selectMoney
      selfTracking.exp = selfTracking.exp + 1
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie dostarczono \197\130adunek\nOtrzymujesz " .. przecinek(self.selectMoney) .. " PLN", "success")
      selfTracking.text = "Otrzymujesz #00ad23" .. self.selectMoney .. " #ffffffPLN"
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "wages", localPlayer, {
        self.selectMoney,
        6835483
      })
      self.selectMoney = nil
      setTimer(function()
        createObiectP()
        exports.st_gui:showPlayerNotification("Udaj si\196\153 po nast\196\153pny \197\130adunek", "info")
        selfTracking.text = "Udaj si\196\153 po nast\196\153pny #ffbf00\197\130adunek"
      end, 5000, 1)
    end
    dxDrawImage(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, textures1.finish_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(self.object))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(self.object))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
  end
end
function createObiectP()
  if posObject[math.random(1, #posObject)].type1 == "oba" then
    if math.random(1, 2) == 1 then
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createObiectP", localPlayer, posObject[math.random(1, #posObject)].pos, "vehicle", vehicleModelP[math.random(1, #vehicleModelP)])
    else
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createObiectP", localPlayer, posObject[math.random(1, #posObject)].pos, "container", containerModelP[math.random(1, #containerModelP)])
    end
  elseif posObject[math.random(1, #posObject)].type1 == "vehicle" then
    triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createObiectP", localPlayer, posObject[math.random(1, #posObject)].pos, "vehicle", vehicleModelP[math.random(1, #vehicleModelP)])
  elseif posObject[math.random(1, #posObject)].type1 == "container" then
    triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createObiectP", localPlayer, posObject[math.random(1, #posObject)].pos, "container", containerModelP[math.random(1, #containerModelP)])
  end
  self.posTrackingNormal = possitionsTarget[math.random(1, #possitionsTarget)]
  self.selectMoney = math.floor(1300 * math.floor((getDistanceBetweenPoints3D(posObject[math.random(1, #posObject)].pos[1], posObject[math.random(1, #posObject)].pos[2], posObject[math.random(1, #posObject)].pos[3], self.posTrackingNormal[1], self.posTrackingNormal[2], self.posTrackingNormal[3]))) / 200 * 1.7)
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
addEventHandler("onClientPlayerWasted", root, function()
  if source == localPlayer and getElementData(localPlayer, "player:job") == "Logistyka lotnicza" then
    endJobAll()
    setTimer(function()
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "tpPos", localPlayer, {
        -1433.84,
        -533.14,
        14.15
      })
    end, 5000, 1)
  end
end)
function exitGUI()
  addEventHandler("onClientRender", root, window)
  windows.endJob = true
  showCursor(true, false)
end
function getElementSpeed(_ARG_0_, _ARG_1_)
  assert(isElement(_ARG_0_), "Bad argument 1 @ getElementSpeed (element expected, got " .. type(_ARG_0_) .. ")")
  assert(getElementType(_ARG_0_) == "player" or getElementType(_ARG_0_) == "ped" or getElementType(_ARG_0_) == "object" or getElementType(_ARG_0_) == "vehicle" or getElementType(_ARG_0_) == "projectile", "Invalid element type @ getElementSpeed (player/ped/object/vehicle/projectile expected, got " .. getElementType(_ARG_0_) .. ")")
  assert((_ARG_1_ == nil or type(_ARG_1_) == "string" or type(_ARG_1_) == "number") and (_ARG_1_ == nil or tonumber(_ARG_1_) and (tonumber(_ARG_1_) == 0 or tonumber(_ARG_1_) == 1 or tonumber(_ARG_1_) == 2) or _ARG_1_ == "m/s" or _ARG_1_ == "km/h" or _ARG_1_ == "mph"), "Bad argument 2 @ getElementSpeed (invalid speed unit)")
  _ARG_1_ = _ARG_1_ == nil and 0 or not tonumber(_ARG_1_) and _ARG_1_ or tonumber(_ARG_1_)
  return (Vector3(getElementVelocity(_ARG_0_)) * ((_ARG_1_ == 0 or _ARG_1_ == "m/s") and 50 or (_ARG_1_ == 1 or _ARG_1_ == "km/h") and 180 or 111.84681456)).length
end
function loadTextures()
  textures = {
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    game_photo = dxCreateTexture("img/game_photo.png"),
    unlock_icon = dxCreateTexture(":ST_jobs_settings/img/unlock_icon.png"),
    lock_icon = dxCreateTexture(":ST_jobs_settings/img/lock_icon.png"),
    dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
    requirements_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/requirements_icon.png"),
    off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
    info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
    improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
    start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
    stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
    level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
    level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
    level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
    level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png")
  }
end
getResourceName(getThisResource(), true, 115248134)
return
