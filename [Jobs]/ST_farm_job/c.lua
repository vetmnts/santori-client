markerStartJob = createMarker(-1197.22, -1049.29, 128.68, "cylinder", 3, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
createBlip(-1197.22, -1049.29, 129.58, 46, 2, 0, 0, 0, 0, 0, 250)
bele_objects = {}
bele_positions_1 = {
  {
    -1059.3,
    -1057.22,
    128.97,
    180
  },
  {
    -1057.5,
    -1057.22,
    128.97,
    180
  },
  {
    -1058.4,
    -1057.22,
    130.27,
    180
  },
  {
    -1059.3,
    -1055.4,
    128.97,
    180
  },
  {
    -1057.5,
    -1055.4,
    128.97,
    180
  },
  {
    -1058.4,
    -1055.4,
    130.27,
    180
  },
  {
    -1055.6,
    -1057.22,
    128.97,
    180
  },
  {
    -1053.8,
    -1057.22,
    128.97,
    180
  },
  {
    -1054.7,
    -1057.22,
    130.27,
    180
  },
  {
    -1055.6,
    -1055.4,
    128.97,
    180
  },
  {
    -1053.8,
    -1055.4,
    128.97,
    180
  },
  {
    -1054.7,
    -1055.4,
    130.27,
    180
  },
  {
    -1052,
    -1057.22,
    128.97,
    180
  },
  {
    -1050.2,
    -1057.22,
    128.97,
    180
  },
  {
    -1051.1,
    -1057.22,
    130.27,
    180
  },
  {
    -1052,
    -1055.4,
    128.97,
    180
  },
  {
    -1050.2,
    -1055.4,
    128.97,
    180
  },
  {
    -1051.1,
    -1055.4,
    130.27,
    180
  },
  {
    -1048.4,
    -1057.22,
    128.97,
    180
  },
  {
    -1046.6,
    -1057.22,
    128.97,
    180
  },
  {
    -1047.5,
    -1057.22,
    130.27,
    180
  },
  {
    -1048.4,
    -1055.4,
    128.97,
    180
  },
  {
    -1046.6,
    -1055.4,
    128.97,
    180
  },
  {
    -1047.5,
    -1055.4,
    130.27,
    180
  },
  {
    -1044.8,
    -1057.22,
    128.97,
    180
  },
  {
    -1043,
    -1057.22,
    128.97,
    180
  },
  {
    -1044.8,
    -1055.4,
    128.97,
    180
  },
  {
    -1043,
    -1055.4,
    128.97,
    180
  },
  {
    -1041.2,
    -1057.22,
    128.97,
    180
  },
  {
    -1039.4,
    -1057.22,
    128.97,
    180
  },
  {
    -1041.2,
    -1055.4,
    128.97,
    180
  },
  {
    -1039.4,
    -1055.4,
    128.97,
    180
  },
  {
    -1037.6,
    -1057.22,
    128.97,
    180
  },
  {
    -1035.8,
    -1057.22,
    128.97,
    180
  },
  {
    -1037.6,
    -1055.4,
    128.97,
    180
  },
  {
    -1035.8,
    -1055.4,
    128.97,
    180
  }
}
bele_positions_2 = {
  {
    -1195.6,
    -966,
    128.97,
    90
  },
  {
    -1195.6,
    -964.2,
    128.97,
    90
  },
  {
    -1195.6,
    -965.1,
    130.27,
    90
  },
  {
    -1193.8,
    -966,
    128.97,
    90
  },
  {
    -1193.8,
    -964.2,
    128.97,
    90
  },
  {
    -1193.8,
    -965.1,
    130.27,
    90
  },
  {
    -1195.6,
    -962.3,
    128.97,
    90
  },
  {
    -1195.6,
    -960.5,
    128.97,
    90
  },
  {
    -1195.6,
    -961.4,
    130.27,
    90
  },
  {
    -1193.8,
    -962.3,
    128.97,
    90
  },
  {
    -1193.8,
    -960.5,
    128.97,
    90
  },
  {
    -1193.8,
    -961.4,
    130.27,
    90
  },
  {
    -1195.6,
    -958.9,
    128.97,
    90
  },
  {
    -1195.6,
    -957.3,
    128.97,
    90
  },
  {
    -1195.6,
    -958.1,
    130.27,
    90
  },
  {
    -1193.8,
    -958.9,
    128.97,
    90
  },
  {
    -1193.8,
    -957.3,
    128.97,
    90
  },
  {
    -1193.8,
    -958.1,
    130.27,
    90
  },
  {
    -1195.6,
    -955.7,
    128.97,
    90
  },
  {
    -1195.6,
    -954.1,
    128.97,
    90
  },
  {
    -1195.6,
    -954.9000000000001,
    130.27,
    90
  },
  {
    -1193.8,
    -955.7,
    128.97,
    90
  },
  {
    -1193.8,
    -954.1,
    128.97,
    90
  },
  {
    -1193.8,
    -954.9000000000001,
    130.27,
    90
  },
  {
    -1195.6,
    -951.3,
    128.97,
    90
  },
  {
    -1195.6,
    -949.6999999999999,
    128.97,
    90
  },
  {
    -1193.8,
    -951.3,
    128.97,
    90
  },
  {
    -1193.8,
    -949.6999999999999,
    128.97,
    90
  },
  {
    -1195.6,
    -947.7,
    128.97,
    90
  },
  {
    -1195.6,
    -946.1,
    128.97,
    90
  },
  {
    -1193.8,
    -947.7,
    128.97,
    90
  },
  {
    -1193.8,
    -946.1,
    128.97,
    90
  },
  {
    -1195.7,
    -944.3,
    128.97,
    90
  },
  {
    -1195.7,
    -942.6999999999999,
    128.97,
    90
  },
  {
    -1193.9,
    -944.3,
    128.97,
    90
  },
  {
    -1193.9,
    -942.6999999999999,
    128.97,
    90
  }
}
bele_positions_3 = {
  {
    -1051.3,
    -917.7,
    128.97,
    180
  },
  {
    -1049.5,
    -917.7,
    128.97,
    180
  },
  {
    -1050.3999999999999,
    -917.7,
    130.27,
    180
  },
  {
    -1051.3,
    -919.5,
    128.97,
    180
  },
  {
    -1049.5,
    -919.5,
    128.97,
    180
  },
  {
    -1050.3999999999999,
    -919.5,
    130.27,
    180
  },
  {
    -1047.5,
    -917.5,
    128.97,
    180
  },
  {
    -1045.7,
    -917.5,
    128.97,
    180
  },
  {
    -1046.6,
    -917.5,
    130.27,
    180
  },
  {
    -1047.5,
    -919.3,
    128.97,
    180
  },
  {
    -1045.7,
    -919.3,
    128.97,
    180
  },
  {
    -1046.6,
    -919.3,
    130.27,
    180
  },
  {
    -1044,
    -917.5,
    128.97,
    180
  },
  {
    -1042.4,
    -917.5,
    128.97,
    180
  },
  {
    -1043.2,
    -917.5,
    130.27,
    180
  },
  {
    -1044,
    -919.3,
    128.97,
    180
  },
  {
    -1042.4,
    -919.3,
    128.97,
    180
  },
  {
    -1043.1,
    -919.3,
    130.27,
    180
  },
  {
    -1040.8,
    -917.5,
    128.97,
    180
  },
  {
    -1039.2,
    -917.5,
    128.97,
    180
  },
  {
    -1040,
    -917.5,
    130.27,
    180
  },
  {
    -1040.8,
    -919.3,
    128.97,
    180
  },
  {
    -1039.2,
    -919.3,
    128.97,
    180
  },
  {
    -1039.8999999999999,
    -919.3,
    130.27,
    180
  },
  {
    -1036.6,
    -917.5,
    128.97,
    180
  },
  {
    -1034.8,
    -917.5,
    128.97,
    180
  },
  {
    -1036.6,
    -919.3,
    128.97,
    180
  },
  {
    -1034.8,
    -919.3,
    128.97,
    180
  },
  {
    -1032.81,
    -917.5,
    128.96,
    180
  },
  {
    -1031.21,
    -917.5,
    128.96,
    180
  },
  {
    -1032.81,
    -919.3,
    128.96,
    180
  },
  {
    -1031.21,
    -919.3,
    128.96,
    180
  },
  {
    -1029.5,
    -917.5,
    128.96,
    180
  },
  {
    -1027.9,
    -917.5,
    128.96,
    180
  },
  {
    -1029.5,
    -919.3,
    128.96,
    180
  },
  {
    -1027.9,
    -919.3,
    128.96,
    180
  }
}
oddawaniePunkty_1 = {
  {
    -1058.35,
    -1053.19,
    129.22
  },
  {
    -1054.99,
    -1053.56,
    129.22
  },
  {
    -1051.85,
    -1053.24,
    129.22
  },
  {
    -1048.33,
    -1053.22,
    129.22
  },
  {
    -1043.91,
    -1053.18,
    129.22
  },
  {
    -1048.25,
    -1053.35,
    129.22
  },
  {
    -1043.91,
    -1053.23,
    129.22
  },
  {
    -1040.48,
    -1053.5,
    129.22
  }
}
oddawaniePunkty_2 = {
  {
    -1190.5,
    -965.02,
    129.22
  },
  {
    -1190.5,
    -961.35,
    129.22
  },
  {
    -1190.5,
    -958.05,
    129.22
  },
  {
    -1190.5,
    -954.77,
    129.22
  },
  {
    -1190.5,
    -950.42,
    129.22
  },
  {
    -1190.5,
    -946.81,
    129.22
  },
  {
    -1190.5,
    -943.49,
    129.22
  },
  {
    -1190.5,
    -940.16,
    129.22
  }
}
oddawaniePunkty_3 = {
  {
    -1050.25,
    -922.75,
    129.22
  },
  {
    -1046.49,
    -922.75,
    129.22
  },
  {
    -1043.22,
    -922.75,
    129.22
  },
  {
    -1039.89,
    -922.75,
    129.22
  },
  {
    -1035.53,
    -922.75,
    129.22
  },
  {
    -1031.87,
    -922.75,
    129.21
  },
  {
    -1028.66,
    -922.75,
    129.21
  },
  {
    -1025.33,
    -922.75,
    129.21
  }
}
function endJobAll()
  if maBalot then
    exports.st_gui:showPlayerNotification("Najpierw oddaj balot", "error")
    return
  end
  triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "plrJob", localPlayer, false)
  runningBlock(localPlayer, false)
  unbindKey("f")
  unbindKey("enter")
  plony = 0
  if isElement(blip) then
    destroyElement(blip)
    blip = nil
  end
  maBalot = false
  triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "destroyVehicle", localPlayer)
  triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "destroyPack", localPlayer)
  plony = 0
  mozeZasiac = true
  widlak = false
  kombajn = false
  unbindKey("E", "down", sianie)
  unbindKey("F", "down", exitGUI)
  unbindKey("enter", "down", exitGUI)
  removeEventHandler("onClientRender", root, windowRender)
  if 0 < #bele_objects then
    for _FORV_3_, _FORV_4_ in ipairs(bele_objects) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
  end
  bele_objects = {}
  for _FORV_3_, _FORV_4_ in ipairs(plonTable) do
    if isElement(plonMarker[_FORV_4_.id]) then
      destroyElement(plonMarker[_FORV_4_.id])
    end
    if isElement(plon[_FORV_4_.id]) then
      destroyElement(plon[_FORV_4_.id])
    end
    if isElement(markerDestroyPlon[_FORV_4_.id]) then
      destroyElement(markerDestroyPlon[_FORV_4_.id])
    end
    if self.blipP[_FORV_4_.id] then
      destroyElement(self.blipP[_FORV_4_.id])
    end
  end
  plonTable = {}
  plon = {}
  plonMarker = {}
  for _FORV_3_, _FORV_4_ in ipairs(balotTable) do
    if isElement(balotMarker[_FORV_4_.id]) then
      destroyElement(balotMarker[_FORV_4_.id])
    end
    if isElement(balot[_FORV_4_.id]) then
      destroyElement(balot[_FORV_4_.id])
    end
    if isElement(self.blipP[_FORV_4_.id]) then
      destroyElement(self.blipP[_FORV_4_.id])
    end
  end
  balotTable = {}
  balot = {}
  balotMarker = {}
  unbindKey("h", "down", showinfoF)
  self = {}
  oddawaniePunkt = false
