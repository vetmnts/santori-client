for _FORV_13_ = 1, 7 do
  table.insert({}, {
    0,
    "zielone",
    "x14"
  })
  table.insert({}, {
    1,
    "czerwone",
    "x2"
  })
  table.insert({}, {
    2,
    "czarne",
    "x2"
  })
  table.insert({}, {
    3,
    "czerwone",
    "x2"
  })
  table.insert({}, {
    4,
    "czarne",
    "x2"
  })
  table.insert({}, {
    5,
    "czerwone",
    "x2"
  })
  table.insert({}, {
    6,
    "czarne",
    "x2"
  })
  table.insert({}, {
    7,
    "czerwone",
    "x2"
  })
  table.insert({}, {
    8,
    "czarne",
    "x2"
  })
  table.insert({}, {
    9,
    "czerwone",
    "x2"
  })
  table.insert({}, {
    10,
    "czarne",
    "x2"
  })
  table.insert({}, {
    11,
    "czerwone",
    "x2"
  })
  table.insert({}, {
    12,
    "czarne",
    "x2"
  })
  table.insert({}, {
    13,
    "czerwone",
    "x2"
  })
  table.insert({}, {
    14,
    "czarne",
    "x2"
  })
end
self = {}
self.ostatnieBety = {
  {0, "zielone"},
  {0, "zielone"},
  {0, "zielone"},
  {0, "zielone"},
  {0, "zielone"},
  {0, "zielone"},
  {13, "czerwone"},
  {13, "czerwone"},
  {13, "czerwone"},
  {0, "zielone"}
}
function betowaniefroms(_ARG_0_, _ARG_1_)
  ilosc = 0
  if _ARG_0_ == "czerwone" then
    for _FORV_5_, _FORV_6_ in pairs(_UPVALUE0_) do
      if _UPVALUE0_[_FORV_5_][1] == getPlayerName(source) then
        ilosc = _UPVALUE0_[_FORV_5_][2]
        table.remove(_UPVALUE0_, _FORV_5_)
      end
    end
    table.insert(_UPVALUE0_, {
      "" .. getPlayerName(source) .. "",
      math.floor(_ARG_1_ + ilosc)
    })
    table.sort(_UPVALUE0_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_[2] > _ARG_1_[2]
    end)
  end
  if _ARG_0_ == "czarne" then
    for _FORV_5_, _FORV_6_ in pairs(_UPVALUE1_) do
      if _UPVALUE1_[_FORV_5_][1] == getPlayerName(source) then
        ilosc = _UPVALUE1_[_FORV_5_][2]
        table.remove(_UPVALUE1_, _FORV_5_)
      end
    end
    table.insert(_UPVALUE1_, {
      "" .. getPlayerName(source) .. "",
      math.floor(_ARG_1_ + ilosc)
    })
    table.sort(_UPVALUE1_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_[2] > _ARG_1_[2]
    end)
  end
  if _ARG_0_ == "zielone" then
    for _FORV_5_, _FORV_6_ in pairs(_UPVALUE2_) do
      if _UPVALUE2_[_FORV_5_][1] == getPlayerName(source) then
        ilosc = _UPVALUE2_[_FORV_5_][2]
        table.remove(_UPVALUE2_, _FORV_5_)
      end
    end
    table.insert(_UPVALUE2_, {
      "" .. getPlayerName(source) .. "",
      math.floor(_ARG_1_ + ilosc)
    })
    table.sort(_UPVALUE2_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_[2] > _ARG_1_[2]
    end)
  end
