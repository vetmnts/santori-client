data = {battery = 800, oil = 800}
function window()
  if getPedOccupiedVehicle(localPlayer) and _UPVALUE0_.main == true then
    for _FORV_8_, _FORV_9_ in pairs(table_) do
      if _FORV_8_ + 2 == _UPVALUE3_ then
        dxDrawImage(_UPVALUE1_.x + 231 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 340 / _UPVALUE2_, 256 / _UPVALUE2_, 50 / _UPVALUE2_, texturesInteraction.stripe, 0, 0, 0, tocolor(255, 255, 255, 90), false)
        dxDrawImage(_UPVALUE1_.x + 440 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 344 / _UPVALUE2_ + animations.offsetY1 / _UPVALUE2_, 40 / _UPVALUE2_, 40 / _UPVALUE2_, _FORV_9_[3], 0, 0, 0, tocolor(_FORV_9_[5][1], _FORV_9_[5][2], _FORV_9_[5][3], 90), false)
        dxDrawText(_FORV_9_[4], _UPVALUE1_.x, _UPVALUE1_.y + 505 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 70 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 90), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("bold14"), "right", "center", false, false, false, false, false)
        dxDrawText(_FORV_9_[1], _UPVALUE1_.x, _UPVALUE1_.y + 550 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 70 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 90), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light12"), "right", "center", false, false, false, false, false)
      end
      if _FORV_8_ + 1 == _UPVALUE3_ then
        dxDrawImage(_UPVALUE1_.x + 177 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 391 / _UPVALUE2_, 310 / _UPVALUE2_, 60 / _UPVALUE2_, texturesInteraction.stripe, 0, 0, 0, tocolor(255, 255, 255, 150), false)
        dxDrawImage(_UPVALUE1_.x + 430 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 394 / _UPVALUE2_ + animations.offsetY1 / _UPVALUE2_, 50 / _UPVALUE2_, 50 / _UPVALUE2_, _FORV_9_[3], 0, 0, 0, tocolor(_FORV_9_[5][1], _FORV_9_[5][2], _FORV_9_[5][3], 150), false)
        dxDrawText(_FORV_9_[4], _UPVALUE1_.x, _UPVALUE1_.y + 615 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 60 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 150), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("bold17"), "right", "center", false, false, false, false, false)
        if _FORV_9_[6] then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 260 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 439 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 150 / _UPVALUE2_, 7 / _UPVALUE2_, 3 / _UPVALUE2_, tocolor(70, 70, 70, 150))
          dxDrawRoundedRectangle(_UPVALUE1_.x + 260 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 439 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 1.5 * _FORV_9_[6][2] / _UPVALUE2_, 7 / _UPVALUE2_, 3 / _UPVALUE2_, tocolor(_FORV_9_[5][1], _FORV_9_[5][2], _FORV_9_[5][3], 150))
          dxDrawText(_FORV_9_[6][2] .. "%", _UPVALUE1_.x, _UPVALUE1_.y + 657 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 43 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 150), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font11"), "right", "center", false, false, false, false, false)
          dxDrawRoundedRectangle(_UPVALUE1_.x + 255 / _UPVALUE2_ + 1.5 * _FORV_9_[6][2] / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 437 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 12 / _UPVALUE2_, 12 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(200, 200, 200, 255))
        else
          dxDrawText(_FORV_9_[1], _UPVALUE1_.x, _UPVALUE1_.y + 665 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 60 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 150), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light14"), "right", "center", false, false, false, false, false)
        end
      end
      if _FORV_8_ == _UPVALUE3_ then
        dxDrawImage(_UPVALUE1_.x + 125 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 452 / _UPVALUE2_, 362 / _UPVALUE2_, 70 / _UPVALUE2_, texturesInteraction.stripe, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(_UPVALUE1_.x + 420 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 455 / _UPVALUE2_ + animations.offsetY1 / _UPVALUE2_, 60 / _UPVALUE2_, 60 / _UPVALUE2_, _FORV_9_[3], 0, 0, 0, tocolor(_FORV_9_[5][1], _FORV_9_[5][2], _FORV_9_[5][3], 255), false)
        dxDrawText(_FORV_9_[4], _UPVALUE1_.x, _UPVALUE1_.y + 740 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 50 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("bold20"), "right", "center", false, false, false, false, false)
        if _FORV_9_[6] then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 230 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 507 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 180 / _UPVALUE2_, 8 / _UPVALUE2_, 3 / _UPVALUE2_, tocolor(70, 70, 70, 255))
          dxDrawRoundedRectangle(_UPVALUE1_.x + 230 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 507 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 1.8 * _FORV_9_[6][2] / _UPVALUE2_, 8 / _UPVALUE2_, 3 / _UPVALUE2_, tocolor(_FORV_9_[5][1], _FORV_9_[5][2], _FORV_9_[5][3], 255))
          dxDrawText(_FORV_9_[6][2] .. "%", _UPVALUE1_.x, _UPVALUE1_.y + 787 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 43 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font13"), "right", "center", false, false, false, false, false)
          dxDrawRoundedRectangle(_UPVALUE1_.x + 225 / _UPVALUE2_ + 1.8 * _FORV_9_[6][2] / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 505 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 12 / _UPVALUE2_, 12 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(255, 255, 255, 255))
        else
          dxDrawText(_FORV_9_[1], _UPVALUE1_.x, _UPVALUE1_.y + 800 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 50 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light17"), "right", "center", false, false, false, false, false)
        end
      end
      if _FORV_8_ - 1 == _UPVALUE3_ then
        dxDrawImage(_UPVALUE1_.x + 177 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 523 / _UPVALUE2_, 310 / _UPVALUE2_, 60 / _UPVALUE2_, texturesInteraction.stripe, 0, 0, 0, tocolor(255, 255, 255, 150), false)
        dxDrawImage(_UPVALUE1_.x + 430 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 526 / _UPVALUE2_ + animations.offsetY1 / _UPVALUE2_, 50 / _UPVALUE2_, 50 / _UPVALUE2_, _FORV_9_[3], 0, 0, 0, tocolor(_FORV_9_[5][1], _FORV_9_[5][2], _FORV_9_[5][3], 150), false)
        dxDrawText(_FORV_9_[4], _UPVALUE1_.x, _UPVALUE1_.y + 880 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 60 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 150), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("bold17"), "right", "center", false, false, false, false, false)
        if _FORV_9_[6] then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 260 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 568 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 150 / _UPVALUE2_, 7 / _UPVALUE2_, 3 / _UPVALUE2_, tocolor(70, 70, 70, 255))
          dxDrawRoundedRectangle(_UPVALUE1_.x + 260 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 568 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 1.5 * _FORV_9_[6][2] / _UPVALUE2_, 7 / _UPVALUE2_, 3 / _UPVALUE2_, tocolor(_FORV_9_[5][1], _FORV_9_[5][2], _FORV_9_[5][3], 255))
          dxDrawText(_FORV_9_[6][2] .. "%", _UPVALUE1_.x, _UPVALUE1_.y + 918 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 43 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 150), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font11"), "right", "center", false, false, false, false, false)
          dxDrawRoundedRectangle(_UPVALUE1_.x + 255 / _UPVALUE2_ + 1.5 * _FORV_9_[6][2] / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 566 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, 12 / _UPVALUE2_, 12 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(255, 255, 255, 255))
        else
          dxDrawText(_FORV_9_[1], _UPVALUE1_.x, _UPVALUE1_.y + 930 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 50 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light17"), "right", "center", false, false, false, false, false)
        end
      end
      if _FORV_8_ - 2 == _UPVALUE3_ then
        dxDrawImage(_UPVALUE1_.x + 231 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 584 / _UPVALUE2_, 256 / _UPVALUE2_, 50 / _UPVALUE2_, texturesInteraction.stripe, 0, 0, 0, tocolor(255, 255, 255, 90), false)
        dxDrawImage(_UPVALUE1_.x + 440 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 588 / _UPVALUE2_ + animations.offsetY1 / _UPVALUE2_, 40 / _UPVALUE2_, 40 / _UPVALUE2_, _FORV_9_[3], 0, 0, 0, tocolor(_FORV_9_[5][1], _FORV_9_[5][2], _FORV_9_[5][3], 90), false)
        dxDrawText(_FORV_9_[4], _UPVALUE1_.x, _UPVALUE1_.y + 990 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 70 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 90), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("bold14"), "right", "center", false, false, false, false, false)
        dxDrawText(_FORV_9_[1], _UPVALUE1_.x, _UPVALUE1_.y + 1035 / _UPVALUE2_ + animations.offsetY / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 70 / _UPVALUE2_ + animations.offsetX / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 90), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light12"), "right", "center", false, false, false, false, false)
      end
    end
    createTable()
  end
