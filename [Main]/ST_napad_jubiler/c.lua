posAttack = {
  [1] = {
    id = 1,
    pos = {
      478.37,
      -1534.89,
      19.64
    },
    doorPos = {
      476.8,
      -1534.07,
      19.95,
      0,
      0,
      -75
    },
    pkt = {
      {
        471.23,
        -1545.37,
        19.71
      },
      {
        469,
        -1546.09,
        19.72
      },
      {
        462.24,
        -1547.93,
        19.71
      },
      {
        459.98,
        -1548.56,
        19.71
      },
      {
        455.29,
        -1532.14,
        19.72
      },
      {
        457.52,
        -1531.46,
        19.71
      },
      {
        464.29,
        -1529.55,
        19.71
      },
      {
        466.49,
        -1528.84,
        19.71
      },
      {
        467.8,
        -1533.39,
        19.71
      },
      {
        469.89,
        -1540.68,
        19.71
      },
      {
        453.43,
        -1549.96,
        19.71
      },
      {
        449.79,
        -1537.76,
        19.71
      }
    }
  },
  [2] = {
    id = 2,
    pos = {
      2009.9,
      1168.17,
      10.82
    },
    doorPos = {
      2006.3,
      1167.7,
      11.1,
      0,
      0,
      90
    },
    pkt = {
      {
        1997.95,
        1159.86,
        10.84
      },
      {
        1995.69,
        1159.86,
        10.84
      },
      {
        1986.2,
        1159.88,
        10.84
      },
      {
        1988.55,
        1159.87,
        10.84
      },
      {
        1986.2,
        1176.34,
        10.84
      },
      {
        1988.55,
        1176.39,
        10.84
      },
      {
        1995.7,
        1176.31,
        10.84
      },
      {
        1997.77,
        1176.36,
        10.84
      },
      {
        1997.94,
        1171.58,
        10.85
      },
      {
        1997.95,
        1164.7,
        10.85
      },
      {
        1988.55,
        1164.72,
        10.84
      },
      {
        1988.55,
        1171.56,
        10.84
      }
    }
  },
  [3] = {
    id = 3,
    pos = {
      -2055.51,
      455.52,
      35.17
    },
    doorPos = {
      -2056.7,
      453.4,
      35.4,
      0,
      0,
      135
    },
    pkt = {
      {
        -2060.55,
        437.04,
        35.18
      },
      {
        -2067.29,
        443.36,
        35.18
      },
      {
        -2062.97,
        452.93,
        35.18
      },
      {
        -2052.42,
        444.16,
        35.18
      }
    }
  }
}
self = {}
package_objects = {}
posEnd = {
  {
    2814.8,
    2586.66,
    9.85
  },
  {
    2818.07,
    891.16,
    10.75
  },
  {
    2314,
    56.36,
    26.48
  }
}
packages_positions = {
  {
    0.8,
    -1.2,
    0.45
  },
  {
    -0.8,
    -1.2,
    0.45
  },
  {
    0.8,
    -1.8,
    0.45
  },
  {
    -0.8,
    -1.8,
    0.45
  },
  {
    0.8,
    -2.4,
    0.45
  },
  {
    -0.8,
    -2.4,
    0.45
  },
  {
    0.3,
    -1.2,
    0.1
  },
  {
    -0.3,
    -1.2,
    0.1
  },
  {
    0.3,
    -1.8,
    0.1
  },
  {
    -0.3,
    -1.8,
    0.1
  },
  {
    0.3,
    -2.4,
    0.1
  },
  {
    -0.3,
    -2.4,
    0.1
  }
}
shader = {}
avatars = {}
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "downloadAvatarFriend" then
    avatar_table = _ARG_1_
    for _FORV_9_, _FORV_10_ in ipairs(avatar_table) do
      shader[_FORV_10_[1]] = dxCreateShader(":ST_avatars/masked.fx")
      avatars[_FORV_10_[1]] = dxCreateTexture(avatar_table[_FORV_9_][2], "argb", false, "clamp")
      dxSetShaderValue(shader[_FORV_10_[1]], "sMaskTexture", maska)
      dxSetShaderValue(shader[_FORV_10_[1]], "sPicTexture", avatars[_FORV_10_[1]])
      avatar_table[_FORV_9_][2] = shader[_FORV_10_[1]]
    end
  elseif _ARG_0_ == "tipsText" then
    tipsText = _ARG_1_
  elseif _ARG_0_ == "showGuiOrganizationClient" then
    show_info_organization = _ARG_1_
  elseif _ARG_0_ == "clientServer" then
    if _ARG_1_ == "oddalLupZakonczenie" then
      self.bagCount = self.bagCount - 1
    elseif _ARG_1_ == "wzialLupZakonczenie" then
      attachPackagesToVehicle(self.vehicle_securi, self.bagCount - 1)
      self.bagCount1 = self.bagCount1 - 1
    elseif _ARG_1_ == "rozpoczecieNapadu" then
      blockDoor = false
      table_bagMoney = {}
      self.tipsText = "Udajcie si\196\153 po #ffbb00pojazd #ffffffzaznaczony na #ffbb00mapie"
      self.idAttack = _ARG_3_
      self.vehicle_securi = _ARG_4_
      self.moneyAttack = _ARG_5_
      setElementData(localPlayer, "juzDostalJubiler", false)
      self.bagCount = 0
      addEventHandler("onClientVehicleEnter", _ARG_4_, function(_ARG_0_, _ARG_1_)
        if self.tipsText == "Udajcie si\196\153 po #ffbb00pojazd #ffffffzaznaczony na #ffbb00mapie" then
          triggerServerEvent("ev", resourceRoot, "clientServer", localPlayer, table_players_attack, "pokazPunktyJubilera")
        end
      end)
      blip = createBlip(getElementPosition(_ARG_4_))
      texturesTracking = {
        truck_icon = dxCreateTexture(":ST_escort_job/img/truck_icon.png"),
        bag_icon = dxCreateTexture("img/bag_icon.png"),
        handle_icon = dxCreateTexture("img/handle_icon.png")
      }
      showCursor(false)
      addEventHandler("onClientRender", root, tipText)
      table_players_attack = _ARG_2_
      self.firstPlayer = false
    elseif _ARG_1_ == "pokazPunktyJubilera" then
      if isElement(blip) then
        destroyElement(blip)
      end
      self.tipsText = "Udajcie si\196\153 do #ffbb00jubilera #ffffffzaznaczonego na mapie wraz z #ffbb00securicar'em"
      self.posDoor = posAttack[self.idAttack].doorPos
      if isElement(doorAttack) then
        destroyElement(doorAttack)
      end
      doorAttack = createObject(1491, self.posDoor[1], self.posDoor[2], self.posDoor[3], self.posDoor[4], self.posDoor[5], self.posDoor[6])
      setElementFrozen(doorAttack, true)
      blip = createBlip(posAttack[self.idAttack].pos[1], posAttack[self.idAttack].pos[2], posAttack[self.idAttack].pos[3], 41)
      table_bagMoney = {}
      for _FORV_10_, _FORV_11_ in ipairs(posAttack[self.idAttack].pkt) do
        table.insert(table_bagMoney, {id = _FORV_10_, pos = _FORV_11_})
      end
    elseif _ARG_1_ == "dotarcieDoJubilera" then
      if isElement(blip) then
        destroyElement(blip)
      end
    elseif _ARG_1_ == "blokadaKliknieciaDrzwi" then
      blockDoor = true
    elseif _ARG_1_ == "drzwiOtworzone" then
      exports.st_gui:showPlayerNotification("Odblokowano drzwi wej\197\155ciowe\nZapakujcie \197\130upy do pojazdu", "info")
      if isElement(doorAttack) then
        destroyElement(doorAttack)
      end
      self.tipsText = "Zapakujcie #ffbb00\197\130upy #ffffffdo pojazdu"
      self.trackingText = "ABY ZAPAKOWA\196\134 \197\129UP KLIKNIJ"
      self.countBagAll = #posAttack[self.idAttack].pkt
      self.moneyBag = tonumber(self.moneyAttack / #posAttack[self.idAttack].pkt)
      setVehicleDoorOpenRatio(self.vehicle_securi, 4, 1)
      setVehicleDoorOpenRatio(self.vehicle_securi, 5, 1)
    elseif _ARG_1_ == "wzialLup" then
      table_bagMoney = _ARG_2_
    elseif _ARG_1_ == "oddalTorbe" then
      self.bagCount = self.bagCount + 1
      attachPackagesToVehicle(self.vehicle_securi, self.bagCount)
    elseif _ARG_1_ == "zapakowaneWszystkieTorby" then
      self.doneAllJewelry = false
      self.moneyBag = false
      self.tipsText = "Udajcie si\196\153 do miejsca #ffbb00zaznaczonego #ffffffna mapie"
      self.trackingText = "ABY ODDA\196\134 \197\129UP KLIKNIJ"
      blip = createBlip(_ARG_2_[1], _ARG_2_[2], _ARG_2_[3], 41)
      setVehicleDoorOpenRatio(self.vehicle_securi, 4, 0)
      setVehicleDoorOpenRatio(self.vehicle_securi, 5, 0)
    elseif _ARG_1_ == "dotarcieDoZakonczeniaNapadu" then
      if isElement(colVehTracking) then
        destroyElement(colVehTracking)
      end
      setVehicleDoorOpenRatio(self.vehicle_securi, 4, 1)
      setVehicleDoorOpenRatio(self.vehicle_securi, 5, 1)
      colVehTracking = createColSphere(0, 0, 0, 1)
      attachElements(colVehTracking, self.vehicle_securi, 0, -3, 0)
      self.bagCount1 = self.bagCount
      self.tipsText = "Wypakujcie wszystkie #ffbb00\197\130upy #ffffffz pojazdu"
    elseif _ARG_1_ == "zakonczenieNapadu" then
      removeEventHandler("onClientRender", root, tipText)
      runningBlock(localPlayer, false)
      triggerServerEvent("ev", resourceRoot, "giveBag", localPlayer, false, table_players_attack, true)
      if isElement(colVehTracking) then
        destroyElement(colVehTracking)
      end
      if isElement(blip) then
        destroyElement(blip)
      end
      setElementData(localPlayer, "player:napadJubiler", false)
      setElementData(localPlayer, "vehicleAttack:own", false)
      for _FORV_9_, _FORV_10_ in pairs(texturesTracking) do
        if isElement(_FORV_10_) then
          destroyElement(_FORV_10_)
        end
      end
      texturesTracking = {}
      self = {}
      attachPackagesToVehicle(self.vehicle_securi, 0)
      for _FORV_9_, _FORV_10_ in ipairs(package_objects) do
        if isElement(_FORV_10_) then
          destroyElement(_FORV_10_)
        end
      end
    end
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
    setPedControlState("walk", true)
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
getResourceName(getThisResource(), true, 304513761)
return
