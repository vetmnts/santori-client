position = {
  {
    1307.01,
    1111.99,
    10.92,
    0,
    0,
    "SAFD"
  },
  {
    -2638.94,
    661.41,
    14.46,
    0,
    0,
    "SAFD"
  },
  {
    2281.03735,
    2473.45264,
    32.375,
    0,
    101,
    "SAPD"
  },
  {
    624.2998046875,
    -568.599609375,
    17.9,
    0,
    0,
    "SAPD"
  }
}
windows = {
  main = false,
  select = false,
  weapons = false
}
for _FORV_16_, _FORV_17_ in ipairs(position) do
  marker = createMarker(_FORV_17_[1], _FORV_17_[2], _FORV_17_[3] - 0.9, "cylinder", 1.5, 255, 162, 0)
  setElementInterior(marker, _FORV_17_[4])
  setElementDimension(marker, _FORV_17_[5])
  setElementDimension(createElement("text"), _FORV_17_[5])
  setElementInterior(createElement("text"), _FORV_17_[4])
  setElementPosition(createElement("text"), getElementPosition(marker))
  setElementData(createElement("text"), "name", "Wyb\195\179r skina")
  addEventHandler("onClientMarkerHit", marker, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 3 then
      if windows.main == true then
        return
      end
      if getElementData(localPlayer, "player:faction") then
        skins = {}
        textures = {
          background = dxCreateTexture(":ST_gui/img/background2.png"),
          cross = dxCreateTexture(":ST_gui/img/cross.png")
        }
        if isElement(ped) then
          destroyElement(ped)
          exports.ST_object_preview:destroyObjectPreview(myObject)
        end
        if getElementData(localPlayer, "player:faction") == "SAPD" then
          skins = {
            {
              "MANAGEMENT STAFF",
              nil,
              true
            },
            {
              "Executive Staff",
              245
            },
            {
              "Command Staff",
              244
            },
            {
              "[W] Command Staff",
              243
            },
            {
              "Supervisory Staff",
              61
            },
            {
              "UNMARKED",
              nil,
              true
            },
            {
              "Unmarked Officer",
              46
            },
            {
              "Unmarked Officer",
              185
            },
            {
              "Unmarked Officer",
              223
            },
            {
              "FIELD STAFF",
              nil,
              true
            },
            {"Sergeant I", 285},
            {
              "Police Officer III",
              284
            },
            {
              "Police Officer I",
              283
            },
            {
              "[W] Police Officer",
              199
            },
            {
              "Motor Officer",
              286
            },
            {"Cadet", 288},
            {
              "GANG UNIT",
              nil,
              true
            },
            {
              "Gang Unit Officer",
              231
            },
            {
              "Gang Unit Officer",
              138
            },
            {
              "HIGHWAY PATROL",
              nil,
              true
            },
            {
              "Highway Patrol Officer",
              71
            },
            {
              "Highway Patrol Officer",
              290
            },
            {
              "SHERIFF DEPARTMENT",
              nil,
              true
            },
            {
              "Sheriff Department Officer",
              282
            },
            {
              "Sheriff Department Officer",
              281
            },
            {
              "SPECIAL WEAPONS AND TACTICS",
              nil,
              true
            },
            {"S.W.A.T", 280}
          }
        elseif getElementData(localPlayer, "player:faction") == "SAFD" then
          skins = {
            {
              "KOSZAR\195\147WKI",
              nil,
              true
            },
            {"A-Koszary", 305},
            {
              "A-Koszary DAMSKI",
              196
            },
            {"B-Koszary", 206},
            {
              "B-Koszary 2",
              64
            },
            {
              "NOMEXY",
              nil,
              true
            },
            {"A-SAFD", 278},
            {"B-SAFD", 277},
            {"Dow\195\179dca", 279},
            {
              "A-SAFD Damski",
              267
            },
            {
              "B-SAFD Damski",
              266
            },
            {
              "Dow\195\179dca Damski",
              265
            },
            {
              "MEDYCZNE",
              nil,
              true
            },
            {"WOPR", 63},
            {
              "WOPR-DAMSKI",
              197
            },
            {
              "Piel\196\153gniarz",
              251
            },
            {"RM-damski", 246},
            {"RM-m\196\153ski", 275},
            {
              "RM-m\196\153ski 2",
              274
            },
            {"Doktorek", 70}
          }
        end
        createShaderBlur(true, "main")
        addEventHandler("onClientRender", root, window)
        windows.main = true
        windows.select = false
        windows.weapons = false
        showCursor(true)
      else
        exports.st_gui:showPlayerNotification("Nie jeste\197\155 na s\197\130u\197\188bie", "error")
      end
    end
  end)
  addEventHandler("onClientMarkerLeave", marker, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 3 and getElementData(localPlayer, "player:faction") then
      for _FORV_13_, _FORV_14_ in pairs(textures) do
        if isElement(_FORV_14_) then
          destroyElement(_FORV_14_)
        end
      end
      textures = {}
      createShaderBlur(false)
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.select = false
      showCursor(false)
      if isElement(ped) then
        destroyElement(ped)
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end
    end
  end)
