markerStartJob = createMarker(1121.21, 1940.56, 10.19, "cylinder", 3, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
createBlip(1122.82, 1943.07, 10.82, 46, 2, 0, 0, 0, 0, 0, 250)
markerStartJob1 = createMarker(-2923.82, 483.12, 4.43, "cylinder", 3, 246, 255, 0, 255)
setElementData(markerStartJob1, "marker:icon", "praca")
createBlip(-2923.82, 483.12, 5.33, 46, 2, 0, 0, 0, 0, 0, 250)
function endJobAll()
  triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "plrJob", localPlayer, false)
  unbindKey("f")
  unbindKey("enter")
  triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "destroyVehicle", localPlayer)
  if isElement(blip) then
    destroyElement(blip)
  end
  if isElement(blip1) then
    destroyElement(blip1)
  end
  removeEventHandler("onClientRender", root, infoGui)
  windows.loading = false
  windows.level = false
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
  for _FORV_3_, _FORV_4_ in pairs(texturesRender) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  texturesRender = {}
end
function startJob()
  for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
    if _FORV_4_.ulepszenie_silnik_lawety == 1 then
      triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "createTowtruck", localPlayer, 1, sanFierro)
    else
      triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "createTowtruck", localPlayer, false, sanFierro)
    end
  end
  exports.st_gui:showPlayerNotification("Za\197\130aduj \197\130adunek", "info")
  triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "plrJob", localPlayer, true)
  bindKey("F", "down", exitGUI)
  bindKey("enter", "down", exitGUI)
  texturesRender = {
    finish_icon = dxCreateTexture(":ST_taximeter_job/img/finish_icon.png"),
    container_icon = dxCreateTexture("img/container_icon.png"),
    dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png")
  }
  selfInfoGui = {}
  selfInfoGui.pos = false
  selfInfoGui.posLadunekKoniec = {
    {
      loadingPos[math.random(2, #loadingPos)][1],
      loadingPos[math.random(2, #loadingPos)][2],
      loadingPos[math.random(2, #loadingPos)][3] + 1
    },
    {
      loadingPosSF[math.random(2, #loadingPosSF)][1],
      loadingPosSF[math.random(2, #loadingPosSF)][2],
      loadingPosSF[math.random(2, #loadingPosSF)][3] + 1
    }
  }
  selfInfoGui.img = texturesRender.container_icon
  selfInfoGui.text = "UDAJ SI\196\152 ZA\197\129ADOWA\196\134 \197\129ADUNEK"
  selfInfoGui.text1 = "ABY OTWORZY\196\134 MENU KLIKNIJ"
  selfInfoGui.Time = 0
  selfInfoGui.health = 100
  selfInfoGui.exp = 0
  selfInfoGui.money = 0
  tick = getTickCount()
  addEventHandler("onClientRender", root, infoGui)
  if #possitions == 0 then
    refreshPos()
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == markerStartJob then
      if getPedOccupiedVehicle(_ARG_0_) then
        return
      end
      sanFierro = false
      table_statistics = {}
      triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      loadTextures()
      addEventHandler("onClientRender", root, window)
      windows.background = true
      windows.main = true
      showCursor(true)
    elseif source == markerStartJob1 then
      if getPedOccupiedVehicle(_ARG_0_) then
        return
      end
      sanFierro = true
      table_statistics = {}
      triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      loadTextures()
      addEventHandler("onClientRender", root, window)
      windows.background = true
      windows.main = true
      showCursor(true)
    end
  end
end)
function exitGUI()
  if windows.level == true then
    return
  end
  if windows.loading == true then
    return
  end
  addEventHandler("onClientRender", root, window)
  windows.endJob = true
  showCursor(true, false)
end
function loadTextures()
  textures = {
    off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
    info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
    improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    requirements_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/requirements_icon.png"),
    dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
    level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
    level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
    level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
    level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
    unlock_icon = dxCreateTexture(":ST_jobs_settings/img/unlock_icon.png"),
    lock_icon = dxCreateTexture(":ST_jobs_settings/img/lock_icon.png"),
    widget = dxCreateTexture(":ST_jobs_settings/img/widget_jobs.png"),
    start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
    stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
    game_photo = dxCreateTexture("img/game_photo.png"),
    container_icon = dxCreateTexture("img/container_icon.png"),
    engine_icon = dxCreateTexture(":ST_tuning_mech/img/engine_icon.png"),
    condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
    energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png")
  }
end
getResourceName(getThisResource(), true, 22847672)
return
