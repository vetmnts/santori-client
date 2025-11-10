screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
pos = {
  {
    2253.1,
    -1684.51,
    15.48,
    0,
    0
  },
  {
    -2218.62,
    341.58,
    35.32,
    0,
    0
  }
}
for _FORV_5_, _FORV_6_ in ipairs(pos) do
  setElementDimension(createMarker(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3] - 0.95, "cylinder", 3, 255, 175, 0, 75), _FORV_6_[4])
  setElementPosition(createElement("text"), _FORV_6_[1], _FORV_6_[2], _FORV_6_[3])
  setElementData(createElement("text"), "name", "Konfiguracja CJ'a")
  setElementDimension(createElement("text"), _FORV_6_[4])
  setElementDimension(createMarker(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3] - 0.95, "cylinder", 3, 255, 175, 0, 75), _FORV_6_[4])
  setElementInterior(createMarker(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3] - 0.95, "cylinder", 3, 255, 175, 0, 75), _FORV_6_[5])
  setElementInterior(createElement("text"), _FORV_6_[5])
  addEventHandler("onClientMarkerHit", createMarker(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3] - 0.95, "cylinder", 3, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
    if getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    if getElementModel(_ARG_0_) ~= 0 then
      exports.st_gui:showPlayerNotification("Opcja tylko dla graczy ze skinem o id 0 (CJ)", "error")
      return
    end
    categories = {
      {
        name = "Koszulki i koszule",
        type = 0,
        table = tshirt,
        number = 68,
        typeName = "tulow"
      },
      {
        name = "Spodnie",
        type = 2,
        table = spodnie,
        number = 45,
        typeName = "nogi"
      },
      {
        name = "Buty",
        type = 3,
        table = buty,
        number = 38,
        typeName = "buty"
      },
      {
        name = "Fryzury",
        type = 1,
        table = fryzury,
        number = 33,
        typeName = "fryzury"
      },
      {
        name = "Naszyjniki",
        type = 13,
        table = Naszyjniki,
        number = 12,
        typeName = "dodatki"
      },
      {
        name = "Zegarki",
        type = 14,
        table = Zegarki,
        number = 12,
        typeName = "zegarki"
      },
      {
        name = "Okulary",
        type = 15,
        table = Okulary,
        number = 17,
        typeName = "okulary"
      },
      {
        name = "Nakrycie g\197\130owy",
        type = 16,
        table = glowa,
        number = 57,
        typeName = "glowa"
      },
      {
        name = "Tatua\197\188e",
        type = false,
        number = 42
      },
      {
        name = "Sylwetka",
        type = false,
        number = 2
      }
    }
    textures = {
      strzalka = dxCreateTexture(":ST_selling_drugs/img/strzalka.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      back_arrow = dxCreateTexture(":ST_dashboard/img/back_arrow.png"),
      logo = dxCreateTexture(":ST_gui/img/logo.png")
    }
    textBackground = "Wybierz kategori\196\153"
    addEventHandler("onClientRender", root, window)
    windows.main = true
    windows.ped = true
    windows.background = true
    windows.selectCategories = false
    windows.silhouette = false
    seltObjectPreview.ROT = 180
    seltObjectPreview.XPos = 0
    seltObjectPreview.dim = _UPVALUE0_[4]
    seltObjectPreview.int = _UPVALUE0_[5]
    clothesPlayer = {}
    selectTable = {}
    createPedGui()
    showCursor(true)
  end)
end
windows = {
  main = false,
  ped = false,
  background = false,
  silhouette = false
}
seltObjectPreview = {}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y - 2 / zoom, _UPVALUE0_.w + 4 / zoom, _UPVALUE0_.h + 4 / zoom, 25 / zoom, tocolor(255, 191, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 25 / zoom, tocolor(33, 33, 33, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 50 / zoom, _UPVALUE0_.w - 20 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawImage(_UPVALUE0_.x + 7 / zoom, _UPVALUE0_.y + 6 / zoom, 45 / zoom, 45 / zoom, textures.logo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KONFIGURACJA WYGL\196\132DU CJ'A", _UPVALUE0_.x + 55 / zoom, _UPVALUE0_.y - 145 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 58 / zoom, _UPVALUE0_.w - 20 / zoom, 40 / zoom, 10 / zoom, tocolor(25, 25, 25, 230))
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 12.5 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 12.5 / zoom, 30 / zoom, 30 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 45 / zoom, _UPVALUE0_.y + 15 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawText(textBackground, _UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y - 45 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
  end
  if windows.main == true then
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(categories) do
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 350 / zoom, 51 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 350 / zoom, 51 / zoom, 15 / zoom, tocolor(50, 50, 50, 210), false)
        dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 60 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        dxDrawText("#ffbb00" .. _FORV_8_.number, _UPVALUE0_.x, _UPVALUE0_.y + 61 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 170 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 350 / zoom, 51 / zoom, 15 / zoom, tocolor(45, 45, 45, 210), false)
        dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 60 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        dxDrawText("#ffbb00" .. _FORV_8_.number, _UPVALUE0_.x, _UPVALUE0_.y + 61 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 170 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
      end
    end
    if categoriesTatuaze == true then
      if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom) then
        dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom, textures.back_arrow, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom, textures.back_arrow, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
  end
  if windows.selectCategories == true then
    xY = 0
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom, textures.back_arrow, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom, textures.back_arrow, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    for _FORV_7_, _FORV_8_ in ipairs(selectTable) do
      if _FORV_7_ >= _UPVALUE1_ and _FORV_7_ <= _UPVALUE2_ then
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 460 / zoom, 51 / zoom) then
          if selectClothes[1] == _FORV_8_.texture and selectClothes[2] == _FORV_8_.model then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 350 / zoom, 51 / zoom, 15 / zoom, tocolor(38, 38, 38, 255), false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 350 / zoom, 51 / zoom, 15 / zoom, tocolor(50, 50, 50, 255), false)
          end
          dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 25 / zoom, _UPVALUE0_.y + 38 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
          dxDrawText("#ffbb00" .. przecinek(_FORV_8_.money) .. " #e6e6e6PLN", _UPVALUE0_.x + 35 / zoom, _UPVALUE0_.y + 88 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        else
          if selectClothes[1] == _FORV_8_.texture and selectClothes[2] == _FORV_8_.model then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 350 / zoom, 51 / zoom, 15 / zoom, tocolor(38, 38, 38, 255), false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (xY - 1), _UPVALUE0_.w - 350 / zoom, 51 / zoom, 15 / zoom, tocolor(45, 45, 45, 255), false)
          end
          dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 25 / zoom, _UPVALUE0_.y + 38 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
          dxDrawText("#ffbb00" .. przecinek(_FORV_8_.money) .. " #e6e6e6PLN", _UPVALUE0_.x + 35 / zoom, _UPVALUE0_.y + 88 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        end
        dxDrawRectangle(_UPVALUE0_.x + 17 / zoom, _UPVALUE0_.y + 120 / zoom + 54 / zoom * (xY - 1), 2 / zoom, 25 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 17 / zoom, _UPVALUE0_.y + 145 / zoom + 54 / zoom * (xY - 1), 12 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
        if _FORV_8_.buy == true then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x, _UPVALUE0_.y + 60 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 70 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
          if isMouseIn(_UPVALUE0_.x + 435 / zoom, _UPVALUE0_.y + 110 / zoom + 54 / zoom * (xY - 1), 100 / zoom, 40 / zoom) then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 435 / zoom, _UPVALUE0_.y + 110 / zoom + 54 / zoom * (xY - 1), 100 / zoom, 40 / zoom, 15 / zoom, tocolor(26, 26, 26, 255), false)
            dxDrawText("USU\197\131", _UPVALUE0_.x + 610 / zoom, _UPVALUE0_.y + 59 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 435 / zoom, _UPVALUE0_.y + 110 / zoom + 54 / zoom * (xY - 1), 100 / zoom, 40 / zoom, 15 / zoom, tocolor(30, 30, 30, 255), false)
            dxDrawText("USU\197\131", _UPVALUE0_.x + 610 / zoom, _UPVALUE0_.y + 59 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
          end
        elseif isMouseIn(_UPVALUE0_.x + 435 / zoom, _UPVALUE0_.y + 110 / zoom + 54 / zoom * (xY - 1), 100 / zoom, 40 / zoom) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 435 / zoom, _UPVALUE0_.y + 110 / zoom + 54 / zoom * (xY - 1), 100 / zoom, 40 / zoom, 15 / zoom, tocolor(26, 26, 26, 255), false)
          dxDrawText("ZAKUP", _UPVALUE0_.x + 610 / zoom, _UPVALUE0_.y + 59 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 435 / zoom, _UPVALUE0_.y + 110 / zoom + 54 / zoom * (xY - 1), 100 / zoom, 40 / zoom, 15 / zoom, tocolor(30, 30, 30, 255), false)
          dxDrawText("ZAKUP", _UPVALUE0_.x + 610 / zoom, _UPVALUE0_.y + 59 / zoom + 108 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        end
      end
    end
  end
  if windows.ped == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 105 / zoom, 320 / zoom, 540 / zoom, 35 / zoom, tocolor(45, 45, 45, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 590 / zoom, 300 / zoom, 30 / zoom, 10 / zoom, tocolor(40, 40, 40, 225), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 590 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(35, 35, 35, 225), false)
    dxDrawImage(_UPVALUE0_.x + 565 / zoom, _UPVALUE0_.y + 595 / zoom, 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 830 / zoom, _UPVALUE0_.y + 590 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(35, 35, 35, 225), false)
    dxDrawImage(_UPVALUE0_.x + 835 / zoom, _UPVALUE0_.y + 595 / zoom, 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / zoom + seltObjectPreview.XPos, _UPVALUE0_.y + 590 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(252, 186, 3, 225), false)
  end
  if windows.silhouette == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom, _UPVALUE0_.w - 350 / zoom, 540 / zoom, 35 / zoom, tocolor(45, 45, 45, 255), false)
    dxDrawText("KOSZT: #ffbb00100,000 #e6e6e6PLN", _UPVALUE0_.x + 188 / zoom, _UPVALUE0_.y + 850 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 550 / zoom, 160 / zoom, 60 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 550 / zoom, 160 / zoom, 60 / zoom, 17 / zoom, tocolor(26, 26, 26, 255), false)
      dxDrawText("ZAKUP", _UPVALUE0_.x + 188 / zoom, _UPVALUE0_.y + 960 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 550 / zoom, 160 / zoom, 60 / zoom, 17 / zoom, tocolor(30, 30, 30, 255), false)
      dxDrawText("ZAKUP", _UPVALUE0_.x + 188 / zoom, _UPVALUE0_.y + 960 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y + 220 / zoom, 450 / zoom, 30 / zoom, 10 / zoom, tocolor(40, 40, 40, 225), false)
    dxDrawText("UMI\196\152\197\154NIENIE\n" .. getPedStat(seltObjectPreview.ped, 23) / 10 .. " %", _UPVALUE0_.x + 188 / zoom, _UPVALUE0_.y + 160 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y + 220 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(35, 35, 35, 225), false)
    dxDrawImage(_UPVALUE0_.x + 55 / zoom, _UPVALUE0_.y + 225 / zoom, 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / zoom, _UPVALUE0_.y + 220 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(35, 35, 35, 225), false)
    dxDrawImage(_UPVALUE0_.x + 475 / zoom, _UPVALUE0_.y + 225 / zoom, 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom + getPedStat(seltObjectPreview.ped, 23) / 2.8 / zoom, _UPVALUE0_.y + 220 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(252, 186, 3, 225), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y + 390 / zoom, 450 / zoom, 30 / zoom, 10 / zoom, tocolor(40, 40, 40, 225), false)
    dxDrawText("TKANKA T\197\129USZCZOWA\n" .. getPedStat(seltObjectPreview.ped, 21) / 10 .. " %", _UPVALUE0_.x + 188 / zoom, _UPVALUE0_.y + 490 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y + 390 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(35, 35, 35, 225), false)
    dxDrawImage(_UPVALUE0_.x + 55 / zoom, _UPVALUE0_.y + 395 / zoom, 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / zoom, _UPVALUE0_.y + 390 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(35, 35, 35, 225), false)
    dxDrawImage(_UPVALUE0_.x + 475 / zoom, _UPVALUE0_.y + 395 / zoom, 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom + getPedStat(seltObjectPreview.ped, 21) / 2.8 / zoom, _UPVALUE0_.y + 390 / zoom, 30 / zoom, 30 / zoom, 10 / zoom, tocolor(252, 186, 3, 225), false)
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom, textures.back_arrow, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom, textures.back_arrow, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(categories) do
        if isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 460 / zoom, 51 / zoom) and windows.main == true then
          if _FORV_7_.name == "Tatua\197\188e" then
            categories = {
              {
                name = "Lewe g\195\179rne rami\196\153",
                type = 4,
                table = TatuazeLeweGorneRamie,
                number = 3,
                typeName = "tatuaze_LeweGorneRamie"
              },
              {
                name = "Lewe dolne rami\196\153",
                type = 5,
                table = TatuazeLeweDolneRamie,
                number = 4,
                typeName = "tatuaze_LeweDolneRamie"
              },
              {
                name = "Prawe g\195\179rne rami\196\153",
                type = 6,
                table = TatuazePraweGorneRamie,
                number = 4,
                typeName = "tatuaze_PraweGorneRamie"
              },
              {
                name = "Prawe dolne rami\196\153",
                type = 7,
                table = TatuazePraweDolneRamie,
                number = 4,
                typeName = "tatuaze_PraweDolneRamie"
              },
              {
                name = "Plecy",
                type = 8,
                table = TatuazePlecy,
                number = 7,
                typeName = "tatuaze_Plecy"
              },
              {
                name = "Lewa pier\197\155",
                type = 9,
                table = TatuazeLewaPiers,
                number = 6,
                typeName = "tatuaze_LewaPiers"
              },
              {
                name = "Prawa pier\197\155",
                type = 10,
                table = TatuazePrawaPiers,
                number = 7,
                typeName = "tatuaze_PrawaPiers"
              },
              {
                name = "Brzuch",
                type = 11,
                table = TatuazeBrzuch,
                number = 7,
                typeName = "tatuaze_Brzuch"
              }
            }
            textBackground = "WYBIERZ KATEGORI\196\152 TATUA\197\187Y"
            categoriesTatuaze = true
          elseif _FORV_7_.name == "Sylwetka" then
            setTimer(function()
              windows.silhouette = true
            end, 50, 1)
            windows.main = false
            textBackground = "KONFIGURACJA SYLWETKI CJ'A"
          else
            _UPVALUE1_ = 1
            _UPVALUE2_ = 10
            _UPVALUE3_ = 10
            selectTable = _FORV_7_.table
            windows.main = false
            selectClothes = {}
            setTimer(function()
              windows.selectCategories = true
            end, 50, 1)
            selectType = _FORV_7_.type
            selectTypeName = _FORV_7_.typeName
            if categoriesTatuaze then
              textBackground = "Tatua\197\188e: " .. _FORV_7_.name
            else
              textBackground = "Kategoria: " .. _FORV_7_.name
            end
            for _FORV_12_, _FORV_13_ in ipairs(selectTable) do
              for _FORV_17_, _FORV_18_ in ipairs(clothesPlayer) do
                if _FORV_13_.model == _FORV_18_[1] and _FORV_13_.texture == _FORV_18_[2] then
                  selectTable[_FORV_12_].buy = true
                end
              end
            end
          end
        end
      end
      if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom) and categoriesTatuaze == true then
        categories = {
          {
            name = "Koszulki i koszule",
            type = 0,
            table = tshirt,
            number = 68,
            typeName = "tulow"
          },
          {
            name = "Spodnie",
            type = 2,
            table = spodnie,
            number = 45,
            typeName = "nogi"
          },
          {
            name = "Buty",
            type = 3,
            table = buty,
            number = 38,
            typeName = "buty"
          },
          {
            name = "Fryzury",
            type = 1,
            table = fryzury,
            number = 33,
            typeName = "fryzury"
          },
          {
            name = "Naszyjniki",
            type = 13,
            table = Naszyjniki,
            number = 12,
            typeName = "dodatki"
          },
          {
            name = "Zegarki",
            type = 14,
            table = Zegarki,
            number = 12,
            typeName = "zegarki"
          },
          {
            name = "Okulary",
            type = 15,
            table = Okulary,
            number = 17,
            typeName = "okulary"
          },
          {
            name = "Nakrycie g\197\130owy",
            type = 16,
            table = glowa,
            number = 57,
            typeName = "glowa"
          },
          {
            name = "Tatua\197\188e",
            type = false,
            number = 42
          },
          {
            name = "Sylwetka",
            type = false,
            number = 2
          }
        }
        categoriesTatuaze = false
      end
    end
    if windows.selectCategories == true then
      for _FORV_6_, _FORV_7_ in ipairs(selectTable) do
        if _FORV_6_ >= _UPVALUE1_ and _FORV_6_ <= _UPVALUE2_ then
          if isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 105 / zoom + 54 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 460 / zoom, 51 / zoom) and windows.selectCategories == true then
            if getPedClothes(seltObjectPreview.ped, selectType) then
              removePedClothes(seltObjectPreview.ped, selectType)
            end
            addPedClothes(seltObjectPreview.ped, _FORV_7_.texture, _FORV_7_.model, selectType)
            selectClothes = {
              _FORV_7_.texture,
              _FORV_7_.model
            }
          elseif isMouseIn(_UPVALUE0_.x + 435 / zoom, _UPVALUE0_.y + 110 / zoom + 54 / zoom * (0 + 1 - 1), 100 / zoom, 40 / zoom) and windows.selectCategories == true then
            if _FORV_7_.buy == true then
              triggerServerEvent("ev", resourceRoot, "removeClothes", localPlayer, selectType, selectTypeName)
            else
              triggerServerEvent("ev", resourceRoot, "buyClothes", localPlayer, _FORV_7_.texture, _FORV_7_.model, selectType, _FORV_7_.money, selectTypeName)
            end
          end
        end
      end
      if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom) and categoriesTatuaze == true then
        categories = {
          {
            name = "Lewe g\195\179rne rami\196\153",
            type = 4,
            table = TatuazeLeweGorneRamie,
            number = 3,
            typeName = "tatuaze_LeweGorneRamie"
          },
          {
            name = "Lewe dolne rami\196\153",
            type = 5,
            table = TatuazeLeweDolneRamie,
            number = 4,
            typeName = "tatuaze_LeweDolneRamie"
          },
          {
            name = "Prawe g\195\179rne rami\196\153",
            type = 6,
            table = TatuazePraweGorneRamie,
            number = 4,
            typeName = "tatuaze_PraweGorneRamie"
          },
          {
            name = "Prawe dolne rami\196\153",
            type = 7,
            table = TatuazePraweDolneRamie,
            number = 4,
            typeName = "tatuaze_PraweDolneRamie"
          },
          {
            name = "Plecy",
            type = 8,
            table = TatuazePlecy,
            number = 7,
            typeName = "tatuaze_Plecy"
          },
          {
            name = "Lewa pier\197\155",
            type = 9,
            table = TatuazeLewaPiers,
            number = 6,
            typeName = "tatuaze_LewaPiers"
          },
          {
            name = "Prawa pier\197\155",
            type = 10,
            table = TatuazePrawaPiers,
            number = 7,
            typeName = "tatuaze_PrawaPiers"
          },
          {
            name = "Brzuch",
            type = 11,
            table = TatuazeBrzuch,
            number = 7,
            typeName = "tatuaze_Brzuch"
          }
        }
        windows.selectCategories = false
        windows.main = true
        textBackground = "WYBIERZ KATEGORI\196\152 TATUA\197\187Y"
      elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom) then
        categories = {
          {
            name = "Koszulki i koszule",
            type = 0,
            table = tshirt,
            number = 68,
            typeName = "tulow"
          },
          {
            name = "Spodnie",
            type = 2,
            table = spodnie,
            number = 45,
            typeName = "nogi"
          },
          {
            name = "Buty",
            type = 3,
            table = buty,
            number = 38,
            typeName = "buty"
          },
          {
            name = "Fryzury",
            type = 1,
            table = fryzury,
            number = 33,
            typeName = "fryzury"
          },
          {
            name = "Naszyjniki",
            type = 13,
            table = Naszyjniki,
            number = 12,
            typeName = "dodatki"
          },
          {
            name = "Zegarki",
            type = 14,
            table = Zegarki,
            number = 12,
            typeName = "zegarki"
          },
          {
            name = "Okulary",
            type = 15,
            table = Okulary,
            number = 17,
            typeName = "okulary"
          },
          {
            name = "Nakrycie g\197\130owy",
            type = 16,
            table = glowa,
            number = 57,
            typeName = "glowa"
          },
          {
            name = "Tatua\197\188e",
            type = false,
            number = 42
          },
          {
            name = "Sylwetka",
            type = false,
            number = 2
          }
        }
        windows.main = true
        windows.selectCategories = false
        textBackground = "Wybierz kategori\196\153"
      end
    end
    if isMouseIn(_UPVALUE0_.x + 830 / zoom, _UPVALUE0_.y + 590 / zoom, 30 / zoom, 30 / zoom) and windows.ped == true then
      if seltObjectPreview.XPos == 100 then
        seltObjectPreview.ROT = -20
        seltObjectPreview.XPos = -100
        exports.ST_object_preview:setRotation(seltObjectPreview.myObject, -5, 0, seltObjectPreview.ROT)
        return
      end
      seltObjectPreview.ROT = seltObjectPreview.ROT + 20
      seltObjectPreview.XPos = seltObjectPreview.XPos + 10
      exports.ST_object_preview:setRotation(seltObjectPreview.myObject, -5, 0, seltObjectPreview.ROT)
    elseif isMouseIn(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 590 / zoom, 30 / zoom, 30 / zoom) and windows.ped == true then
      if seltObjectPreview.XPos == -100 then
        seltObjectPreview.ROT = 380
        seltObjectPreview.XPos = 100
        exports.ST_object_preview:setRotation(seltObjectPreview.myObject, -5, 0, seltObjectPreview.ROT)
        return
      end
      seltObjectPreview.ROT = seltObjectPreview.ROT - 20
      seltObjectPreview.XPos = seltObjectPreview.XPos - 10
      exports.ST_object_preview:setRotation(seltObjectPreview.myObject, -5, 0, seltObjectPreview.ROT)
    elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 12.5 / zoom, 30 / zoom, 30 / zoom) and windows.background == true then
      showGui()
    end
    if windows.silhouette == true then
      if isMouseIn(_UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y + 220 / zoom, 30 / zoom, 30 / zoom) then
        if getPedStat(seltObjectPreview.ped, 23) == 0 then
          setPedStat(seltObjectPreview.ped, 23, 1000)
          return
        end
        setPedStat(seltObjectPreview.ped, 23, getPedStat(seltObjectPreview.ped, 23) - 50)
      elseif isMouseIn(_UPVALUE0_.x + 470 / zoom, _UPVALUE0_.y + 220 / zoom, 30 / zoom, 30 / zoom) then
        if getPedStat(seltObjectPreview.ped, 23) == 1000 then
          setPedStat(seltObjectPreview.ped, 23, 0)
          return
        end
        setPedStat(seltObjectPreview.ped, 23, getPedStat(seltObjectPreview.ped, 23) + 50)
      elseif isMouseIn(_UPVALUE0_.x + 50 / zoom, _UPVALUE0_.y + 390 / zoom, 30 / zoom, 30 / zoom) then
        if getPedStat(seltObjectPreview.ped, 21) == 0 then
          setPedStat(seltObjectPreview.ped, 21, 1000)
          return
        end
        setPedStat(seltObjectPreview.ped, 21, getPedStat(seltObjectPreview.ped, 21) - 50)
      elseif isMouseIn(_UPVALUE0_.x + 470 / zoom, _UPVALUE0_.y + 390 / zoom, 30 / zoom, 30 / zoom) then
        if getPedStat(seltObjectPreview.ped, 21) == 1000 then
          setPedStat(seltObjectPreview.ped, 21, 0)
          return
        end
        setPedStat(seltObjectPreview.ped, 21, getPedStat(seltObjectPreview.ped, 21) + 50)
      elseif isMouseIn(_UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 550 / zoom, 160 / zoom, 60 / zoom) then
        if getElementData(localPlayer, "player:moneyMNn") < 150000 then
          exports.st_gui:showPlayerNotification("Aby zmieni\196\135 sylwetk\196\153 potrzebujesz 150,000 PLN", "error")
          return
        end
        triggerServerEvent("ev", resourceRoot, "changeSilhouette", localPlayer, getPedStat(seltObjectPreview.ped, 23), getPedStat(seltObjectPreview.ped, 21), 150000)
        exports.st_gui:showPlayerNotification("Pomy\197\155lnie zmieniono sylwetk\196\153", "success")
        windows.silhouette = false
        windows.main = true
        textBackground = "Wybierz kategori\196\153"
      elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 47.5 / zoom, _UPVALUE0_.y + 63 / zoom, 30 / zoom, 30 / zoom) then
        windows.silhouette = false
        windows.main = true
        textBackground = "Wybierz kategori\196\153"
      end
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "reloadClothesAndTable" then
    clothesPlayer = {}
    createPedGui(true)
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
function showGui()
  removeEventHandler("onClientRender", root, window)
  windows.main = false
  windows.ped = false
  windows.background = false
  windows.selectCategories = false
  windows.silhouette = false
  showCursor(false)
  if isElement(seltObjectPreview.ped) then
    destroyElement(seltObjectPreview.ped)
    setTimer(function()
      exports.ST_object_preview:destroyObjectPreview(myObject)
    end, 100, 1)
  end
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
end
function createPedGui(_ARG_0_)
  if isElement(seltObjectPreview.ped) then
    destroyElement(seltObjectPreview.ped)
    exports.ST_object_preview:destroyObjectPreview(myObject)
  end
  seltObjectPreview.ped = createPed(0, getCameraMatrix())
  setPedStat(seltObjectPreview.ped, 23, (getPedStat(localPlayer, 23)))
  setPedStat(seltObjectPreview.ped, 21, (getPedStat(localPlayer, 21)))
  myObject = exports.ST_object_preview:createObjectPreview(seltObjectPreview.ped, -10, 0, 180, _UPVALUE0_.x + 450 / zoom, _UPVALUE0_.y - 10 / zoom, 510 / zoom, 650 / zoom, false, true)
  setElementDimension(seltObjectPreview.ped, seltObjectPreview.dim)
  setElementInterior(seltObjectPreview.ped, seltObjectPreview.int)
  for _FORV_9_ = 0, 17 do
    if getPedClothes(localPlayer, _FORV_9_) and getPedClothes(localPlayer, _FORV_9_) then
      table.insert(clothesPlayer, {
        getPedClothes(localPlayer, _FORV_9_)
      })
      addPedClothes(seltObjectPreview.ped, getPedClothes(localPlayer, _FORV_9_))
    end
  end
  if _ARG_0_ then
    for _FORV_9_, _FORV_10_ in ipairs(selectTable) do
      selectTable[_FORV_9_].buy = false
      for _FORV_14_, _FORV_15_ in ipairs(clothesPlayer) do
        if _FORV_10_.model == _FORV_15_[1] and _FORV_10_.texture == _FORV_15_[2] then
          selectTable[_FORV_9_].buy = true
        end
      end
    end
  end
end
bindKey("mouse_wheel_down", "both", function()
  if windows.selectCategories == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.selectCategories == true then
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
  if _UPVALUE0_ >= #selectTable then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
getResourceName(getThisResource(), true, 566410726)
return