end
positionWeapons = {
  {
    2272.49561,
    2474.90771,
    32.36905,
    0,
    101,
    "SAPD"
  },
  {
    622.2001953125,
    -562.599609375,
    17.9,
    0,
    0,
    "SAPD"
  }
}
for _FORV_16_, _FORV_17_ in ipairs(positionWeapons) do
  marker_weapons = createMarker(_FORV_17_[1], _FORV_17_[2], _FORV_17_[3] - 0.9, "cylinder", 1.5, 255, 162, 0)
  setElementInterior(marker_weapons, _FORV_17_[4])
  setElementDimension(marker_weapons, _FORV_17_[5])
  setElementDimension(createElement("text"), _FORV_17_[5])
  setElementInterior(createElement("text"), _FORV_17_[4])
  setElementPosition(createElement("text"), getElementPosition(marker_weapons))
  setElementData(createElement("text"), "name", "Wyb\195\179r broni")
  addEventHandler("onClientMarkerHit", marker_weapons, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if getElementData(_ARG_0_, "player:faction") == _UPVALUE0_[6] then
      if windows.weapons == true then
        return
      end
      weaponsTable = {
        {"M4", 31},
        {"AK-47", 30},
        {
          "Karabin snajperski",
          34
        },
        {"Strzelba", 25},
        {"MP5", 29},
        {
          "Strzelba bojowa",
          27
        },
        {
          "Paralizator",
          23
        },
        {"Pa\197\130ka", 3},
        {"Suszarka", 22},
        {"Deagle", 24},
        {"Kamizelka"},
        {
          "Gaz \197\130zawi\196\133cy",
          17
        }
      }
      textures = {
        background = dxCreateTexture(":ST_gui/img/background1.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      createShaderBlur(true)
      addEventHandler("onClientRender", root, window)
      windows.main = false
      windows.select = false
      windows.weapons = true
      showCursor(true)
    end
  end)
end
function window()
  dxUpdateScreenSource(screenSource, true)
  dxSetShaderValue(blurShader, "screenSource", screenSource)
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 250), false)
    dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 35 / _UPVALUE1_, tocolor(20, 20, 20, 190), false)
    dxDrawText("WYB\195\147R SKINA", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 123 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE2_.y + 130 / _UPVALUE1_, _UPVALUE0_.w - 40 / _UPVALUE1_, 3 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, _UPVALUE0_.w - 415 / _UPVALUE1_, _UPVALUE0_.h - 90 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(10, 10, 10, 70), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, _UPVALUE0_.w - 515 / _UPVALUE1_, _UPVALUE0_.h - 90 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(10, 10, 10, 70), false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(skins) do
      if _FORV_7_ >= _UPVALUE3_ and _FORV_7_ <= _UPVALUE4_ then
        xY = xY + 1
        if _FORV_8_[3] then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 44 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 415 / _UPVALUE1_, 42 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(0, 0, 0, 70), false)
          dxDrawText(_FORV_8_[1] .. "", _UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 4 / _UPVALUE1_ + 88 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        else
          if isMouseIn(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 44 / _UPVALUE1_ * (xY - 1), 450 / _UPVALUE1_, 42 / _UPVALUE1_) then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 44 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 455 / _UPVALUE1_, 42 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(45, 45, 45, 150), false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 44 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 455 / _UPVALUE1_, 42 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 110), false)
          end
          dxDrawText(_FORV_8_[1] .. "", _UPVALUE0_.x + 55 / _UPVALUE1_, _UPVALUE0_.y + 2 / _UPVALUE1_ + 88 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
          dxDrawText("ID: #ffbb00" .. _FORV_8_[2] .. "", _UPVALUE0_.x, _UPVALUE0_.y + 2 / _UPVALUE1_ + 88 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 90 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, true, false)
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 814 / _UPVALUE1_, _UPVALUE0_.y + 19 / _UPVALUE1_, 34 / _UPVALUE1_, 34 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 814 / _UPVALUE1_, _UPVALUE0_.y + 19 / _UPVALUE1_, 34 / _UPVALUE1_, 34 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 815 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_, 32 / _UPVALUE1_, 32 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.select == true then
    dxDrawText(skinName, _UPVALUE0_.x + 995 / _UPVALUE1_, _UPVALUE0_.y + 40 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 495 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, _UPVALUE0_.w - 515 / _UPVALUE1_, 63 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, _UPVALUE0_.w - 515 / _UPVALUE1_, 63 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 30), false)
      dxDrawText("WYBIERZ", _UPVALUE0_.x + 995 / _UPVALUE1_, _UPVALUE0_.y + 865 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(235, 235, 235, 180), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, _UPVALUE0_.w - 515 / _UPVALUE1_, 63 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 50), false)
      dxDrawText("WYBIERZ", _UPVALUE0_.x + 995 / _UPVALUE1_, _UPVALUE0_.y + 865 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(235, 235, 235, 230), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    end
  end
  if windows.weapons == true then
    dxDrawRoundedRectangle(_UPVALUE2_.x - 2 / _UPVALUE1_, _UPVALUE2_.y - 2 / _UPVALUE1_, _UPVALUE2_.w + 4 / _UPVALUE1_, _UPVALUE2_.h + 4 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 250), false)
    dxDrawImageSection(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, _UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, 35 / _UPVALUE1_, tocolor(20, 20, 20, 190), false)
    dxDrawRoundedRectangle(_UPVALUE2_.x + 20 / _UPVALUE1_, _UPVALUE2_.y + 80 / _UPVALUE1_, _UPVALUE2_.w - 40 / _UPVALUE1_, 3 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    if isMouseIn(_UPVALUE2_.x + 484 / _UPVALUE1_, _UPVALUE2_.y + 27 / _UPVALUE1_, 34 / _UPVALUE1_, 34 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE2_.x + 484 / _UPVALUE1_, _UPVALUE2_.y + 27 / _UPVALUE1_, 34 / _UPVALUE1_, 34 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE2_.x + 485 / _UPVALUE1_, _UPVALUE2_.y + 28 / _UPVALUE1_, 32 / _UPVALUE1_, 32 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawText("BRONIE", _UPVALUE2_.x + 30 / _UPVALUE1_, _UPVALUE2_.y - 110 / _UPVALUE1_, _UPVALUE2_.x + 362 / _UPVALUE1_, _UPVALUE2_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(weaponsTable) do
      if _FORV_7_ >= _UPVALUE5_ and _FORV_7_ <= _UPVALUE6_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE2_.x + 40 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE2_.w - 80 / _UPVALUE1_, 55 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(20, 20, 20, 120), false)
        dxDrawText(_FORV_8_[1], _UPVALUE2_.x + 55 / _UPVALUE1_, _UPVALUE2_.y + 75 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE2_.x + 362 / _UPVALUE1_, _UPVALUE2_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        if isMouseIn(_UPVALUE2_.x + 455 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE2_.x + 455 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(0, 0, 0, 90), {
            tl = 5 / _UPVALUE1_,
            tr = true,
            bl = 5 / _UPVALUE1_,
            br = true
          })
          dxDrawText("+", _UPVALUE2_.x + 475 / _UPVALUE1_, _UPVALUE2_.y + 76 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE2_.x + 362 / _UPVALUE1_, _UPVALUE2_.y + 204 / _UPVALUE1_, tocolor(50, 255, 50, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(_UPVALUE2_.x + 455 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(0, 0, 0, 50), {
            tl = 5 / _UPVALUE1_,
            tr = true,
            bl = 5 / _UPVALUE1_,
            br = true
          })
          dxDrawText("+", _UPVALUE2_.x + 475 / _UPVALUE1_, _UPVALUE2_.y + 76 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE2_.x + 362 / _UPVALUE1_, _UPVALUE2_.y + 204 / _UPVALUE1_, tocolor(50, 255, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
        end
        if playerHasWeapon(_FORV_8_[2]) then
          if isMouseIn(_UPVALUE2_.x + 398 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_) then
            dxDrawRoundedRectangle(_UPVALUE2_.x + 398 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(0, 0, 0, 90), {
              tl = true,
              tr = 5 / _UPVALUE1_,
              bl = true,
              br = 5 / _UPVALUE1_
            })
            dxDrawText("-", _UPVALUE2_.x + 422 / _UPVALUE1_, _UPVALUE2_.y + 73 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE2_.x + 362 / _UPVALUE1_, _UPVALUE2_.y + 204 / _UPVALUE1_, tocolor(255, 50, 50, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
          else
            dxDrawRoundedRectangle(_UPVALUE2_.x + 398 / _UPVALUE1_, _UPVALUE2_.y + 110 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(0, 0, 0, 50), {
              tl = true,
              tr = 5 / _UPVALUE1_,
              bl = true,
              br = 5 / _UPVALUE1_
            })
            dxDrawText("-", _UPVALUE2_.x + 422 / _UPVALUE1_, _UPVALUE2_.y + 73 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE2_.x + 362 / _UPVALUE1_, _UPVALUE2_.y + 204 / _UPVALUE1_, tocolor(255, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
          end
        end
        dxDrawScrollBar(#weaponsTable, _UPVALUE2_.x + 530 / _UPVALUE1_, _UPVALUE2_.y + 130 / _UPVALUE1_, 5 / _UPVALUE1_, 520 / _UPVALUE1_, _UPVALUE7_, _UPVALUE5_)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(skins) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and getTickCount() - _UPVALUE3_ > 200 and isMouseIn(_UPVALUE4_.x + 20 / _UPVALUE2_, _UPVALUE4_.y + 80 / _UPVALUE2_ + 44 / _UPVALUE2_ * (0 + 1 - 1), 450 / _UPVALUE2_, 42 / _UPVALUE2_) and windows.main == true and _FORV_7_[2] then
          if isElement(ped) then
            destroyElement(ped)
            exports.ST_object_preview:destroyObjectPreview(myObject)
          end
          if isElement(ped) then
            return
          end
          ped = createPed(_FORV_7_[2], getCameraMatrix())
          myObject = exports.ST_object_preview:createObjectPreview(ped, -10, 0, 180, _UPVALUE4_.x + 495 / _UPVALUE2_, _UPVALUE4_.y + 80 / _UPVALUE2_, _UPVALUE4_.w - 515 / _UPVALUE2_, _UPVALUE4_.h - 90 / _UPVALUE2_, false, true)
          setElementInterior(ped, (getElementInterior(localPlayer)))
          setElementDimension(ped, (getElementDimension(localPlayer)))
          windows.select = true
          skinName = _FORV_7_[1]
          skinID = _FORV_7_[2]
          _UPVALUE3_ = getTickCount()
        end
      end
    end
    if windows.weapons == true then
      for _FORV_6_, _FORV_7_ in ipairs(weaponsTable) do
        if _FORV_6_ >= _UPVALUE5_ and _FORV_6_ <= _UPVALUE6_ then
          if isMouseIn(_UPVALUE7_.x + 455 / _UPVALUE2_, _UPVALUE7_.y + 110 / _UPVALUE2_ + 63 / _UPVALUE2_ * (0 + 1 - 1), 55 / _UPVALUE2_, 55 / _UPVALUE2_) and windows.weapons == true and getElementData(localPlayer, "player:faction") then
            if getTickCount() - _UPVALUE3_ > 1000 then
              if _FORV_7_[1] == "Kamizelka" then
                triggerServerEvent("evEwenciks_k54ghbg", resourceRoot, "giveArmor", localPlayer)
                exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to kamizelk\196\153", "success")
              else
                triggerServerEvent("evEwenciks_k54ghbg", resourceRoot, "giveWeapons", localPlayer, _FORV_7_[2])
                exports.st_gui:showPlayerNotification("Wyci\196\133gni\196\153to bro\197\132 " .. _FORV_7_[1] .. "", "success")
              end
              _UPVALUE3_ = getTickCount()
            else
              return exports.st_gui:showPlayerNotification("Odczekaj 1 sekund\196\153!", "error")
            end
          end
          if isMouseIn(_UPVALUE7_.x + 398 / _UPVALUE2_, _UPVALUE7_.y + 110 / _UPVALUE2_ + 63 / _UPVALUE2_ * (0 + 1 - 1), 55 / _UPVALUE2_, 55 / _UPVALUE2_) and windows.weapons == true and playerHasWeapon(_FORV_7_[2]) then
            exports.st_gui:showPlayerNotification("Schowano bro\197\132 " .. _FORV_7_[1] .. "", "success")
            triggerServerEvent("evEwenciks_k54ghbg", resourceRoot, "takeWeapons", localPlayer, _FORV_7_[2])
          end
        end
      end
    end
    if isMouseIn(_UPVALUE4_.x + 814 / _UPVALUE2_, _UPVALUE4_.y + 19 / _UPVALUE2_, 34 / _UPVALUE2_, 34 / _UPVALUE2_) and windows.main == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      createShaderBlur(false)
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.select = false
      showCursor(false)
      if isElement(ped) then
        destroyElement(ped)
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end
    elseif isMouseIn(_UPVALUE4_.x + 495 / _UPVALUE2_, _UPVALUE4_.y + 500 / _UPVALUE2_, _UPVALUE4_.w - 515 / _UPVALUE2_, 63 / _UPVALUE2_) and windows.select == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      createShaderBlur(false)
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.select = false
      showCursor(false)
      if isElement(ped) then
        destroyElement(ped)
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie ustawiono skina: " .. skinName .. "", "success")
      triggerServerEvent("evEwenciks_k54ghbg", resourceRoot, "setElementModel", localPlayer, skinID)
    elseif isMouseIn(_UPVALUE7_.x + 484 / _UPVALUE2_, _UPVALUE7_.y + 27 / _UPVALUE2_, 34 / _UPVALUE2_, 34 / _UPVALUE2_) and windows.weapons == true then
      createShaderBlur(false)
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.select = false
      windows.weapons = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end
end)
bindKey("mouse_wheel_down", "both", function()
  if windows.main == true then
    scrollUp()
  elseif windows.weapons == true then
    scrollUp1()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.main == true then
    scrollDown()
  elseif windows.weapons == true then
    scrollDown1()
  end
end)
function scrollDown1()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp1()
  if _UPVALUE0_ >= #weaponsTable then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
end
function scrollDown()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp()
  if _UPVALUE0_ >= #skins then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
end
function weapons(_ARG_0_)
  if getElementData(localPlayer, "player:faction") == "SAPD" then
    if windows.weapons == true then
      return
    end
    weaponsTable = {
      {"M4", 31},
      {"AK-47", 30},
      {
        "Karabin snajperski",
        34
      },
      {"Strzelba", 25},
      {"MP5", 29},
      {
        "Strzelba bojowa",
        27
      },
      {
        "Paralizator",
        23
      },
      {"Pa\197\130ka", 3},
      {"Suszarka", 22},
      {"Deagle", 24},
      {
        "Gaz \197\130zawi\196\133cy",
        17
      }
    }
    textures = {
      background = dxCreateTexture(":ST_gui/img/background1.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    createShaderBlur(true)
    addEventHandler("onClientRender", root, window)
    windows.main = false
    windows.select = false
    windows.weapons = true
    showCursor(true)
  end
end
addCommandHandler("bronie", weapons)
function weapons(_ARG_0_)
  if getElementData(localPlayer, "player:faction") == "SAPD" then
    triggerServerEvent("evEwenciks_k54ghbg", resourceRoot, "takeAllWeapons", localPlayer)
    exports.st_gui:showPlayerNotification("Usuni\196\153to wszystkie bronie", "info")
  end
end
addCommandHandler("usun.bronie", weapons)
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  _ARG_6_ = _ARG_6_ or {}
  dxDrawRectangle(_ARG_0_ + math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))), _ARG_1_ + math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))), _ARG_2_ - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))) - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))), _ARG_3_ - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))) - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))), _ARG_5_)
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))) > 0 then
    dxDrawRectangle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), _ARG_1_, _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr))), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))) > 0 then
    dxDrawRectangle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_1_ + _ARG_3_ - math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))) > 0 then
    dxDrawRectangle(_ARG_0_, _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl))), _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))) > 0 then
    dxDrawRectangle(_ARG_0_ + _ARG_2_ - math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), _ARG_5_)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl) > 0 then
    dxDrawCircle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), 180, 270, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr) > 0 then
    dxDrawCircle(_ARG_0_ + _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), 270, 360, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl) > 0 then
    dxDrawCircle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_1_ + _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), 90, 180, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br) > 0 then
    dxDrawCircle(_ARG_0_ + _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), _ARG_1_ + _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), 0, 90, _ARG_5_, _ARG_5_, 16, 1)
  end
