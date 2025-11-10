plateAlpha = 255
lastPlace = 0
hitX, hitY = -100, -100
hitS = math.floor(70 / exports.st_gui:getInterfaceZoom())
createBlip(255.11, 491.44, 20.09, 46, 2, 0, 0, 0, 0, 0, 250)
lastTickCount = getTickCount()
table_statistics = {}
peds = {
  {
    859.83,
    -2857.9,
    544.8,
    0,
    0,
    90,
    859.1,
    -2857.91,
    544.8
  },
  {
    858.43,
    -2857.91,
    544.807,
    0,
    0,
    -90,
    859.1,
    -2857.91,
    544.8
  },
  {
    852.51,
    -2844.72,
    544.8,
    0,
    0,
    180,
    852.34,
    -2846.23,
    544.8
  },
  {
    853.37,
    -2845.73,
    544.8,
    0,
    0,
    90,
    852.34,
    -2846.23,
    544.8
  },
  {
    853.37,
    -2846.9,
    544.8,
    0,
    0,
    90,
    852.34,
    -2846.23,
    544.8
  },
  {
    852.51,
    -2847.72,
    544.8,
    0,
    0,
    0,
    852.34,
    -2846.23,
    544.8
  },
  {
    847.32,
    -2839.5,
    544.8,
    0,
    0,
    180,
    847.08,
    -2840.68,
    544.8
  },
  {
    846.92,
    -2841.4,
    544.8,
    0,
    0,
    0,
    847.08,
    -2840.68,
    544.8
  },
  {
    847.32,
    -2842.5,
    544.8,
    0,
    0,
    180,
    846.91,
    -2843.42,
    544.8
  },
  {
    846.6,
    -2844.2,
    544.8,
    0,
    0,
    0,
    846.91,
    -2843.42,
    544.8
  },
  {
    847.5,
    -2844.2,
    544.8,
    0,
    0,
    0,
    846.91,
    -2843.42,
    544.8
  },
  {
    847.32,
    -2845.5,
    544.8,
    0,
    0,
    180,
    847.05,
    -2846.46,
    544.8
  },
  {
    846.92,
    -2847.2,
    544.8,
    0,
    0,
    0,
    847.05,
    -2846.46,
    544.8
  },
  {
    840.79,
    -2829.45,
    544.8,
    0,
    0,
    180,
    840.5,
    -2830.18,
    544.8
  },
  {
    840.03,
    -2831.18,
    544.8,
    0,
    0,
    0,
    840.5,
    -2830.18,
    544.8
  },
  {
    840.79,
    -2835.9,
    544.8,
    0,
    0,
    180,
    840.36,
    -2836.58,
    544.8
  },
  {
    840.03,
    -2837.45,
    544.8,
    0,
    0,
    0,
    840.36,
    -2836.58,
    544.8
  },
  {
    840.03,
    -2841.7,
    544.8,
    0,
    0,
    180,
    840.53,
    -2842.67,
    544.8
  },
  {
    840.8,
    -2843.7,
    544.8,
    0,
    0,
    0,
    840.53,
    -2842.67,
    544.8
  },
  {
    843.31,
    -2852.75,
    547.9,
    0,
    0,
    205,
    844.17,
    -2854.68,
    547.9
  },
  {
    842.39,
    -2853.2,
    547.9,
    0,
    0,
    205,
    844.17,
    -2854.68,
    547.9
  },
  {
    845.41,
    -2852.77,
    547.9,
    0,
    0,
    150,
    844.17,
    -2854.68,
    547.9
  },
  {
    852.7,
    -2852.21,
    547.9,
    0,
    0,
    150,
    851.46,
    -2853.81,
    547.9
  },
  {
    850.56,
    -2852.08,
    547.9,
    0,
    0,
    225,
    851.46,
    -2853.81,
    547.9
  },
  {
    827.88,
    -2847.91,
    544.8,
    0,
    0,
    0,
    827.34,
    -2846.16,
    544.8
  },
  {
    826.88,
    -2847.91,
    544.8,
    0,
    0,
    0,
    827.34,
    -2846.16,
    544.8
  },
  {
    828.81,
    -2846.52,
    544.8,
    0,
    0,
    90,
    827.34,
    -2846.16,
    544.8
  },
  {
    828.81,
    -2845.52,
    544.8,
    0,
    0,
    90,
    827.34,
    -2846.16,
    544.8
  },
  {
    825.8,
    -2846.52,
    544.8,
    0,
    0,
    -90,
    827.34,
    -2846.16,
    544.8
  },
  {
    825.8,
    -2845.52,
    544.8,
    0,
    0,
    -90,
    827.34,
    -2846.16,
    544.8
  },
  {
    836.15,
    -2835.8,
    544.8,
    0,
    0,
    180,
    835.56,
    -2836.59,
    544.8
  },
  {
    835.15,
    -2835.8,
    544.8,
    0,
    0,
    180,
    835.56,
    -2836.59,
    544.8
  },
  {
    836.15,
    -2837.5,
    544.8,
    0,
    0,
    0,
    835.56,
    -2836.59,
    544.8
  },
  {
    831.81,
    -2832.1,
    544.8,
    0,
    0,
    0,
    831.95,
    -2830.66,
    544.8
  },
  {
    831.63,
    -2829.26,
    544.8,
    0,
    0,
    180,
    831.95,
    -2830.66,
    544.8
  },
  {
    826.54,
    -2831.5,
    544.8,
    0,
    0,
    0,
    826.3,
    -2830.5,
    544.8
  },
  {
    826.71,
    -2829.35,
    544.8,
    0,
    0,
    180,
    826.3,
    -2830.5,
    544.8
  },
  {
    825.69,
    -2830.47,
    544.8,
    0,
    0,
    -90,
    826.3,
    -2830.5,
    544.8
  },
  {
    841.9,
    -2857.65,
    544.8,
    0,
    0,
    0,
    842.68,
    -2856.77,
    544.8
  },
  {
    843.1,
    -2855.91,
    544.8,
    0,
    0,
    180,
    842.68,
    -2856.77,
    544.8
  },
  {
    843.12,
    -2853.16,
    544.8,
    0,
    0,
    0,
    842.55,
    -2852.41,
    544.8
  },
  {
    841.89,
    -2851.63,
    544.8,
    0,
    0,
    180,
    842.55,
    -2852.41,
    544.8
  },
  {
    855.54,
    -2857.83,
    544.8,
    0,
    0,
    90,
    854.92,
    -2857.87,
    544.8
  },
  {
    854.15,
    -2857.88,
    544.8,
    0,
    0,
    -90,
    854.92,
    -2857.87,
    544.8
  },
  {
    825.67,
    -2834,
    544.8,
    0,
    0,
    180,
    826.24,
    -2835.47,
    544.8
  },
  {
    826.73,
    -2836.4,
    544.8,
    0,
    0,
    0,
    826.24,
    -2835.47,
    544.8
  },
  {
    825.67,
    -2837.5,
    544.8,
    0,
    0,
    180,
    826.52,
    -2838.59,
    544.8
  },
  {
    826.73,
    -2839.8,
    544.8,
    0,
    0,
    0,
    826.52,
    -2838.59,
    544.8
  }
}
points = {
  {
    1,
    40.78,
    358.9,
    16.89,
    226.54
  },
  {
    2,
    -360.51,
    1111.02,
    20.15,
    269.36
  },
  {
    3,
    26.17,
    1174.72,
    19.39,
    91.38
  },
  {
    4,
    -92.37,
    970.04,
    19.98,
    0.45
  },
  {
    5,
    -21.11,
    1348.44,
    9.17,
    6.79
  },
  {
    6,
    1618.8,
    687.03,
    12.54,
    359.94
  },
  {
    7,
    1721.8,
    748.2,
    12.54,
    180.21
  },
  {
    8,
    1845.75,
    737.15,
    11.46,
    271.12
  },
  {
    9,
    1845.75,
    657.16,
    11.46,
    269.71
  },
  {
    10,
    2175.06,
    690.6,
    11.46,
    0.1
  },
  {
    11,
    2260.67,
    735.86,
    11.46,
    178.96
  },
  {
    12,
    2394.65,
    690.6,
    11.45,
    359.04
  },
  {
    13,
    2621.05,
    721.4,
    10.82,
    90.5
  },
  {
    14,
    2501.61,
    920.25,
    11.02,
    89.46
  },
  {
    15,
    2563.25,
    1174.41,
    10.93,
    187.24
  },
  {
    16,
    2119.38,
    898.48,
    11.18,
    359.76
  },
  {
    17,
    2019.64,
    1007.84,
    10.82,
    269.89
  },
  {
    18,
    1464.78,
    1897.38,
    11.46,
    270.42
  },
  {
    19,
    1364.76,
    1899.23,
    11.47,
    270.59
  },
  {
    20,
    1318.76,
    2008.07,
    11.46,
    89.28
  },
  {
    21,
    1346.44,
    2609.69,
    10.82,
    181.97
  },
  {
    22,
    1664.9,
    2844,
    10.82,
    181.09
  },
  {
    23,
    1227.7,
    2584.95,
    10.82,
    270.44
  },
  {
    24,
    984.72,
    2345.84,
    11.47,
    268.67
  },
  {
    25,
    757.73,
    1972.93,
    5.34,
    175.81
  },
  {
    26,
    662.25,
    1717.61,
    7.19,
    40.49
  },
  {
    27,
    1292.86,
    281.17,
    19.55,
    246.14
  },
  {
    28,
    1419.78,
    391.75,
    19.31,
    248.07
  },
  {
    29,
    1565.44,
    21.23,
    24.16,
    93.18
  },
  {
    30,
    2238.02,
    168.33,
    28.15,
    177.94
  },
  {
    31,
    2325.22,
    116.25,
    28.44,
    272.04
  },
  {
    32,
    2556.38,
    87.9,
    27.68,
    88.34
  },
  {
    33,
    1029.95,
    -372.23,
    73.41,
    177.59
  },
  {
    34,
    271.55,
    -51.01,
    2.05,
    181.46
  },
  {
    35,
    250.81,
    -92.44,
    3.52,
    89.32
  },
  {
    36,
    -715.52,
    1435.18,
    18.48,
    89.51
  },
  {
    37,
    -755.94,
    1638.12,
    27.25,
    177.97
  },
  {
    38,
    -311.28,
    1301.4,
    53.66,
    272.08
  },
  {
    39,
    -280.53,
    2722.93,
    62.46,
    269.61
  },
  {
    40,
    709.93,
    1194.85,
    13.4,
    264.85
  },
  {
    41,
    1629.52,
    972.06,
    10.82,
    270.51
  },
  {
    42,
    787.76,
    376.43,
    21.2,
    340.82
  },
  {
    43,
    681.21,
    292.48,
    20.1,
    240.9
  },
  {
    44,
    1436.22,
    68.26,
    32.54,
    219.95
  },
  {
    45,
    1952.9,
    1343,
    15.37,
    269.82
  },
  {
    46,
    1673.07,
    1447.88,
    10.79,
    267.53
  }
}
clientsBlip = {}
clientsPed = {}
cook = createPed(155, 849.93, -2830.99, 544.8, 180)
setElementDimension(cook, 1)
skins = {
  142,
  143,
  144,
  141,
  130,
  131,
  132,
  133,
  134,
  135,
  123,
  124,
  125,
  126,
  127,
  128,
  129,
  110,
  111,
  112,
  113,
  114,
  115,
  116,
  91,
  90,
  51,
  52,
  53,
  54,
  55,
  56
}
ped = {}
for _FORV_7_, _FORV_8_ in pairs(peds) do
  randomSkin = math.random(1, #skins)
  ped[_FORV_7_] = createPed(skins[randomSkin], _FORV_8_[1], _FORV_8_[2], _FORV_8_[3] + 0.35, _FORV_8_[6])
  setElementDimension(ped[_FORV_7_], 1)
  setElementCollisionsEnabled(ped[_FORV_7_], false)
  setPedAnimation(ped[_FORV_7_], "food", "ff_sit_eat" .. math.random(1, 3))
end
startMarkerJob = createMarker(858.46, -2839.66, 543.9, "cylinder", 2.5, 255, 255, 255, 255)
setElementData(startMarkerJob, "marker:icon", "praca")
setElementDimension(startMarkerJob, 1)
function renderBieganie()
  keys = getBoundKeys("forwards")
  for _FORV_3_, _FORV_4_ in pairs(keys) do
    if _FORV_4_ and blocked then
      setPedControlState(localPlayer, "walk", true)
    end
  end
end
function blokadaChodzenia(_ARG_0_, _ARG_1_)
  if _ARG_1_ then
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
    addEventHandler("onClientRender", root, renderBieganie)
    for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
      if _FORV_6_.ulepszenie_kondycja_restauracja == 1 then
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
function takePizza()
  selfRender.trzymamPizzeGui = false
  removeEventHandler("onClientRender", root, window)
  windows.category = false
  showCursor(false)
  setPedAnimation(localPlayer, "carry", "crry_prtial", 1, false, true)
  triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "givePizza", localPlayer)
  blokadaChodzenia(localPlayer, false)
  if levelJob1 == 2 then
    selfRender.trackingPosPizza = {
      peds[math.random(1, #ped)][7],
      peds[math.random(1, #ped)][8],
      peds[math.random(1, #ped)][9]
    }
    pizzaCustomerText = createElement("text")
    setElementPosition(pizzaCustomerText, getElementPosition(ped[math.random(1, #ped)]))
    setElementDimension(pizzaCustomerText, 1)
    setElementData(pizzaCustomerText, "name", "Zam\195\179wienie numer " .. selfRender.nrZamowienia .. ", poprosz\196\153 tutaj!")
    exports.st_gui:showPlayerNotification("Podaj pizze klientowi", "info")
  else
  end
  blokadaChodzenia(localPlayer, true)
end
function generateHitPoint()
  hitX, hitY = generateRandomPointBetween(windowPos.x - 30 / _UPVALUE0_, windowPos.y + 75 / _UPVALUE0_, 400 / _UPVALUE0_, 400 / _UPVALUE0_, hitS, hitS)
end
function cleanPlate()
  plateAlpha = plateAlpha - math.random(20, 60)
  if plateAlpha > 0 then
    generateHitPoint()
  elseif plateAlpha <= 0 then
    lastPlace = lastPlace - 1
    plateAlpha = 255
    if lastPlace == 0 then
      money = math.random(300, 1300)
      for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
        if _FORV_4_.ulepszenie_zarobek_restauracja == 1 then
          money = money * 1.1
        end
      end
      if getElementData(localPlayer, "player:premium") then
        money = money * 1.1
      end
      if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Restauracja" then
        money = money * getElementData(localPlayer, "player:bonusJob").addMoney
      end
      if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
        money = money * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
      end
      money = math.floor(money)
      removeEventHandler("onClientRender", root, window)
      showCursor(false)
      windows.category = false
      exports.ST_levelsystem:addExp(1)
      selfRender.exp = selfRender.exp + 1
      selfRender.zarobek = selfRender.zarobek + math.floor(money)
      triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
      triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "wages", {
        math.floor(money),
        13767535
      })
      exports.st_gui:showPlayerNotification("Uda\197\130o ci si\196\153 wyczy\197\155ci\196\135 naczynie! Otrzymujesz " .. math.floor(money) .. " PLN za swoj\196\133 prac\196\153.", "success")
      return
    end
    exports.st_gui:showPlayerNotification("Uda\197\130o ci si\196\153 wyczy\197\155ci\196\135 naczynie! Pozosta\197\130o jeszcze " .. lastPlace .. " naczy\197\132.", "success")
  end
  generateHitPoint()
end
function endJobAll()
  if isEventHandlerAdded("onClientRender", root, windowRender1) then
    removeEventHandler("onClientRender", root, windowRender1)
    for _FORV_3_, _FORV_4_ in pairs(texturesTracking) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesTracking = {}
  end
  if isEventHandlerAdded("onClientRender", root, windowRender2) then
    removeEventHandler("onClientRender", root, windowRender2)
  end
  if isEventHandlerAdded("onClientRender", root, windowRender3) then
    removeEventHandler("onClientRender", root, windowRender3)
  end
  if isElement(pizzaCustomerText) then
    destroyElement(pizzaCustomerText)
    pizzaCustomerText = nil
  end
  if isElement(cleaningMarker) then
    destroyElement(cleaningMarker)
    cleaningMarker = nil
  end
  if isElement(blipLoadingPizza) then
    destroyElement(blipLoadingPizza)
    blipLoadingPizza = nil
  end
  if isElement(givingPizza) then
    destroyElement(givingPizza)
    givingPizza = nil
  end
  triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "destroyPizza", localPlayer)
  triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "plrJob", localPlayer, false)
  setElementData(localPlayer, "blokadawsiadania", false)
  blokadaChodzenia(localPlayer, false)
  if isEventHandlerAdded("onClientVehicleEnter", root, onVehEnter) then
    removeEventHandler("onClientVehicleEnter", selfRender.idVehGlobal, onVehEnter)
  end
  if isEventHandlerAdded("onClientVehicleExit", root, onVehExit) then
    removeEventHandler("onClientVehicleExit", selfRender.idVehGlobal, onVehExit)
  end
  for _FORV_3_, _FORV_4_ in pairs(selfRender.zamowieniaTable) do
    destroyElement(clientsBlip[_FORV_4_[1]])
    destroyElement(clientsPed[_FORV_4_[1]])
  end
  triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "destroyVeh", localPlayer)
  selfRender = {}
end
function startJob(_ARG_0_)
  triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "plrJob", localPlayer, true)
  selfRender = {}
  selfRender.time = 0
  selfRender.exp = 0
  selfRender.zarobek = 0
  selfRender.zamowieniaTable = {}
  tick = getTickCount()
  if _ARG_0_ == 1 then
    texturesTracking = {
      sink = dxCreateTexture("img/sink.png"),
      plate = dxCreateTexture("img/plate.png"),
      dirt_plate = dxCreateTexture("img/dirt_plate.png"),
      crosshair = dxCreateTexture("img/crosshair.png"),
      sponge = dxCreateTexture("img/sponge.png"),
      game_photo = dxCreateTexture("img/game_photo.png")
    }
    selfRender.trackingPos = {
      {
        845.99,
        -2824.57,
        544.8
      },
      {
        850.18,
        -2812.31,
        544.8
      },
      {
        839.66,
        -2813.58,
        544.8
      },
      {
        839.66,
        -2821.1,
        544.8
      },
      {
        844.8,
        -2828.19,
        544.8
      },
      {
        846.41,
        -2817.96,
        544.8
      }
    }
    addEventHandler("onClientRender", root, windowRender1)
  elseif _ARG_0_ == 2 then
    texturesTracking = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      pizza_clipart = dxCreateTexture("img/pizza_clipart.png"),
      terminal_clipart = dxCreateTexture("img/terminal.png"),
      client_icon = dxCreateTexture(":ST_taximeter_job/img/client.png")
    }
    selfRender.przyciskiTerminal = {
      {1},
      {2},
      {3},
      {4},
      {5},
      {6},
      {7},
      {8},
      {9},
      {"*"},
      {0},
      {"#"},
      {"CLEAR"},
      {"ENTER"}
    }
    selfRender.trackingPos = {
      {
        849.96,
        -2832.41,
        544.8
      }
    }
    addEventHandler("onClientRender", root, windowRender2)
    blokadaChodzenia(localPlayer, true)
  elseif _ARG_0_ == 3 then
    selfRender.przyciskiTerminal = {
      {1},
      {2},
      {3},
      {4},
      {5},
      {6},
      {7},
      {8},
      {9},
      {"*"},
      {0},
      {"#"},
      {"CLEAR"},
      {"ENTER"}
    }
    texturesTracking = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      pizza_clipart = dxCreateTexture("img/pizza_clipart.png"),
      terminal_clipart = dxCreateTexture("img/terminal.png"),
      scooter_icon = dxCreateTexture("img/scooter_icon.png"),
      client_icon = dxCreateTexture(":ST_taximeter_job/img/client.png")
    }
    for _FORV_4_, _FORV_5_ in ipairs(table_statistics) do
      triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "createVehicle", localPlayer, 3, _FORV_5_.ulepszenie_motor_restauracja)
      if _FORV_5_.ulepszenie_obrotny_restauracja == 1 then
        selfRender.maxLiczbaZamowien = 6
      else
        selfRender.maxLiczbaZamowien = 5
      end
    end
    addEventHandler("onClientRender", root, windowRender3)
    selfRender.odbiorZamowienia = {
      246.64,
      501.49,
      5.93
    }
    selfRender.zaladowaneZamowienia = 0
    selfRender.trackingText = "Za\197\130aduj zam\195\179wienia"
  elseif _ARG_0_ == 4 then
    selfRender.przyciskiTerminal = {
      {1},
      {2},
      {3},
      {4},
      {5},
      {6},
      {7},
      {8},
      {9},
      {"*"},
      {0},
      {"#"},
      {"CLEAR"},
      {"ENTER"}
    }
    texturesTracking = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      pizza_clipart = dxCreateTexture("img/pizza_clipart.png"),
      terminal_clipart = dxCreateTexture("img/terminal.png"),
      scooter_icon = dxCreateTexture("img/car_icon.png"),
      client_icon = dxCreateTexture(":ST_taximeter_job/img/client.png")
    }
    for _FORV_4_, _FORV_5_ in ipairs(table_statistics) do
      triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "createVehicle", localPlayer, 4, _FORV_5_.ulepszenie_auto_restauracja)
      if _FORV_5_.ulepszenie_obrotny_restauracja == 1 then
        selfRender.maxLiczbaZamowien = 6
      else
        selfRender.maxLiczbaZamowien = 5
      end
    end
    addEventHandler("onClientRender", root, windowRender3)
    selfRender.odbiorZamowienia = {
      246.64,
      501.49,
      5.93
    }
    selfRender.zaladowaneZamowienia = 0
    selfRender.trackingText = "Za\197\130aduj zam\195\179wienia"
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == startMarkerJob then
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      widget = dxCreateTexture(":ST_jobs_settings/img/widget_jobs.png"),
      off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
      info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
      level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
      level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
      level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
      level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
      improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
      dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
      condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
      motorcycle_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/motorcycle_icon.png"),
      car_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/car_icon.png"),
      energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png"),
      pizza_clipart = dxCreateTexture("img/pizza_clipart.png"),
      start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
      stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
      requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png"),
      lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
      unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
      game_photo = dxCreateTexture("img/game_photo.png")
    }
    upgrades = {
      {
        name = "Wi\196\153kszy zarobek",
        description = "Otrzymujesz wi\196\153ksze wynagrodzenie\n(dost\196\153pne dla ka\197\188degu levelu)",
        price = 800,
        icon = textures.dolar_icon,
        status = 0,
        nameDatabase = "ulepszenie_zarobek_restauracja"
      },
      {
        name = "Kondycja",
        description = "Dzi\196\153ki temu ulepszeniu poruszasz\nsi\196\153 szybciej (dost\196\153pne dla 2,3,4 levelu)",
        price = 300,
        icon = textures.condition_icon,
        status = 0,
        nameDatabase = "ulepszenie_kondycja_restauracja"
      },
      {
        name = "Energiczny",
        description = "Dodaje jedno zlecenie wi\196\153cej\n(tylko dla 3 oraz 4 levelu)",
        price = 400,
        icon = textures.energy_icon,
        status = 0,
        nameDatabase = "ulepszenie_obrotny_restauracja"
      },
      {
        name = "Nowy motocykl",
        description = "Otrzymujesz nowy motocykl by\nlepiej radzi\196\135 sobie ze zleceniami (dost\196\153pne tylko dla 3 levelu)",
        price = 300,
        icon = textures.motorcycle_icon,
        status = 0,
        nameDatabase = "ulepszenie_motor_restauracja"
      },
      {
        name = "Nowy samoch\195\179d",
        description = "Otrzymujesz nowy samoch\195\179d by\nlepiej radzi\196\135 sobie ze zleceniami (dost\196\153pne tylko dla 4 levelu)",
        price = 800,
        icon = textures.car_icon,
        status = 0,
        nameDatabase = "ulepszenie_auto_restauracja"
      },
      {
        name = "Automatyczne rozliczanie",
        description = "Klienci zostaj\196\133 automatycznie rozliczeni\n(dost\196\153pne dla 2,3,4 levelu)",
        price = 900,
        icon = textures.condition_icon,
        status = status_terminal,
        nameDatabase = "ulepszenie_terminal_restauracja"
      }
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientKey", root, key)
    triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
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
    for _FORV_13_, _FORV_14_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie\n(dost\196\153pne dla ka\197\188degu levelu)",
          price = 800,
          icon = textures.dolar_icon,
          status = _FORV_14_.ulepszenie_zarobek_restauracja,
          nameDatabase = "ulepszenie_zarobek_restauracja"
        },
        {
          name = "Kondycja",
          description = "Dzi\196\153ki temu ulepszeniu poruszasz\nsi\196\153 szybciej (dost\196\153pne dla 2,3,4 levelu)",
          price = 300,
          icon = textures.condition_icon,
          status = _FORV_14_.ulepszenie_kondycja_restauracja,
          nameDatabase = "ulepszenie_kondycja_restauracja"
        },
        {
          name = "Energiczny",
          description = "Dodaje jedno zlecenie wi\196\153cej\n(tylko dla 3 oraz 4 levelu)",
          price = 400,
          icon = textures.energy_icon,
          status = _FORV_14_.ulepszenie_obrotny_restauracja,
          nameDatabase = "ulepszenie_obrotny_restauracja"
        },
        {
          name = "Nowy motocykl",
          description = "Otrzymujesz nowy motocykl by\nlepiej radzi\196\135 sobie ze zleceniami (dost\196\153pne tylko dla 3 levelu)",
          price = 300,
          icon = textures.motorcycle_icon,
          status = _FORV_14_.ulepszenie_motor_restauracja,
          nameDatabase = "ulepszenie_motor_restauracja"
        },
        {
          name = "Nowy samoch\195\179d",
          description = "Otrzymujesz nowy samoch\195\179d by\nlepiej radzi\196\135 sobie ze zleceniami (dost\196\153pne tylko dla 4 levelu)",
          price = 800,
          icon = textures.car_icon,
          status = _FORV_14_.ulepszenie_auto_restauracja,
          nameDatabase = "ulepszenie_auto_restauracja"
        },
        {
          name = "Automatyczne rozliczanie",
          description = "Klienci zostaj\196\133 automatycznie rozliczeni\n(dost\196\153pne dla 2,3,4 levelu)",
          price = 900,
          icon = textures.condition_icon,
          status = _FORV_14_.ulepszenie_terminal_restauracja,
          nameDatabase = "ulepszenie_terminal_restauracja"
        }
      }
    end
  elseif _ARG_0_ == "prepareToDrive" then
    selfRender.idVehGlobal = _ARG_1_
    colVehTracking = createColSphere(0, 0, 0, 1)
    if levelJob1 == 3 then
      attachElements(colVehTracking, selfRender.idVehGlobal, 0, -1.2, 0)
    else
      attachElements(colVehTracking, selfRender.idVehGlobal, 0, -2.6, 0)
    end
    addEventHandler("onClientVehicleEnter", selfRender.idVehGlobal, onVehEnter)
    addEventHandler("onClientVehicleExit", selfRender.idVehGlobal, onVehExit)
  end
