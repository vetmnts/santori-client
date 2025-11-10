windows = {background = false, main = false}
textures = {}
function window()
  if getElementData(localPlayer, "player_Trade") then
    removeEventHandler("onClientRender", root, window)
    showCursor(false)
    windows.main = false
    windows.background = false
    return
  end
  if getElementData(localPlayer, "player_offerTrade") then
    removeEventHandler("onClientRender", root, window)
    showCursor(false)
    windows.main = false
    windows.background = false
    return
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
  if isMouseIn(_UPVALUE0_.x + 820 / _UPVALUE1_, _UPVALUE0_.y + 22 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_) then
    dxDrawImage(_UPVALUE0_.x + 819 / _UPVALUE1_, _UPVALUE0_.y + 21 / _UPVALUE1_, 32 / _UPVALUE1_, 32 / _UPVALUE1_, textures.cross_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
  else
    dxDrawImage(_UPVALUE0_.x + 820 / _UPVALUE1_, _UPVALUE0_.y + 22 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.cross_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if windows.main == true then
    dxDrawText("BANKOMAT - #ffbb00" .. idbakomatu, _UPVALUE0_.x + 35 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 315 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 250 / _UPVALUE1_, 67 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
    dxDrawText("SALDO", _UPVALUE0_.x + math.floor(515 / _UPVALUE1_), _UPVALUE0_.y - math.floor(120 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE2_) do
      dxDrawText(przecinek(_FORV_8_.money .. ""), _UPVALUE0_.x + math.floor(515 / _UPVALUE1_), _UPVALUE0_.y - math.floor(5 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 145 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 145 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.arrow, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      if isCursorShowing() then
        dxDrawText("Wyp\197\130ata", _UPVALUE3_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE4_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition(), _UPVALUE4_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Wyp\197\130ata", _UPVALUE3_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE4_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition(), _UPVALUE4_ * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
      end
    else
      dxDrawImage(_UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 145 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.arrow, 0, 0, 0, tocolor(255, 0, 0, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 175 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 175 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.arrow, 180, 0, 0, tocolor(0, 150, 0, 255), false)
      if isCursorShowing() then
        dxDrawText("Wp\197\130ata", _UPVALUE3_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE4_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition(), _UPVALUE4_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Wp\197\130ata", _UPVALUE3_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE4_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition(), _UPVALUE4_ * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
      end
    else
      dxDrawImage(_UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 175 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.arrow, 180, 0, 0, tocolor(0, 255, 0, 255), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE5_) do
      if _FORV_7_ >= _UPVALUE6_ and _FORV_7_ <= _UPVALUE7_ then
        xY = xY + 1
        if string.sub(_FORV_8_.ile, 0, 1) == "+" then
        elseif string.sub("#22752c" .. _FORV_8_.ile .. "", 0, 1) == "-" then
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 95 / _UPVALUE1_, _UPVALUE0_.y + 210 / _UPVALUE1_ + math.floor(70 / _UPVALUE1_) * (xY - 1), 700 / _UPVALUE1_, 67 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
        dxDrawText(_FORV_8_.typ .. " - " .. _FORV_8_.nick, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y + math.floor(250 / _UPVALUE1_) + math.floor(140 / _UPVALUE1_) * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(180, 180, 180, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        dxDrawText(("#8a2828" .. ("#22752c" .. _FORV_8_.ile .. "") .. "") .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + math.floor(250 / _UPVALUE1_) + math.floor(140 / _UPVALUE1_) * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + math.floor(420 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        dxDrawText(string.sub(_FORV_8_.data, 1, 10), _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y + math.floor(320 / _UPVALUE1_) + math.floor(140 / _UPVALUE1_) * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(222, 222, 222, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light11"), "left", "center", false, false, false, false, false)
        dxDrawText([[
Saldo po transakcji
#d4d4d4]] .. _FORV_8_.kwotapo .. " #969696PLN", _UPVALUE0_.x, _UPVALUE0_.y + math.floor(310 / _UPVALUE1_) + math.floor(140 / _UPVALUE1_) * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + math.floor(420 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(150, 150, 150, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font11"), "right", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 102 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_ + math.floor(70 / _UPVALUE1_) * (xY - 1), 50 / _UPVALUE1_, 50 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 255))
        if string.sub(_FORV_8_.typ, 1, 8) == "Wyp\197\130ata" then
          dxDrawImage(_UPVALUE0_.x + 105 / _UPVALUE1_, _UPVALUE0_.y + 223 / _UPVALUE1_ + math.floor(70 / _UPVALUE1_) * (xY - 1), 40 / _UPVALUE1_, 40 / _UPVALUE1_, textures.withdraw_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        elseif string.sub(_FORV_8_.typ, 1, 7) == "Wp\197\130ata" then
          dxDrawImage(_UPVALUE0_.x + 105 / _UPVALUE1_, _UPVALUE0_.y + 223 / _UPVALUE1_ + math.floor(70 / _UPVALUE1_) * (xY - 1), 40 / _UPVALUE1_, 40 / _UPVALUE1_, textures.payment_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        end
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(_UPVALUE0_.x + 820 / _UPVALUE1_, _UPVALUE0_.y + 22 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.background = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("amt:editbox")
    elseif isMouseIn(_UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 175 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_) and windows.background == true and windows.main == true then
      if not exports.ST_gui:getCustomEditboxText("amt:editbox") then
        return
      end
      if not tonumber((exports.ST_gui:getCustomEditboxText("amt:editbox"))) then
        return
      end
      if not math.floor((exports.ST_gui:getCustomEditboxText("amt:editbox"))) or math.floor((exports.ST_gui:getCustomEditboxText("amt:editbox"))) < 1 then
        return
      end
      if math.floor((exports.ST_gui:getCustomEditboxText("amt:editbox"))) > getElementData(localPlayer, "player:moneyMNn") then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
        return
      end
      triggerServerEvent("evEwenciks_klads87gh", resourceRoot, "amtOperation", localPlayer, math.floor((exports.ST_gui:getCustomEditboxText("amt:editbox"))), idbakomatu)
      triggerServerEvent("evEwenciks_klads87gh", resourceRoot, "showInfoAMT", localPlayer, idbakomatu)
      triggerServerEvent("evEwenciks_klads87gh", resourceRoot, "showOperationAmt", localPlayer, idbakomatu)
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.background = false
      exports.ST_gui:destroyProgressbar()
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("amt:editbox")
    elseif isMouseIn(_UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 145 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_) and windows.background == true and windows.main == true then
      if not exports.ST_gui:getCustomEditboxText("amt:editbox") then
        return
      end
      if not math.floor((exports.ST_gui:getCustomEditboxText("amt:editbox"))) or math.floor((exports.ST_gui:getCustomEditboxText("amt:editbox"))) < 1 then
        return
      end
      if getElementData(localPlayer, "player:moneyMNn") + math.floor((exports.ST_gui:getCustomEditboxText("amt:editbox"))) > 999999999 then
        return
      end
      triggerServerEvent("evEwenciks_klads87gh", resourceRoot, "amtOperation", localPlayer, -math.floor((exports.ST_gui:getCustomEditboxText("amt:editbox"))), idbakomatu)
      triggerServerEvent("evEwenciks_klads87gh", resourceRoot, "showInfoAMT", localPlayer, idbakomatu)
      triggerServerEvent("evEwenciks_klads87gh", resourceRoot, "showOperationAmt", localPlayer, idbakomatu)
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.background = false
      exports.ST_gui:destroyProgressbar()
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("amt:editbox")
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showGuiAtm" then
    if _ARG_1_ then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross_icon = dxCreateTexture(":ST_gui/img/cross.png"),
        arrow = dxCreateTexture("img/arrow.png"),
        withdraw_icon = dxCreateTexture("img/withdraw_icon.png"),
        payment_icon = dxCreateTexture("img/payment_icon.png")
      }
      idbakomatu = _ARG_2_
      _UPVALUE0_ = _ARG_3_
      triggerServerEvent("evEwenciks_klads87gh", resourceRoot, "showOperationAmt", localPlayer, idbakomatu)
      addEventHandler("onClientRender", root, window)
      showCursor(true)
      windows.main = true
      windows.background = true
      exports.ST_gui:createCustomEditbox("amt:editbox", "Wpisz kwot\196\153", _UPVALUE1_.x + 315 / _UPVALUE2_, _UPVALUE1_.y + 150 / _UPVALUE2_, 250 / _UPVALUE2_, 47 / _UPVALUE2_, false, "", "", 1)
    else
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.background = false
      exports.ST_gui:destroyProgressbar()
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("amt:editbox")
    end
  elseif _ARG_0_ == "showOperationAmtClient" then
    _UPVALUE3_ = _ARG_1_
  elseif _ARG_0_ == "showInfoAMTClient" then
    _UPVALUE0_ = _ARG_1_
  end
end)
bindKey("mouse_wheel_down", "both", function()
  if windows.main == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.main == true then
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
  if _UPVALUE0_ >= #_UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
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
getResourceName(getThisResource(), true, 13889322)
return
