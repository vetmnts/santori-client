createBlip(-1606.28, 772.44, 7.19, 39, 2, 0, 0, 0, 0, 0, 175)
createBlip(1481.12, -1769.46, 18.75, 39, 2, 0, 0, 0, 0, 0, 175)
createBlip(2642.51, 1195.69, 11.14, 39, 2, 0, 0, 0, 0, 0, 175)
function window()
  dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 823 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
  dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 77 / _UPVALUE1_, _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.h - 100 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(38, 38, 38, 200), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 118 / _UPVALUE1_, 800 / _UPVALUE1_, 4 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255))
  dxDrawText("ZAK\197\129ADANIE ORGANIZACJI", _UPVALUE0_.x + 33 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
  if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
    dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  else
    dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if _UPVALUE2_.main == true then
    dxDrawText("WYBIERZ TYP ORGANIZACJI", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y - 3 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 86 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 85 / _UPVALUE1_, _UPVALUE0_.y + 199 / _UPVALUE1_, 202 / _UPVALUE1_, 252 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(0, 62, 168, 150), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 86 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
      dxDrawText([[
ORGANIZACJA
#0059f2CYWILNA]], _UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 170), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("#009411" .. przecinek(_UPVALUE3_.civil) .. " #f0f0f0PLN", _UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 620 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 170), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 151 / _UPVALUE1_, _UPVALUE0_.y + 300 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.civil_icon, 0, 0, 0, tocolor(255, 255, 255, 170), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 85 / _UPVALUE1_, _UPVALUE0_.y + 199 / _UPVALUE1_, 202 / _UPVALUE1_, 252 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(0, 89, 242, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 86 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
      dxDrawText([[
ORGANIZACJA
#0059f2CYWILNA]], _UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("#009411" .. przecinek(_UPVALUE3_.civil) .. " #f0f0f0PLN", _UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 620 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 151 / _UPVALUE1_, _UPVALUE0_.y + 300 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.civil_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 341 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 199 / _UPVALUE1_, 202 / _UPVALUE1_, 252 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(199, 163, 0, 150), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 341 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
      dxDrawText("#ffd100GRUPA\n#ffffffPRZEST\196\152PCZA", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 170), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("#009411" .. przecinek(_UPVALUE3_.group) .. " #f0f0f0PLN", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 620 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 170), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 406 / _UPVALUE1_, _UPVALUE0_.y + 300 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.bandit_icon, 0, 0, 0, tocolor(255, 209, 0, 170), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 199 / _UPVALUE1_, 202 / _UPVALUE1_, 252 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 209, 0, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 341 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
      dxDrawText("#ffd100GRUPA\n#ffffffPRZEST\196\152PCZA", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("#009411" .. przecinek(_UPVALUE3_.group) .. " #f0f0f0PLN", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 620 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 406 / _UPVALUE1_, _UPVALUE0_.y + 300 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.bandit_icon, 0, 0, 0, tocolor(255, 209, 0, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 596 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 595 / _UPVALUE1_, _UPVALUE0_.y + 199 / _UPVALUE1_, 202 / _UPVALUE1_, 252 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(105, 0, 0, 150), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 596 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
      dxDrawText("ORGANIZACJA\n#990000PRZEST\196\152PCZA", _UPVALUE0_.x + 1032 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 170), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("APELACJE O ORGANIZACJ\196\152\nPROSZ\196\152 PISA\196\134 NA FORUM", _UPVALUE0_.x + 1032 / _UPVALUE1_, _UPVALUE0_.y + 620 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 170), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 661 / _UPVALUE1_, _UPVALUE0_.y + 300 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.bandit_icon, 0, 0, 0, tocolor(153, 0, 0, 170), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 595 / _UPVALUE1_, _UPVALUE0_.y + 199 / _UPVALUE1_, 202 / _UPVALUE1_, 252 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(153, 0, 0, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 596 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
      dxDrawText("ORGANIZACJA\n#990000PRZEST\196\152PCZA", _UPVALUE0_.x + 1032 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("APELACJE O ORGANIZACJ\196\152\nPROSZ\196\152 PISA\196\134 NA FORUM", _UPVALUE0_.x + 1032 / _UPVALUE1_, _UPVALUE0_.y + 620 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 661 / _UPVALUE1_, _UPVALUE0_.y + 300 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.bandit_icon, 0, 0, 0, tocolor(153, 0, 0, 255), false)
    end
  end
  if _UPVALUE2_.select then
    dxDrawText("WPISZ NAZWE ORGANIZACJI", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y - 3 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    if _UPVALUE2_.select == "CYWILNA" then
      dxDrawText("Koszt: #009411" .. przecinek(5000000) .. " #f0f0f0PLN", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y + 650 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawText("Wybrany typ: #0059f2CYWILNA", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("Koszt: #009411" .. przecinek(10000000) .. " #f0f0f0PLN", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y + 650 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawText("Wybrany typ: #ffd100GRUPA", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("Za\197\130\195\179\197\188 organizacj\196\153", _UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 460 / _UPVALUE1_, 201 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 115 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 115 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.backarrow, 0, 0, 0, tocolor(255, 187, 0, 200), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 115 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.backarrow, 0, 0, 0, tocolor(255, 187, 0, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 139 / _UPVALUE1_, _UPVALUE0_.y + 279 / _UPVALUE1_, 604 / _UPVALUE1_, 52 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      exports.ST_gui:destroyCustomEditbox("org:name")
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
      _UPVALUE2_.main = false
      _UPVALUE2_.select = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 460 / _UPVALUE1_, 201 / _UPVALUE1_, 60 / _UPVALUE1_) and _UPVALUE2_.select then
      if exports.ST_gui:getCustomEditboxText("org:name"):len() < 3 or exports.ST_gui:getCustomEditboxText("org:name"):len() > 30 then
        exports.st_gui:showPlayerNotification("Nazwa organizacji powinna zawiera\196\135 od 3 do 30 znak\195\179w", "error")
        return
      end
      if _UPVALUE2_.select == "CYWILNA" then
        triggerServerEvent("evEwenciks_ajtd56hjg", resourceRoot, "createOrg", localPlayer, exports.ST_gui:getCustomEditboxText("org:name"), 1)
      else
        triggerServerEvent("evEwenciks_ajtd56hjg", resourceRoot, "createOrg", localPlayer, exports.ST_gui:getCustomEditboxText("org:name"), 2)
      end
    elseif isMouseIn(_UPVALUE0_.x + 86 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_) and _UPVALUE2_.main == true then
      _UPVALUE2_.main = false
      _UPVALUE2_.select = "CYWILNA"
      exports.ST_gui:createCustomEditbox("org:name", "Nazwa organizacji...", _UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 602 / _UPVALUE1_, 50 / _UPVALUE1_, false, "", "", 1)
    elseif isMouseIn(_UPVALUE0_.x + 341 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 250 / _UPVALUE1_) and _UPVALUE2_.main == true then
      _UPVALUE2_.main = false
      _UPVALUE2_.select = "GRUPA"
      exports.ST_gui:createCustomEditbox("org:name", "Nazwa organizacji...", _UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 602 / _UPVALUE1_, 50 / _UPVALUE1_, false, "", "", 1)
    elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 115 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) and _UPVALUE2_.select then
      exports.ST_gui:destroyCustomEditbox("org:name")
      _UPVALUE2_.main = true
      _UPVALUE2_.select = false
    end
  end
end
function start()
  for _FORV_3_, _FORV_4_ in ipairs(_UPVALUE0_) do
    setElementDimension(createMarker(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3] - 0.95, "cylinder", 1.5, 255, 175, 0, 75), _FORV_4_[4])
    setElementPosition(createElement("text"), _FORV_4_[1], _FORV_4_[2], _FORV_4_[3])
    setElementData(createElement("text"), "name", "#F6FF00Organizacja#ffffff\nZak\197\130adanie Organizacji")
    setElementDimension(createElement("text"), _FORV_4_[4])
    addEventHandler("onClientMarkerHit", createMarker(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3] - 0.95, "cylinder", 1.5, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
      if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
        return
      end
      if getPedOccupiedVehicle(_ARG_0_) then
        return
      end
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        bandit_icon = dxCreateTexture(":ST_organization_panel/img/bandit_icon.png"),
        civil_icon = dxCreateTexture(":ST_organization_panel/img/organization_icon.png"),
        backarrow = dxCreateTexture(":ST_dashboard/img/back_arrow.png")
      }
      _UPVALUE0_.main = true
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      showCursor(true)
    end)
  end
end
start()
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_)
  if _ARG_0_ == "closeGui" then
    exports.ST_gui:destroyCustomEditbox("org:name")
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    showCursor(false)
    _UPVALUE0_.main = false
    _UPVALUE0_.select = false
    for _FORV_11_, _FORV_12_ in pairs(textures) do
      if isElement(_FORV_12_) then
        destroyElement(_FORV_12_)
      end
    end
    textures = {}
  end
end)
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
getResourceName(getThisResource(), true, 22970176)
return
