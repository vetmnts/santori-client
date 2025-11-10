setElementData(createMarker(105.13, -303.98, 0.7499999999999999, "cylinder", 3, 246, 255, 0, 255), "marker:icon", "praca")
createBlip(105.13, -303.98, 1.65, 46, 2, 0, 0, 0, 0, 0, 250)
textures1 = {}
self = {moneySave = 0}
randomPosition = {
  {
    102.03,
    -336.15,
    6.38
  },
  {
    102.03,
    -339.35,
    6.38
  },
  {
    104.14,
    -340.66,
    6.38
  },
  {
    105.68,
    -340.66,
    6.38
  },
  {
    107.76,
    -338.9,
    6.38
  },
  {
    107.76,
    -335.87,
    6.38
  },
  {
    107.76,
    -333.6,
    6.38
  },
  {
    107.76,
    -330.65,
    6.38
  },
  {
    105.59,
    -328.44,
    6.38
  },
  {
    102.67,
    -328.44,
    6.38
  },
  {
    100.79,
    -328.44,
    6.38
  },
  {
    99.23,
    -328.44,
    6.38
  },
  {
    96.32,
    -328.44,
    6.38
  },
  {
    93.45,
    -328.34,
    6.38
  },
  {
    90.42,
    -328.34,
    6.38
  },
  {
    99.76,
    -337.27,
    6.38
  },
  {
    99.76,
    -338.8,
    6.38
  },
  {
    97.45,
    -340.56,
    6.38
  },
  {
    93.73,
    -338.61,
    6.38
  },
  {
    93.73,
    -337.13,
    6.38
  },
  {
    91.46,
    -337.33,
    6.38
  },
  {
    91.46,
    -338.84,
    6.38
  },
  {
    89.07,
    -340.56,
    6.38
  },
  {
    87.44,
    -340.56,
    6.38
  },
  {
    75.66,
    -333.63,
    6.38
  },
  {
    75.66,
    -330.59,
    6.38
  },
  {
    73.8,
    -328.44,
    6.38
  },
  {
    70.63,
    -328.44,
    6.38
  },
  {
    68.33,
    -328.84,
    6.38
  },
  {
    68.33,
    -331.85,
    6.38
  },
  {
    66.06,
    -333.7,
    6.38
  },
  {
    66.06,
    -330.52,
    6.38
  },
  {
    64.46,
    -328.44,
    6.38
  },
  {
    61.3,
    -328.44,
    6.38
  },
  {
    59.33,
    -330.21,
    6.38
  },
  {
    59.33,
    -333.29,
    6.38
  },
  {
    57.06,
    -333.48,
    6.38
  },
  {
    57.06,
    -330.37,
    6.38
  },
  {
    53.73,
    -328.44,
    6.38
  },
  {
    80.11,
    -340.66,
    6.38
  },
  {
    77.05,
    -340.66,
    6.38
  },
  {
    71.12,
    -340.76,
    6.38
  },
  {
    67.93,
    -340.76,
    6.38
  },
  {
    63.71,
    -340.76,
    6.38
  },
  {
    60.62,
    -340.76,
    6.38
  },
  {
    54.48,
    -340.65,
    6.38
  },
  {
    51.59,
    -340.66,
    6.39
  },
  {
    44.2,
    -340.65,
    6.38
  },
  {
    41.17,
    -340.66,
    6.39
  },
  {
    39.44,
    -339.41,
    6.38
  },
  {
    39.44,
    -336.45,
    6.38
  },
  {
    39.34,
    -332.64,
    6.38
  },
  {
    39.34,
    -329.63,
    6.38
  },
  {
    39.35,
    -324.56,
    6.38
  },
  {
    39.34,
    -321.58,
    6.38
  },
  {
    39.34,
    -318.12,
    6.38
  },
  {
    39.34,
    -315.22,
    6.38
  },
  {
    39.44,
    -309.75,
    6.39
  },
  {
    39.44,
    -306.72,
    6.39
  },
  {
    39.44,
    -302.88,
    6.39
  },
  {
    39.44,
    -299.88,
    6.39
  },
  {
    40.4,
    -297.74,
    6.39
  },
  {
    43.3,
    -297.74,
    6.39
  },
  {
    47.23,
    -297.74,
    6.39
  },
  {
    50.32,
    -297.74,
    6.39
  },
  {
    84.94,
    -300.93,
    1.64
  },
  {
    84.94,
    -298.08,
    1.64
  },
  {
    86.65,
    -297.64,
    1.64
  },
  {
    88.85,
    -297.64,
    1.64
  },
  {
    89.67,
    -299.36,
    1.64
  },
  {
    89.66,
    -301.86,
    1.64
  },
  {
    93.27,
    -297.64,
    1.64
  },
  {
    95.08,
    -297.64,
    1.64
  },
  {
    93.24,
    -315.17,
    1.64
  },
  {
    93.24,
    -317.99,
    1.64
  },
  {
    93.24,
    -320.81,
    1.64
  },
  {
    95.05,
    -321.76,
    1.64
  },
  {
    98.14,
    -321.76,
    1.64
  },
  {
    98.48,
    -324.03,
    1.64
  },
  {
    95.3,
    -324.03,
    1.64
  },
  {
    93.24,
    -325.58,
    1.64
  },
  {
    93.24,
    -328.95,
    1.64
  },
  {
    95.23,
    -330.99,
    1.64
  },
  {
    98.17,
    -330.99,
    1.64
  },
  {
    107.96,
    -335.22,
    1.64
  },
  {
    107.96,
    -338.27,
    1.64
  },
  {
    98.49,
    -333.26,
    1.64
  },
  {
    96.75,
    -333.26,
    1.64
  },
  {
    95.2,
    -333.26,
    1.64
  },
  {
    92.35,
    -333.26,
    1.64
  },
  {
    90.97,
    -332.15,
    1.64
  },
  {
    90.97,
    -329.22,
    1.64
  },
  {
    90.97,
    -322.96,
    1.64
  },
  {
    90.97,
    -319.71,
    1.64
  },
  {
    90.97,
    -316.73,
    1.64
  },
  {
    84.94,
    -315.11,
    1.64
  },
  {
    84.94,
    -318.12,
    1.64
  },
  {
    84.94,
    -321.2,
    1.64
  },
  {
    84.94,
    -324.3,
    1.64
  },
  {
    84.94,
    -327.43,
    1.64
  },
  {
    84.94,
    -331.88,
    1.64
  },
  {
    82.67,
    -332.23,
    1.64
  },
  {
    82.67,
    -329.11,
    1.64
  },
  {
    82.67,
    -325.93,
    1.64
  },
  {
    82.67,
    -322.9,
    1.64
  },
  {
    82.67,
    -319.78,
    1.64
  },
  {
    82.67,
    -316.85,
    1.64
  },
  {
    76.64,
    -314.93,
    1.64
  },
  {
    76.64,
    -318.08,
    1.64
  },
  {
    76.64,
    -321.21,
    1.64
  },
  {
    76.64,
    -324.3,
    1.64
  },
  {
    76.64,
    -327.43,
    1.64
  },
  {
    76.64,
    -330.56,
    1.64
  },
  {
    74.36,
    -332.16,
    1.64
  },
  {
    74.37,
    -329.19,
    1.64
  },
  {
    74.37,
    -325.98,
    1.64
  },
  {
    74.37,
    -322.91,
    1.64
  },
  {
    74.37,
    -319.69,
    1.64
  },
  {
    74.37,
    -316.5,
    1.64
  },
  {
    68.35,
    -315.1,
    1.64
  },
  {
    68.34,
    -318.11,
    1.64
  },
  {
    68.34,
    -321.22,
    1.64
  },
  {
    68.34,
    -324.31,
    1.64
  },
  {
    68.34,
    -327.39,
    1.64
  },
  {
    68.34,
    -330.46,
    1.64
  },
  {
    66.07,
    -332.23,
    1.64
  },
  {
    66.07,
    -329.1,
    1.64
  },
  {
    66.07,
    -325.93,
    1.64
  },
  {
    66.07,
    -322.89,
    1.64
  },
  {
    66.07,
    -319.8,
    1.64
  },
  {
    66.07,
    -316.56,
    1.64
  },
  {
    60.04,
    -317.81,
    1.64
  },
  {
    60.04,
    -320.85,
    1.64
  },
  {
    60.04,
    -324.09,
    1.64
  },
  {
    60.04,
    -327.2,
    1.64
  },
  {
    57.77,
    -328.71,
    1.64
  },
  {
    57.77,
    -325.69,
    1.64
  },
  {
    57.77,
    -322.53,
    1.64
  },
  {
    57.77,
    -319.5,
    1.64
  },
  {
    52.74,
    -340.66,
    1.74
  },
  {
    49.73,
    -340.66,
    1.79
  },
  {
    44.93,
    -340.65,
    1.91
  },
  {
    41.6,
    -340.67,
    2.02
  },
  {
    39.44,
    -339.33,
    2.09
  },
  {
    39.44,
    -336.33,
    2.09
  },
  {
    40.31,
    -335.13,
    2.06
  },
  {
    43.05,
    -335.13,
    1.97
  },
  {
    46.14,
    -335.13,
    1.87
  },
  {
    49.22,
    -335.13,
    1.8
  },
  {
    52.15,
    -335.13,
    1.75
  },
  {
    53.34,
    -333.87,
    1.73
  },
  {
    53.34,
    -330.81,
    1.73
  },
  {
    51.07,
    -329.38,
    1.77
  },
  {
    51.07,
    -332.41,
    1.77
  },
  {
    49.1,
    -332.86,
    1.81
  },
  {
    45.98,
    -332.86,
    1.88
  },
  {
    42.71,
    -332.86,
    1.98
  },
  {
    40.17,
    -332.84,
    2.06
  },
  {
    39.44,
    -331.5,
    2.09
  },
  {
    39.44,
    -328.62,
    2.09
  },
  {
    39.44,
    -324.58,
    2.09
  },
  {
    39.44,
    -321.35,
    2.09
  },
  {
    39.44,
    -318.19,
    2.09
  },
  {
    39.44,
    -315.34,
    2.09
  },
  {
    39.44,
    -309.21,
    2.09
  },
  {
    39.44,
    -306.15,
    2.09
  },
  {
    39.44,
    -303.25,
    2.09
  },
  {
    39.44,
    -300.18,
    2.09
  }
}
function onVehEnter(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and getElementModel(source) ~= 530 then
    endJobAll()
    exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153", "troll")
  end
end
function endJobAll()
  if isTimer(timerStats) then
    killTimer(timerStats)
  end
  if isElement(blip) then
    destroyElement(blip)
  end
  packPos = false
  triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "plrJob", localPlayer, false)
  runningBlock(localPlayer, false)
  unbindKey("h")
  triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "destroyVehicle", localPlayer)
  if self.moneySave > 1 then
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "wages", localPlayer, {
      self.moneySave,
      self.expSave,
      self.timeSave,
      false,
      62543864
    })
  end
  tick = false
  tickSave = false
  levelJob = false
  removeEventHandler("onClientVehicleEnter", root, onVehEnter)
  removeEventHandler("onClientRender", root, windowRender)
  for _FORV_3_, _FORV_4_ in pairs(textures1) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures1 = {}
  self = {}
