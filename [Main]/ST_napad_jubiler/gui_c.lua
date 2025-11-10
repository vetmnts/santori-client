screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windows = {main = false, moneyBag = false}
show_info_organization = {}
function window()
  if windows.moneyBag == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("UMIE\197\154\196\134 \197\129UP W TORBIE", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawImage(_UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y + 150 / zoom, 300 / zoom, 300 / zoom, textures.glass_case, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    dxDrawImage(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 150 / zoom, 300 / zoom, 300 / zoom, textures.bag, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    for _FORV_7_, _FORV_8_ in pairs(jewelry_table) do
      if self.selectedJewelry == _FORV_7_ then
        dxDrawImage(getCursorPosition() * screenW, getCursorPosition() * screenH, 50 / zoom, 50 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + _FORV_8_.pos[1], _UPVALUE0_.y + _FORV_8_.pos[2], 50 / zoom, 50 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
  end
  if windows.openDoor == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("ODBLOKUJ DRZWI", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 215 / zoom, _UPVALUE0_.y + 90 / zoom, 450 / zoom, 450 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
    dxDrawImage(_UPVALUE0_.x + 215 / zoom, _UPVALUE0_.y + 90 / zoom, 450 / zoom, 450 / zoom, textures.electronic_board, 0, 0, 0, tocolor(255, 255, 255, 100), false)
    for _FORV_7_, _FORV_8_ in ipairs(plansze[self.planszaRandom]) do
      for _FORV_12_, _FORV_13_ in ipairs(_FORV_8_) do
        if planszerots[self.planszaRandom][_FORV_7_][_FORV_12_] == kabelki[_FORV_7_][_FORV_12_] then
        else
        end
        if _FORV_13_ == 1 then
          dxDrawImage((_UPVALUE0_.x + 215 / zoom + 50 * (_FORV_12_ - 1)) / zoom, (_UPVALUE0_.y + 90 / zoom + 50 * (_FORV_7_ - 1)) / zoom, 50 / zoom, 50 / zoom, textures.line1, kabelki[_FORV_7_][_FORV_12_], 0, 0, (tocolor(100, 100, 100)))
        elseif _FORV_13_ == 2 then
          dxDrawImage((_UPVALUE0_.x + 215 / zoom + 50 * (_FORV_12_ - 1)) / zoom, (_UPVALUE0_.y + 90 / zoom + 50 * (_FORV_7_ - 1)) / zoom, 50 / zoom, 50 / zoom, textures.line2, kabelki[_FORV_7_][_FORV_12_], 0, 0, (tocolor(100, 100, 100)))
        end
      end
    end
  end
end
kabelki = {
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  },
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  },
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  },
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  },
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  },
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  },
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  },
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  },
  {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  }
}
plansze = {
  {
    {
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      2,
      1,
      1,
      1,
      2,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      1,
      2
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      1,
      1
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      2,
      2
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    }
  },
  {
    {
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      2,
      1,
      2,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      2,
      1,
      2,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      1,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      2,
      1,
      2,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      1,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      2,
      1,
      2,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      1,
      0
    }
  },
  {
    {
      1,
      2,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      1,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      2,
      1,
      1,
      1,
      1,
      2,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
      0
    },
    {
      0,
      0,
      0,
      2,
      1,
      1,
      2,
      0,
      0
    },
    {
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      2,
      1,
      2,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      1,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    }
  }
}
planszerots = {
  {
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      90,
      90,
      90,
      180,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      90
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      270
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    }
  },
  {
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      360,
      90,
      180,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      360,
      90,
      180,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      90,
      90,
      270,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      360,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      90,
      180,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    }
  },
  {
    {
      90,
      180,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      90,
      270,
      90,
      270,
      180,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      90,
      270,
      90,
      270,
      0,
      0
    },
    {
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      0,
      0,
      180,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      90,
      90,
      270,
      0,
      0,
      0,
      0,
      0
    },
    {
      0,
      360,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    }
  }
}
function convertRot(_ARG_0_)
  if 360 < _ARG_0_ then
    return _ARG_0_ - 360 * _ARG_0_ / 360
  end
  return _ARG_0_