end
function guiOn()
  if getPedOccupiedVehicle(localPlayer) then
    if getVehicleController((getPedOccupiedVehicle(localPlayer))) ~= localPlayer then
      _UPVALUE0_ = 1
    end
    if isEventHandlerAdded("onClientRender", root, window) then
      return
    end
    texturesInteraction = {
      engine_icon = dxCreateTexture("ST_interaction/img/engine_icon.png"),
      light_icon = dxCreateTexture("ST_interaction/img/light_icon.png"),
      brake_icon = dxCreateTexture("ST_interaction/img/brake_icon.png"),
      lock_icon = dxCreateTexture("ST_interaction/img/lock_icon.png"),
      hood_icon = dxCreateTexture("ST_interaction/img/hood_icon.png"),
      trunk_icon = dxCreateTexture("ST_interaction/img/trunk_icon.png"),
      stripe = dxCreateTexture("ST_interaction/img/stripe.png"),
      fuel_icon = dxCreateTexture("ST_interaction/img/fuel_icon.png"),
      suspension_icon = dxCreateTexture("ST_interaction/img/suspension_icon.png"),
      drive_icon = dxCreateTexture("ST_interaction/img/drive_icon.png"),
      neon_icon = dxCreateTexture("ST_interaction/img/neon_icon.png"),
      limiter_icon = dxCreateTexture("ST_interaction/img/limiter_icon.png"),
      traction_icon = dxCreateTexture("ST_interaction/img/traction_icon.png"),
      fly_icon = dxCreateTexture("ST_interaction/img/fly_icon.png"),
      acceleration_icon = dxCreateTexture("ST_interaction/img/acceleration_icon.png"),
      window_icon = dxCreateTexture("ST_interaction/img/window_icon.png"),
      abs_icon = dxCreateTexture("ST_interaction/img/abs_icon.png"),
      user_icon = dxCreateTexture(":ST_storevehicle/img/user_icon.png")
    }
    animations = {
      offsetX = 0,
      offsetY = 0,
      offsetY1 = 0
    }
    createTable()
    _UPVALUE1_.main = true
    createAnimation(900, 400, "InOutQuad", 200, function(_ARG_0_)
      animations.offsetX = _ARG_0_
    end)
    addEventHandler("onClientRender", root, window)
    bindKey("arrow_u", "down", arrow)
    bindKey("arrow_d", "down", arrowDOWN)
    bindKey("space", "down", selectOption)
    bindKey("arrow_r", "down", editRHUp)
    bindKey("arrow_l", "down", editRHDown)
    bindKey("arrow_r", "down", addAcceleration)
    bindKey("arrow_l", "down", subAcceleration)
    bindKey("arrow_r", "down", rWindow)
    bindKey("arrow_l", "down", lWindow)
    setElementData(localPlayer, "notshowspeedmeter", true)
    textWindow = "Otw\195\179rz/Zamknij szyb\196\153"
    if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) then
      table.insert({}, "Wyrzu\196\135 pasa\197\188era prawy prz\195\179d")
    end
    if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 2) then
      table.insert({}, "Wyrzu\196\135 pasa\197\188era lewy ty\197\130")
    end
    if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 3) then
      table.insert({}, "Wyrzu\196\135 pasa\197\188era prawy ty\197\130")
    end
    if 0 < #{} then
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) then
        textPassenger = "Wyrzu\196\135 pasa\197\188era prawy prz\195\179d"
      else
        textPassenger = ({})[math.random(#{})]
      end
    else
      textPassenger = "Brak pasa\197\188era"
    end
  end
end
function guiOff()
  if _UPVALUE0_.main == true then
    unbindKey("arrow_u", "down", arrow)
    unbindKey("arrow_d", "down", arrowDOWN)
    unbindKey("space", "down", selectOption)
    unbindKey("arrow_r", "down", editRHUp)
    unbindKey("arrow_l", "down", editRHDown)
    unbindKey("arrow_r", "down", addAcceleration)
    unbindKey("arrow_l", "down", subAcceleration)
    unbindKey("arrow_r", "down", rWindow)
    unbindKey("arrow_l", "down", lWindow)
    createAnimation(400, 900, "InOutQuad", 200, function(_ARG_0_)
      animations.offsetX = _ARG_0_
    end)
    setTimer(function()
      _UPVALUE0_.main = false
      removeEventHandler("onClientRender", root, window)
      setElementData(localPlayer, "notshowspeedmeter", false)
      for _FORV_3_, _FORV_4_ in pairs(texturesInteraction) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      texturesInteraction = {}
    end, 200, 1)
  end
end
bindKey("lshift", "down", guiOn)
bindKey("lshift", "up", guiOff)
function arrowDOWN(_ARG_0_)
  if _ARG_0_ == "arrow_d" then
    createAnimation(-20, 0, "InOutQuad", 200, function(_ARG_0_)
      animations.offsetY = _ARG_0_
    end)
    createAnimation(-10, 0, "InOutQuad", 200, function(_ARG_0_)
      animations.offsetY1 = _ARG_0_
    end)
    _UPVALUE0_ = _UPVALUE0_ + 1
    if _UPVALUE0_ == #table_ + 1 then
      _UPVALUE0_ = 1
    end
  end
end
function arrow(_ARG_0_)
  if _ARG_0_ == "arrow_u" then
    createAnimation(20, 0, "InOutQuad", 200, function(_ARG_0_)
      animations.offsetY = _ARG_0_
    end)
    createAnimation(10, 0, "InOutQuad", 200, function(_ARG_0_)
      animations.offsetY1 = _ARG_0_
    end)
    _UPVALUE0_ = _UPVALUE0_ - 1
    if _UPVALUE0_ == 0 then
      _UPVALUE0_ = #table_
    end
  end
end
function createTable()
  table_ = {}
  if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning") then
    typeEngine = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj
    rhMontage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rh
    driveMontage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").naped
    lpg_montage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").lpg_montage == "Tak"
    neonMontage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").neon
    tractionMontage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").trakcja
    accelerationMontage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").regulationAcceleration
  else
    typeEngine = "Diesel"
    rhMontage = 0
    lpg_montage = false
    neonMontage = 0
    driveMontage = 0
    tractionMontage = 0
    accelerationMontage = 0
  end
  if getVehicleController((getPedOccupiedVehicle(localPlayer))) == localPlayer then
    if not _UPVALUE0_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
        table.insert(table_, {
          "Odpal silnik",
          1,
          texturesInteraction.engine_icon,
          "SILNIK",
          {
            255,
            0,
            0
          }
        })
      else
        table.insert(table_, {
          "Zga\197\155 silnik",
          2,
          texturesInteraction.engine_icon,
          "SILNIK",
          {
            255,
            255,
            255
          }
        })
      end
      if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) ~= 2 then
        table.insert(table_, {
          "W\197\130\196\133cz \197\155wiat\197\130a",
          3,
          texturesInteraction.light_icon,
          "\197\154WIAT\197\129A",
          {
            255,
            255,
            255
          }
        })
      else
        table.insert(table_, {
          "Zga\197\155 \197\155wiat\197\130a",
          4,
          texturesInteraction.light_icon,
          "\197\154WIAT\197\129A",
          {
            getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))
          }
        })
      end
    end
    if ({
      [463] = true,
      [462] = true,
      [461] = true,
      [581] = true,
      [448] = true,
      [468] = true,
      [471] = true,
      [521] = true,
      [522] = true,
      [523] = true,
      [509] = true,
      [509] = true,
      [481] = true
    })[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
        table.insert(table_, {
          "Podnie\197\155 n\195\179\197\188ke",
          5,
          texturesInteraction.brake_icon,
          "N\195\147\197\187KA",
          {
            236,
            111,
            0
          }
        })
      else
        table.insert(table_, {
          "Opu\197\155\196\135 n\195\179\197\188ke",
          6,
          texturesInteraction.brake_icon,
          "N\195\147\197\187KA",
          {
            255,
            255,
            255
          }
        })
      end
    elseif isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      table.insert(table_, {
        "Spu\197\155\196\135 r\196\153czny",
        5,
        texturesInteraction.brake_icon,
        "HAMULEC R\196\152CZNY",
        {
          236,
          111,
          0
        }
      })
    else
      table.insert(table_, {
        "Zaci\196\133gnij r\196\153czny",
        6,
        texturesInteraction.brake_icon,
        "HAMULEC R\196\152CZNY",
        {
          255,
          255,
          255
        }
      })
    end
    if not _UPVALUE0_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
        table.insert(table_, {
          "Otw\195\179rz pojazd",
          7,
          texturesInteraction.lock_icon,
          "ZAMKI",
          {
            236,
            0,
            0
          }
        })
      else
        table.insert(table_, {
          "Zamknij pojazd",
          8,
          texturesInteraction.lock_icon,
          "ZAMKI",
          {
            255,
            255,
            255
          }
        })
      end
      if getVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 0) == 0 then
        table.insert(table_, {
          "Otw\195\179rz mask\196\153",
          9,
          texturesInteraction.hood_icon,
          "MASKA",
          {
            255,
            255,
            255
          }
        })
      else
        table.insert(table_, {
          "Zamknij mask\196\153",
          10,
          texturesInteraction.hood_icon,
          "MASKA",
          {
            255,
            255,
            255
          }
        })
      end
      if getVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 1) == 0 then
        table.insert(table_, {
          "Otw\195\179rz baga\197\188nik",
          11,
          texturesInteraction.trunk_icon,
          "BAGA\197\187NIK",
          {
            255,
            255,
            255
          }
        })
      else
        table.insert(table_, {
          "Zamknij baga\197\188nik",
          12,
          texturesInteraction.trunk_icon,
          "BAGA\197\187NIK",
          {
            255,
            255,
            255
          }
        })
      end
      if typeEngine ~= "Elektryczny" and lpg_montage then
        if getElementData(getPedOccupiedVehicle(localPlayer), "lpg:onOFF") then
          table.insert(table_, {
            "Prze\197\130\196\133cz na benzyn\196\153",
            13,
            texturesInteraction.fuel_icon,
            "TYP PALIWA",
            {
              255,
              255,
              255
            }
          })
        else
          table.insert(table_, {
            "Prze\197\130\196\133cz na LPG",
            14,
            texturesInteraction.fuel_icon,
            "TYP PALIWA",
            {
              255,
              255,
              255
            }
          })
        end
      end
      if getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 609 and getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 499 then
        if _UPVALUE1_ then
          table.insert(table_, {
            "Wy\197\130\196\133cz ogranicznik",
            15,
            texturesInteraction.limiter_icon,
            "OGRANICZNIK",
            {
              255,
              255,
              255
            }
          })
        else
          table.insert(table_, {
            "W\197\130\196\133cz ogranicznik",
            16,
            texturesInteraction.limiter_icon,
            "OGRANICZNIK",
            {
              255,
              255,
              255
            }
          })
        end
      end
      if rhMontage == 1 then
        table.insert(table_, {
          "RH: " .. (exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "rh:up", "synced") or 0) .. "",
          17,
          texturesInteraction.suspension_icon,
          "ZAWIESZENIE",
          {
            255,
            255,
            255
          }
        })
      end
      if driveMontage == 1 then
        table.insert(table_, {
          "Naped: " .. (exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "driveType", "synced") or "Standard") .. "",
          18,
          texturesInteraction.drive_icon,
          "NAP\196\152D",
          {
            255,
            255,
            255
          }
        })
      end
      if neonMontage == 1 then
        if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:neon:state") then
          table.insert(table_, {
            "Wy\197\130\196\133cz neony",
            21,
            texturesInteraction.neon_icon,
            "NEONY",
            {
              getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))
            }
          })
        else
          table.insert(table_, {
            "W\197\130\196\133cz neony",
            22,
            texturesInteraction.neon_icon,
            "NEONY",
            {
              255,
              255,
              255
            }
          })
        end
      end
      if getElementModel((getPedOccupiedVehicle(localPlayer))) == 491 or getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:lataxD") then
        if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:latanie") then
          table.insert(table_, {
            "Wy\197\130\196\133cz tryb latania",
            23,
            texturesInteraction.fly_icon,
            "LATANIE",
            {
              255,
              255,
              255
            }
          })
        else
          table.insert(table_, {
            "W\197\130\196\133cz tryb latania",
            24,
            texturesInteraction.fly_icon,
            "LATANIE",
            {
              255,
              255,
              255
            }
          })
        end
      end
      if accelerationMontage == 1 then
        table.insert(table_, {
          "MOC",
          26,
          texturesInteraction.acceleration_icon,
          "MOC",
          {
            0,
            145,
            255
          },
          exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicleAccelerationInteraction", "synced") or {20, 100}
        })
      end
      if exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:ABS", "synced") then
        if exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:ABS", "synced") == 1 then
          table.insert(table_, {
            "Wy\197\130\196\133cz ABS",
            28,
            texturesInteraction.abs_icon,
            "ABS",
            {
              getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))
            }
          })
        else
          table.insert(table_, {
            "W\197\130\196\133cz ABS",
            29,
            texturesInteraction.abs_icon,
            "ABS",
            {
              255,
              255,
              255
            }
          })
        end
      end
      for _FORV_20_ = 1, getVehicleMaxPassengers((getPedOccupiedVehicle(localPlayer))) do
        if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), _FORV_20_) then
          break
        end
      end
      if true then
        table.insert(table_, {
          textPassenger,
          30,
          texturesInteraction.user_icon,
          "PASA\197\187EROWIE",
          {
            255,
            255,
            255
          }
        })
      end
    end
  end
  if not _UPVALUE0_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
    table.insert(table_, {
      textWindow,
      27,
      texturesInteraction.window_icon,
      "SZYBY",
      {
        255,
        255,
        255
      }
    })
  end
