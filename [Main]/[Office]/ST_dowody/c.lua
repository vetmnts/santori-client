textures = {}
function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 50 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawText("WYRABIANIE DOWODU OSOBISTEGO", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 135 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 17 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 17 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 18 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if 1 <= #infoCard_table then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 199 / _UPVALUE2_, _UPVALUE1_.y + 139 / _UPVALUE2_, _UPVALUE1_.w - 398 / _UPVALUE2_, 302 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 200 / _UPVALUE2_, _UPVALUE1_.y + 140 / _UPVALUE2_, _UPVALUE1_.w - 400 / _UPVALUE2_, 300 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(33, 33, 33, 255), false)
      dxDrawText("DOW\195\147D OSOBISTY", _UPVALUE1_.x + 215 / _UPVALUE2_, _UPVALUE1_.y + 130 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("REPUBLIC OF SANTORI", _UPVALUE1_.x + 215 / _UPVALUE2_, _UPVALUE1_.y + 180 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(150, 150, 150, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 210 / _UPVALUE2_, _UPVALUE1_.y + 210 / _UPVALUE2_, 200 / _UPVALUE2_, 220 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 230))
      for _FORV_7_, _FORV_8_ in ipairs(infoCard_table) do
        nameLoc = split(_FORV_8_.imieNazwisko, ",")
        date = _FORV_8_.date
        tableInfo = {
          {
            "Imie",
            nameLoc[1]
          },
          {
            "Nazwisko",
            nameLoc[2]
          },
          {
            "Miejsce zamieszkania",
            nameLoc[3]
          },
          {
            "Data urodzenia",
            date
          },
          {
            "Pesel",
            getElementData(localPlayer, "player:sid")
          }
        }
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(tableInfo) do
        xY = xY + 1
        dxDrawText(_FORV_8_[1], _UPVALUE1_.x + 420 / _UPVALUE2_, _UPVALUE1_.y + 225 / _UPVALUE2_ + 94 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font11"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_[2], _UPVALUE1_.x + 420 / _UPVALUE2_, _UPVALUE1_.y + 265 / _UPVALUE2_ + 94 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      end
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 275 / _UPVALUE2_, _UPVALUE1_.y + 140 / _UPVALUE2_, 75 / _UPVALUE2_, 75 / _UPVALUE2_, textures.logo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("KOSZT USUNI\196\152CIA: #00ad232,000,000 #ffffffPLN", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 725 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("USU\197\131 DOW\195\147D", _UPVALUE1_.x + 340 / _UPVALUE2_, _UPVALUE1_.y + 489 / _UPVALUE2_, 201 / _UPVALUE2_, 60 / _UPVALUE2_, 255, 1)
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 174 / _UPVALUE2_, _UPVALUE1_.y + 99 / _UPVALUE2_, _UPVALUE1_.w - 348 / _UPVALUE2_, 322 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 175 / _UPVALUE2_, _UPVALUE1_.y + 100 / _UPVALUE2_, _UPVALUE1_.w - 350 / _UPVALUE2_, 320 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(33, 33, 33, 255), false)
      dxDrawText("DOW\195\147D OSOBISTY", _UPVALUE1_.x + 190 / _UPVALUE2_, _UPVALUE1_.y + 50 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("REPUBLIC OF SANTORI", _UPVALUE1_.x + 190 / _UPVALUE2_, _UPVALUE1_.y + 100 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(150, 150, 150, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 247 / _UPVALUE2_, _UPVALUE1_.y + 100 / _UPVALUE2_, 70 / _UPVALUE2_, 70 / _UPVALUE2_, textures.logo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 185 / _UPVALUE2_, _UPVALUE1_.y + 170 / _UPVALUE2_, 175 / _UPVALUE2_, 240 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 230))
      dxDrawText("Miejsce zamieszkania", _UPVALUE1_.x + 370 / _UPVALUE2_, _UPVALUE1_.y + 320 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font11"), "left", "center", false, false, false, false, false)
      dxDrawText(self.locTable[self.loc], _UPVALUE1_.x + 503 / _UPVALUE2_, _UPVALUE1_.y + 370 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
      dxDrawText("\226\151\130", _UPVALUE1_.x + 365 / _UPVALUE2_, _UPVALUE1_.y + 370 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\150\184", _UPVALUE1_.x + 480 / _UPVALUE2_, _UPVALUE1_.y + 370 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText("Data urodzenia", _UPVALUE1_.x + 370 / _UPVALUE2_, _UPVALUE1_.y + 425 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font11"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\150\180", _UPVALUE1_.x + 375 / _UPVALUE2_, _UPVALUE1_.y + 460 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\150\190", _UPVALUE1_.x + 375 / _UPVALUE2_, _UPVALUE1_.y + 523 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\150\180", _UPVALUE1_.x + 400 / _UPVALUE2_, _UPVALUE1_.y + 460 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\150\190", _UPVALUE1_.x + 400 / _UPVALUE2_, _UPVALUE1_.y + 523 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\150\180", _UPVALUE1_.x + 420 / _UPVALUE2_, _UPVALUE1_.y + 460 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("\226\150\190", _UPVALUE1_.x + 420 / _UPVALUE2_, _UPVALUE1_.y + 523 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText(self.date[1] .. "-" .. string.format("%02d", self.date[2]) .. "-" .. string.format("%02d", self.date[3]), _UPVALUE1_.x + 370 / _UPVALUE2_, _UPVALUE1_.y + 493 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, false, false)
      dxDrawText("Pesel", _UPVALUE1_.x + 370 / _UPVALUE2_, _UPVALUE1_.y + 565 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font11"), "left", "center", false, false, false, false, false)
      dxDrawText(getElementData(localPlayer, "player:sid"), _UPVALUE1_.x + 370 / _UPVALUE2_, _UPVALUE1_.y + 608 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font11"), "left", "center", false, false, false, false, false)
      dxDrawText("KOSZT: #00ad232,000,000 #ffffffPLN", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 700 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(210, 210, 210, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("WYR\195\147B DOW\195\147D", _UPVALUE1_.x + 340 / _UPVALUE2_, _UPVALUE1_.y + 483 / _UPVALUE2_, 201 / _UPVALUE2_, 60 / _UPVALUE2_, 255, 1)
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 17 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) and _UPVALUE2_.main == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("edit:Imie")
      exports.ST_gui:destroyCustomEditbox("edit:Nazwisko")
      _UPVALUE2_.main = false
      _UPVALUE2_.offerVehicle = false
      _UPVALUE2_.confirm = false
      players = nil
      vehicles_table = {}
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      if isElement(ped) then
        destroyElement(ped)
        setTimer(function()
          exports.ST_object_preview:destroyObjectPreview(myObject)
        end, 100, 1)
      end
    elseif isMouseIn(_UPVALUE0_.x + 370 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 10 / _UPVALUE1_, 10 / _UPVALUE1_) and _UPVALUE2_.main == true then
      self.loc = self.loc - 1
      if self.loc < 0 then
        self.loc = 8
      end
    elseif isMouseIn(_UPVALUE0_.x + 485 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 10 / _UPVALUE1_, 10 / _UPVALUE1_) and _UPVALUE2_.main == true then
      self.loc = self.loc + 1
      if self.loc > 8 then
        self.loc = 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 377.5 / _UPVALUE1_, _UPVALUE0_.y + 357 / _UPVALUE1_, 12 / _UPVALUE1_, 12 / _UPVALUE1_) and _UPVALUE2_.main == true then
      self.date[1] = self.date[1] - 1
      if self.date[1] < 1950 then
        self.date[1] = 1950
      end
    elseif isMouseIn(_UPVALUE0_.x + 377.5 / _UPVALUE1_, _UPVALUE0_.y + 326 / _UPVALUE1_, 12 / _UPVALUE1_, 12 / _UPVALUE1_) and _UPVALUE2_.main == true then
      self.date[1] = self.date[1] + 1
      if self.date[1] > 2019 then
        self.date[1] = 2019
      end
    elseif isMouseIn(_UPVALUE0_.x + 402 / _UPVALUE1_, _UPVALUE0_.y + 357 / _UPVALUE1_, 12 / _UPVALUE1_, 12 / _UPVALUE1_) and _UPVALUE2_.main == true then
      self.date[2] = self.date[2] - 1
      if 1 > self.date[2] then
        self.date[2] = 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 402 / _UPVALUE1_, _UPVALUE0_.y + 326 / _UPVALUE1_, 12 / _UPVALUE1_, 12 / _UPVALUE1_) and _UPVALUE2_.main == true then
      self.date[2] = self.date[2] + 1
      if 12 < self.date[2] then
        self.date[2] = 12
      end
    elseif isMouseIn(_UPVALUE0_.x + 422 / _UPVALUE1_, _UPVALUE0_.y + 357 / _UPVALUE1_, 12 / _UPVALUE1_, 12 / _UPVALUE1_) and _UPVALUE2_.main == true then
      self.date[3] = self.date[3] - 1
      if 1 > self.date[3] then
        self.date[3] = 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 422 / _UPVALUE1_, _UPVALUE0_.y + 326 / _UPVALUE1_, 12 / _UPVALUE1_, 12 / _UPVALUE1_) and _UPVALUE2_.main == true then
      self.date[3] = self.date[3] + 1
      if self.date[3] > 31 then
        self.date[3] = 31
      end
    elseif isMouseIn(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 483 / _UPVALUE1_, 201 / _UPVALUE1_, 60 / _UPVALUE1_) and _UPVALUE2_.main == true then
      if #infoCard_table == 0 then
        if 2 > exports.ST_gui:getCustomEditboxText("edit:Imie"):len() or 10 < exports.ST_gui:getCustomEditboxText("edit:Imie"):len() or 2 > exports.ST_gui:getCustomEditboxText("edit:Nazwisko"):len() or 10 < exports.ST_gui:getCustomEditboxText("edit:Nazwisko"):len() then
          exports.st_gui:showPlayerNotification("Imi\196\153 oraz Nazwisko powinny wynosi\196\135 od 2 do 10 znak\195\179w", "error")
          return
        end
        if not isValidDate(self.date[3], self.date[2], self.date[1]) then
          exports.st_gui:showPlayerNotification("Podano nieprawid\197\130ow\196\133 dat\196\153", "error")
          return
        end
        triggerServerEvent("ev", resourceRoot, "createIdCard", localPlayer, "" .. exports.ST_gui:getCustomEditboxText("edit:Imie") .. "," .. exports.ST_gui:getCustomEditboxText("edit:Nazwisko") .. "," .. self.locTable[self.loc] .. "", "" .. self.date[1] .. "-" .. string.format("%02d", self.date[2]) .. "-" .. string.format("%02d", self.date[3]) .. "")
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        showCursor(false)
        exports.ST_gui:destroyCustomEditbox("edit:Imie")
        exports.ST_gui:destroyCustomEditbox("edit:Nazwisko")
        _UPVALUE2_.main = false
        _UPVALUE2_.offerVehicle = false
        _UPVALUE2_.confirm = false
        players = nil
        infoCard_table = {}
        for _FORV_10_, _FORV_11_ in pairs(textures) do
          if isElement(_FORV_11_) then
            destroyElement(_FORV_11_)
          end
        end
        textures = {}
        if isElement(ped) then
          destroyElement(ped)
          setTimer(function()
            exports.ST_object_preview:destroyObjectPreview(myObject)
          end, 100, 1)
        end
      else
        infoCard_table = {}
        triggerServerEvent("ev", resourceRoot, "delete", localPlayer)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        showCursor(false)
        exports.ST_gui:destroyCustomEditbox("edit:Imie")
        exports.ST_gui:destroyCustomEditbox("edit:Nazwisko")
        _UPVALUE2_.main = false
        _UPVALUE2_.offerVehicle = false
        _UPVALUE2_.confirm = false
        players = nil
        infoCard_table = {}
        for _FORV_5_, _FORV_6_ in pairs(textures) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        textures = {}
        if isElement(ped) then
          destroyElement(ped)
          setTimer(function()
            exports.ST_object_preview:destroyObjectPreview(myObject)
          end, 100, 1)
        end
      end
    end
  end
end
function isLeapYear(_ARG_0_)
  return _ARG_0_ % 4 == 0 and (_ARG_0_ % 100 ~= 0 or _ARG_0_ % 400 == 0)
end
function isValidDate(_ARG_0_, _ARG_1_, _ARG_2_)
  return 0 < _ARG_0_ and 0 < _ARG_1_ and _ARG_1_ <= 12 and _ARG_0_ <= ({
    31,
    isLeapYear(_ARG_2_) and 29 or 28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  })[_ARG_1_]
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "openGui" then
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      logo = dxCreateTexture("img/logo.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    infoCard_table = _ARG_1_
    showCursor(true)
    _UPVALUE0_.main = true
    self = {}
    self.date = {
      2000,
      1,
      30
    }
    self.loc = 1
    self.locTable = {
      "Los Santos",
      "Las Venturas",
      "San Fierro",
      "Red County",
      "Bone County",
      "Tierra Robada",
      "Whetstone",
      "Flint County"
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    exports.ST_gui:destroyCustomEditbox("edit:Imie")
    exports.ST_gui:destroyCustomEditbox("edit:Nazwisko")
    if #infoCard_table == 0 then
      exports.ST_gui:createCustomEditbox("edit:Imie", "Imi\196\153", _UPVALUE1_.x + 365 / _UPVALUE2_, _UPVALUE1_.y + 170 / _UPVALUE2_, 300 / _UPVALUE2_, 37 / _UPVALUE2_, false, "", "", 1)
      exports.ST_gui:createCustomEditbox("edit:Nazwisko", "Nazwisko", _UPVALUE1_.x + 365 / _UPVALUE2_, _UPVALUE1_.y + 210 / _UPVALUE2_, 300 / _UPVALUE2_, 37 / _UPVALUE2_, false, "", "", 1)
      ped = createPed(getElementModel(localPlayer), getCameraMatrix())
      myObject = exports.ST_object_preview:createObjectPreview(ped, -5, 0, 180, _UPVALUE1_.x + 185 / _UPVALUE2_, _UPVALUE1_.y + 170 / _UPVALUE2_, 175 / _UPVALUE2_, 240 / _UPVALUE2_, false, true)
    else
      ped = createPed(getElementModel(localPlayer), getCameraMatrix())
      myObject = exports.ST_object_preview:createObjectPreview(ped, -5, 0, 180, _UPVALUE1_.x + 210 / _UPVALUE2_, _UPVALUE1_.y + 210 / _UPVALUE2_, 200 / _UPVALUE2_, 220 / _UPVALUE2_, false, true)
    end
  end
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
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
getResourceName(getThisResource(), true, 407726087)
return