end
function createShaderBlur(_ARG_0_, _ARG_1_)
  if _ARG_0_ == true then
    screenSource = dxCreateScreenSource(_UPVALUE0_, _UPVALUE1_, true)
    blurShader = dxCreateShader(":ST_blurUI/liquidGlass.fx")
    dxSetShaderValue(blurShader, "screenSize", _UPVALUE0_, _UPVALUE1_)
    dxSetShaderValue(blurShader, "opacity", 1)
    dxSetShaderValue(blurShader, "blurStrength", 2.6)
    dxSetShaderValue(blurShader, "tintColor", 0, 0, 0)
    dxSetShaderValue(blurShader, "tintAlpha", 0.05)
    if _ARG_1_ == "main" then
    else
    end
    dxSetShaderValue(blurShader, "rectLT", ({
      ["h"] = _UPVALUE2_.h,
      ["w"] = _UPVALUE2_.w,
      ["y"] = _UPVALUE2_.y,
      ["x"] = _UPVALUE2_.x,
      ["h"] = _UPVALUE3_.h,
      ["w"] = _UPVALUE3_.w,
      ["y"] = _UPVALUE3_.y,
      ["x"] = _UPVALUE3_.x
    }).x / _UPVALUE0_, ({
      ["h"] = _UPVALUE2_.h,
      ["w"] = _UPVALUE2_.w,
      ["y"] = _UPVALUE2_.y,
      ["x"] = _UPVALUE2_.x,
      ["h"] = _UPVALUE3_.h,
      ["w"] = _UPVALUE3_.w,
      ["y"] = _UPVALUE3_.y,
      ["x"] = _UPVALUE3_.x
    }).y / _UPVALUE1_)
    dxSetShaderValue(blurShader, "rectSize", ({
      ["h"] = _UPVALUE2_.h,
      ["w"] = _UPVALUE2_.w,
      ["y"] = _UPVALUE2_.y,
      ["x"] = _UPVALUE2_.x,
      ["h"] = _UPVALUE3_.h,
      ["w"] = _UPVALUE3_.w,
      ["y"] = _UPVALUE3_.y,
      ["x"] = _UPVALUE3_.x
    }).w / _UPVALUE0_, ({
      ["h"] = _UPVALUE2_.h,
      ["w"] = _UPVALUE2_.w,
      ["y"] = _UPVALUE2_.y,
      ["x"] = _UPVALUE2_.x,
      ["h"] = _UPVALUE3_.h,
      ["w"] = _UPVALUE3_.w,
      ["y"] = _UPVALUE3_.y,
      ["x"] = _UPVALUE3_.x
    }).h / _UPVALUE1_)
    dxSetShaderValue(blurShader, "radiusUV", 35 / _UPVALUE4_ / ({
      ["h"] = _UPVALUE2_.h,
      ["w"] = _UPVALUE2_.w,
      ["y"] = _UPVALUE2_.y,
      ["x"] = _UPVALUE2_.x,
      ["h"] = _UPVALUE3_.h,
      ["w"] = _UPVALUE3_.w,
      ["y"] = _UPVALUE3_.y,
      ["x"] = _UPVALUE3_.x
    }).w, 35 / _UPVALUE4_ / ({
      ["h"] = _UPVALUE2_.h,
      ["w"] = _UPVALUE2_.w,
      ["y"] = _UPVALUE2_.y,
      ["x"] = _UPVALUE2_.x,
      ["h"] = _UPVALUE3_.h,
      ["w"] = _UPVALUE3_.w,
      ["y"] = _UPVALUE3_.y,
      ["x"] = _UPVALUE3_.x
    }).h)
  else
    if isElement(blurShader) then
      destroyElement(blurShader)
    end
    if isElement(screenSource) then
      destroyElement(screenSource)
    end
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
function playerHasWeapon(_ARG_0_)
  if not _ARG_0_ then
    return false
  end
  for _FORV_4_ = 0, 12 do
    if getPedWeapon(localPlayer, _FORV_4_) == _ARG_0_ then
      return true
    end
  end
  return false
end
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(15, 15, 15, 20))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_6_ == 1 then
      scrollbarPos = _ARG_2_
    elseif 0 < _ARG_6_ then
      scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
    end
    if _ARG_0_ <= _ARG_5_ then
    end
    dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / _UPVALUE0_, tocolor(255, 187, 0, 155))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(255, 187, 0, 155))
  end
end
getResourceName(getThisResource(), true, 910541974)
return