end
function startJob()
  plony = 0
  mozeZasiac = true
  shape = createColCuboid(-1196.85, -1064.72, 126.57, 193.62, 154.36, 30.18)
  triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "plrJob", localPlayer, true)
  bindKey("E", "down", sianie)
  plonTable = {}
  plon = {}
  plonMarker = {}
  balotTable = {}
  balot = {}
  balotMarker = {}
  tick = getTickCount()
  self = {}
  self.time = 0
  self.money = 0
  self.showinfo = true
  self.exp = 0
  self.exp1 = 0
  self.timeSave = 0
  self.blipP = {}
  if math.random(1, 3) == 1 then
    oddawaniePunkty = oddawaniePunkty_1
    bele_positions = bele_positions_1
  elseif math.random(1, 3) == 2 then
    oddawaniePunkty = oddawaniePunkty_2
    bele_positions = bele_positions_2
  elseif math.random(1, 3) == 3 then
    oddawaniePunkty = oddawaniePunkty_3
    bele_positions = bele_positions_3
  end
  self.scietePlony = 0
  self.zebraneBaloty = 0
  bindKey("h", "down", showinfoF)
  addEventHandler("onClientRender", root, windowRender)
end
function sianie()
  if isPedOnGround(localPlayer) and isElementWithinColShape(localPlayer, shape) then
    if getPedOccupiedVehicle(localPlayer) then
      endJobAll()
      return
    end
    if mozeZasiac then
      if timerZasiania then
        return
      end
      timerZasiania = true
      setTimer(function()
        timerZasiania = false
      end, 2000, 1)
      plony = plony + 1
      pozwalam = true
      mozeZasiac = false
      plon[plony] = createObject(818, getElementPosition(localPlayer))
      plonMarker[plony] = createColSphere(getElementPosition(localPlayer))
      table.insert(plonTable, {
        id = plony,
        pos = {
          getElementPosition(localPlayer)
        },
        player = localPlayer
      })
      triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "animations", localPlayer, getElementPosition(localPlayer))
    end
  end
