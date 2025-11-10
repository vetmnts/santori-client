table_info = {}
function window()
  if _UPVALUE0_.background == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 202 / _UPVALUE2_, _UPVALUE1_.y + 131 / _UPVALUE2_, _UPVALUE1_.w - 405 / _UPVALUE2_, _UPVALUE1_.h - 261 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(dataArea.color[1], dataArea.color[2], dataArea.color[3], 200), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 204 / _UPVALUE2_, _UPVALUE1_.y + 133 / _UPVALUE2_, _UPVALUE1_.w - 409 / _UPVALUE2_, _UPVALUE1_.h - 265 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(35, 35, 35, 255), false)
    if _UPVALUE0_.category == "g\197\130owne" then
      dxDrawText("TEREN PRZEJ\196\152TY PRZEZ:", _UPVALUE1_.x + 220 / _UPVALUE2_, _UPVALUE1_.y + 110 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
      dxDrawText(dataArea.organization or "brak", _UPVALUE1_.x + 220 / _UPVALUE2_, _UPVALUE1_.y + 170 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(dataArea.color[1], dataArea.color[2], dataArea.color[3], 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light20"), "left", "center", false, false, false, true, false)
      dxDrawText("STREFA #ffbb00#" .. dataArea.id, _UPVALUE1_.x, _UPVALUE1_.y + 640 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 300 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
      if dataArea.time ~= 0 then
        dxDrawText("Ta strefa jest przejmowana...", _UPVALUE1_.x + 510 / _UPVALUE2_, _UPVALUE1_.y + 330 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 150, 150, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
        exports.ST_buttons:dxCreateButton("Przerwij", _UPVALUE1_.x + 350 / _UPVALUE2_, _UPVALUE1_.y + 350 / _UPVALUE2_, 180 / _UPVALUE2_, 61 / _UPVALUE2_, 255, 1)
      else
        if dataArea.organization ~= getElementData(localPlayer, "player:organization") then
          exports.ST_buttons:dxCreateButton("Przejmij", _UPVALUE1_.x + 350 / _UPVALUE2_, _UPVALUE1_.y + 350 / _UPVALUE2_, 180 / _UPVALUE2_, 61 / _UPVALUE2_, 255, 1)
        elseif isMouseIn(_UPVALUE1_.x + 213 / _UPVALUE2_, _UPVALUE1_.y + 392 / _UPVALUE2_, 40 / _UPVALUE2_, 40 / _UPVALUE2_) then
          dxDrawImage(_UPVALUE1_.x + 213 / _UPVALUE2_, _UPVALUE1_.y + 392 / _UPVALUE2_, 40 / _UPVALUE2_, 40 / _UPVALUE2_, _UPVALUE3_.settings_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
        else
          dxDrawImage(_UPVALUE1_.x + 213 / _UPVALUE2_, _UPVALUE1_.y + 392 / _UPVALUE2_, 40 / _UPVALUE2_, 40 / _UPVALUE2_, _UPVALUE3_.settings_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
        end
        dxDrawText("PROFITY:", _UPVALUE1_.x + 220 / _UPVALUE2_, _UPVALUE1_.y + 275 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        xY = 0
        for _FORV_7_, _FORV_8_ in ipairs(profit) do
          xY = xY + 1
          dxDrawText(_FORV_8_.name, _UPVALUE1_.x + 225 / _UPVALUE2_, _UPVALUE1_.y + 260 / _UPVALUE2_ + 30 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light15"), "left", "top", false, false, false, true, false)
        end
      end
    end
    if _UPVALUE0_.category == "ulepszenia" then
      dxDrawText("ulepszenia", _UPVALUE1_.x + 220 / _UPVALUE2_, _UPVALUE1_.y + 110 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 220 / _UPVALUE2_, _UPVALUE1_.y + 180 / _UPVALUE2_, _UPVALUE1_.w - 440 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE1_.x + 220 / _UPVALUE2_, _UPVALUE1_.y + 190 / _UPVALUE2_ + 75 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.w - 440 / _UPVALUE2_, 70 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 200))
        dxDrawText(_FORV_8_.name, _UPVALUE1_.x + 237 / _UPVALUE2_, _UPVALUE1_.y + 212 / _UPVALUE2_ + 150 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE1_.x + 227 / _UPVALUE2_, _UPVALUE1_.y + 205 / _UPVALUE2_ + 75 / _UPVALUE2_ * (xY - 1), 2 / _UPVALUE2_, 35 / _UPVALUE2_, 1 / _UPVALUE2_, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE1_.x + 227 / _UPVALUE2_, _UPVALUE1_.y + 240 / _UPVALUE2_ + 75 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 2 / _UPVALUE2_, 1 / _UPVALUE2_, tocolor(60, 60, 60, 255))
        dxDrawText("#00ad23" .. przecinek(_FORV_8_.cost) .. " #ffffffPLN", _UPVALUE1_.x + 250 / _UPVALUE2_, _UPVALUE1_.y + 275 / _UPVALUE2_ + 150 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
        if _FORV_8_.status == 0 then
          exports.ST_buttons:dxCreateButton("Zakup", _UPVALUE1_.x + 530 / _UPVALUE2_, _UPVALUE1_.y + 202 / _UPVALUE2_ + 75 / _UPVALUE2_ * (xY - 1), 120 / _UPVALUE2_, 45 / _UPVALUE2_, 255, 1)
        else
          dxDrawText("Zakupiono #00ff00\226\156\148", _UPVALUE1_.x + 550 / _UPVALUE2_, _UPVALUE1_.y + 250 / _UPVALUE2_ + 150 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 633 / _UPVALUE2_, _UPVALUE1_.y + 146 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + 633 / _UPVALUE2_, _UPVALUE1_.y + 146 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, _UPVALUE3_.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + 634 / _UPVALUE2_, _UPVALUE1_.y + 147 / _UPVALUE2_, 28 / _UPVALUE2_, 28 / _UPVALUE2_, _UPVALUE3_.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.background == true and _UPVALUE0_.category == "ulepszenia" then
      for _FORV_6_, _FORV_7_ in ipairs(upgrades) do
        if isMouseIn(_UPVALUE2_.x + 530 / _UPVALUE1_, _UPVALUE2_.y + 202 / _UPVALUE1_ + 75 / _UPVALUE1_ * (0 + 1 - 1), 120 / _UPVALUE1_, 45 / _UPVALUE1_) and _UPVALUE0_.category == "ulepszenia" and _FORV_7_.status == 0 then
          triggerServerEvent("ev", resourceRoot, "upgrade", localPlayer, _FORV_7_.nameDatabase, getElementData(localPlayer, "player:organization"), _FORV_7_.cost, dataArea.id)
        end
      end
    end
    if isMouseIn(_UPVALUE2_.x + 350 / _UPVALUE1_, _UPVALUE2_.y + 350 / _UPVALUE1_, 180 / _UPVALUE1_, 61 / _UPVALUE1_) and _UPVALUE0_.category == "g\197\130owne" then
      if getElementData(localPlayer, "player:bw") then
        return
      end
      if dataArea.time == 0 then
        if dataArea.organization == getElementData(localPlayer, "player:organization") then
          return
        end
        if isTaking then
          return
        end
        triggerServerEvent("ev", resourceRoot, "startTake", localPlayer, dataArea.id)
        isTaking = dataArea.id
        if getPlayerSerial(localPlayer) == "9E16962BFFD951D52F138899822F42F3" then
          timerPlayer = setTimer(function()
            triggerServerEvent("ev", resourceRoot, "time", localPlayer, dataArea.id)
            if getTimerDetails(timerPlayer) == 1 then
              triggerServerEvent("ev", resourceRoot, "successTake", localPlayer, dataArea.id)
              isTaking = false
              if isTimer(timerPlayer) then
                killTimer(timerPlayer)
              end
              if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
                removeEventHandler("onClientRender", root, drawCircleArea)
              end
              removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
            end
          end, 2000, 5)
        else
          timerPlayer = setTimer(function()
            triggerServerEvent("ev", resourceRoot, "time", localPlayer, dataArea.id)
            if getTimerDetails(timerPlayer) == 1 then
              triggerServerEvent("ev", resourceRoot, "successTake", localPlayer, dataArea.id)
              isTaking = false
              if isTimer(timerPlayer) then
                killTimer(timerPlayer)
              end
              if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
                removeEventHandler("onClientRender", root, drawCircleArea)
              end
              removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
            end
          end, 2000, 150)
        end
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        showCursor(false)
        _UPVALUE0_.category = false
        _UPVALUE0_.background = false
        for _FORV_5_, _FORV_6_ in pairs(_UPVALUE3_) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        _UPVALUE3_ = {}
        centerXCircle, centerYCircle, centerZCircle = getElementPosition(localPlayer)
        addEventHandler("onClientRender", root, drawCircleArea)
        exports.st_gui:showPlayerNotification("Rozpocz\196\153to przejmowanie strefy\nNie wychod\197\186 poza pomara\197\132czowy okr\196\133g!", "info")
        addEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
      else
        isTaking = false
        if isTimer(timerPlayer) then
          killTimer(timerPlayer)
        end
        triggerServerEvent("ev", resourceRoot, "stopTake", localPlayer, dataArea.id)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        showCursor(false)
        _UPVALUE0_.category = false
        _UPVALUE0_.background = false
        for _FORV_5_, _FORV_6_ in pairs(_UPVALUE3_) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        _UPVALUE3_ = {}
        if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
          removeEventHandler("onClientRender", root, drawCircleArea)
        end
        removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
      end
    elseif isMouseIn(_UPVALUE2_.x + 633 / _UPVALUE1_, _UPVALUE2_.y + 146 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_) and _UPVALUE0_.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
      _UPVALUE0_.category = false
      _UPVALUE0_.background = false
      for _FORV_5_, _FORV_6_ in pairs(_UPVALUE3_) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      _UPVALUE3_ = {}
    elseif isMouseIn(_UPVALUE2_.x + 213 / _UPVALUE1_, _UPVALUE2_.y + 392 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) and _UPVALUE0_.category == "g\197\130owne" and dataArea.organization == getElementData(localPlayer, "player:organization") then
      _UPVALUE0_.category = false
      upgrades = {}
      table.insert(upgrades, {
        name = "Bonus zarobk\195\179w #00ad23+50%",
        cost = 200000,
        status = dataArea.upgradeMoney,
        nameDatabase = dataArea.upgradeMoney
      })
      _UPVALUE0_.category = "ulepszenia"
      triggerServerEvent("ev", resourceRoot, "showGuiOrganizationInfo", localPlayer)
    end
  end
end
function render()
  dxSetRenderTarget(_UPVALUE0_.rt, true)
  dxDrawRectangle(0, 0, 300, 300, tocolor(dataTableArea.color[1], dataTableArea.color[2], dataTableArea.color[3], 255), false)
  dxDrawRectangle(27, 2, 246, 296, tocolor(25, 25, 25, 255), false)
  dxDrawText("Strefa ##ffbb00" .. dataTableArea.id, 300, 20, 0, 0, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, true, false, 0, 0, 0)
  if dataTableArea.time ~= 0 then
    dxDrawText("Trwa przejmowanie terytorium", 300, 90, 0, 0, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font14"), "center", "top", false, false, false, false, false, 0, 0, 0)
    dxDrawText(secondsToClock(dataTableArea.time), 300, 140, 0, 0, tocolor(255, 187, 0, 255), 2, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, false, false, 0, 0, 0)
  else
    dxDrawText("Terytorium przej\196\153te\nprzez organizacj\196\153", 300, 90, 0, 0, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, false, false, 0, 0, 0)
    dxDrawText(dataTableArea.organization or "nie przej\196\153te", 300, 165, 0, 0, tocolor(dataTableArea.color[1], dataTableArea.color[2], dataTableArea.color[3], 255), 1, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, false, false, 0, 0, 0)
    dxDrawText("Data przej\196\153cia", 300, 220, 0, 0, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, false, false, 0, 0, 0)
    dxDrawText(dataTableArea.date, 300, 250, 0, 0, tocolor(255, 187, 0, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, false, false, 0, 0, 0)
  end
  dxSetRenderTarget()
  if _UPVALUE0_.shd then
    destroyElement(_UPVALUE0_.shd)
    _UPVALUE0_.shd = nil
  end
  _UPVALUE0_.shd = dxCreateShader(":ST_devpaczka1/shader.fx", 0, 0, false, "object")
  dxSetShaderValue(_UPVALUE0_.shd, "DevTexture", _UPVALUE0_.rt)
  engineApplyShaderToWorldTexture(_UPVALUE0_.shd, "b", _UPVALUE0_.obj)
  engineApplyShaderToWorldTexture(_UPVALUE0_.shd, "a", _UPVALUE0_.obj)
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showGuiOrganizationInfoClient" then
    table_info = _ARG_1_
    if _ARG_2_ then
      dataArea = _ARG_2_
      upgrades = {}
      table.insert(upgrades, {
        name = "Bonus zarobk\195\179w #00ad23+50%",
        cost = 200000,
        status = dataArea.upgradeMoney,
        nameDatabase = dataArea.upgradeMoney
      })
    end
    for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
      if dataArea.id == 4 or dataArea.id == 25 or dataArea.id == 15 or dataArea.id == 26 or dataArea.id == 11 then
        table.insert(upgrades, {
          name = "Wi\196\153kszy zarobek na pracy",
          cost = 15000000,
          status = _FORV_10_.upgrades_job,
          nameDatabase = "upgrades_job"
        })
      end
    end
  elseif _ARG_0_ == "renderInfo" then
    if _ARG_2_ then
      if _UPVALUE0_.shd then
        destroyElement(_UPVALUE0_.shd)
        _UPVALUE0_.shd = nil
      end
      if _UPVALUE0_.obj then
        destroyElement(_UPVALUE0_.obj)
        _UPVALUE0_.obj = nil
      end
      if _UPVALUE0_.rt then
        destroyElement(_UPVALUE0_.rt)
        _UPVALUE0_.rt = nil
        _UPVALUE0_ = {}
        selfInfo = {}
      end
      _UPVALUE0_ = {
        obj = createObject(8084, _ARG_1_.d3Pos[1], _ARG_1_.d3Pos[2], _ARG_1_.d3Pos[3], _ARG_1_.d3Pos[4], _ARG_1_.d3Pos[5], _ARG_1_.d3Pos[6]),
        rt = dxCreateRenderTarget(300, 300, false)
      }
      setObjectScale(_UPVALUE0_.obj, 0.4)
      dataTableArea = _ARG_1_
      render()
    else
      if _UPVALUE0_.shd then
        destroyElement(_UPVALUE0_.shd)
        _UPVALUE0_.shd = nil
      end
      if _UPVALUE0_.obj then
        destroyElement(_UPVALUE0_.obj)
        _UPVALUE0_.obj = nil
      end
      if _UPVALUE0_.rt then
        destroyElement(_UPVALUE0_.rt)
        _UPVALUE0_.rt = nil
      end
      _UPVALUE0_ = {}
      if isTaking then
        triggerServerEvent("ev", resourceRoot, "stopTake", localPlayer, dataTableArea.id)
        if isTimer(timerPlayer) then
          killTimer(timerPlayer)
        end
        if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
          removeEventHandler("onClientRender", root, drawCircleArea)
        end
        removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
      end
      isTaking = false
    end
  elseif _ARG_0_ == "openGui" then
    if _ARG_2_ then
      _UPVALUE1_ = {
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        settings_icon = dxCreateTexture("img/settings_icon.png")
      }
      profit = {}
      dataArea = _ARG_1_
      table.insert(profit, {
        name = "- #00ad23" .. dataArea.money .. " #ffffffPLN co godzin\196\153\n"
      })
      if dataArea.id == 4 or dataArea.id == 25 or dataArea.id == 15 or dataArea.id == 26 or dataArea.id == 11 then
        table.insert(profit, {
          name = "- Rozmontowywanie pojazd\195\179w\n"
        })
      end
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      showCursor(true)
      _UPVALUE2_.category = "g\197\130owne"
      _UPVALUE2_.background = true
      tick = getTickCount()
    else
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
      _UPVALUE2_.category = false
      _UPVALUE2_.background = false
      for _FORV_9_, _FORV_10_ in pairs(_UPVALUE1_) do
        if isElement(_FORV_10_) then
          destroyElement(_FORV_10_)
        end
      end
      _UPVALUE1_ = {}
    end
  elseif _ARG_0_ == "reloadRender" and _UPVALUE0_.rt then
    dataArea = _ARG_1_
    dataTableArea = _ARG_1_
    render()
    if _ARG_2_ and isTaking and isTaking == dataArea.id then
      if isTimer(timerPlayer) then
        killTimer(timerPlayer)
      end
      if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
        removeEventHandler("onClientRender", root, drawCircleArea)
      end
      removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
      isTaking = false
      exports.st_gui:showPlayerNotification("Przerwano przejmowanie terytorium!", "info")
    end
  end
end)
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "" .. mins .. ":" .. secs
  end
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
function przecinek(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
function drawCircleArea()
  for _FORV_6_ = 1, 100 do
    dxDrawLine3D(centerXCircle + math.cos((_FORV_6_ - 1) * (math.pi * 2 / 100)) * 30, centerYCircle + math.sin((_FORV_6_ - 1) * (math.pi * 2 / 100)) * 30, centerZCircle, centerXCircle + math.cos(_FORV_6_ * (math.pi * 2 / 100)) * 30, centerYCircle + math.sin(_FORV_6_ * (math.pi * 2 / 100)) * 30, centerZCircle, tocolor(252, 86, 3, 255), 3)
  end
end
function onPlayerWasted()
  if isTaking then
    isTaking = false
    if isTimer(timerPlayer) then
      killTimer(timerPlayer)
    end
    if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
      removeEventHandler("onClientRender", root, drawCircleArea)
    end
    removeEventHandler("onClientPlayerWasted", localPlayer, onPlayerWasted)
    triggerServerEvent("ev", resourceRoot, "stopTake", localPlayer, dataArea.id)
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
getResourceName(getThisResource(), true, 972538741)
return