end
function tipText()
  if self.moneyBag then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 200))
    dxDrawText("POST\196\152P", _UPVALUE0_.x, _UPVALUE0_.y - 60 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 53 / zoom, _UPVALUE0_.y + 50 / zoom, _UPVALUE0_.w - 120 / zoom, 22 / zoom, 10 / zoom, tocolor(70, 70, 70, 255))
    if 230 / self.countBagAll * self.bagCount / zoom < 20 / zoom then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 53 / zoom, _UPVALUE0_.y + 50 / zoom, 20 / zoom, 22 / zoom, 10 / zoom, tocolor(0, 196, 0, 255))
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 53 / zoom, _UPVALUE0_.y + 50 / zoom, 230 / self.countBagAll * self.bagCount / zoom, 22 / zoom, 10 / zoom, tocolor(0, 196, 0, 255))
    end
    dxDrawText("#00ad23" .. przecinek(math.floor(self.bagCount)) .. " #ffffff / #00ad23" .. przecinek(math.floor(self.countBagAll)) .. " #ffffff\197\129UP\195\147W", _UPVALUE0_.x, _UPVALUE0_.y + 80 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
  end
  if self.trackingText == "ABY ODDA\196\134 \197\129UP KLIKNIJ" then
    if getScreenFromWorldPosition(getElementPosition(blip)) and getScreenFromWorldPosition(getElementPosition(blip)) then
      if 50 > math.floor(getDistanceBetweenPoints3D(getElementPosition(blip))) and not isElement(colVehTracking) then
        setVehicleDoorOpenRatio(self.vehicle_securi, 4, 1)
        setVehicleDoorOpenRatio(self.vehicle_securi, 5, 1)
        if isElement(colVehTracking) then
          destroyElement(colVehTracking)
        end
        colVehTracking = createColSphere(0, 0, 0, 1)
        attachElements(colVehTracking, self.vehicle_securi, 0, -3, 0)
        self.tipsText = "Wypakujcie wszystkie #ffbb00\197\130upy #ffffffz pojazdu"
        triggerServerEvent("ev", resourceRoot, "clientServer", localPlayer, table_players_attack, "dotarcieDoZakonczeniaNapadu")
      end
      if math.floor(getDistanceBetweenPoints3D(getElementPosition(blip))) < 2 then
        if getKeyState("Q") and self.maTorbe == true and not clickC then
          clickC = true
          self.maTorbe = false
          self.bagCount = self.bagCount - 1
          exports.st_gui:showPlayerNotification("Oddano \197\130up", "info")
          runningBlock(localPlayer, false)
          triggerServerEvent("ev", resourceRoot, "giveBag", localPlayer, false, table_players_attack, "oddalLupZakonczenie")
          runningBlock(localPlayer, false)
          if self.bagCount <= 0 then
            triggerServerEvent("ev", resourceRoot, "addMoney", localPlayer, getElementData(localPlayer, "player:organization"), table_players_attack)
            triggerServerEvent("ev", resourceRoot, "clientServer", localPlayer, table_players_attack, "zakonczenieNapadu")
          end
          setTimer(function()
            clickC = false
          end, 1500, 1)
        end
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(blip)) - 91 / zoom, getScreenFromWorldPosition(getElementPosition(blip)) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(blip)) - 90 / zoom, getScreenFromWorldPosition(getElementPosition(blip)) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText(self.trackingText, getScreenFromWorldPosition(getElementPosition(blip)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(blip)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(blip)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(blip)))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(blip)) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(blip)) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(getElementPosition(blip)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(blip)) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(blip)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(blip)))
      end
      dxDrawImage(getScreenFromWorldPosition(getElementPosition(blip)) - 25 / zoom, getScreenFromWorldPosition(getElementPosition(blip)) - 65 / zoom, 50 / zoom, 50 / zoom, texturesTracking.bag_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(blip))) .. "m", getScreenFromWorldPosition(getElementPosition(blip)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(blip)) + 2, getScreenFromWorldPosition(getElementPosition(blip)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(blip)))
      dxDrawText("#ffe100" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(blip))) .. "m", getScreenFromWorldPosition(getElementPosition(blip)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(blip)))
    end
  elseif isElement(doorAttack) then
    if getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) and getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) then
      if 50 > math.floor(getDistanceBetweenPoints3D(self.posDoor[1], self.posDoor[2], self.posDoor[3], getElementPosition(localPlayer))) and self.tipsText == "Udajcie si\196\153 do #ffbb00jubilera #ffffffzaznaczonego na mapie wraz z #ffbb00securicar'em" then
        triggerServerEvent("ev", resourceRoot, "clientServer", localPlayer, table_players_attack, "dotarcieDoJubilera")
        self.tipsText = "OTW\195\147RZ #ffbb00DRZWI"
      end
      if 2 > math.floor(getDistanceBetweenPoints3D(self.posDoor[1], self.posDoor[2], self.posDoor[3], getElementPosition(localPlayer))) then
        if getKeyState("Q") and not blockDoor and not clickC then
          clickC = true
          textures = {
            background = dxCreateTexture(":ST_gui/img/background2.png"),
            line1 = dxCreateTexture("img/line1.png"),
            line2 = dxCreateTexture("img/line2.png"),
            electronic_board = dxCreateTexture("img/electronic_board.png")
          }
          self.planszaRandom = math.random(1, 3)
          addEventHandler("onClientRender", root, window)
          addEventHandler("onClientClick", root, click)
          windows.openDoor = true
          showCursor(true)
          triggerServerEvent("ev", resourceRoot, "clientServer", localPlayer, table_players_attack, "blokadaKliknieciaDrzwi")
          setTimer(function()
            clickC = false
          end, 1500, 1)
        end
        dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) - 91 / zoom, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) - 90 / zoom, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("ABY OTWORZY\196\134 DRZWI KLIKNIJ", getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + 93 / zoom, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) - 10 / zoom, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + 138 / zoom, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200))
      end
      dxDrawImage(getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, texturesTracking.handle_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(self.posDoor[1], self.posDoor[2], self.posDoor[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + 2, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200))
      dxDrawText("#ffe100" .. math.floor(getDistanceBetweenPoints3D(self.posDoor[1], self.posDoor[2], self.posDoor[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(self.posDoor[1], self.posDoor[2], self.posDoor[3] + 0.1, 200))
    end
  else
    for _FORV_10_, _FORV_11_ in ipairs(table_bagMoney) do
      if getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) and getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) then
        if 2 > math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) then
          if getKeyState("Q") and not clickC and not self.maTorbe == true then
            clickC = true
            if self.trackingText == "ABY ZAPAKOWA\196\134 \197\129UP KLIKNIJ" and _FORV_11_.id then
              textures = {
                background = dxCreateTexture(":ST_gui/img/background2.png"),
                user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
                chain_icon = dxCreateTexture("img/chain_icon.png"),
                chain2_icon = dxCreateTexture("img/chain2_icon.png"),
                ring_icon = dxCreateTexture("img/ring_icon.png"),
                gold_icon = dxCreateTexture("img/gold_icon.png"),
                glass_case = dxCreateTexture("img/glass_case.png"),
                bag = dxCreateTexture("img/bag.png")
              }
              jewelry_table = {}
              for _FORV_19_ = 0, math.random(3, 5) do
                randomImg = math.random(1, #{
                  textures.chain_icon,
                  textures.ring_icon,
                  textures.gold_icon,
                  textures.chain2_icon
                })
                table.insert(jewelry_table, {
                  pos = {
                    math.random(60, 280),
                    (math.random(160, 280))
                  },
                  img = ({
                    textures.chain_icon,
                    textures.ring_icon,
                    textures.gold_icon,
                    textures.chain2_icon
                  })[randomImg],
                  done = false
                })
              end
              addEventHandler("onClientRender", root, window)
              addEventHandler("onClientClick", root, click)
              windows.moneyBag = true
              showCursor(true)
              table.remove(table_bagMoney, _FORV_10_)
              triggerServerEvent("ev", resourceRoot, "clientServer", localPlayer, table_players_attack, "wzialLup", table_bagMoney)
            end
            setTimer(function()
              clickC = false
            end, 1500, 1)
          end
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 91 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 90 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
          dxDrawText(self.trackingText, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 93 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 10 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
          dxDrawText("Q", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 138 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
        end
        dxDrawImage(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, texturesTracking.bag_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + 2, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
        dxDrawText("#ffe100" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.1, 200))
      end
    end
  end
  if isElement(self.vehicle_securi) and (self.doneAllJewelry or self.tipsText == "Wypakujcie wszystkie #ffbb00\197\130upy #ffffffz pojazdu") and getScreenFromWorldPosition(getElementPosition(colVehTracking)) and getScreenFromWorldPosition(getElementPosition(colVehTracking)) then
    dxDrawImage(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 25 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 65 / zoom, 50 / zoom, 50 / zoom, texturesTracking.truck_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) .. "m", getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 2, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) .. "m", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
    if math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) < 2 then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 86 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 85 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      if self.doneAllJewelry then
        dxDrawText("ABY ODDA\196\134 TORB\196\152 KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      else
        dxDrawText("ABY WZI\196\132\196\134 TORB\196\152 KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      end
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("Q", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      if getKeyState("Q") and not clickC then
        clickC = true
        if self.tipsText == "Zapakujcie #ffbb00\197\130upy #ffffffdo pojazdu" then
          if isElement(colVehTracking) then
            destroyElement(colVehTracking)
          end
          exports.st_gui:showPlayerNotification("Oddano \197\130up do pojazdu", "info")
          self.doneAllJewelry = false
          self.bagCount = self.bagCount + 1
          attachPackagesToVehicle(self.vehicle_securi, self.bagCount)
          triggerServerEvent("ev", resourceRoot, "giveBag", localPlayer, false, table_players_attack)
          runningBlock(localPlayer, false)
          self.maTorbe = false
          if self.bagCount >= self.countBagAll then
            self.doneAllJewelry = false
            self.moneyBag = false
            self.tipsText = "Udajcie si\196\153 do miejsca #ffbb00zaznaczonego #ffffffna mapie"
            randomPosEnd = math.random(1, #posEnd)
            triggerServerEvent("ev", resourceRoot, "clientServer", localPlayer, table_players_attack, "zapakowaneWszystkieTorby", {
              posEnd[randomPosEnd][1],
              posEnd[randomPosEnd][2],
              posEnd[randomPosEnd][3]
            })
          end
        elseif self.tipsText == "Wypakujcie wszystkie #ffbb00\197\130upy #ffffffz pojazdu" and not self.maTorbe and 0 < self.bagCount1 then
          self.bagCount1 = self.bagCount1 - 1
          self.maTorbe = true
          attachPackagesToVehicle(self.vehicle_securi, self.bagCount - 1)
          triggerServerEvent("ev", resourceRoot, "giveBag", localPlayer, true, table_players_attack, "wzialLupZakonczenie")
          runningBlock(localPlayer, true)
        end
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
  if self.tipsText then
    dxDrawText(self.tipsText, _UPVALUE1_.x, _UPVALUE1_.y - 90 / zoom, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, true)
  end
end
function click(_ARG_0_, _ARG_1_)
  if windows.openDoor == true then
    if not clickM then
      clickM = true
      for _FORV_5_, _FORV_6_ in ipairs(plansze[self.planszaRandom]) do
        for _FORV_10_, _FORV_11_ in ipairs(kabelki[_FORV_5_]) do
          if plansze[self.planszaRandom][_FORV_5_][_FORV_10_] ~= 0 and isMouseIn((_UPVALUE0_.x + 205 / zoom + 50 * (_FORV_10_ - 1)) / zoom, (_UPVALUE0_.y + 90 / zoom + 50 * (_FORV_5_ - 1)) / zoom, 50 / zoom, 50 / zoom) then
            kabelki[_FORV_5_][_FORV_10_] = convertRot(kabelki[_FORV_5_][_FORV_10_] + 90)
          end
        end
      end
      liczNIE = 0
      for _FORV_5_, _FORV_6_ in ipairs(plansze[self.planszaRandom]) do
        for _FORV_10_, _FORV_11_ in ipairs(_FORV_6_) do
          if planszerots[self.planszaRandom][_FORV_5_][_FORV_10_] == kabelki[_FORV_5_][_FORV_10_] then
          else
            liczNIE = liczNIE + 1
          end
        end
      end
      if 0 >= liczNIE then
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.openDoor = false
        showCursor(false)
        for _FORV_5_, _FORV_6_ in pairs(textures) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        textures = {}
        triggerServerEvent("ev", resourceRoot, "clientServer", localPlayer, table_players_attack, "drzwiOtworzone")
      end
      setTimer(function()
        clickM = false
      end, 100, 1)
    end
  elseif windows.moneyBag == true and _ARG_0_ == "left" then
    if _ARG_1_ == "down" then
      for _FORV_5_, _FORV_6_ in pairs(jewelry_table) do
        if isMouseIn(_UPVALUE0_.x + _FORV_6_.pos[1], _UPVALUE0_.y + _FORV_6_.pos[2], 50 / zoom, 50 / zoom) then
          self.selectedJewelry = _FORV_5_
        end
      end
      if not self.selectedJewelry then
        return
      end
    elseif isMouseIn(_UPVALUE0_.x + 530 / zoom, _UPVALUE0_.y + 180 / zoom, 280 / zoom, 260 / zoom) then
      if self.selectedJewelry then
        jewelry_table[self.selectedJewelry].pos = {
          getCursorPosition() * screenW - _UPVALUE0_.x,
          getCursorPosition() * screenH - _UPVALUE0_.y
        }
        jewelry_table[self.selectedJewelry].done = true
        for _FORV_8_, _FORV_9_ in pairs(jewelry_table) do
          if _FORV_9_.done then
          end
        end
        if 0 + 1 >= tonumber(#jewelry_table) then
          exports.st_gui:showPlayerNotification("Zanie\197\155 \197\130up do pojazdu", "info")
          self.doneAllJewelry = true
          windows.moneyBag = false
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          showCursor(false)
          colVehTracking = createColSphere(0, 0, 0, 1)
          attachElements(colVehTracking, self.vehicle_securi, 0, -3, 0)
          for _FORV_8_, _FORV_9_ in pairs(textures) do
            if isElement(_FORV_9_) then
              destroyElement(_FORV_9_)
            end
          end
          textures = {}
          triggerServerEvent("ev", resourceRoot, "giveBag", localPlayer, true)
          runningBlock(localPlayer, true)
          self.maTorbe = true
        end
        self.selectedJewelry = false
      end
    elseif self.selectedJewelry then
      jewelry_table[self.selectedJewelry].pos = {
        getCursorPosition() * screenW - _UPVALUE0_.x,
        getCursorPosition() * screenH - _UPVALUE0_.y
      }
      jewelry_table[self.selectedJewelry].done = false
      self.selectedJewelry = false
      for _FORV_8_, _FORV_9_ in pairs(jewelry_table) do
        if _FORV_9_.done then
        end
      end
      if 0 + 1 <= tonumber(#jewelry_table) then
        self.doneAllJewelry = false
      end
    end
  end
  if not (_ARG_0_ == "left" and _ARG_1_ == "down" and isMouseIn(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 505 / zoom, 160 / zoom, 50 / zoom)) or windows.main == true then
  end
end
function resulted(_ARG_0_)
  if math.floor(_ARG_0_ / 60) == 0 then
    return _ARG_0_ - math.floor(_ARG_0_ / 60) * 60 .. " SEKUND"
  else
    return math.floor(_ARG_0_ / 60) .. " MINUT " .. _ARG_0_ - math.floor(_ARG_0_ / 60) * 60 .. " SEKUND"
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
getResourceName(getThisResource(), true, 818317874)
return