end
function chwycBalot(_ARG_0_)
  if widlak then
    if maBalot then
      return
    end
    if balotMarker[_ARG_0_] then
      destroyElement(balotMarker[_ARG_0_])
    end
    if balot[_ARG_0_] then
      destroyElement(balot[_ARG_0_])
    end
    if self.blipP[_ARG_0_] then
      destroyElement(self.blipP[_ARG_0_])
    end
    triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "givePackWidlak", localPlayer)
    maBalot = true
    if self.zebraneBaloty <= 5 then
      id = 1
    elseif self.zebraneBaloty >= 6 and self.zebraneBaloty <= 11 then
      id = 2
    elseif self.zebraneBaloty >= 12 and self.zebraneBaloty <= 17 then
      id = 3
    elseif self.zebraneBaloty >= 18 and self.zebraneBaloty <= 23 then
      id = 4
    elseif self.zebraneBaloty >= 24 and self.zebraneBaloty <= 29 then
      id = 5
    elseif self.zebraneBaloty >= 30 and self.zebraneBaloty <= 36 then
      id = 6
    elseif self.zebraneBaloty >= 37 and self.zebraneBaloty <= 43 then
      id = 7
    elseif self.zebraneBaloty >= 44 and self.zebraneBaloty <= 50 then
      id = 8
    end
    oddawaniePunkt = oddawaniePunkty[id]
    blip = createBlip(oddawaniePunkty[id][1], oddawaniePunkty[id][2], oddawaniePunkty[id][3], 41, 2, 0, 0, 0, 0, 0, 999)
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == markerStartJob then
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
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
      level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
      level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
      level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
      level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
      energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png"),
      money_icon = dxCreateTexture(":ST_magazynier_job/img/money_icon.png"),
      card_icon = dxCreateTexture(":ST_magazynier_job/img/card_icon.png"),
      combine_icon = dxCreateTexture("img/combine_icon.png"),
      lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
      unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
      requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png")
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    windows.background = true
    windows.category = "g\197\130\195\179wne"
    showCursor(true)
    setCursorAlpha(255)
  end