end
function selectOption()
  if (table_[_UPVALUE0_][2] == 18 or table_[_UPVALUE0_][2] == 5 or table_[_UPVALUE0_][2] == 6 or table_[_UPVALUE0_][2] == 13 or table_[_UPVALUE0_][2] == 14) and 5 < getElementSpeed(getPedOccupiedVehicle(localPlayer), 1) then
    return
  end
  if table_[_UPVALUE0_][2] == 1 and not _UPVALUE1_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
    data.battery = data.battery - 2
    if data.battery < 50 then
      data.battery = 50
    end
    if data.battery <= 250 then
      if 5 < math.random(1, 70) then
        exports.st_gui:showPlayerNotification("Stan akumulatora jest niski, spr\195\179buj jeszcze raz", "info")
        return
      end
    elseif data.battery <= 400 and 5 < math.random(1, 40) then
      exports.st_gui:showPlayerNotification("Stan akumulatora jest niski, wymie\197\132 akumulator", "info")
      return
    end
    if typeEngine ~= "Elektryczny" then
      if 250 >= data.oil then
        if 5 < math.random(1, 70) then
          exports.st_gui:showPlayerNotification("Stan oleju jest niski, spr\195\179buj jeszcze raz", "info")
          return
        end
      elseif 400 >= data.oil and 5 < math.random(1, 40) then
        exports.st_gui:showPlayerNotification("Stan oleju jest niski, udaj si\196\153 do mechanika", "info")
        return
      end
    end
  end
  if table_[_UPVALUE0_][2] == 19 then
    if getTickCount() - _UPVALUE2_ > 2000 then
      _UPVALUE2_ = getTickCount()
    else
      return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
    end
  end
  if table_[_UPVALUE0_][2] == 23 then
    setWorldSpecialPropertyEnabled("aircars", false)
    triggerServerEvent("ev", resourceRoot, "latanie", getPedOccupiedVehicle(localPlayer), localPlayer, false)
  elseif table_[_UPVALUE0_][2] == 24 then
    setWorldSpecialPropertyEnabled("aircars", true)
    triggerServerEvent("ev", resourceRoot, "latanie", getPedOccupiedVehicle(localPlayer), localPlayer, true)
  end
  if table_[_UPVALUE0_][2] == 15 then
    _UPVALUE3_ = false
    removeEventHandler("onClientRender", root, tempomat)
  elseif table_[_UPVALUE0_][2] == 16 then
    _UPVALUE3_ = true
    addEventHandler("onClientRender", root, tempomat)
  end
  if table_[_UPVALUE0_][2] == 27 then
    triggerServerEvent("ev", resourceRoot, "switchWindow", getPedOccupiedVehicle(localPlayer), _UPVALUE4_[getPedOccupiedVehicleSeat(localPlayer)], getPedOccupiedVehicleSeat(localPlayer), textWindow)
  elseif table_[_UPVALUE0_][2] == 30 then
    triggerServerEvent("ev", resourceRoot, "removePedVehicle", false, textPassenger)
  else
    triggerServerEvent("ev", resourceRoot, "select", getPedOccupiedVehicle(localPlayer), table_[_UPVALUE0_][2], localPlayer)
  end