end
function startJob1()
  textures1 = {
    carton_icon = dxCreateTexture("img/carton.png")
  }
  givePackPos = {
    107.55,
    -318.72,
    1.644
  }
  blip = createBlip(107.55, -318.72, 1.64, 0, 2, 0, 191, 0)
  self = {}
  addEventHandler("onClientVehicleEnter", root, onVehEnter)
  addEventHandler("onClientRender", root, windowRender)
  tick = getTickCount()
  tickSave = getTickCount()
  self.time = 0
  self.money = 0
  self.exp = 0
  self.moneySave = 0
  self.expSave = 0
  self.timeSave = 0
  self.showinfo = true
  self.countPlayer = 0
  triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "plrJob", localPlayer, true)
  timerStats = setTimer(function()
    if self.showinfo then
      for _FORV_4_, _FORV_5_ in ipairs(getElementsByType("player")) do
        if getElementData(_FORV_5_, "player:job") == "Magazynier" then
        end
      end
      self.countPlayer = 0 + 1
    end
  end, 15000, 0)
  bindKey("h", "down", showinfoF)
  for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
    if _FORV_4_.ulepszenie_wozek_magazynier == 1 then
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "createVehicle", localPlayer)
    end
  end
end
function braniePaczki()
  removeEventHandler("onClientRender", root, window)
  removeEventHandler("onClientClick", root, click)
  windows.category = false
  showCursor(false)
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
  runningBlock(localPlayer, true)
  exports.st_gui:showPlayerNotification("Dostarcz paczk\196\153 we wskazane miejsce", "info")
  packPos = {
    randomPosition[math.random(2, #randomPosition)][1],
    randomPosition[math.random(2, #randomPosition)][2],
    randomPosition[math.random(2, #randomPosition)][3]
  }
  blip = createBlip(randomPosition[math.random(2, #randomPosition)][1], randomPosition[math.random(2, #randomPosition)][2], randomPosition[math.random(2, #randomPosition)][3], 0, 2, 255, 191, 0)
  if getPedOccupiedVehicle(localPlayer) then
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "givePackWidlak", localPlayer)
    self.trzymaPaczke = "w\195\179zek"
  else
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "givePack", localPlayer)
    self.trzymaPaczke = false
  end
end
function odkladaniePaczki()
  if getPedOccupiedVehicle(localPlayer) then
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "destroyPackWidlak", localPlayer)
  else
    if self.trzymaPaczke == "w\195\179zek" then
      exports.st_gui:showPlayerNotification("Paczka kt\195\179r\196\133 chcesz od\197\130o\197\188y\196\135 jest na w\195\179zku", "error")
      return
    end
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "destroyPack", localPlayer)
  end
  if isElement(blip) then
    destroyElement(blip)
  end
  packPos = false
  if math.random(1, 2) == 1 then
    givePackPos = {
      107.55,
      -318.72,
      1.64
    }
    blip = createBlip(107.55, -318.72, 1.64, 0, 2, 0, 191, 0)
  else
    givePackPos = {
      45.54,
      -297.01,
      1.89
    }
    blip = createBlip(45.54, -297.01, 1.89, 0, 2, 0, 191, 0)
  end
  runningBlock(localPlayer, false)
  if self.worth1 == "#00ff40wysoka" then
    money = math.random(1200, 2500)
  elseif self.worth1 == "#fffc61\197\155rednia" then
    money = math.random(800, 1500)
  else
    money = math.random(600, 1000)
  end
  money = money * 1.6
  money = money * addMoney
  for _FORV_6_, _FORV_7_ in ipairs(table_statistics) do
    if _FORV_7_.ulepszenie_zarobek_magazynier == 1 then
      money = money * 1.1
    end
  end
  if getElementData(localPlayer, "player:premium") then
    money = money * 1.1
  end
  if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Magazynier" then
    money = money * getElementData(localPlayer, "player:bonusJob").addMoney
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
    money = money * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
  end
  money = math.floor(money)
  self.money = self.money + money
  self.exp = self.exp + 1
  self.expSave = self.expSave + 1
  self.moneySave = self.moneySave + money
  exports.st_gui:showPlayerNotification("Do wyp\197\130aty dopisano " .. math.floor(money) .. " PLN oraz " .. 3 + 1 .. " EXP", "money")
  self.worth1 = false
  exports.ST_levelsystem:addExp(3 + 1)
  triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
end
function showinfoF()
  if self.showinfo == true then
    self.showinfo = false
  else
    self.showinfo = true
  end
end
addEventHandler("onClientMarkerHit", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == _UPVALUE0_ then
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
      info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
      improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
      start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
      stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
      game_photo = dxCreateTexture("img/game_photo.png"),
      money_icon = dxCreateTexture("img/money_icon.png"),
      card_icon = dxCreateTexture("img/card_icon.png"),
      forklift_icon = dxCreateTexture("img/forklift_icon.png"),
      dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
      condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
      level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
      level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
      level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
      level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
      lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
      unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
      requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png")
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    windows.background = true
    windows.category = "g\197\130\195\179wne"
    showCursor(true)
    setCursorAlpha(255)
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_11_, _FORV_12_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksz\196\133 dop\197\130ate.",
          price = 400,
          icon = textures.dolar_icon,
          status = _FORV_12_.ulepszenie_zarobek_magazynier,
          nameDatabase = "ulepszenie_zarobek_magazynier"
        },
        {
          name = "Kondycja",
          description = "Dzi\196\153ki temu ulepszeniu poruszasz si\196\153 szybciej",
          price = 50,
          icon = textures.condition_icon,
          status = _FORV_12_.ulepszenie_kondycja_magazynier,
          nameDatabase = "ulepszenie_kondycja_magazynier"
        },
        {
          name = "W\195\179zek wid\197\130owy",
          description = "Otrzymujesz w\195\179zek wid\197\130owy (mo\197\188liwe jest wyj\197\155cie z w\195\179zka)",
          price = 600,
          icon = textures.forklift_icon,
          status = _FORV_12_.ulepszenie_wozek_magazynier,
          nameDatabase = "ulepszenie_wozek_magazynier"
        }
      }
    end
    if _ARG_2_ then
      blockStopJob = false
    end
  elseif _ARG_0_ == "wagesClient" then
    blockStopJob = false
  end
end)
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
      if _FORV_6_.ulepszenie_kondycja_magazynier == 1 then
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
getResourceName(getThisResource(), true, 540601678)
return