end
addEvent("betowanietoc", true)
addEventHandler("betowanietoc", getRootElement(), betowaniefroms)
start = getTickCount()
koniec = getTickCount()
random = 15
function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x - 1 / _UPVALUE2_, _UPVALUE1_.y - 1 / _UPVALUE2_, _UPVALUE1_.w + 2 / _UPVALUE2_, _UPVALUE1_.h + 2 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(255, 187, 0, 240), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, 25 / _UPVALUE2_, tocolor(20, 20, 20, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, 55 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(13, 13, 13, 255), false)
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 42 / _UPVALUE2_, _UPVALUE1_.y + 15 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 43 / _UPVALUE2_, _UPVALUE1_.y + 15 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 42 / _UPVALUE2_, _UPVALUE1_.y + 16 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    aktualnyczas = getTickCount()
    if aktualnyczas > _UPVALUE3_ then
      text = "Losowanie trwa"
    else
      zailelosowanie = (_UPVALUE3_ - aktualnyczas) / 1000
      zailelosowanie = string.format("%.2f", zailelosowanie)
      text = "Losowanie rozpocznie si\196\153 za " .. zailelosowanie .. ""
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 159 / _UPVALUE2_, _UPVALUE1_.y + 110 / _UPVALUE2_, 932 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(60, 60, 60, 190), false)
    odliczaniepasek = interpolateBetween(932 / _UPVALUE2_, 0, 0, math.floor(0 / _UPVALUE2_), 0, 0, (aktualnyczas - _UPVALUE4_) / (_UPVALUE3_ - _UPVALUE4_), "OutQuad")
    if 0 < odliczaniepasek and odliczaniepasek > 6 / _UPVALUE2_ then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 159 / _UPVALUE2_, _UPVALUE1_.y + 110 / _UPVALUE2_, odliczaniepasek / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(252, 165, 3, 230), false)
    end
    dxDrawText("" .. text .. "", _UPVALUE1_.x, _UPVALUE1_.y - 705 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", true)
    for _FORV_8_, _FORV_9_ in ipairs(_UPVALUE5_) do
      if 0 < math.floor(_FORV_9_.profit_casino) then
        dxDrawText("ZYSK Z KASYNA: #03b500+" .. przecinek(math.floor(_FORV_9_.profit_casino)) .. " PLN", _UPVALUE1_.x + 18 / _UPVALUE2_, _UPVALUE1_.y - 810 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      else
        dxDrawText("STRATA NA KASYNIE: #b50000" .. przecinek(math.floor(_FORV_9_.profit_casino)) .. " PLN", _UPVALUE1_.x + 18 / _UPVALUE2_, _UPVALUE1_.y - 810 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      end
    end
    for _FORV_9_, _FORV_10_ in ipairs(self.ostatnieBety) do
      if _FORV_9_ >= _UPVALUE6_ and _FORV_9_ <= _UPVALUE7_ then
        if _FORV_10_[2] == "czarne" then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 452 / _UPVALUE2_ + 35 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 270 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(5, 5, 5, 205), false)
        elseif _FORV_10_[2] == "czerwone" then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 452 / _UPVALUE2_ + 35 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 270 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(200, 0, 0, 155), false)
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 452 / _UPVALUE2_ + 35 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 270 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(0, 200, 0, 155), false)
        end
        dxDrawText(_FORV_10_[1], _UPVALUE1_.x - 316.1 / _UPVALUE2_ + 70 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y - 298 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "center", "center", true)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 310 / _UPVALUE2_, _UPVALUE1_.y + 325 / _UPVALUE2_, 630 / _UPVALUE2_, 74 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(16, 16, 16, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 320 / _UPVALUE2_, _UPVALUE1_.y + 338.5 / _UPVALUE2_, 195 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 255), false)
    dxDrawText(przecinek(self.kwota) .. " PLN", _UPVALUE1_.x + 330 / _UPVALUE2_, _UPVALUE1_.y - 141 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", true)
    for _FORV_10_, _FORV_11_ in ipairs(self.addMoney) do
      if isMouseIn(_UPVALUE1_.x + 520 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 338.5 / _UPVALUE2_, 47 / _UPVALUE2_, 47 / _UPVALUE2_) then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 520 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 338.5 / _UPVALUE2_, 47 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(21, 21, 21, 255), false)
        dxDrawText(_FORV_11_[1], _UPVALUE1_.x - 162 / _UPVALUE2_ + 104 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y - 141 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "center", "center", true)
      else
        dxDrawRoundedRectangle(_UPVALUE1_.x + 520 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 338.5 / _UPVALUE2_, 47 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 255), false)
        dxDrawText(_FORV_11_[1], _UPVALUE1_.x - 162 / _UPVALUE2_ + 104 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y - 141 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "center", "center", true)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 415 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(35, 0, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 415 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(25, 25, 25, 205), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 495 / _UPVALUE2_, 380 / _UPVALUE2_, 50 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(0, 0, 0, 50), false)
    dxDrawImage(_UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 505 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, textures.members_icon, 0, 0, 0, tocolor(240, 240, 240, 255), false)
    dxDrawText(#_UPVALUE8_, _UPVALUE1_.x + 80 / _UPVALUE2_, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 60 / _UPVALUE2_, 20 / _UPVALUE2_) then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 60 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(150, 0, 0, 100), false)
      dxDrawText("CZERWONE 2x", _UPVALUE1_.x + 50 / _UPVALUE2_, _UPVALUE1_.y + 65 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 60 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(150, 0, 0, 255), false)
      dxDrawText("CZERWONE 2x", _UPVALUE1_.x + 50 / _UPVALUE2_, _UPVALUE1_.y + 65 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 435 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 415 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(0, 25, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 435 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 415 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(25, 25, 25, 225), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 435 / _UPVALUE2_, _UPVALUE1_.y + 495 / _UPVALUE2_, 380 / _UPVALUE2_, 50 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(0, 0, 0, 50), false)
    dxDrawImage(_UPVALUE1_.x + 445 / _UPVALUE2_, _UPVALUE1_.y + 505 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, textures.members_icon, 0, 0, 0, tocolor(240, 240, 240, 255), false)
    dxDrawText(#_UPVALUE9_, _UPVALUE1_.x + 485 / _UPVALUE2_, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE1_.x + 435 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 280 / _UPVALUE2_, 60 / _UPVALUE2_) then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 435 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 60 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(0, 130, 0, 100), false)
      dxDrawText("ZIELONE 14X", _UPVALUE1_.x + 455 / _UPVALUE2_, _UPVALUE1_.y + 65 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 435 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 60 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(0, 130, 0, 255), false)
      dxDrawText("ZIELONE 14X", _UPVALUE1_.x + 455 / _UPVALUE2_, _UPVALUE1_.y + 65 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 840 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 415 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(15, 15, 15, 225), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 840 / _UPVALUE2_, _UPVALUE1_.y + 495 / _UPVALUE2_, 380 / _UPVALUE2_, 50 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(0, 0, 0, 50), false)
    dxDrawImage(_UPVALUE1_.x + 850 / _UPVALUE2_, _UPVALUE1_.y + 505 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, textures.members_icon, 0, 0, 0, tocolor(240, 240, 240, 255), false)
    dxDrawText(#_UPVALUE10_, _UPVALUE1_.x + 890 / _UPVALUE2_, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE1_.x + 840 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 60 / _UPVALUE2_) then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 840 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 60 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(0, 0, 0, 100), false)
      dxDrawText("CZARNE 2X", _UPVALUE1_.x + 860 / _UPVALUE2_, _UPVALUE1_.y + 65 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 840 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, 380 / _UPVALUE2_, 60 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(0, 0, 0, 255), false)
      dxDrawText("CZARNE 2X", _UPVALUE1_.x + 860 / _UPVALUE2_, _UPVALUE1_.y + 65 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    end
    for _FORV_12_, _FORV_13_ in pairs(_UPVALUE8_) do
      dxDrawRoundedRectangle(_UPVALUE1_.x + 35 / _UPVALUE2_, _UPVALUE1_.y + 550 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 370 / _UPVALUE2_, 45 / _UPVALUE2_, 18 / _UPVALUE2_, tocolor(5, 5, 5, 50), false)
      dxDrawText(getPlayerName(_UPVALUE8_[_FORV_12_][1]), _UPVALUE1_.x + 90 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(250, 250, 250, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE1_.x + 45 / _UPVALUE2_, _UPVALUE1_.y + 557 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 35 / _UPVALUE2_, 35 / _UPVALUE2_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if isElement(_UPVALUE8_[_FORV_12_][3]) then
        dxDrawImage(_UPVALUE1_.x + 45 / _UPVALUE2_, _UPVALUE1_.y + 556 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 35 / _UPVALUE2_, 35 / _UPVALUE2_, _UPVALUE8_[_FORV_12_][3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if self.winColor then
        if self.winColor == "czerwone" then
          dxDrawText("+" .. przecinek(_UPVALUE8_[_FORV_12_][2] * 2) .. "  PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 860 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(9, 255, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, false, false)
        else
          dxDrawText("-" .. przecinek(_UPVALUE8_[_FORV_12_][2]) .. "  PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 860 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, false, false)
        end
      else
        dxDrawText("#ccff96" .. przecinek(_UPVALUE8_[_FORV_12_][2]) .. "  PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 860 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      end
    end
    if self.winColor then
      if self.winColor == "czerwone" then
        dxDrawText("#09ff00PLN +" .. przecinek((0 + _UPVALUE8_[_FORV_12_][2]) * 2) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 855 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("#ff0000PLN -" .. przecinek(0 + _UPVALUE8_[_FORV_12_][2]) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 855 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
      end
    else
      dxDrawText("#009411PLN " .. przecinek(0 + _UPVALUE8_[_FORV_12_][2]) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 855 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
    end
    for _FORV_14_, _FORV_15_ in pairs(_UPVALUE9_) do
      dxDrawRoundedRectangle(_UPVALUE1_.x + 440 / _UPVALUE2_, _UPVALUE1_.y + 550 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 370 / _UPVALUE2_, 45 / _UPVALUE2_, 18 / _UPVALUE2_, tocolor(5, 5, 5, 50), false)
      dxDrawText(getPlayerName(_UPVALUE9_[_FORV_14_][1]), _UPVALUE1_.x + 495 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(250, 250, 250, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE1_.x + 450 / _UPVALUE2_, _UPVALUE1_.y + 557 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 35 / _UPVALUE2_, 35 / _UPVALUE2_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if isElement(_UPVALUE9_[_FORV_14_][3]) then
        dxDrawImage(_UPVALUE1_.x + 450 / _UPVALUE2_, _UPVALUE1_.y + 556 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 35 / _UPVALUE2_, 35 / _UPVALUE2_, _UPVALUE9_[_FORV_14_][3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if self.winColor then
        if self.winColor == "zielone" then
          dxDrawText("+" .. przecinek(_UPVALUE9_[_FORV_14_][2] * 14) .. "  PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 455 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(9, 255, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, false, false)
        else
          dxDrawText("-" .. przecinek(_UPVALUE9_[_FORV_14_][2]) .. "  PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 455 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, false, false)
        end
      else
        dxDrawText("#ccff96" .. przecinek(_UPVALUE9_[_FORV_14_][2]) .. " PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 455 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      end
    end
    if self.winColor then
      if self.winColor == "zielone" then
        dxDrawText("#09ff00PLN +" .. przecinek((0 + _UPVALUE9_[_FORV_14_][2]) * 14) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 450 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("#ff0000PLN -" .. przecinek(0 + _UPVALUE9_[_FORV_14_][2]) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 450 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
      end
    else
      dxDrawText("#009411PLN " .. przecinek(0 + _UPVALUE9_[_FORV_14_][2]) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 450 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
    end
    for _FORV_16_, _FORV_17_ in pairs(_UPVALUE10_) do
      dxDrawRoundedRectangle(_UPVALUE1_.x + 845 / _UPVALUE2_, _UPVALUE1_.y + 550 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 370 / _UPVALUE2_, 45 / _UPVALUE2_, 18 / _UPVALUE2_, tocolor(5, 5, 5, 50), false)
      dxDrawText(getPlayerName(_UPVALUE10_[_FORV_16_][1]), _UPVALUE1_.x + 900 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(250, 250, 250, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE1_.x + 855 / _UPVALUE2_, _UPVALUE1_.y + 557 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 35 / _UPVALUE2_, 35 / _UPVALUE2_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if isElement(_UPVALUE10_[_FORV_16_][3]) then
        dxDrawImage(_UPVALUE1_.x + 855 / _UPVALUE2_, _UPVALUE1_.y + 556 / _UPVALUE2_ + 50 / _UPVALUE2_ * (0 + 1 - 1), 35 / _UPVALUE2_, 35 / _UPVALUE2_, _UPVALUE10_[_FORV_16_][3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if self.winColor then
        if self.winColor == "czarne" then
          dxDrawText("+" .. przecinek(_UPVALUE10_[_FORV_16_][2] * 2) .. " PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 50 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(9, 255, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, false, false)
        else
          dxDrawText("-" .. przecinek(_UPVALUE10_[_FORV_16_][2]) .. " PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 50 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, false, false)
        end
      else
        dxDrawText("#ccff96" .. przecinek(_UPVALUE10_[_FORV_16_][2]) .. " PLN", _UPVALUE1_.x - 65 / _UPVALUE2_, _UPVALUE1_.y + 278 / _UPVALUE2_ + 100 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 50 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      end
    end
    if self.winColor then
      if self.winColor == "czarne" then
        dxDrawText("#09ff00PLN +" .. przecinek((0 + _UPVALUE10_[_FORV_16_][2]) * 2) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 45 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("#ff0000PLN -" .. przecinek(0 + _UPVALUE10_[_FORV_16_][2]) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 45 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
      end
    else
      dxDrawText("#009411PLN " .. przecinek(0 + _UPVALUE10_[_FORV_16_][2]) .. "", _UPVALUE1_.x, _UPVALUE1_.y + 174 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 45 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 57 / _UPVALUE2_, _UPVALUE1_.y + 138 / _UPVALUE2_, 1136 / _UPVALUE2_, 124 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(70, 70, 70, 55), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 59 / _UPVALUE2_, _UPVALUE1_.y + 140 / _UPVALUE2_, 1132 / _UPVALUE2_, 120 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(25, 25, 25, 255), false)
    dxSetRenderTarget(ruletkapola, true)
    przesuniecie = interpolateBetween(-1350 / _UPVALUE2_, 0, 0, -random * 90 / _UPVALUE2_, 0, 0, (getTickCount() - start) / (koniec - start), "OutQuad")
    for _FORV_18_, _FORV_19_ in pairs(_UPVALUE11_) do
      if _FORV_19_[2] == "czarne" then
        dxDrawRoundedRectangle(617 / _UPVALUE2_ + przesuniecie, 0, 80 / _UPVALUE2_, 80 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(0, 0, 0, 255))
      elseif _FORV_19_[2] == "czerwone" then
        dxDrawRoundedRectangle(617 / _UPVALUE2_ + przesuniecie, 0, 80 / _UPVALUE2_, 80 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(200, 0, 0, 255))
      else
        dxDrawRoundedRectangle(617 / _UPVALUE2_ + przesuniecie, 0, 80 / _UPVALUE2_, 80 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(0, 200, 0, 255))
      end
      dxDrawText("" .. _FORV_19_[1] .. "", 617 / _UPVALUE2_ + przesuniecie, 18 / _UPVALUE2_, 617 / _UPVALUE2_ + przesuniecie + 79 / _UPVALUE2_, 150 / _UPVALUE2_, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font26"), "center", "top", true)
    end
    dxSetRenderTarget()
    dxDrawImage(_UPVALUE1_.x + 60 / _UPVALUE2_, _UPVALUE1_.y + 160 / _UPVALUE2_, 1130 / _UPVALUE2_, 80 / _UPVALUE2_, ruletkapola)
    dxDrawRectangle(_UPVALUE1_.x + 625 / _UPVALUE2_, _UPVALUE1_.y + 140 / _UPVALUE2_, 2 / _UPVALUE2_, 80 / _UPVALUE2_, tocolor(255, 204, 0, 255), false)
  end
end
function click(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.main == true then
      for _FORV_8_, _FORV_9_ in ipairs(self.addMoney) do
        if isMouseIn(_UPVALUE2_.x + 520 / _UPVALUE1_ + 52 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE2_.y + 338.5 / _UPVALUE1_, 47 / _UPVALUE1_, 47 / _UPVALUE1_) then
          if _FORV_9_[1] == "clear" then
            self.kwota = 0
          elseif _FORV_9_[1] == "1/2" then
            self.kwota = math.floor(self.kwota / 2)
          elseif _FORV_9_[1] == "x2" then
            self.kwota = math.floor(self.kwota * 2)
          elseif _FORV_9_[1] == "MAX" then
            if getElementData(localPlayer, "player:moneyMNn") > 1000000 then
              self.kwota = 1000000
            else
              self.kwota = getElementData(localPlayer, "player:moneyMNn")
            end
          else
            self.kwota = self.kwota + _FORV_9_[2]
          end
        end
      end
    end
    if isMouseIn(_UPVALUE2_.x + 30 / _UPVALUE1_, _UPVALUE2_.y + 440 / _UPVALUE1_, 380 / _UPVALUE1_, 60 / _UPVALUE1_) and _UPVALUE0_.main == true then
      if getTickCount() - _UPVALUE3_ > 1000 then
        if _UPVALUE4_ then
          if self.kwota and self.kwota <= getElementData(localPlayer, "player:moneyMNn") and 0 < self.kwota then
            if self.kwota > 1000000 then
              exports.st_gui:showPlayerNotification("Nie mo\197\188esz obstawi\196\135 wi\196\153cej!", "error")
              return
            end
            triggerServerEvent("evEwenciks_sk78q23g", resourceRoot, "betServer", localPlayer, "czerwone", math.floor(self.kwota))
          end
        else
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz nic obstawi\196\135", "info")
        end
        _UPVALUE3_ = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "info")
      end
    elseif isMouseIn(_UPVALUE2_.x + 435 / _UPVALUE1_, _UPVALUE2_.y + 440 / _UPVALUE1_, 280 / _UPVALUE1_, 60 / _UPVALUE1_) and _UPVALUE0_.main == true then
      if getTickCount() - _UPVALUE3_ > 1000 then
        if _UPVALUE4_ then
          if self.kwota and self.kwota <= getElementData(localPlayer, "player:moneyMNn") and 0 < self.kwota then
            if self.kwota > 1000000 then
              exports.st_gui:showPlayerNotification("Nie mo\197\188esz obstawi\196\135 wi\196\153cej!", "error")
              return
            end
            triggerServerEvent("evEwenciks_sk78q23g", resourceRoot, "betServer", localPlayer, "zielone", math.floor(self.kwota))
          end
        else
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz nic obstawi\196\135", "info")
        end
        _UPVALUE3_ = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "info")
      end
    elseif isMouseIn(_UPVALUE2_.x + 840 / _UPVALUE1_, _UPVALUE2_.y + 440 / _UPVALUE1_, 380 / _UPVALUE1_, 60 / _UPVALUE1_) and _UPVALUE0_.main == true then
      if getTickCount() - _UPVALUE3_ > 1000 then
        if _UPVALUE4_ then
          if self.kwota and self.kwota <= getElementData(localPlayer, "player:moneyMNn") and 0 < self.kwota then
            if self.kwota > 1000000 then
              exports.st_gui:showPlayerNotification("Nie mo\197\188esz obstawi\196\135 wi\196\153cej!", "error")
              return
            end
            triggerServerEvent("evEwenciks_sk78q23g", resourceRoot, "betServer", localPlayer, "czarne", math.floor(self.kwota))
          end
        else
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz nic obstawi\196\135", "info")
        end
        _UPVALUE3_ = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "info")
      end
    elseif isMouseIn(_UPVALUE2_.x + _UPVALUE2_.w - 42 / _UPVALUE1_, _UPVALUE2_.y + 15 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) and _UPVALUE0_.main == true then
      showCursor(false)
      _UPVALUE0_.main = false
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
      if isElement(ruletkapola) then
        destroyElement(ruletkapola)
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      exports.ST_gui:destroyCustomEditbox("kwota")
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showGui" then
    _UPVALUE0_ = _ARG_2_
    self.ostatnieBety = _ARG_1_
    maska = dxCreateTexture(":ST_avatars/kolo.png")
    hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
    dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
    avatar_table_Al = _ARG_3_
  elseif _ARG_0_ == "losowanie" then
    random = _ARG_1_
    start = getTickCount()
    koniec = getTickCount() + _UPVALUE1_
    _UPVALUE2_ = false
    setTimer(function()
      setTimer(function()
        _UPVALUE0_ = getTickCount()
        _UPVALUE1_ = getTickCount() + 10000
        _UPVALUE2_ = true
        for _FORV_3_, _FORV_4_ in pairs(_UPVALUE3_) do
          if isElement(_FORV_4_) then
            destroyElement(_FORV_4_)
          end
        end
        _UPVALUE3_ = {}
        for _FORV_3_, _FORV_4_ in pairs(_UPVALUE4_) do
          if isElement(_FORV_4_) then
            destroyElement(_FORV_4_)
          end
        end
        _UPVALUE4_ = {}
        for _FORV_3_, _FORV_4_ in pairs(_UPVALUE5_) do
          if isElement(_FORV_4_[3]) then
            destroyElement(_FORV_4_[3])
          end
        end
        for _FORV_3_, _FORV_4_ in pairs(_UPVALUE6_) do
          if isElement(_FORV_4_[3]) then
            destroyElement(_FORV_4_[3])
          end
        end
        for _FORV_3_, _FORV_4_ in pairs(_UPVALUE7_) do
          if isElement(_FORV_4_[3]) then
            destroyElement(_FORV_4_[3])
          end
        end
        _UPVALUE5_ = {}
        _UPVALUE6_ = {}
        _UPVALUE7_ = {}
        self.winColor = false
      end, 4000, 1)
    end, _UPVALUE1_, 1)
  elseif _ARG_0_ == "updateProfit" then
    _UPVALUE0_ = _ARG_1_
  elseif _ARG_0_ == "winRoll" then
    self.winColor = _ARG_1_
    self.ostatnieBety = _ARG_2_
    _UPVALUE2_ = false
    setTimer(function()
      _UPVALUE0_ = true
      _UPVALUE1_ = {}
      _UPVALUE2_ = {}
      _UPVALUE3_ = {}
      self.winColor = false
    end, 4000, 1)
  elseif _ARG_0_ == "renderGui" then
    if _ARG_1_ then
      _UPVALUE10_ = {
        roulette = dxCreateTexture("img/roulette.png")
      }
      addEventHandler("onClientRender", root, renderLine)
      _UPVALUE2_ = false
    else
      removeEventHandler("onClientRender", root, renderLine)
      for _FORV_8_, _FORV_9_ in pairs(_UPVALUE10_) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      _UPVALUE10_ = {}
    end
  elseif _ARG_0_ == "betowanieClient" then
    ilosc = 0
    for _FORV_8_, _FORV_9_ in pairs(avatar_table_Al) do
      if _FORV_8_ == getElementData(_ARG_1_, "player:sid") and isElement(maska) then
        _UPVALUE5_[_FORV_8_] = dxCreateShader(":ST_avatars/masked.fx")
        _UPVALUE6_[_FORV_8_] = dxCreateTexture(avatar_table_Al[_FORV_8_], "argb", false, "clamp")
        dxSetShaderValue(_UPVALUE5_[_FORV_8_], "sMaskTexture", maska)
        dxSetShaderValue(_UPVALUE5_[_FORV_8_], "sPicTexture", _UPVALUE6_[_FORV_8_])
        shader1 = _UPVALUE5_[_FORV_8_]
      end
    end
    if _ARG_3_ == "czerwone" then
      for _FORV_8_, _FORV_9_ in pairs(_UPVALUE7_) do
        if _UPVALUE7_[_FORV_8_][1] == _ARG_1_ then
          ilosc = _UPVALUE7_[_FORV_8_][2]
          table.remove(_UPVALUE7_, _FORV_8_)
        end
      end
      table.insert(_UPVALUE7_, {
        _ARG_1_,
        math.floor(_ARG_2_ + ilosc),
        shader1
      })
      table.sort(_UPVALUE7_, function(_ARG_0_, _ARG_1_)
        return _ARG_0_[2] > _ARG_1_[2]
      end)
    end
    if _ARG_3_ == "czarne" then
      for _FORV_8_, _FORV_9_ in pairs(_UPVALUE8_) do
        if _UPVALUE8_[_FORV_8_][1] == _ARG_1_ then
          ilosc = _UPVALUE8_[_FORV_8_][2]
          table.remove(_UPVALUE8_, _FORV_8_)
        end
      end
      table.insert(_UPVALUE8_, {
        _ARG_1_,
        math.floor(_ARG_2_ + ilosc),
        shader1
      })
      table.sort(_UPVALUE8_, function(_ARG_0_, _ARG_1_)
        return _ARG_0_[2] > _ARG_1_[2]
      end)
    end
    if _ARG_3_ == "zielone" then
      for _FORV_8_, _FORV_9_ in pairs(_UPVALUE9_) do
        if _UPVALUE9_[_FORV_8_][1] == _ARG_1_ then
          ilosc = _UPVALUE9_[_FORV_8_][2]
          table.remove(_UPVALUE9_, _FORV_8_)
        end
      end
      table.insert(_UPVALUE9_, {
        _ARG_1_,
        math.floor(_ARG_2_ + ilosc),
        shader1
      })
      table.sort(_UPVALUE9_, function(_ARG_0_, _ARG_1_)
        return _ARG_0_[2] > _ARG_1_[2]
      end)
    end
  end
end)
function renderLine()
  if getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) and getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) then
    dxDrawImage(getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) - 210 * math.max(1 - getDistanceBetweenPoints3D(1150.69, -2.59, 993.81, getElementPosition(localPlayer)) / 40, 0.35) / 2, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) - 210 * math.max(1 - getDistanceBetweenPoints3D(1150.69, -2.59, 993.81, getElementPosition(localPlayer)) / 40, 0.35), 210 * math.max(1 - getDistanceBetweenPoints3D(1150.69, -2.59, 993.81, getElementPosition(localPlayer)) / 40, 0.35), 210 * math.max(1 - getDistanceBetweenPoints3D(1150.69, -2.59, 993.81, getElementPosition(localPlayer)) / 40, 0.35), _UPVALUE0_.roulette, -5, 0, 0, tocolor(255, 255, 255, 255), false)
    if getDistanceBetweenPoints3D(1150.69, -2.59, 993.81, getElementPosition(localPlayer)) < 6 then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) - 86 / _UPVALUE1_, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) + 29 / _UPVALUE1_, 172 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) - 85 / _UPVALUE1_, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) + 30 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawText("ABY OTWORZY\196\134 GUI KLIKNIJ", getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
      dxDrawText("Q", getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(1150.69, -2.59, 994.31, 200))
      if getKeyState("Q") and not clickC then
        clickC = true
        if _UPVALUE3_.main == false then
          triggerServerEvent("evEwenciks_sk78q23g", resourceRoot, "openGuiServer", localPlayer)
          addEventHandler("onClientRender", root, window)
          addEventHandler("onClientClick", root, click)
          _UPVALUE3_.main = true
          showCursor(true)
          textures = {
            user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
            cross = dxCreateTexture(":ST_gui/img/cross.png"),
            members_icon = dxCreateTexture(":ST_organization_panel/img/members_icon.png")
          }
          ruletkapola = dxCreateRenderTarget(1130 / _UPVALUE1_, 80 / _UPVALUE1_, true)
          self.kwota = 0
          self.addMoney = {
            {"clear"},
            {"1k", 1000},
            {"10k", 10000},
            {"100k", 100000},
            {"1kk", 1000000},
            {"1/2"},
            {"x2"},
            {"MAX"}
          }
        end
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
  linieon = {
    1153.9,
    -1,
    993.81,
    90
  }
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)), 993.2 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)), 993.2 + 0.1, tocolor(0, 0, 0, 200), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)), 993.2 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.1 * math.cos(-math.rad(linieon[4])), 993.2 + 0.1, tocolor(0, 0, 0, 200), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)), 993.2 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)) - 10.1 * math.cos(-math.rad(linieon[4])), 993.2 + 0.1, tocolor(0, 0, 0, 200), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.1 * math.cos(-math.rad(linieon[4])), 993.2 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)) - 10.1 * math.cos(-math.rad(linieon[4])), 993.2 + 0.1, tocolor(0, 0, 0, 200), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)), 993 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)), 993 + 0.1, tocolor(0, 200, 0, 255), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)), 993 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.1 * math.cos(-math.rad(linieon[4])), 993 + 0.1, tocolor(0, 200, 0, 255), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)), 993 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)) - 10.1 * math.cos(-math.rad(linieon[4])), 993 + 0.1, tocolor(0, 200, 0, 255), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.1 * math.cos(-math.rad(linieon[4])), 993 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)) - 10.1 * math.cos(-math.rad(linieon[4])), 993 + 0.1, tocolor(0, 200, 0, 255), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)), 992.8 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)), 992.8 + 0.1, tocolor(255, 0, 0, 200), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)), 992.8 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.1 * math.cos(-math.rad(linieon[4])), 992.8 + 0.1, tocolor(255, 0, 0, 200), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)), 992.8 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)) - 10.1 * math.cos(-math.rad(linieon[4])), 992.8 + 0.1, tocolor(255, 0, 0, 200), 1)
  dxDrawLine3D(linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.1 * math.cos(-math.rad(linieon[4])), 992.8 + 0.1, linieon[1] - 3.75 * math.sin(-math.rad(linieon[4] + 90)) - 8.5 * math.sin(-math.rad(linieon[4] + 180)) - 10.5 * math.sin(-math.rad(linieon[4] + 270)) - 10.1 * math.sin(-math.rad(linieon[4])), linieon[2] - 3.75 * math.cos(-math.rad(linieon[4] + 90)) - 8.5 * math.cos(-math.rad(linieon[4] + 180)) - 10.5 * math.cos(-math.rad(linieon[4] + 270)) - 10.1 * math.cos(-math.rad(linieon[4])), 992.8 + 0.1, tocolor(255, 0, 0, 200), 1)
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
getResourceName(getThisResource(), true, 792156274)
return