end)
function onVehEnter(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    setVehicleDoorOpenRatio(selfRender.idVehGlobal, 1, 0, 2000)
    trackingVehicleStatus = false
    if levelJob1 == 3 then
      attachElements(colVehTracking, selfRender.idVehGlobal, 0, -1.2, 0)
    else
      attachElements(colVehTracking, selfRender.idVehGlobal, 0, -2.6, 0)
    end
    if selfRender.maPizze then
      triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "destroyPizza", localPlayer)
    end
  end
end
function onVehExit(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    setVehicleDoorOpenRatio(selfRender.idVehGlobal, 1, 1, 2000)
    trackingVehicleStatus = true
    if levelJob1 == 3 then
      attachElements(colVehTracking, selfRender.idVehGlobal, 0, -1.2, 0)
    else
      attachElements(colVehTracking, selfRender.idVehGlobal, 0, -2.6, 0)
    end
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function kropka(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(.-)$(%d*)") .. string.match(_ARG_0_, "^([^%d]*%d)(.-)$(%d*)"):reverse():gsub("(%d%)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(.-)$(%d*)")
end
function generateRandomPointBetween(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  _ARG_0_ = _ARG_0_ + math.floor(math.random() * (_ARG_0_ + _ARG_2_ - _ARG_4_ - _ARG_0_))
  _ARG_1_ = _ARG_1_ + math.floor(math.random() * (_ARG_1_ + _ARG_3_ - _ARG_5_ - _ARG_1_))
  return _ARG_0_, _ARG_1_
end
function isMouseIn(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not isCursorShowing() then
    return false
  end
  if _ARG_0_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_0_ + _ARG_2_ and _ARG_1_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_1_ + _ARG_3_ then
    return true
  else
    return false
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
function string.insert(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ then
    return _ARG_0_:sub(1, _ARG_2_) .. _ARG_1_ .. _ARG_0_:sub(_ARG_2_ + 1)
  else
    return _ARG_1_:sub(1, _ARG_3_) .. _ARG_2_ .. _ARG_1_:sub(_ARG_3_ + 1)
  end
end
function giveMoneyKelner()
  showCursor(false)
  removeEventHandler("onClientRender", root, window)
  windows.category = false
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
  if isElement(pizzaCustomerText) then
    destroyElement(pizzaCustomerText)
    pizzaCustomerText = nil
    money = math.random(500, 4000)
    money = money * 1.3
    for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
      if _FORV_4_.ulepszenie_zarobek_restauracja == 1 then
        money = money * 1.1
      end
    end
    if getElementData(localPlayer, "player:premium") then
      money = money * 1.1
    end
    if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Restauracja" then
      money = money * getElementData(localPlayer, "player:bonusJob").addMoney
    end
    if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
      money = money * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
    end
    money = math.floor(money)
    setElementFrozen(localPlayer, false)
    triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "wages", {
      math.floor(money),
      13767535
    })
    exports.ST_levelsystem:addExp(3)
    triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
    exports.st_gui:showPlayerNotification("Otrzymujesz " .. math.floor(money) .. " PLN", "success")
    setElementPosition(localPlayer, getElementPosition(localPlayer))
    selfRender.exp = selfRender.exp + 1
    selfRender.zarobek = selfRender.zarobek + math.floor(money)
  end
  if isElement(pizzaCustomerText) then
    destroyElement(pizzaCustomerText)
    pizzaCustomerText = nil
  end
end
function giveMoneyDostawca(_ARG_0_)
  showCursor(false)
  removeEventHandler("onClientRender", root, window)
  windows.category = false
  for _FORV_4_, _FORV_5_ in pairs(textures) do
    if isElement(_FORV_5_) then
      destroyElement(_FORV_5_)
    end
  end
  textures = {}
  if _ARG_0_ then
    for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
      if _FORV_6_.ulepszenie_zarobek_restauracja == 1 then
      end
    end
    if getElementData(localPlayer, "player:premium") then
    end
    if levelJob1 == 4 then
    end
    if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Restauracja" then
    end
    if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
    end
    triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "wages", {
      math.floor((math.floor(selfRender.zamowieniaTable[selfRender.idTable][6] * 1.1 * 1.1 * 1.25 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")))),
      13767535
    })
    exports.ST_levelsystem:addExp(3)
    triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
    exports.st_gui:showPlayerNotification("Otrzymujesz " .. math.floor((math.floor(selfRender.zamowieniaTable[selfRender.idTable][6] * 1.1 * 1.1 * 1.25 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")))) .. " PLN", "success")
    selfRender.exp = selfRender.exp + 1
    selfRender.zarobek = selfRender.zarobek + math.floor((math.floor(selfRender.zamowieniaTable[selfRender.idTable][6] * 1.1 * 1.1 * 1.25 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))))
  end
  setElementFrozen(localPlayer, false)
  selfRender.zaladowaneZamowienia = selfRender.zaladowaneZamowienia + 1
  selfRender.trackingText = "DOSTARCZ ZAM\195\147WIENIA #ffbf00" .. selfRender.zaladowaneZamowienia .. " #f0f0f0/ #ffbf00" .. selfRender.maxLiczbaZamowien .. ""
  if selfRender.zaladowaneZamowienia == selfRender.maxLiczbaZamowien then
    selfRender.zaladowaneZamowienia = 0
    selfRender.trackingText = "WR\195\147\196\134 NA BAZE I ZA\197\129ADUJ ZAM\195\147WIENIA"
    selfRender.odbiorZamowienia = {
      246.64,
      501.49,
      5.93
    }
    exports.st_gui:showPlayerNotification("Dostarczono wszystkie zam\195\179wienia! Wr\195\179\196\135 do bazy aby za\197\130adowa\196\135 kolejne", "info")
  end
  selfRender.maPizze = false
  destroyElement(clientsBlip[selfRender.zamowieniaTable[selfRender.idTable][1]])
  destroyElement(clientsPed[selfRender.zamowieniaTable[selfRender.idTable][1]])
  table.remove(selfRender.zamowieniaTable, selfRender.idTable)
  if isElement(pizzaCustomerText) then
    destroyElement(pizzaCustomerText)
    pizzaCustomerText = nil
  end
  selfRender.idTable = false
end
function insertPackPos()
  for _FORV_5_, _FORV_6_ in ipairs(selfRender.zamowieniaTable) do
    if _FORV_6_[1] == points[math.random(1, #points)][1] then
      insertPackPos()
    end
  end
  if not true then
    table.insert(selfRender.zamowieniaTable, {
      points[math.random(1, #points)][1],
      points[math.random(1, #points)][2],
      points[math.random(1, #points)][3],
      points[math.random(1, #points)][4],
      points[math.random(1, #points)][5],
      5000 * math.floor((getDistanceBetweenPoints3D(points[math.random(1, #points)][2], points[math.random(1, #points)][3], points[math.random(1, #points)][4], getElementPosition(localPlayer)))) / 500
    })
  end
end
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(15, 15, 15, 255))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_6_ == 1 then
      scrollbarPos = _ARG_2_
    elseif 0 < _ARG_6_ then
      scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
    end
    if _ARG_0_ <= _ARG_5_ then
    end
    dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  end
end
getResourceName(getThisResource(), true, 340977920)
return