end
function subTraction(_ARG_0_)
  if getElementSpeed(getPedOccupiedVehicle(localPlayer), 1) > 5 then
    return
  end
  if table_[_UPVALUE0_][2] == 25 and _ARG_0_ == "arrow_l" then
    triggerServerEvent("ev", resourceRoot, "editTraction", getPedOccupiedVehicle(localPlayer), localPlayer, true)
  end
end
function addTraction(_ARG_0_)
  if getElementSpeed(getPedOccupiedVehicle(localPlayer), 1) > 5 then
    return
  end
  if table_[_UPVALUE0_][2] == 25 and _ARG_0_ == "arrow_r" then
    triggerServerEvent("ev", resourceRoot, "editTraction", getPedOccupiedVehicle(localPlayer), localPlayer, false)
  end
end
function subAcceleration(_ARG_0_)
  if getElementSpeed(getPedOccupiedVehicle(localPlayer), 1) > 5 then
    return
  end
  if table_[_UPVALUE0_][2] == 26 and _ARG_0_ == "arrow_l" then
    triggerServerEvent("ev", resourceRoot, "editAcceleration", getPedOccupiedVehicle(localPlayer), localPlayer, true)
  end
end
function addAcceleration(_ARG_0_)
  if getElementSpeed(getPedOccupiedVehicle(localPlayer), 1) > 5 then
    return
  end
  if table_[_UPVALUE0_][2] == 26 and _ARG_0_ == "arrow_r" then
    triggerServerEvent("ev", resourceRoot, "editAcceleration", getPedOccupiedVehicle(localPlayer), localPlayer, false)
  end
