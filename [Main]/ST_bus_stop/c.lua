function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("PRZYSTANEK AUTOBUSOWY", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 125 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawText(nameBusStop, _UPVALUE1_.x + 260 / _UPVALUE2_, _UPVALUE1_.y - 125 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 187, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 25 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(possitions) do
      if nameBusStop ~= _FORV_8_.name and _FORV_7_ >= _UPVALUE3_ and _FORV_7_ <= _UPVALUE4_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_ + 70 / _UPVALUE2_ * (xY - 1), 820 / _UPVALUE2_, 64 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(20, 20, 20, 200), false)
        dxDrawRoundedRectangle(_UPVALUE1_.x + 32 / _UPVALUE2_, _UPVALUE1_.y + 77 / _UPVALUE2_ + 70 / _UPVALUE2_ * (xY - 1), 60 / _UPVALUE2_, 60 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name, _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y - 20 / _UPVALUE2_ + 140 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE1_.x + 32 / _UPVALUE2_, _UPVALUE1_.y + 77 / _UPVALUE2_ + 70 / _UPVALUE2_ * (xY - 1), 60 / _UPVALUE2_, 60 / _UPVALUE2_, textures.busstop_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if 10 < getElementData(localPlayer, "player:lvl") then
          dxDrawText("#00ad23" .. przecinek(math.floor(250 * math.floor((getDistanceBetweenPoints3D(_FORV_8_.pos[1], _FORV_8_.pos[2], _FORV_8_.pos[3], getElementPosition(localPlayer)))) / 150)) .. " #dededePLN         Czas podr\195\179\197\188y: " .. secondsToClock(10 * math.floor((getDistanceBetweenPoints3D(_FORV_8_.pos[1], _FORV_8_.pos[2], _FORV_8_.pos[3], getElementPosition(localPlayer)))) / 250), _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y + 40 / _UPVALUE2_ + 140 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(240, 240, 240, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("#00ad230 #dededePLN #8f8f8f- bilety do 10 lvl'u s\196\133 darmowe", _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y + 40 / _UPVALUE2_ + 140 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(240, 240, 240, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
        end
        dxDrawText("#ffbb00" .. przecinek(math.floor((getDistanceBetweenPoints3D(_FORV_8_.pos[1], _FORV_8_.pos[2], _FORV_8_.pos[3], getElementPosition(localPlayer))))) .. "#dededem", _UPVALUE1_.x, _UPVALUE1_.y + 15 / _UPVALUE2_ + 140 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 350 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(240, 240, 240, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("KUP BILET", _UPVALUE1_.x + 720 / _UPVALUE2_, _UPVALUE1_.y + 85 / _UPVALUE2_ + 70 / _UPVALUE2_ * (xY - 1), 120 / _UPVALUE2_, 45 / _UPVALUE2_, 255, 1)
      end
    end
  end
  if _UPVALUE0_.loading == true then
    if getTickCount() - tick > 1000 then
      tick = getTickCount()
      pozdrozTime = pozdrozTime - 1
    end
    if 1 > pozdrozTime then
      blockOpenGui = true
      setTimer(function()
        blockOpenGui = false
      end, 2000, 1)
      removeEventHandler("onClientRender", root, window)
      _UPVALUE0_.loading = false
      triggerServerEvent("evEwenciks_kdfhtyfkhjg", resourceRoot, "tppos", localPlayer, podrozPos)
      setPlayerHudComponentVisible("radar", true)
    end
    dxDrawRoundedRectangle(_UPVALUE5_.x, _UPVALUE5_.y, _UPVALUE5_.w, _UPVALUE5_.h, 15 / _UPVALUE2_, tocolor(25, 25, 25, 200))
    dxDrawRoundedRectangle(_UPVALUE5_.x + 8 / _UPVALUE2_, _UPVALUE5_.y + 8 / _UPVALUE2_, 104 / _UPVALUE2_, 104 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(255, 196, 0, 200))
    dxDrawRoundedRectangle(_UPVALUE5_.x + 10 / _UPVALUE2_, _UPVALUE5_.y + 10 / _UPVALUE2_, 100 / _UPVALUE2_, 100 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 255))
    dxDrawImage(_UPVALUE5_.x + 15 / _UPVALUE2_, _UPVALUE5_.y + 15 / _UPVALUE2_, 90 / _UPVALUE2_, 90 / _UPVALUE2_, textures.busstop_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("PODR\195\147\197\187 DO", _UPVALUE5_.x + 125 / _UPVALUE2_, _UPVALUE5_.y - 75 / _UPVALUE2_, _UPVALUE5_.x + _UPVALUE5_.w, _UPVALUE5_.y + _UPVALUE5_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("#ffbb00" .. podrozDo, _UPVALUE5_.x + 125 / _UPVALUE2_, _UPVALUE5_.y - 25 / _UPVALUE2_, _UPVALUE5_.x + _UPVALUE5_.w, _UPVALUE5_.y + _UPVALUE5_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    dxDrawText("CZAS PODR\195\147\197\187Y", _UPVALUE5_.x + 125 / _UPVALUE2_, _UPVALUE5_.y + 45 / _UPVALUE2_, _UPVALUE5_.x + _UPVALUE5_.w, _UPVALUE5_.y + _UPVALUE5_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    dxDrawText(secondsToClock(pozdrozTime), _UPVALUE5_.x + 125 / _UPVALUE2_, _UPVALUE5_.y + 90 / _UPVALUE2_, _UPVALUE5_.x + _UPVALUE5_.w, _UPVALUE5_.y + _UPVALUE5_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and _UPVALUE0_.main == true then
    for _FORV_6_, _FORV_7_ in ipairs(possitions) do
      if nameBusStop ~= _FORV_7_.name and _FORV_6_ >= _UPVALUE1_ and _FORV_6_ <= _UPVALUE2_ and isMouseIn(_UPVALUE4_.x + 720 / _UPVALUE3_, _UPVALUE4_.y + 85 / _UPVALUE3_ + 70 / _UPVALUE3_ * (0 + 1 - 1), 120 / _UPVALUE3_, 45 / _UPVALUE3_) then
        if getElementData(localPlayer, "player:lvl") > 10 then
          triggerServerEvent("evEwenciks_kdfhtyfkhjg", resourceRoot, "takeMoney", localPlayer, 250 * math.floor((getDistanceBetweenPoints3D(_FORV_7_.pos[1], _FORV_7_.pos[2], _FORV_7_.pos[3], getElementPosition(localPlayer)))) / 150)
        else
          triggerServerEvent("evEwenciks_kdfhtyfkhjg", resourceRoot, "takeMoney", localPlayer, false)
        end
        podrozDo = _FORV_7_.name
        pozdrozTime = 10 * math.floor((getDistanceBetweenPoints3D(_FORV_7_.pos[1], _FORV_7_.pos[2], _FORV_7_.pos[3], getElementPosition(localPlayer)))) / 250
        tick = getTickCount()
        podrozPos = _FORV_7_.pos
      end
    end
    if isMouseIn(_UPVALUE4_.x + _UPVALUE4_.w - 61 / _UPVALUE3_, _UPVALUE4_.y + 24 / _UPVALUE3_, 27 / _UPVALUE3_, 27 / _UPVALUE3_) then
      removeEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = false
      showCursor(false)
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showGui" then
    _UPVALUE0_.main = false
    showCursor(false)
  elseif _ARG_0_ == "nextClient" then
    _UPVALUE0_.loading = true
    setPlayerHudComponentVisible("radar", false)
  end
end)
for _FORV_16_, _FORV_17_ in ipairs({
  {
    name = "Spawn Los Santos",
    pos = {
      1267.25,
      -1319.37,
      13.45
    }
  },
  {
    name = "Urz\196\133d Los Santos",
    pos = {
      1513.22,
      -1726.62,
      13.45
    }
  },
  {
    name = "Gie\197\130da Los Santos",
    pos = {
      1816.05,
      -2054.78,
      13.5
    }
  },
  {
    name = "Cygan Los santos",
    pos = {
      1828.25,
      -1893.01,
      13.5
    }
  },
  {
    name = "Salon samochodowy Los Santos",
    pos = {
      1767.39,
      -1725.65,
      13.5
    }
  },
  {
    name = "Mechanik Los Santos",
    pos = {
      996.12,
      -1497.3,
      13.55
    }
  },
  {
    name = "Kasyno",
    pos = {
      2868.28,
      -1414.78,
      11.06
    }
  },
  {
    name = "Przebieralnia Los Santos",
    pos = {
      2267.97,
      -1667.23,
      15.38
    }
  },
  {
    name = "Red County, Dillimore",
    pos = {
      668.01,
      -492.43,
      16.3
    }
  },
  {
    name = "Red County, Blueberry",
    pos = {
      239.62,
      -185.38,
      1.58
    }
  },
  {
    name = "Red County, Palomino Creek",
    pos = {
      2255.54,
      48.63,
      26.48
    }
  },
  {
    name = "Spawn Las Venturas",
    pos = {
      2022.23,
      980.63,
      10.82
    }
  },
  {
    name = "Urz\196\133d Las Venturas",
    pos = {
      2614.08,
      1200.47,
      10.81
    }
  },
  {
    name = "Przechowalnia Las Venturas",
    pos = {
      1604.77,
      926.49,
      10.82
    }
  },
  {
    name = "Koszary SAFD",
    pos = {
      1324.57,
      1186.95,
      10.75
    }
  },
  {
    name = "Komisariat SAPD",
    pos = {
      2328.9,
      2407.29,
      10.75
    }
  },
  {
    name = "G\195\179rnik",
    pos = {
      2560.56,
      -454.35,
      83.12
    },
    bustop = {
      2560.56,
      -454.35,
      83.42,
      0,
      0,
      90
    }
  },
  {
    name = "Gie\197\130da San Fierro",
    pos = {
      -1916.23,
      -876.14,
      32.15
    },
    bustop = {
      -1915.67,
      -876.16,
      32.35,
      0,
      0,
      0
    }
  },
  {
    name = "Przechowalnia San Fierro",
    pos = {
      -2013.81,
      448.82,
      35.17
    }
  },
  {
    name = "Spawn San Fierro",
    pos = {
      -1978.32,
      831.21,
      45.45
    },
    bustop = {
      -1978.32,
      831.21,
      45.65,
      0,
      0,
      -90
    }
  },
  {
    name = "Urz\196\133d San Fierro",
    pos = {
      -1532.29,
      774.91,
      7.19
    },
    bustop = {
      -1532.29,
      774.91,
      7.45,
      0,
      0,
      -5
    }
  },
  {
    name = "Fort Carson",
    pos = {
      -128.3,
      1204.96,
      19.65
    }
  },
  {
    name = "Akademia Las Venturas",
    pos = {
      1084.62,
      1199.71,
      10.75
    }
  },
  {
    name = "Stacja Paliw Flint County",
    pos = {
      -111.83,
      -1193.5,
      2.5
    }
  },
  {
    name = "Przechowalnia Los Santos",
    pos = {
      1652.12,
      -1516.36,
      13.2
    }
  }
}) do
  createBlip(_FORV_17_.pos[1], _FORV_17_.pos[2], _FORV_17_.pos[3], 7, 2, 0, 0, 0, 0, 0, 250)
  setElementData(createMarker(_FORV_17_.pos[1], _FORV_17_.pos[2], _FORV_17_.pos[3] - 0.95, "cylinder", 1.4, 255, 175, 0, 75), "marker:icon", "busstop")
  if _FORV_17_.bustop then
    createObject(1257, _FORV_17_.bustop[1], _FORV_17_.bustop[2], _FORV_17_.bustop[3], _FORV_17_.bustop[4], _FORV_17_.bustop[5], _FORV_17_.bustop[6])
  end
  addEventHandler("onClientMarkerHit", createMarker(_FORV_17_.pos[1], _FORV_17_.pos[2], _FORV_17_.pos[3] - 0.95, "cylinder", 1.4, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ then
      if blockOpenGui then
        return
      end
      if _UPVALUE0_.loading == true then
        return
      end
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        busstop_icon = dxCreateTexture("img/busstop_icon.png")
      }
      nameBusStop = _UPVALUE1_.name
      possitions = {}
      for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE2_) do
        if nameBusStop ~= _FORV_6_.name then
          table.insert(possitions, {
            name = _FORV_6_.name,
            pos = _FORV_6_.pos,
            distanse = getDistanceBetweenPoints3D(_FORV_6_.pos[1], _FORV_6_.pos[2], _FORV_6_.pos[3], getElementPosition(localPlayer))
          })
          table.sort(possitions, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.distanse < _ARG_1_.distanse
          end)
        end
      end
      addEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = true
      showCursor(true)
    end
  end)
end
bindKey("mouse_wheel_down", "both", function()
  if _UPVALUE0_.main == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if _UPVALUE0_.main == true then
    scrollDown()
  end
end)
function scrollDown()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp()
  if _UPVALUE0_ >= #possitions - 1 then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
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
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffbb00" .. mins .. "#ffffff:#ffbb00" .. secs
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
getResourceName(getThisResource(), true, 508539534)
return