end)
function showinfoF()
  if self.showinfo == true then
    self.showinfo = false
  else
    self.showinfo = true
  end
end
function exitGUI()
  if windows.endJob == true then
    return
  end
  addEventHandler("onClientRender", root, window)
  addEventHandler("onClientClick", root, click)
  windows.endJob = true
  showCursor(true, false)
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
      if _FORV_6_.ulepszenie_kondycja_drwal == 1 then
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
function generateRandomPointBetween(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  _ARG_0_ = _ARG_0_ + math.floor(math.random() * (_ARG_0_ + _ARG_2_ - _ARG_4_ - _ARG_0_))
  _ARG_1_ = _ARG_1_ + math.floor(math.random() * (_ARG_1_ + _ARG_3_ - _ARG_5_ - _ARG_1_))
  return _ARG_0_, _ARG_1_
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
function stworzBaloty(_ARG_0_)
  if #bele_objects > 0 then
    for _FORV_4_, _FORV_5_ in ipairs(bele_objects) do
      if isElement(_FORV_5_) then
        destroyElement(_FORV_5_)
      end
    end
  end
  bele_objects = {}
  if _ARG_0_ ~= 0 then
    for _FORV_4_, _FORV_5_ in ipairs(bele_positions) do
      setElementCollisionsEnabled(createObject(1454, _FORV_5_[1], _FORV_5_[2], _FORV_5_[3], 0, 0, _FORV_5_[4]), false)
      table.insert(bele_objects, (createObject(1454, _FORV_5_[1], _FORV_5_[2], _FORV_5_[3], 0, 0, _FORV_5_[4])))
      if _FORV_4_ == _ARG_0_ then
        break
      end
    end
  end
end
getResourceName(getThisResource(), true, 149356548)
return