end
function editRHDown(_ARG_0_)
  if getElementSpeed(getPedOccupiedVehicle(localPlayer), 1) > 5 then
    return
  end
  if table_[_UPVALUE0_][1] == "RH: " .. (exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "rh:up", "synced") or 0) .. "" and _ARG_0_ == "arrow_l" then
    triggerServerEvent("ev", resourceRoot, "editRH", getPedOccupiedVehicle(localPlayer), localPlayer, true)
  end
end
function editRHUp(_ARG_0_)
  if getElementSpeed(getPedOccupiedVehicle(localPlayer), 1) > 5 then
    return
  end
  if table_[_UPVALUE0_][1] == "RH: " .. (exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "rh:up", "synced") or 0) .. "" and _ARG_0_ == "arrow_r" then
    triggerServerEvent("ev", resourceRoot, "editRH", getPedOccupiedVehicle(localPlayer), localPlayer, false)
  end
end
function lWindow(_ARG_0_)
  if getVehicleController((getPedOccupiedVehicle(localPlayer))) == localPlayer then
    if table_[_UPVALUE0_][2] == 27 then
      if _ARG_0_ == "arrow_l" then
        if textWindow == "Otw\195\179rz/Zamknij wszystkie szyby" then
          textWindow = "Otw\195\179rz/Zamknij tylne szyby"
        elseif textWindow == "Otw\195\179rz/Zamknij tylne szyby" then
          textWindow = "Otw\195\179rz/Zamknij przednie szyby"
        elseif textWindow == "Otw\195\179rz/Zamknij przednie szyby" then
          textWindow = "Otw\195\179rz/Zamknij szyb\196\153"
        elseif textWindow == "Otw\195\179rz/Zamknij szyb\196\153" then
          textWindow = "Otw\195\179rz/Zamknij wszystkie szyby"
        end
      end
    elseif table_[_UPVALUE0_][2] == 30 and #getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer))) > 0 then
      for _FORV_7_, _FORV_8_ in ipairs((getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer))))) do
        if _FORV_8_ == textPassenger then
          break
        end
      end
      if _ARG_0_ == "arrow_l" then
        if _FORV_7_ - 1 < 1 then
        end
      elseif _ARG_0_ == "arrow_r" and #getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer))) + 1 > #getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer))) then
      end
      textPassenger = getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer)))[1]
    end
  end
