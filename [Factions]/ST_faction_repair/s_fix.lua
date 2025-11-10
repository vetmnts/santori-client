for _FORV_5_, _FORV_6_ in ipairs({
  {
    2282.96045,
    2454.15747,
    3.53125,
    "SAPD"
  },
  {
    1327.73,
    1081.55,
    10.92,
    "SAFD"
  },
  {
    -2544.68,
    603.21,
    14.45,
    "SAFD"
  },
  {
    -1614.8,
    732.88,
    -5.24,
    "oba"
  },
  {
    1585.95,
    -1677.66,
    5.9,
    "oba"
  },
  {
    613.90002441406,
    -610.40002441406,
    17.2,
    "oba"
  }
}) do
  setElementData(createElement("text"), "name", "Mechanik Frakcyjny")
  setElementPosition(createElement("text"), _FORV_6_[1], _FORV_6_[2], _FORV_6_[3])
  addEventHandler("onClientMarkerHit", createMarker(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3] - 0.9, "cylinder", 3, 252, 240, 3, 75), function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" then
      return
    end
    if _ARG_0_ ~= localPlayer then
      return
    end
    if not getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    if _UPVALUE0_[4] == "oba" then
      if getElementData(_ARG_0_, "player:faction") then
        setElementFrozen(getPedOccupiedVehicle(_ARG_0_), true)
        setTimer(function()
          exports.st_gui:showPlayerNotification(_UPVALUE0_, "Pojazd zosta\197\130 naprawiony.", "success")
          fixVehicle(_UPVALUE1_, true)
          setElementFrozen(_UPVALUE1_, false)
        end, 1000, 1)
      end
    elseif getElementData(_ARG_0_, "player:faction") == _UPVALUE0_[4] then
      setElementFrozen(getPedOccupiedVehicle(_ARG_0_), true)
      setTimer(function()
        exports.st_gui:showPlayerNotification(_UPVALUE0_, "Pojazd zosta\197\130 naprawiony.", "success")
        fixVehicle(_UPVALUE1_, true)
        setElementFrozen(_UPVALUE1_, false)
      end, 1000, 1)
    else
      exports.st_gui:showPlayerNotification(_ARG_0_, "Ten mechanik jest tylko dla frakcji!", "error")
    end
  end)
end
getResourceName(getThisResource(), true, 615027896)
return