end
function rWindow(_ARG_0_)
  if getVehicleController((getPedOccupiedVehicle(localPlayer))) == localPlayer then
    if table_[_UPVALUE0_][2] == 27 then
      if _ARG_0_ == "arrow_r" then
        if textWindow == "Otw\195\179rz/Zamknij szyb\196\153" then
          textWindow = "Otw\195\179rz/Zamknij przednie szyby"
        elseif textWindow == "Otw\195\179rz/Zamknij przednie szyby" then
          textWindow = "Otw\195\179rz/Zamknij tylne szyby"
        elseif textWindow == "Otw\195\179rz/Zamknij tylne szyby" then
          textWindow = "Otw\195\179rz/Zamknij wszystkie szyby"
        elseif textWindow == "Otw\195\179rz/Zamknij wszystkie szyby" then
          textWindow = "Otw\195\179rz/Zamknij szyb\196\153"
        end
      end
    elseif table_[_UPVALUE0_][2] == 30 and #getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer))) > 0 then
      for _FORV_7_, _FORV_8_ in ipairs((getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer))))) do
        if _FORV_8_ == textPassenger then
          break
        end
      end
      if _ARG_0_ == "arrow_r" then
        if _FORV_7_ + 1 > #getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer))) then
        end
      elseif _ARG_0_ == "arrow_l" and 1 - 1 < 1 then
      end
      textPassenger = getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer)))[#getAvailablePassengerOptions((getPedOccupiedVehicle(localPlayer)))]
    end
  end
end
function getElementSpeed(_ARG_0_, _ARG_1_)
  assert(isElement(_ARG_0_), "Bad argument 1 @ getElementSpeed (element expected, got " .. type(_ARG_0_) .. ")")
  assert(getElementType(_ARG_0_) == "player" or getElementType(_ARG_0_) == "ped" or getElementType(_ARG_0_) == "object" or getElementType(_ARG_0_) == "vehicle" or getElementType(_ARG_0_) == "projectile", "Invalid element type @ getElementSpeed (player/ped/object/vehicle/projectile expected, got " .. getElementType(_ARG_0_) .. ")")
  assert((_ARG_1_ == nil or type(_ARG_1_) == "string" or type(_ARG_1_) == "number") and (_ARG_1_ == nil or tonumber(_ARG_1_) and (tonumber(_ARG_1_) == 0 or tonumber(_ARG_1_) == 1 or tonumber(_ARG_1_) == 2) or _ARG_1_ == "m/s" or _ARG_1_ == "km/h" or _ARG_1_ == "mph"), "Bad argument 2 @ getElementSpeed (invalid speed unit)")
  _ARG_1_ = _ARG_1_ == nil and 0 or not tonumber(_ARG_1_) and _ARG_1_ or tonumber(_ARG_1_)
  return (Vector3(getElementVelocity(_ARG_0_)) * ((_ARG_1_ == 0 or _ARG_1_ == "m/s") and 50 or (_ARG_1_ == 1 or _ARG_1_ == "km/h") and 180 or 111.84681456)).length
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
addEvent("wlaczlatanie", true)
addEventHandler("wlaczlatanie", resourceRoot, function()
  setWorldSpecialPropertyEnabled("aircars", true)
end)
addEvent("wylaczlatanie", true)
addEventHandler("wylaczlatanie", root, function()
  setWorldSpecialPropertyEnabled("aircars", false)
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
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "switchWindowClient" and _ARG_1_ then
    if _ARG_4_ == "Otw\195\179rz/Zamknij szyb\196\153" then
      setVehicleWindowOpen(_ARG_1_, _ARG_2_, not isVehicleWindowOpen(_ARG_1_, _UPVALUE0_[_ARG_3_]))
    elseif _ARG_4_ == "Otw\195\179rz/Zamknij przednie szyby" then
      setVehicleWindowOpen(_ARG_1_, 4, not isVehicleWindowOpen(_ARG_1_, _UPVALUE0_[_ARG_3_]))
      setVehicleWindowOpen(_ARG_1_, 2, not isVehicleWindowOpen(_ARG_1_, _UPVALUE0_[_ARG_3_]))
    elseif _ARG_4_ == "Otw\195\179rz/Zamknij tylne szyby" then
      setVehicleWindowOpen(_ARG_1_, 5, not isVehicleWindowOpen(_ARG_1_, 5))
      setVehicleWindowOpen(_ARG_1_, 3, not isVehicleWindowOpen(_ARG_1_, 5))
    elseif _ARG_4_ == "Otw\195\179rz/Zamknij wszystkie szyby" then
      setVehicleWindowOpen(_ARG_1_, 4, not isVehicleWindowOpen(_ARG_1_, _UPVALUE0_[_ARG_3_]))
      setVehicleWindowOpen(_ARG_1_, 2, not isVehicleWindowOpen(_ARG_1_, _UPVALUE0_[_ARG_3_]))
      setVehicleWindowOpen(_ARG_1_, 5, not isVehicleWindowOpen(_ARG_1_, _UPVALUE0_[_ARG_3_]))
      setVehicleWindowOpen(_ARG_1_, 3, not isVehicleWindowOpen(_ARG_1_, _UPVALUE0_[_ARG_3_]))
    end
  end
end)
function tempomat()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if getVehicleController((getPedOccupiedVehicle(localPlayer))) ~= localPlayer then
    return
  end
  if getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 502 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 444 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 556 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 557 then
  end
  if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and getDistanceBetweenPoints2D(0, 0, getElementVelocity((getPedOccupiedVehicle(localPlayer)))) < 0.1 then
    setElementVelocity(getPedOccupiedVehicle(localPlayer), 0, 0, getElementVelocity((getPedOccupiedVehicle(localPlayer))))
    return
  end
  if _UPVALUE2_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and getControlState("brake_reverse") and math.abs(getElementVelocity((getPedOccupiedVehicle(localPlayer)))) < 0.03 then
    if (0 ^ 2 + 0 ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161 > _UPVALUE2_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      setElementVelocity(getPedOccupiedVehicle(localPlayer), 0 * 0.6, 0 * 0.6, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9)
    end
    return
  end
  if not _UPVALUE3_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
    return
  end
  if _UPVALUE3_[getElementModel((getPedOccupiedVehicle(localPlayer)))] < (0 ^ 2 + 0 ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161 then
    setElementVelocity(getPedOccupiedVehicle(localPlayer), 0 * 0.9, 0 * 0.9, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9)
  end
end
addCommandHandler("Zmniejsz ograniczenie predkosci", function()
  if isCursorShowing() or isPedDoingGangDriveby(localPlayer) then
    return
  end
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if getVehicleController((getPedOccupiedVehicle(localPlayer))) ~= localPlayer then
    return
  end
  if getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 502 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 444 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 556 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 557 then
  end
  if _UPVALUE0_ then
    if getVehicleType((getPedOccupiedVehicle(localPlayer))) ~= "Automobile" then
      return
    end
    _UPVALUE1_ = _UPVALUE1_ - 1
    if _UPVALUE1_ < 1 then
      _UPVALUE1_ = #_UPVALUE2_
    end
    if _UPVALUE2_[_UPVALUE1_] then
      outputChatBox("* Ograniczenie pr\196\153dko\197\155ci ustawione na #FFCC00" .. _UPVALUE2_[_UPVALUE1_] .. " km/h#ffffff", 255, 255, 255, true)
    else
      outputChatBox("* Ograniczenie pr\196\153dko\197\155ci #FF0000wy\197\130\196\133czone#ffffff", 255, 255, 255, true)
    end
  end
end)
bindKey("mouse1", "down", "Zmniejsz ograniczenie predkosci")
addCommandHandler("Zwieksz ograniczenie predkosci", function()
  if isCursorShowing() or isPedDoingGangDriveby(localPlayer) then
    return
  end
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if getVehicleType((getPedOccupiedVehicle(localPlayer))) ~= "Automobile" then
    return
  end
  if getVehicleController((getPedOccupiedVehicle(localPlayer))) ~= localPlayer then
    return
  end
  if getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 502 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 444 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 556 or getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 557 then
  end
  if _UPVALUE0_ then
    _UPVALUE1_ = _UPVALUE1_ + 1
    if _UPVALUE1_ > #_UPVALUE2_ then
      _UPVALUE1_ = 1
    end
    if _UPVALUE2_[_UPVALUE1_] then
      outputChatBox("* Ograniczenie pr\196\153dko\197\155ci ustawione na #FFCC00" .. _UPVALUE2_[_UPVALUE1_] .. " km/h#ffffff", 255, 255, 255, true)
    else
      outputChatBox("* Ograniczenie pr\196\153dko\197\155ci #FF0000wy\197\130\196\133czone#ffffff", 255, 255, 255, true)
    end
  end
end)
bindKey("mouse2", "down", "Zwieksz ograniczenie predkosci")
function getAvailablePassengerOptions(_ARG_0_)
  if getVehicleOccupant(_ARG_0_, 1) then
    table.insert({}, "Wyrzu\196\135 pasa\197\188era prawy prz\195\179d")
  end
  if getVehicleOccupant(_ARG_0_, 2) then
    table.insert({}, "Wyrzu\196\135 pasa\197\188era lewy ty\197\130")
  end
  if getVehicleOccupant(_ARG_0_, 3) then
    table.insert({}, "Wyrzu\196\135 pasa\197\188era prawy ty\197\130")
  end
  return {}
end
getResourceName(getThisResource(), true, 692291735)
return
