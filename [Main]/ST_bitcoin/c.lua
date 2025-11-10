screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
createBlip(-1835.41, -84.93, -0.92, 48, 2, 0, 0, 0, 0, 0, 250)
markerENTER = createMarker(-1835.2, -88.14, -1.82, "cylinder", 1.5, 246, 255, 0, 255)
setElementData(markerENTER, "marker:icon", "crypto")
markerEXIT = createMarker(3535.83, -20.04, 953.6, "cylinder", 1.5, 246, 255, 0, 255)
setElementDimension(markerEXIT, 2)
computerMarker = createMarker(3548.68, -26.7, 953.6, "cylinder", 3, 246, 255, 0, 255)
setElementDimension(computerMarker, 2)
table_statistics = {}
table_stockExchange = {}
windows = {
  tablet = false,
  background = false,
  category = false
}
kScroll = 1
nScroll = 5
mScroll = 5
select_card = {}
select_powerSupply = {}
rot_Fan = 0
power_graphic = 0
powerSupply_menu = {}
wear_graphic_office_menu = {}
self = {}
function window()
  if windows.category == "WEJ\197\154CIE" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 424 / zoom, _UPVALUE0_.y + 249 / zoom, _UPVALUE0_.w - 848 / zoom, _UPVALUE0_.h - 498 / zoom, 20 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 425 / zoom, _UPVALUE0_.y + 250 / zoom, _UPVALUE0_.w - 850 / zoom, _UPVALUE0_.h - 500 / zoom, 20 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawText("KOPALNIA KRYPTOWALUT", _UPVALUE0_.x + 712 / zoom, _UPVALUE0_.y + 345 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 435 / zoom, _UPVALUE0_.y + 295 / zoom, _UPVALUE0_.w - 870 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      if _FORV_8_.buy_office == 1 then
        dxDrawText("- \197\129\196\132CZNY ZAROBEK: #00ff22" .. przecinek(_FORV_8_.zarobek_crypto) .. [[
 #ffffffPLN
- WYKOPANE KRYPTO: #ffbb00]] .. ("%.2f"):format(_FORV_8_.all_crypto) .. "", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 550 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("WEJD\197\185", _UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 470 / zoom, 180 / zoom, 61 / zoom, 255, 1)
      else
        dxDrawText("Posiadaj\196\133c kopalnie kryptowalut mo\197\188esz wydobywa\196\135\noraz inwestowa\196\135 w kryptowaluty. Gdy cena gie\197\130dowa\nb\196\153dzie ci odpowiada\196\135, mo\197\188esz sprzeda\196\135\nzasoby.", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 550 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
        dxDrawText("KOSZT: #00ad234,000,000 #e6e6e6PLN", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 730 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 490 / zoom, 180 / zoom, 61 / zoom, 255, 1)
      end
    end
    if isMouseIn(_UPVALUE0_.x + 839 / zoom, _UPVALUE0_.y + 258 / zoom, 27 / zoom, 27 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 839 / zoom, _UPVALUE0_.y + 258 / zoom, 27 / zoom, 27 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 840 / zoom, _UPVALUE0_.y + 259 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 1 / zoom, _UPVALUE0_.y - 1 / zoom, _UPVALUE0_.w + 2 / zoom, _UPVALUE0_.h + 2 / zoom, 20 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 20 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, 215 / zoom, _UPVALUE0_.h, 20 / zoom, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 2 / zoom, tocolor(255, 187, 0, 255), false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(category) do
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom * (xY - 1), 210 / zoom, 70 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom * (xY - 1), 210 / zoom, 70 / zoom, 20 / zoom, tocolor(25, 25, 25, 150), false)
        dxDrawImage(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 10 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y - 130 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
      else
        dxDrawImage(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 10 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y - 130 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 770 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 769 / zoom, 32 / zoom, 32 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 770 / zoom, 30 / zoom, 30 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "MENU" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 224 / zoom, _UPVALUE0_.y + 7 / zoom, 528 / zoom, 397 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 8 / zoom, 526 / zoom, 395 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
    dxDrawText("KOPARKA KRYPTOWALUT", _UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 58 / zoom, 506 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 762 / zoom, _UPVALUE0_.y + 7 / zoom, 528 / zoom, 397 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 763 / zoom, _UPVALUE0_.y + 8 / zoom, 526 / zoom, 395 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
    dxDrawText("KARTA GRAFICZNA", _UPVALUE0_.x + 773 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 773 / zoom, _UPVALUE0_.y + 58 / zoom, 506 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 224 / zoom, _UPVALUE0_.y + 409 / zoom, 528 / zoom, 397 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 410 / zoom, 526 / zoom, 395 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
    dxDrawText("KRYPTOWALUTY W KOPARCE", _UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 680 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 460 / zoom, 506 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 762 / zoom, _UPVALUE0_.y + 409 / zoom, 528 / zoom, 397 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 763 / zoom, _UPVALUE0_.y + 410 / zoom, 526 / zoom, 395 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
    dxDrawText("ZASILACZ", _UPVALUE0_.x + 773 / zoom, _UPVALUE0_.y + 680 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 773 / zoom, _UPVALUE0_.y + 460 / zoom, 506 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      if not start then
        power_graphic = 0
      end
      if _FORV_8_.graphic_office == "GeForce GTX 750" then
        wear_graphic_office_menu = {
          math.floor(_FORV_8_.wear_graphic_office),
          500,
          textures.gtx750_icon
        }
      elseif _FORV_8_.graphic_office == "GeForce GTX 980 GAMING 4GB" then
        wear_graphic_office_menu = {
          math.floor(_FORV_8_.wear_graphic_office),
          1000,
          textures.gtx960_icon
        }
      elseif _FORV_8_.graphic_office == "GeForce GTX 1060 6GB" then
        wear_graphic_office_menu = {
          math.floor(_FORV_8_.wear_graphic_office),
          1500,
          textures.gtx1060_icon
        }
      elseif _FORV_8_.graphic_office == "GeForce GTX 1660 SUPER OC 6GB" then
        wear_graphic_office_menu = {
          math.floor(_FORV_8_.wear_graphic_office),
          2000,
          textures.gtx1660_icon
        }
      elseif _FORV_8_.graphic_office == "GeForce RTX 2070 SUPER GAMING 8GB" then
        wear_graphic_office_menu = {
          math.floor(_FORV_8_.wear_graphic_office),
          2500,
          textures.rtx2070_icon
        }
      elseif _FORV_8_.graphic_office == "GeForce RTX 3070 Ti 8GB" then
        wear_graphic_office_menu = {
          math.floor(_FORV_8_.wear_graphic_office),
          3000,
          textures.rtx3070_icon
        }
      elseif _FORV_8_.graphic_office == "GeForce RTX 4090 24GB" then
        wear_graphic_office_menu = {
          math.floor(_FORV_8_.wear_graphic_office),
          3500,
          textures.rtx4090_icon
        }
      end
      if _FORV_8_.powerSupply == "SilentiumPC Elementum 350W" then
        if power_graphic > 350 then
          powerSupply_menu = {
            350,
            {
              255,
              0,
              0
            }
          }
        else
          powerSupply_menu = {
            350,
            {
              3,
              152,
              219
            }
          }
        end
      elseif _FORV_8_.powerSupply == "Corsair CX600 600W" then
        if power_graphic > 600 then
          powerSupply_menu = {
            600,
            {
              255,
              0,
              0
            }
          }
        else
          powerSupply_menu = {
            600,
            {
              3,
              152,
              219
            }
          }
        end
      elseif _FORV_8_.powerSupply == "Dark Power Pro P11 1000W" then
        powerSupply_menu = {
          1000,
          {
            3,
            152,
            219
          }
        }
      end
      dxDrawText(_FORV_8_.graphic_office, _UPVALUE0_.x + 775 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 118 / zoom, 154 / zoom, 154 / zoom, 25 / zoom, tocolor(255, 187, 0, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 772 / zoom, _UPVALUE0_.y + 120 / zoom, 150 / zoom, 150 / zoom, 25 / zoom, tocolor(25, 25, 25, 255), false)
      dxDrawImage(_UPVALUE0_.x + 777 / zoom, _UPVALUE0_.y + 125 / zoom, 140 / zoom, 140 / zoom, wear_graphic_office_menu[3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 845 / zoom, _UPVALUE0_.y + 270 / zoom, 2 / zoom, 55 / zoom, tocolor(255, 187, 0, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 845 / zoom, _UPVALUE0_.y + 325 / zoom, 185 / zoom, 2 / zoom, tocolor(255, 187, 0, 255), false)
      if isMouseIn(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 300 / zoom, 150 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 300 / zoom, 150 / zoom, 50 / zoom, 20 / zoom, tocolor(255, 187, 0, 200), false)
        dxDrawText("KOSZT: #00ff2250,000 #ffffffPLN", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 360 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 200), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        dxDrawText("NAPRAW", _UPVALUE0_.x + 1880 / zoom, _UPVALUE0_.y + 450 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 200), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "center", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 300 / zoom, 50 / zoom, 50 / zoom, textures.repair_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 300 / zoom, 150 / zoom, 50 / zoom, 20 / zoom, tocolor(255, 187, 0, 255), false)
        dxDrawText("NAPRAW", _UPVALUE0_.x + 1880 / zoom, _UPVALUE0_.y + 450 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "center", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 300 / zoom, 50 / zoom, 50 / zoom, textures.repair_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 140 / zoom, 280 / zoom, 25 / zoom) then
        dxDrawImage(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 140 / zoom, 25 / zoom, 25 / zoom, textures.heart_icon, 0, 0, 0, tocolor(255, 0, 0, 150), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 150 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(130, 110, 110, 150), false)
        if 250 * wear_graphic_office_menu[1] / wear_graphic_office_menu[2] / zoom > 6 / zoom then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 150 / zoom, 250 * wear_graphic_office_menu[1] / wear_graphic_office_menu[2] / zoom, 8 / zoom, 3 / zoom, tocolor(255, 12, 12, 150), false)
        end
        dxDrawText("" .. wear_graphic_office_menu[1] .. " / " .. wear_graphic_office_menu[2] .. "", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 60 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 20, 20, 150), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        if isCursorShowing() then
          dxDrawText("Wytrzyma\197\130o\197\155\196\135", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
          dxDrawText("Wytrzyma\197\130o\197\155\196\135", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
        end
      else
        dxDrawImage(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 140 / zoom, 25 / zoom, 25 / zoom, textures.heart_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 150 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(130, 110, 110, 200), false)
        if 250 * wear_graphic_office_menu[1] / wear_graphic_office_menu[2] / zoom > 6 / zoom then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 150 / zoom, 250 * wear_graphic_office_menu[1] / wear_graphic_office_menu[2] / zoom, 8 / zoom, 3 / zoom, tocolor(255, 12, 19, 230), false)
        end
        dxDrawText("" .. wear_graphic_office_menu[1] .. " / " .. wear_graphic_office_menu[2] .. "", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 60 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 20, 20, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      end
      if isMouseIn(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 220 / zoom, 280 / zoom, 25 / zoom) then
        dxDrawImage(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 220 / zoom, 25 / zoom, 25 / zoom, textures.power_icon, 0, 0, 0, tocolor(53, 152, 219, 150), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 230 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(24, 64, 92, 150), false)
        if 250 * power_graphic / powerSupply_menu[1] / zoom > 6 / zoom then
          if power_graphic > powerSupply_menu[1] then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 230 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(powerSupply_menu[2][1], powerSupply_menu[2][2], powerSupply_menu[2][3], 230), false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 230 / zoom, 250 * power_graphic / powerSupply_menu[1] / zoom, 8 / zoom, 3 / zoom, tocolor(powerSupply_menu[2][1], powerSupply_menu[2][2], powerSupply_menu[2][3], 230), false)
          end
        end
        dxDrawText("" .. power_graphic .. "W / " .. powerSupply_menu[1] .. "W", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 215 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(powerSupply_menu[2][1], powerSupply_menu[2][2], powerSupply_menu[2][3], 150), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        if isCursorShowing() then
          dxDrawText("Pob\195\179r pr\196\133du", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
          dxDrawText("Pob\195\179r pr\196\133du", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
        end
      else
        dxDrawImage(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 220 / zoom, 25 / zoom, 25 / zoom, textures.power_icon, 0, 0, 0, tocolor(53, 152, 219, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 230 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(24, 64, 92, 230), false)
        if 250 * power_graphic / powerSupply_menu[1] / zoom > 6 / zoom then
          if power_graphic > powerSupply_menu[1] then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 230 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(powerSupply_menu[2][1], powerSupply_menu[2][2], powerSupply_menu[2][3], 230), false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 230 / zoom, 250 * power_graphic / powerSupply_menu[1] / zoom, 8 / zoom, 3 / zoom, tocolor(powerSupply_menu[2][1], powerSupply_menu[2][2], powerSupply_menu[2][3], 230), false)
          end
        end
        dxDrawText("" .. power_graphic .. "W / " .. powerSupply_menu[1] .. "W", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 215 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(powerSupply_menu[2][1], powerSupply_menu[2][2], powerSupply_menu[2][3], 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      end
      dxDrawImage(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 70 / zoom, 170 / zoom, 170 / zoom, textures.cpu_fan, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 70 / zoom, 170 / zoom, 170 / zoom, textures.cpu_fan1, rot_Fan, 0, 0, tocolor(255, 255, 255, 255), false)
      if start then
        rot_Fan = rot_Fan + 10
        exports.ST_buttons:dxCreateButton("WY\197\129\196\132CZ", _UPVALUE0_.x + 360 / zoom, _UPVALUE0_.y + 330 / zoom, 240 / zoom, 60 / zoom, 255, 1)
        dxDrawText("STATUS: #00ff33W\197\129\196\132CZONE", _UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 350 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
        dxDrawText("CZAS PRACY: #ffbf00" .. secondsToClock(czasPracy) .. "", _UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      else
        rot_Fan = rot_Fan
        exports.ST_buttons:dxCreateButton("URUCHOM", _UPVALUE0_.x + 360 / zoom, _UPVALUE0_.y + 330 / zoom, 240 / zoom, 60 / zoom, 255, 1)
        dxDrawText("STATUS: #ff0000WY\197\129\196\132CZONE", _UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 350 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      end
      dxDrawText("\197\129\196\132CZNY ZAROBEK: #009c03" .. przecinek(_FORV_8_.zarobek_crypto) .. " #ffffffPLN\n\n\197\129\196\132CZNIE WYKOPANE KRYPTO: #ffbb00" .. ("%.2f"):format(_FORV_8_.all_crypto) .. [[


#ffffffPUNKTY: #ffbb00]] .. _FORV_8_.punkty_crypto .. "", _UPVALUE0_.x + 425 / zoom, _UPVALUE0_.y + 110 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      crypto = {}
      for _FORV_12_, _FORV_13_ in ipairs(table_stockExchange) do
        crypto = {
          {
            "Bitcoin",
            textures.bitcoin_icon,
            ("%.2f"):format(_FORV_8_.bitcoin),
            (math.floor(("%.2f"):format(_FORV_8_.bitcoin) * _FORV_13_.bitcoin))
          },
          {
            "Ethereum",
            textures.ethereum_icon,
            ("%.2f"):format(_FORV_8_.ethereum),
            (math.floor(("%.2f"):format(_FORV_8_.ethereum) * _FORV_13_.ethereum))
          },
          {
            "Litecoin",
            textures.litecoin_icon,
            ("%.2f"):format(_FORV_8_.litecoin),
            (math.floor(("%.2f"):format(_FORV_8_.litecoin) * _FORV_13_.litecoin))
          },
          {
            "Dogecoin",
            textures.doge_icon,
            ("%.2f"):format(_FORV_8_.dogecoin),
            (math.floor(("%.2f"):format(_FORV_8_.dogecoin) * _FORV_13_.dogecoin))
          },
          {
            "Ripple",
            textures.ripple_icon,
            ("%.2f"):format(_FORV_8_.ripple),
            (math.floor(("%.2f"):format(_FORV_8_.ripple) * _FORV_13_.ripple))
          }
        }
      end
      xY = 0
      for _FORV_12_, _FORV_13_ in ipairs(crypto) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 470 / zoom + 67 / zoom * (xY - 1), 510 / zoom, 62 / zoom, 15 / zoom, tocolor(25, 25, 25, 230), false)
        dxDrawImage(_UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 472 / zoom + 67 / zoom * (xY - 1), 58 / zoom, 58 / zoom, _FORV_13_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_13_[1], _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 801 / zoom + 134 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_13_[3], _UPVALUE0_.x, _UPVALUE0_.y + 777 / zoom + 134 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 365 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "right", "center", false, false, false, false, false)
        dxDrawText("#009c03" .. przecinek(_FORV_13_[4]) .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + 833 / zoom + 134 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 365 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
      end
      exports.ST_buttons:dxCreateButton("WYP\197\129A\196\134", _UPVALUE0_.x + 610 / zoom, _UPVALUE0_.y + 415 / zoom, 130 / zoom, 40 / zoom, 255, 1)
      if windows.tablet and isMouseIn(_UPVALUE0_.x + 610 / zoom, _UPVALUE0_.y + 415 / zoom, 130 / zoom, 40 / zoom) and isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("Koszt: 3,000 punkt\195\179w", cxs + 11 / zoom, cys - 25 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Koszt: #ffbf003,000 #ffffffpunkt\195\179w", cxs + 9 / zoom, cys - 27 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
      end
      dxDrawText(_FORV_8_.powerSupply, _UPVALUE0_.x + 775 / zoom, _UPVALUE0_.y + 780 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 517 / zoom, 154 / zoom, 154 / zoom, 25 / zoom, tocolor(255, 187, 0, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 772 / zoom, _UPVALUE0_.y + 519 / zoom, 150 / zoom, 150 / zoom, 25 / zoom, tocolor(25, 25, 25, 255), false)
      for _FORV_13_, _FORV_14_ in ipairs({
        {
          "SilentiumPC Elementum 350W",
          textures.powerSupply3_icon,
          350,
          math.floor(_FORV_8_.wear_power_office),
          3000
        },
        {
          "Corsair CX600 600W",
          textures.powerSupply2_icon,
          600,
          math.floor(_FORV_8_.wear_power_office),
          4000
        },
        {
          "Dark Power Pro P11 1000W",
          textures.powerSupply1_icon,
          1000,
          math.floor(_FORV_8_.wear_power_office),
          5000
        }
      }) do
        if _FORV_8_.powerSupply == _FORV_14_[1] then
          if isMouseIn(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 540 / zoom, 280 / zoom, 25 / zoom) then
            dxDrawImage(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 540 / zoom, 25 / zoom, 25 / zoom, textures.heart_icon, 0, 0, 0, tocolor(255, 0, 0, 150), false)
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 550 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(130, 110, 110, 150), false)
            if 250 * _FORV_14_[4] / _FORV_14_[5] / zoom > 6 / zoom then
              dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 550 / zoom, 250 * _FORV_14_[4] / _FORV_14_[5] / zoom, 8 / zoom, 3 / zoom, tocolor(255, 12, 12, 150), false)
            end
            dxDrawText("" .. _FORV_14_[4] .. " / " .. _FORV_14_[5] .. "", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 865 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 20, 20, 150), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
            if isCursorShowing() then
              dxDrawText("Wytrzyma\197\130o\197\155\196\135", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
              dxDrawText("Wytrzyma\197\130o\197\155\196\135", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
            end
          else
            dxDrawImage(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 540 / zoom, 25 / zoom, 25 / zoom, textures.heart_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 550 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(130, 110, 110, 200), false)
            if 250 * _FORV_14_[4] / _FORV_14_[5] / zoom > 6 / zoom then
              dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 550 / zoom, 250 * _FORV_14_[4] / _FORV_14_[5] / zoom, 8 / zoom, 3 / zoom, tocolor(255, 12, 19, 230), false)
            end
            dxDrawText("" .. _FORV_14_[4] .. " / " .. _FORV_14_[5] .. "", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 865 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 20, 20, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
          end
          if isMouseIn(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 620 / zoom, 280 / zoom, 25 / zoom) then
            dxDrawImage(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 620 / zoom, 25 / zoom, 25 / zoom, textures.power_icon, 0, 0, 0, tocolor(53, 152, 219, 150), false)
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 630 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(24, 64, 92, 150), false)
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 630 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(3, 152, 219, 230), false)
            dxDrawText("" .. _FORV_14_[3] .. "W", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 1020 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(3, 152, 219, 150), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
            if isCursorShowing() then
              dxDrawText("Generowana moc", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
              dxDrawText("Generowana moc", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
            end
          else
            dxDrawImage(_UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 620 / zoom, 25 / zoom, 25 / zoom, textures.power_icon, 0, 0, 0, tocolor(53, 152, 219, 255), false)
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 630 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(24, 64, 92, 230), false)
            dxDrawRoundedRectangle(_UPVALUE0_.x + 990 / zoom, _UPVALUE0_.y + 630 / zoom, 250 / zoom, 8 / zoom, 3 / zoom, tocolor(3, 152, 219, 230), false)
            dxDrawText("" .. _FORV_14_[3] .. "W", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 1020 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(3, 152, 219, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
          end
          dxDrawImage(_UPVALUE0_.x + 772 / zoom, _UPVALUE0_.y + 519 / zoom, 150 / zoom, 150 / zoom, _FORV_14_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      dxDrawRectangle(_UPVALUE0_.x + 845 / zoom, _UPVALUE0_.y + 670 / zoom, 2 / zoom, 55 / zoom, tocolor(255, 187, 0, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 845 / zoom, _UPVALUE0_.y + 725 / zoom, 185 / zoom, 2 / zoom, tocolor(255, 187, 0, 255), false)
      if isMouseIn(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 700 / zoom, 150 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 700 / zoom, 150 / zoom, 50 / zoom, 20 / zoom, tocolor(255, 187, 0, 200), false)
        dxDrawText("KOSZT: #00ff2250,000 #ffffffPLN", _UPVALUE0_.x + 1850 / zoom, _UPVALUE0_.y + 1155 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 200), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        dxDrawText("NAPRAW", _UPVALUE0_.x + 1880 / zoom, _UPVALUE0_.y + 1250 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 200), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "center", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 700 / zoom, 50 / zoom, 50 / zoom, textures.repair_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 700 / zoom, 150 / zoom, 50 / zoom, 20 / zoom, tocolor(255, 187, 0, 255), false)
        dxDrawText("NAPRAW", _UPVALUE0_.x + 1880 / zoom, _UPVALUE0_.y + 1250 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "center", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 700 / zoom, 50 / zoom, 50 / zoom, textures.repair_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
  end
  if windows.category == "KARTY" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 70 / zoom, 20 / zoom, tocolor(40, 40, 40, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 2 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawImage(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.graphic_card_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KARTY GRAFICZNE", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 127 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    dxDrawScrollBar(7, _UPVALUE0_.x + 1280 / zoom, _UPVALUE0_.y + 80 / zoom, 6 / zoom, 720 / zoom, mScroll, kScroll)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(graphic_card_table) do
      if _FORV_7_ >= kScroll and _FORV_7_ <= nScroll then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 77 / zoom + 147 / zoom * (xY - 1), 1045 / zoom, 140 / zoom, 20 / zoom, tocolor(35, 35, 35, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 82 / zoom + 147 / zoom * (xY - 1), 130 / zoom, 130 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
        dxDrawImage(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 87 / zoom + 147 / zoom * (xY - 1), 120 / zoom, 120 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        for _FORV_14_, _FORV_15_ in ipairs(table_statistics) do
          if _FORV_15_.graphic_office == "GeForce GTX 750" then
            levelGraphic = 1
          elseif _FORV_15_.graphic_office == "GeForce GTX 980 GAMING 4GB" then
            levelGraphic = 2
          elseif _FORV_15_.graphic_office == "GeForce GTX 1060 6GB" then
            levelGraphic = 3
          elseif _FORV_15_.graphic_office == "GeForce GTX 1660 SUPER OC 6GB" then
            levelGraphic = 4
          elseif _FORV_15_.graphic_office == "GeForce RTX 2070 SUPER GAMING 8GB" then
            levelGraphic = 5
          elseif _FORV_15_.graphic_office == "GeForce RTX 3070 Ti 8GB" then
            levelGraphic = 6
          elseif _FORV_15_.graphic_office == "GeForce RTX 4090 24GB" then
            levelGraphic = 7
          end
          if levelGraphic == _FORV_8_.level then
            dxDrawText("W posiadaniu #00ff00\226\156\148", _UPVALUE0_.x + 1110 / zoom, _UPVALUE0_.y + 105 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
          elseif tonumber((("%.2f"):format(_FORV_15_.punkty_crypto))) > _FORV_8_.crypto then
            exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 1090 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 160 / zoom, 60 / zoom, 255, 1)
          else
            dxDrawText("WYMAGANE PUNKTY: #ff1100" .. ("%.2f"):format(_FORV_15_.punkty_crypto) .. " #ffffff/ " .. _FORV_8_.crypto .. "", _UPVALUE0_.x, _UPVALUE0_.y + 105 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
          end
          dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 370 / zoom, _UPVALUE0_.y - 5 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
          if levelGraphic + 1 >= _FORV_8_.level then
            dxDrawImage(_UPVALUE0_.x + 365 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 30 / zoom, 30 / zoom, textures.padlock_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
            dxDrawText("#00ff22Odblokowane", _UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 72 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
          else
            dxDrawImage(_UPVALUE0_.x + 365 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 30 / zoom, 30 / zoom, textures.padlock_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
            dxDrawText("#ff1100Zablokowane", _UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 72 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
          end
          if getElementData(localPlayer, "player:moneyMNn") < _FORV_8_.cost then
            dxDrawImage(_UPVALUE0_.x + 365 / zoom, _UPVALUE0_.y + 170 / zoom + 147 / zoom * (xY - 1), 30 / zoom, 30 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
            dxDrawText("#ff1100" .. przecinek(_FORV_8_.cost) .. " #ffffffPLN", _UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 165 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
          else
            dxDrawImage(_UPVALUE0_.x + 365 / zoom, _UPVALUE0_.y + 170 / zoom + 147 / zoom * (xY - 1), 30 / zoom, 30 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
            dxDrawText("#00ff22" .. przecinek(_FORV_8_.cost) .. " #ffffffPLN", _UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 165 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
          end
        end
        if isMouseIn(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 110 / zoom + 147 / zoom * (xY - 1), 280 / zoom, 25 / zoom) then
          dxDrawImage(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 110 / zoom + 147 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.heart_icon, 0, 0, 0, tocolor(255, 0, 0, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 250 / zoom, 6 / zoom, 3 / zoom, tocolor(130, 110, 110, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 250 * _FORV_8_.heal / 3500 / zoom, 6 / zoom, 3 / zoom, tocolor(255, 12, 19, 150), false)
          dxDrawText("" .. _FORV_8_.heal .. "", _UPVALUE0_.x + 1350 / zoom, _UPVALUE0_.y + 10 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 20, 20, 150), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
          if isCursorShowing() then
            dxDrawText("Wytrzyma\197\130o\197\155\196\135", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
            dxDrawText("Wytrzyma\197\130o\197\155\196\135", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
          end
        else
          dxDrawImage(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 110 / zoom + 147 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.heart_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 250 / zoom, 6 / zoom, 3 / zoom, tocolor(130, 110, 110, 200), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 250 * _FORV_8_.heal / 3500 / zoom, 6 / zoom, 3 / zoom, tocolor(255, 12, 19, 230), false)
          dxDrawText("" .. _FORV_8_.heal .. "", _UPVALUE0_.x + 1350 / zoom, _UPVALUE0_.y + 10 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 20, 20, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        end
        if isMouseIn(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 175 / zoom + 147 / zoom * (xY - 1), 280 / zoom, 25 / zoom) then
          dxDrawImage(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 175 / zoom + 147 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.power_icon, 0, 0, 0, tocolor(53, 152, 219, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 187 / zoom + 147 / zoom * (xY - 1), 250 / zoom, 6 / zoom, 3 / zoom, tocolor(24, 64, 92, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 187 / zoom + 147 / zoom * (xY - 1), 250 * _FORV_8_.watt / 1000 / zoom, 6 / zoom, 3 / zoom, tocolor(3, 152, 219, 150), false)
          dxDrawText("" .. _FORV_8_.watt .. "W", _UPVALUE0_.x + 1350 / zoom, _UPVALUE0_.y + 145 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(3, 152, 219, 150), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
          if isCursorShowing() then
            dxDrawText("Maksymalny pob\195\179r pr\196\133du", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
            dxDrawText("Maksymalny pob\195\179r pr\196\133du", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
          end
        else
          dxDrawImage(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 175 / zoom + 147 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.power_icon, 0, 0, 0, tocolor(53, 152, 219, 255), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 187 / zoom + 147 / zoom * (xY - 1), 250 / zoom, 6 / zoom, 3 / zoom, tocolor(24, 64, 92, 230), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 187 / zoom + 147 / zoom * (xY - 1), 250 * _FORV_8_.watt / 1000 / zoom, 6 / zoom, 3 / zoom, tocolor(3, 152, 219, 230), false)
          dxDrawText("" .. _FORV_8_.watt .. "W", _UPVALUE0_.x + 1350 / zoom, _UPVALUE0_.y + 145 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(3, 152, 219, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        end
      end
    end
  end
  if windows.category == "ZASILACZE" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 70 / zoom, 20 / zoom, tocolor(40, 40, 40, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 2 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawImage(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.powerSupply_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ZASILACZE", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 127 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(powerSupply_table) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 77 / zoom + 147 / zoom * (xY - 1), 1065 / zoom, 140 / zoom, 20 / zoom, tocolor(35, 35, 35, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 82 / zoom + 147 / zoom * (xY - 1), 130 / zoom, 130 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
      dxDrawImage(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 87 / zoom + 147 / zoom * (xY - 1), 120 / zoom, 120 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      for _FORV_14_, _FORV_15_ in ipairs(table_statistics) do
        if _FORV_15_.powerSupply == "SilentiumPC Elementum 350W" then
          levelPowerSumply = 1
        elseif _FORV_15_.powerSupply == "Corsair CX600 600W" then
          levelPowerSumply = 2
        elseif _FORV_15_.powerSupply == "Dark Power Pro P11 1000W" then
          levelPowerSumply = 3
        end
        if levelPowerSumply == _FORV_8_.level then
          dxDrawText("W posiadaniu #00ff00\226\156\148", _UPVALUE0_.x + 1110 / zoom, _UPVALUE0_.y + 105 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 1110 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 160 / zoom, 60 / zoom, 255, 1)
        end
        dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 370 / zoom, _UPVALUE0_.y - 5 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
        if levelPowerSumply + 1 >= _FORV_8_.level then
          dxDrawImage(_UPVALUE0_.x + 365 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 30 / zoom, 30 / zoom, textures.padlock_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
          dxDrawText("#00ff22Odblokowane", _UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 72 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
        else
          dxDrawImage(_UPVALUE0_.x + 365 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 30 / zoom, 30 / zoom, textures.padlock_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
          dxDrawText("#ff1100Zablokowane", _UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 72 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
        end
        if getElementData(localPlayer, "player:moneyMNn") < _FORV_8_.cost then
          dxDrawImage(_UPVALUE0_.x + 365 / zoom, _UPVALUE0_.y + 170 / zoom + 147 / zoom * (xY - 1), 30 / zoom, 30 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
          dxDrawText("#ff1100" .. przecinek(_FORV_8_.cost) .. " #ffffffPLN", _UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 165 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
        else
          dxDrawImage(_UPVALUE0_.x + 365 / zoom, _UPVALUE0_.y + 170 / zoom + 147 / zoom * (xY - 1), 30 / zoom, 30 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
          dxDrawText("#00ff22" .. przecinek(_FORV_8_.cost) .. " #ffffffPLN", _UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 165 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
        end
        if isMouseIn(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 110 / zoom + 147 / zoom * (xY - 1), 280 / zoom, 25 / zoom) then
          dxDrawImage(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 110 / zoom + 147 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.heart_icon, 0, 0, 0, tocolor(255, 0, 0, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 250 / zoom, 6 / zoom, 3 / zoom, tocolor(130, 110, 110, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 250 * _FORV_8_.heal / 5000 / zoom, 6 / zoom, 3 / zoom, tocolor(255, 12, 19, 150), false)
          dxDrawText("" .. _FORV_8_.heal .. "", _UPVALUE0_.x + 1350 / zoom, _UPVALUE0_.y + 10 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 20, 20, 150), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
          if isCursorShowing() then
            dxDrawText("Wytrzyma\197\130o\197\155\196\135", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
            dxDrawText("Wytrzyma\197\130o\197\155\196\135", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
          end
        else
          dxDrawImage(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 110 / zoom + 147 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.heart_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 250 / zoom, 6 / zoom, 3 / zoom, tocolor(130, 110, 110, 200), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (xY - 1), 250 * _FORV_8_.heal / 5000 / zoom, 6 / zoom, 3 / zoom, tocolor(255, 12, 19, 230), false)
          dxDrawText("" .. _FORV_8_.heal .. "", _UPVALUE0_.x + 1350 / zoom, _UPVALUE0_.y + 10 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 20, 20, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        end
        if isMouseIn(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 175 / zoom + 147 / zoom * (xY - 1), 280 / zoom, 25 / zoom) then
          dxDrawImage(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 175 / zoom + 147 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.power_icon, 0, 0, 0, tocolor(53, 152, 219, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 187 / zoom + 147 / zoom * (xY - 1), 250 / zoom, 6 / zoom, 3 / zoom, tocolor(24, 64, 92, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 187 / zoom + 147 / zoom * (xY - 1), 250 * _FORV_8_.watt / 1000 / zoom, 6 / zoom, 3 / zoom, tocolor(3, 152, 219, 150), false)
          dxDrawText("" .. _FORV_8_.watt .. "W", _UPVALUE0_.x + 1350 / zoom, _UPVALUE0_.y + 145 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(3, 152, 219, 150), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
          if isCursorShowing() then
            dxDrawText("Moc zasilacza", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
            dxDrawText("Moc zasilacza", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
          end
        else
          dxDrawImage(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 175 / zoom + 147 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.power_icon, 0, 0, 0, tocolor(53, 152, 219, 255), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 187 / zoom + 147 / zoom * (xY - 1), 250 / zoom, 6 / zoom, 3 / zoom, tocolor(24, 64, 92, 230), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 187 / zoom + 147 / zoom * (xY - 1), 250 * _FORV_8_.watt / 1000 / zoom, 6 / zoom, 3 / zoom, tocolor(3, 152, 219, 230), false)
          dxDrawText("" .. _FORV_8_.watt .. "W", _UPVALUE0_.x + 1350 / zoom, _UPVALUE0_.y + 145 / zoom + 294 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(3, 152, 219, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        end
      end
    end
  end
  if windows.category == "GIE\197\129DA" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 224 / zoom, _UPVALUE0_.y + 7 / zoom, 681 / zoom, 582 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 8 / zoom, 679 / zoom, 580 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 245 / zoom, _UPVALUE0_.y + 68 / zoom, 642 / zoom, 2 / zoom, 1 / zoom, tocolor(50, 50, 50, 180), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 912 / zoom, _UPVALUE0_.y + 7 / zoom, 378 / zoom, 286 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 913 / zoom, _UPVALUE0_.y + 8 / zoom, 376 / zoom, 284 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
    dxDrawText("CENY KRYPTO NA GIE\197\129DZIE", _UPVALUE0_.x + 923 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 923 / zoom, _UPVALUE0_.y + 58 / zoom, 357 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 912 / zoom, _UPVALUE0_.y + 302 / zoom, 378 / zoom, 286 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 913 / zoom, _UPVALUE0_.y + 303 / zoom, 376 / zoom, 284 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
    dxDrawText("TWOJE KRYPTOWALUTY", _UPVALUE0_.x + 923 / zoom, _UPVALUE0_.y + 465 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 923 / zoom, _UPVALUE0_.y + 353 / zoom, 357 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 224 / zoom, _UPVALUE0_.y + 596 / zoom, 1067 / zoom, 210 / zoom, 20 / zoom, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 597 / zoom, 1065 / zoom, 208 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
    dxDrawImage(_UPVALUE0_.x + 320 / zoom, _UPVALUE0_.y + 11 / zoom, 55 / zoom, 55 / zoom, textures.bitcoin_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if self.sort[1] then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 317.5 / zoom, _UPVALUE0_.y + 68 / zoom, 60 / zoom, 2 / zoom, 1 / zoom, tocolor(247, 147, 26, 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 430 / zoom, _UPVALUE0_.y + 12 / zoom, 50 / zoom, 50 / zoom, textures.ethereum_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if self.sort[2] then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 427.5 / zoom, _UPVALUE0_.y + 68 / zoom, 60 / zoom, 2 / zoom, 1 / zoom, tocolor(96, 96, 96, 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 541 / zoom, _UPVALUE0_.y + 11 / zoom, 55 / zoom, 55 / zoom, textures.litecoin_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if self.sort[3] then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 537.5 / zoom, _UPVALUE0_.y + 68 / zoom, 60 / zoom, 2 / zoom, 1 / zoom, tocolor(189, 201, 227, 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 11 / zoom, 55 / zoom, 55 / zoom, textures.doge_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if self.sort[4] then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 647.5 / zoom, _UPVALUE0_.y + 68 / zoom, 60 / zoom, 2 / zoom, 1 / zoom, tocolor(227, 204, 130, 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 760 / zoom, _UPVALUE0_.y + 11 / zoom, 55 / zoom, 55 / zoom, textures.ripple_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if self.sort[5] then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 757.5 / zoom, _UPVALUE0_.y + 68 / zoom, 60 / zoom, 2 / zoom, 1 / zoom, tocolor(0, 0, 0, 255), false)
    end
    crypto = {}
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      for _FORV_12_, _FORV_13_ in ipairs(table_stockExchange) do
        crypto = {
          {
            "#f7931aBitcoin",
            textures.bitcoin_icon,
            tonumber(_FORV_8_.bitcoin1),
            tonumber(math.floor(("%.2f"):format(_FORV_8_.bitcoin1) * _FORV_13_.bitcoin)),
            _FORV_13_.bitcoin,
            bitcoin_cost_editbox,
            "#f7931aBTC"
          },
          {
            "#606060Ethereum",
            textures.ethereum_icon,
            tonumber(_FORV_8_.ether1),
            tonumber(math.floor(("%.2f"):format(_FORV_8_.ether1) * _FORV_13_.ethereum)),
            _FORV_13_.ethereum,
            ether_cost_editbox,
            "#606060ETH"
          },
          {
            "#bdc9e3Litecoin",
            textures.litecoin_icon,
            tonumber(_FORV_8_.litecoin1),
            tonumber(math.floor(("%.2f"):format(_FORV_8_.litecoin1) * _FORV_13_.litecoin)),
            _FORV_13_.litecoin,
            litecoin_cost_editbox,
            "#bdc9e3LTC"
          },
          {
            "#e3cc82Dogecoin",
            textures.doge_icon,
            tonumber(_FORV_8_.dogecoin1),
            tonumber(math.floor(("%.2f"):format(_FORV_8_.dogecoin1) * _FORV_13_.dogecoin)),
            _FORV_13_.dogecoin,
            dogecoin_cost_editbox,
            "#e3cc82DOGE"
          },
          {
            "#000000Ripple",
            textures.ripple_icon,
            tonumber(_FORV_8_.ripple1),
            tonumber(math.floor(("%.2f"):format(_FORV_8_.ripple1) * _FORV_13_.ripple)),
            _FORV_13_.ripple,
            ripple_cost_editbox,
            "#000000XRP"
          }
        }
      end
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(crypto) do
      xY = xY + 1
      dxDrawImage(_UPVALUE0_.x + 922 / zoom, _UPVALUE0_.y + 65 / zoom + 45 / zoom * (xY - 1), 40 / zoom, 40 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. _FORV_8_[1] .. "#ffffff:  #009c03" .. tonumber(("%.4f"):format(_FORV_8_[5])) .. " #ffffffPLN", _UPVALUE0_.x + 965 / zoom, _UPVALUE0_.y - 30 / zoom + 90 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(crypto) do
      xY = xY + 1
      dxDrawImage(_UPVALUE0_.x + 922 / zoom, _UPVALUE0_.y + 362 / zoom + 45 / zoom * (xY - 1), 40 / zoom, 40 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      bugMoneyFix = _FORV_8_[3]
      bugMoneyFix1 = _FORV_8_[4]
      if tonumber(("%.4f"):format(_FORV_8_[3])) <= 0 then
        bugMoneyFix = 0
        bugMoneyFix1 = 0
      end
      dxDrawText("" .. _FORV_8_[1] .. "#ffffff:  " .. tonumber(("%.4f"):format(bugMoneyFix)) .. "   ( #00ad23" .. przecinek(bugMoneyFix1) .. " #ffffffPLN )", _UPVALUE0_.x + 965 / zoom, _UPVALUE0_.y + 565 / zoom + 90 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    end
    xX = 0
    for _FORV_7_, _FORV_8_ in ipairs(crypto) do
      xX = xX + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom + 122 / zoom * (xX - 1), _UPVALUE0_.y + 605 / zoom, 117 / zoom, 195 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
      dxDrawImage(_UPVALUE0_.x + 261 / zoom + 122 / zoom * (xX - 1), _UPVALUE0_.y + 610 / zoom, 55 / zoom, 55 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_8_[7], _UPVALUE0_.x + 218 / zoom + 244 / zoom * (xX - 1), _UPVALUE0_.y + 1160 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 235 / zoom + 122 / zoom * (xX - 1), _UPVALUE0_.y + 700 / zoom, 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(tonumber((("%.2f"):format(_FORV_8_[6]))), _UPVALUE0_.x + 218 / zoom + 244 / zoom * (xX - 1), _UPVALUE0_.y + 1220 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 325 / zoom + 122 / zoom * (xX - 1), _UPVALUE0_.y + 700 / zoom, 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      exports.ST_buttons:dxCreateButton("MAX", _UPVALUE0_.x + 239 / zoom + 122 / zoom * (xX - 1), _UPVALUE0_.y + 740 / zoom, 100 / zoom, 40 / zoom, 255, 1)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(crypto) do
      xY = xY + 1
      dxDrawImage(_UPVALUE0_.x + 840 / zoom, _UPVALUE0_.y + 605 / zoom + 40 / zoom * (xY - 1), 35 / zoom, 35 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. _FORV_8_[7] .. "#ffffff:  " .. tonumber(("%.4f"):format(_FORV_8_[6])) .. "   ( #00ad23" .. przecinek(tonumber(math.floor(("%.2f"):format(_FORV_8_[6]) * _FORV_8_[5]))) .. " #ffffffPLN )", _UPVALUE0_.x + 880 / zoom, _UPVALUE0_.y + 1045 / zoom + 80 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    end
    for _FORV_7_, _FORV_8_ in ipairs(table_stockExchange) do
      dxDrawText("#00ad23" .. przecinek(tonumber(math.floor(bitcoin_cost_editbox * _FORV_8_.bitcoin) + math.floor(ether_cost_editbox * _FORV_8_.ethereum) + math.floor(litecoin_cost_editbox * _FORV_8_.litecoin) + math.floor(dogecoin_cost_editbox * _FORV_8_.dogecoin) + math.floor(ripple_cost_editbox * _FORV_8_.ripple))) .. " #ffffffPLN", _UPVALUE0_.x + 2070 / zoom, _UPVALUE0_.y + 1300 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("SPRZEDAJ", _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 675 / zoom, 130 / zoom, 50 / zoom, 255, 1)
  end
  if windows.category == "ULEPSZENIA" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 70 / zoom, 20 / zoom, tocolor(40, 40, 40, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 2 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawImage(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ULEPSZENIA", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 127 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 229 / zoom, _UPVALUE0_.y + 79 / zoom + 122 / zoom * (xY - 1), 1057 / zoom, 112 / zoom, 20 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 80 / zoom + 122 / zoom * (xY - 1), 1055 / zoom, 110 / zoom, 20 / zoom, tocolor(30, 30, 30, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 85 / zoom + 122 / zoom * (xY - 1), 102 / zoom, 102 / zoom, 20 / zoom, tocolor(25, 25, 25, 255), false)
      dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 345 / zoom, _UPVALUE0_.y - 5 / zoom + 244 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 345 / zoom, _UPVALUE0_.y + 95 / zoom + 244 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText([[
KOSZT:
#00ad23]] .. przecinek(_FORV_8_.cost) .. " #e6e6e6PLN", _UPVALUE0_.x + 1450 / zoom, _UPVALUE0_.y + 30 / zoom + 244 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
      dxDrawText("PUNKTY: #ffbb00" .. _FORV_8_.punkty .. "", _UPVALUE0_.x + 1450 / zoom, _UPVALUE0_.y + 135 / zoom + 244 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 245 / zoom, _UPVALUE0_.y + 95 / zoom + 122 / zoom * (xY - 1), 80 / zoom, 80 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if _FORV_8_.status == 0 then
        exports.ST_buttons:dxCreateButton("Zakup", _UPVALUE0_.x + 1070 / zoom, _UPVALUE0_.y + 105 / zoom + 122 / zoom * (xY - 1), 180 / zoom, 60 / zoom, 255, 1)
      elseif _FORV_8_.status == 1 then
        dxDrawText("Zakupiono #00ff00\226\156\148", _UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom + 244 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      elseif _FORV_8_.status == 2 then
        dxDrawText("Niedost\196\153pne #ff0000\226\156\150", _UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom + 244 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
    end
  end
end
function render()
  if getElementData(localPlayer, "player:crypto_on") then
    if getTickCount() - tick1 > 1000 then
      tick1 = getTickCount()
      czasPracy = czasPracy + 1
    end
    if 1000 < getTickCount() - tick then
      tick = getTickCount()
      loadingTime = loadingTime - 1
      for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
        if start then
          if _FORV_4_.graphic_office == "GeForce GTX 750" then
            power_graphic = math.random(230, 300)
          elseif _FORV_4_.graphic_office == "GeForce GTX 980 GAMING 4GB" then
            power_graphic = math.random(300, 360)
          elseif _FORV_4_.graphic_office == "GeForce GTX 1060 6GB" then
            power_graphic = math.random(450, 500)
          elseif _FORV_4_.graphic_office == "GeForce GTX 1660 SUPER OC 6GB" then
            power_graphic = math.random(500, 610)
          elseif _FORV_4_.graphic_office == "GeForce RTX 2070 SUPER GAMING 8GB" then
            power_graphic = math.random(600, 650)
          elseif _FORV_4_.graphic_office == "GeForce RTX 3070 Ti 8GB" then
            power_graphic = math.random(670, 790)
          elseif _FORV_4_.graphic_office == "GeForce RTX 4090 24GB" then
            power_graphic = math.random(800, 950)
          end
          if _FORV_4_.powerSupply == "SilentiumPC Elementum 350W" then
            powerSupply = 350
          elseif _FORV_4_.powerSupply == "Corsair CX600 600W" then
            powerSupply = 600
          elseif _FORV_4_.powerSupply == "Dark Power Pro P11 1000W" then
            powerSupply = 1000
          end
          if power_graphic > powerSupply then
            if tonumber(_FORV_4_.wear_graphic_office) <= 0 then
              removeEventHandler("onClientRender", root, render)
              start = false
              setElementData(localPlayer, "player:crypto_on", false)
              return
            end
            triggerServerEvent("ev", resourceRoot, "damageGraphic", localPlayer)
            triggerServerEvent("ev", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
          end
        end
      end
    end
    if 1 > loadingTime then
      loadingTime = 30
      if start then
        triggerServerEvent("ev", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
        for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
          if _FORV_4_.graphic_office == "GeForce GTX 750" then
          elseif _FORV_4_.graphic_office == "GeForce GTX 980 GAMING 4GB" then
          elseif _FORV_4_.graphic_office == "GeForce GTX 1060 6GB" then
          elseif _FORV_4_.graphic_office == "GeForce GTX 1660 SUPER OC 6GB" then
          elseif _FORV_4_.graphic_office == "GeForce RTX 2070 SUPER GAMING 8GB" then
          elseif _FORV_4_.graphic_office == "GeForce RTX 3070 Ti 8GB" then
          elseif _FORV_4_.graphic_office == "GeForce RTX 4090 24GB" then
          end
          if tonumber(_FORV_4_.bitcoin) > 5 then
            removeEventHandler("onClientRender", root, render)
            start = false
            setElementData(localPlayer, "player:crypto_on", false)
            return
          end
          if tonumber(_FORV_4_.wear_graphic_office) < 0 then
            removeEventHandler("onClientRender", root, render)
            start = false
            setElementData(localPlayer, "player:crypto_on", false)
            return
          end
          if 0 > tonumber(_FORV_4_.wear_power_office) then
            removeEventHandler("onClientRender", root, render)
            start = false
            setElementData(localPlayer, "player:crypto_on", false)
            return
          end
          triggerServerEvent("ev", resourceRoot, "addCrypto", localPlayer, 0 + math.random(1, 2) * 1.3 / 1000 + math.random(1, 2) * 1.6 / 1000 + math.random(1, 2) * 1.9 / 1000 + math.random(1, 2) * 2.2 / 1000 + math.random(1, 2) * 2.4 / 1000 + math.random(1, 2) * 2.6 / 1000 + math.random(1, 2) * 2.8 / 1000, 0 + math.random(18, 24) * 1.3 / 1000 + math.random(18, 24) * 1.6 / 1000 + math.random(18, 24) * 1.9 / 1000 + math.random(18, 24) * 2.2 / 1000 + math.random(18, 24) * 2.4 / 1000 + math.random(18, 24) * 2.6 / 1000 + math.random(18, 24) * 2.8 / 1000, 0 + math.random(380, 460) * 1.3 / 1000 + math.random(380, 460) * 1.6 / 1000 + math.random(380, 460) * 1.9 / 1000 + math.random(380, 460) * 2.2 / 1000 + math.random(380, 460) * 2.4 / 1000 + math.random(380, 460) * 2.6 / 1000 + math.random(380, 460) * 2.8 / 1000, 0 + math.random(230000, 300000) * 1.3 / 1000 + math.random(230000, 300000) * 1.6 / 1000 + math.random(230000, 300000) * 1.9 / 1000 + math.random(230000, 300000) * 2.2 / 1000 + math.random(230000, 300000) * 2.4 / 1000 + math.random(230000, 300000) * 2.6 / 1000 + math.random(230000, 300000) * 2.8 / 1000, 0 + math.random(58000, 67000) * 1.3 / 1000 + math.random(58000, 67000) * 1.6 / 1000 + math.random(58000, 67000) * 1.9 / 1000 + math.random(58000, 67000) * 2.2 / 1000 + math.random(58000, 67000) * 2.4 / 1000 + math.random(58000, 67000) * 2.6 / 1000 + math.random(58000, 67000) * 2.8 / 1000)
          triggerServerEvent("ev", resourceRoot, "showStockExchange", localPlayer)
        end
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true then
      for _FORV_6_, _FORV_7_ in ipairs(category) do
        if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom * (0 + 1 - 1), 210 / zoom, 70 / zoom) and windows.background == true then
          if windows.category == _FORV_7_.text then
            return
          end
          windows.category = _FORV_7_.text
          removeEventHandler("onClientRender", root, renderChart)
          removeEventHandler("onClientRestore", root, cacheChartDrawing)
          if windows.category == "GIE\197\129DA" then
            bitcoin_cost_editbox = 0
            ether_cost_editbox = 0
            litecoin_cost_editbox = 0
            dogecoin_cost_editbox = 0
            ripple_cost_editbox = 0
            self.sort = {
              true,
              true,
              true,
              true,
              true
            }
            setTimer(function()
              cacheChartData(self.sort)
              addEventHandler("onClientRender", root, renderChart)
              addEventHandler("onClientRestore", root, cacheChartDrawing)
            end, 100, 1)
          elseif windows.category == "ULEPSZENIA" then
            for _FORV_13_, _FORV_14_ in ipairs(table_statistics) do
              upgrades = {
                {
                  name = "Tablet",
                  description = "Tablet umo\197\188liwia w\197\130\196\133czanie koparki, sprawdzanie cen\nna gie\197\130dzie oraz wiele innych",
                  icon = textures.tablet_icon,
                  status = _FORV_14_.tablet_crypto,
                  cost = 7500000,
                  punkty = 3000,
                  nameDatabase = "tablet_crypto"
                }
              }
            end
          end
        end
      end
    end
    if windows.category == "ULEPSZENIA" then
      for _FORV_6_, _FORV_7_ in ipairs(upgrades) do
        if isMouseIn(_UPVALUE0_.x + 1070 / zoom, _UPVALUE0_.y + 105 / zoom + 122 / zoom * (0 + 1 - 1), 180 / zoom, 60 / zoom) and (_FORV_7_.status == "0" or _FORV_7_.status == 0) then
          triggerServerEvent("ev", resourceRoot, "upgrade", localPlayer, _FORV_7_.nameDatabase, _FORV_7_.cost, _FORV_7_.punkty, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if windows.category == "KARTY" then
      for _FORV_6_, _FORV_7_ in ipairs(graphic_card_table) do
        if _FORV_6_ >= kScroll and _FORV_6_ <= nScroll and isMouseIn(_UPVALUE0_.x + 1090 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (0 + 1 - 1), 160 / zoom, 60 / zoom) and windows.category == "KARTY" then
          if blockClick then
            return
          end
          for _FORV_12_, _FORV_13_ in ipairs(table_statistics) do
            if _FORV_13_.graphic_office == _FORV_7_.name then
              return
            end
            if _FORV_13_.graphic_office == "GeForce GTX 750" then
              levelGraphic = 1
            elseif _FORV_13_.graphic_office == "GeForce GTX 980 GAMING 4GB" then
              levelGraphic = 2
            elseif _FORV_13_.graphic_office == "GeForce GTX 1060 6GB" then
              levelGraphic = 3
            elseif _FORV_13_.graphic_office == "GeForce GTX 1660 SUPER OC 6GB" then
              levelGraphic = 4
            elseif _FORV_13_.graphic_office == "GeForce RTX 2070 SUPER GAMING 8GB" then
              levelGraphic = 5
            elseif _FORV_13_.graphic_office == "GeForce RTX 3070 Ti 8GB" then
              levelGraphic = 6
            elseif _FORV_13_.graphic_office == "GeForce RTX 4090 24GB" then
              levelGraphic = 7
            end
          end
          if levelGraphic + 1 >= _FORV_7_.level then
            select_card.canBuy = true
          else
            select_card.canBuy = false
          end
          if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
            return
          end
          for _FORV_12_, _FORV_13_ in ipairs(table_statistics) do
            if tonumber((("%.2f"):format(_FORV_13_.punkty_crypto))) < _FORV_7_.crypto then
              return
            end
          end
          if not select_card.canBuy then
            exports.st_gui:showPlayerNotification("Karty graficzne musisz kupowa\196\135 po kolei", "error")
            return
          end
          blockClick = true
          triggerServerEvent("ev", resourceRoot, "buy_card", localPlayer, _FORV_7_.name, _FORV_7_.cost, _FORV_7_.heal, _FORV_7_.crypto)
        end
      end
    end
    if windows.category == "ZASILACZE" then
      for _FORV_6_, _FORV_7_ in ipairs(powerSupply_table) do
        if isMouseIn(_UPVALUE0_.x + 1110 / zoom, _UPVALUE0_.y + 120 / zoom + 147 / zoom * (0 + 1 - 1), 160 / zoom, 60 / zoom) and windows.category == "ZASILACZE" then
          if blockClick then
            return
          end
          for _FORV_12_, _FORV_13_ in ipairs(table_statistics) do
            if _FORV_13_.powerSupply == _FORV_7_.name then
              return
            end
            if _FORV_13_.powerSupply == "SilentiumPC Elementum 350W" then
              levelPowerSumply = 1
            elseif _FORV_13_.powerSupply == "Corsair CX600 600W" then
              levelPowerSumply = 2
            elseif _FORV_13_.powerSupply == "Dark Power Pro P11 1000W" then
              levelPowerSumply = 3
            end
          end
          if levelPowerSumply + 1 >= _FORV_7_.level then
            select_powerSupply.canBuy = true
          else
            select_powerSupply.canBuy = false
          end
          if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
            return
          end
          if not select_powerSupply.canBuy then
            exports.st_gui:showPlayerNotification("Zasilacze musisz kupowa\196\135 po kolei", "error")
            return
          end
          blockClick = true
          triggerServerEvent("ev", resourceRoot, "buy_powerSupply", localPlayer, _FORV_7_.name, _FORV_7_.cost)
        end
      end
    end
    if windows.category == "GIE\197\129DA" then
      xX = 0
      for _FORV_5_, _FORV_6_ in ipairs(crypto) do
        xX = xX + 1
        if isMouseIn(_UPVALUE0_.x + 235 / zoom + 122 / zoom * (xX - 1), _UPVALUE0_.y + 700 / zoom, 20 / zoom, 20 / zoom) and windows.category == "GIE\197\129DA" then
          if windows.tablet then
            return
          end
          if _FORV_6_[1] == "#f7931aBitcoin" then
            if 0 >= tonumber(bitcoin_cost_editbox) then
              bitcoin_cost_editbox = 0
              return
            end
            bitcoin_cost_editbox = bitcoin_cost_editbox - 0.1
          elseif _FORV_6_[1] == "#606060Ethereum" then
            if 0 >= tonumber(ether_cost_editbox) then
              ether_cost_editbox = 0
              return
            end
            ether_cost_editbox = ether_cost_editbox - 0.1
          elseif _FORV_6_[1] == "#bdc9e3Litecoin" then
            if 0 >= tonumber(litecoin_cost_editbox) then
              litecoin_cost_editbox = 0
              return
            end
            litecoin_cost_editbox = litecoin_cost_editbox - 0.1
          elseif _FORV_6_[1] == "#e3cc82Dogecoin" then
            if 0 >= tonumber(dogecoin_cost_editbox) then
              dogecoin_cost_editbox = 0
              return
            end
            dogecoin_cost_editbox = dogecoin_cost_editbox - 0.1
          elseif _FORV_6_[1] == "#000000Ripple" then
            if 0 >= tonumber(ripple_cost_editbox) then
              ripple_cost_editbox = 0
              return
            end
            ripple_cost_editbox = ripple_cost_editbox - 0.1
          end
        elseif isMouseIn(_UPVALUE0_.x + 325 / zoom + 122 / zoom * (xX - 1), _UPVALUE0_.y + 700 / zoom, 20 / zoom, 20 / zoom) and windows.category == "GIE\197\129DA" then
          if windows.tablet then
            return
          end
          if _FORV_6_[1] == "#f7931aBitcoin" then
            bitcoin_cost_editbox = bitcoin_cost_editbox + 0.1
          elseif _FORV_6_[1] == "#606060Ethereum" then
            ether_cost_editbox = ether_cost_editbox + 0.1
          elseif _FORV_6_[1] == "#bdc9e3Litecoin" then
            litecoin_cost_editbox = litecoin_cost_editbox + 0.1
          elseif _FORV_6_[1] == "#e3cc82Dogecoin" then
            dogecoin_cost_editbox = dogecoin_cost_editbox + 0.1
          elseif _FORV_6_[1] == "#000000Ripple" then
            ripple_cost_editbox = ripple_cost_editbox + 0.1
          end
        elseif isMouseIn(_UPVALUE0_.x + 239 / zoom + 122 / zoom * (xX - 1), _UPVALUE0_.y + 740 / zoom, 100 / zoom, 40 / zoom) and windows.category == "GIE\197\129DA" then
          if windows.tablet then
            return
          end
          for _FORV_11_, _FORV_12_ in ipairs(table_statistics) do
            if _FORV_6_[1] == "#f7931aBitcoin" then
              if 0 <= tonumber(_FORV_12_.bitcoin1) then
                bitcoin_cost_editbox = tonumber(("%.4f"):format(_FORV_12_.bitcoin1))
              end
            elseif _FORV_6_[1] == "#606060Ethereum" then
              if 0 <= tonumber(_FORV_12_.ether1) then
                ether_cost_editbox = tonumber(("%.4f"):format(_FORV_12_.ether1))
              end
            elseif _FORV_6_[1] == "#bdc9e3Litecoin" then
              if 0 <= tonumber(_FORV_12_.litecoin1) then
                litecoin_cost_editbox = tonumber(("%.4f"):format(_FORV_12_.litecoin1))
              end
            elseif _FORV_6_[1] == "#e3cc82Dogecoin" then
              if 0 <= tonumber(_FORV_12_.dogecoin1) then
                dogecoin_cost_editbox = tonumber(("%.4f"):format(_FORV_12_.dogecoin1))
              end
            elseif _FORV_6_[1] == "#000000Ripple" and 0 <= tonumber(_FORV_12_.ripple1) then
              ripple_cost_editbox = tonumber(("%.4f"):format(_FORV_12_.ripple1))
            end
          end
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 470 / zoom, 180 / zoom, 61 / zoom) and windows.category == "WEJ\197\154CIE" then
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.buy_office == 1 then
          fadeCamera(false)
          setTimer(function()
            triggerServerEvent("ev", resourceRoot, "setElementPos", localPlayer, {
              3535.83,
              -20.04,
              954.5,
              2
            })
          end, 1500, 1)
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          showCursor(false)
          windows.category = false
          setTimer(function()
            fadeCamera(true)
          end, 3000, 1)
          for _FORV_10_, _FORV_11_ in pairs(textures) do
            if isElement(_FORV_11_) then
              destroyElement(_FORV_11_)
            end
          end
          textures = {}
        else
          if blockClick then
            return
          end
          if 20 <= getElementData(localPlayer, "player:lvl") then
            if getElementData(localPlayer, "player:moneyMNn") < 4000000 then
              exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
              return
            end
            blockClick = true
            triggerServerEvent("ev", resourceRoot, "buy", localPlayer)
            exports.st_gui:showPlayerNotification("Pomy\197\155lnie zakupiono kopalnie kryptowalut.", "success")
          else
            exports.st_gui:showPlayerNotification("Do zakupu kopalni wymagany jest 20 level postaci", "error")
          end
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 839 / zoom, _UPVALUE0_.y + 258 / zoom, 27 / zoom, 27 / zoom) and windows.category == "WEJ\197\154CIE" then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 770 / zoom, 30 / zoom, 30 / zoom) and windows.background == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      windows.background = false
      windows.stockExchange = false
      showCursor(false)
      rot_Fan = 0
      removeEventHandler("onClientRender", root, renderChart)
      removeEventHandler("onClientRestore", root, cacheChartDrawing)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 355 / zoom, _UPVALUE0_.y + 330 / zoom, 240 / zoom, 60 / zoom) and windows.background == true and windows.category == "MENU" then
      if getElementData(localPlayer, "player:plants_on") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz wytwarzanie narkoty\195\179w", "error")
        return
      end
      if getElementData(localPlayer, "player:faction") then
        exports.st_gui:showPlayerNotification("Najpierw zejdz z duty", "error")
        return
      end
      if getElementData(localPlayer, "player:crypto_on") then
        removeEventHandler("onClientRender", root, render)
        start = false
        setElementData(localPlayer, "player:crypto_on", false)
      else
        czasPracy = 0
        addEventHandler("onClientRender", root, render)
        start = true
        loadingTime = 30
        tick = getTickCount()
        tick1 = getTickCount()
        setElementData(localPlayer, "player:crypto_on", true)
      end
    elseif isMouseIn(_UPVALUE0_.x + 610 / zoom, _UPVALUE0_.y + 415 / zoom, 130 / zoom, 40 / zoom) and windows.background == true and windows.category == "MENU" then
      if 3000 < getTickCount() - lastTickCount then
        for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
          if 0 >= tonumber(_FORV_6_.bitcoin + _FORV_6_.ethereum + _FORV_6_.litecoin + _FORV_6_.dogecoin + _FORV_6_.ripple) then
            exports.st_gui:showPlayerNotification("Nie masz krypto by co\197\155 wyp\197\130aci\196\135.", "error")
            return
          end
          if windows.tablet then
            if 3000 > _FORV_6_.punkty_crypto then
              exports.st_gui:showPlayerNotification("Nie posiadasz wystarczaj\196\133co punkt\195\179w", "error")
              return
            end
            triggerServerEvent("ev", resourceRoot, "payment_crypto", localPlayer, _FORV_6_.bitcoin, _FORV_6_.ethereum, _FORV_6_.litecoin, _FORV_6_.dogecoin, _FORV_6_.ripple, true)
          else
            triggerServerEvent("ev", resourceRoot, "payment_crypto", localPlayer, _FORV_6_.bitcoin, _FORV_6_.ethereum, _FORV_6_.litecoin, _FORV_6_.dogecoin, _FORV_6_.ripple)
          end
          blockClick = true
        end
        lastTickCount = getTickCount()
      else
        return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
      end
    elseif isMouseIn(_UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 675 / zoom, 130 / zoom, 50 / zoom) and windows.background == true and windows.category == "GIE\197\129DA" then
      if 3000 < getTickCount() - lastTickCount then
        if blockClick then
          return
        end
        for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
          for _FORV_10_, _FORV_11_ in ipairs(table_stockExchange) do
            if 0 > tonumber(bitcoin_cost_editbox) then
              exports.st_gui:showPlayerNotification("Co\197\155 jest chyba nie tak", "error")
              return
            end
            if 0 > tonumber(ether_cost_editbox) then
              exports.st_gui:showPlayerNotification("Co\197\155 jest chyba nie tak", "error")
              return
            end
            if 0 > tonumber(litecoin_cost_editbox) then
              exports.st_gui:showPlayerNotification("Co\197\155 jest chyba nie tak", "error")
              return
            end
            if 0 > tonumber(dogecoin_cost_editbox) then
              exports.st_gui:showPlayerNotification("Co\197\155 jest chyba nie tak", "error")
              return
            end
            if 0 > tonumber(ripple_cost_editbox) then
              exports.st_gui:showPlayerNotification("Co\197\155 jest chyba nie tak", "error")
              return
            end
            if 1 >= tonumber(math.floor(bitcoin_cost_editbox * _FORV_11_.bitcoin) + math.floor(ether_cost_editbox * _FORV_11_.ethereum) + math.floor(litecoin_cost_editbox * _FORV_11_.litecoin) + math.floor(dogecoin_cost_editbox * _FORV_11_.dogecoin) + math.floor(ripple_cost_editbox * _FORV_11_.ripple)) then
              exports.st_gui:showPlayerNotification("Cena jest za niska", "error")
              return
            end
            triggerServerEvent("ev", resourceRoot, "sell_crypto", localPlayer, tonumber(bitcoin_cost_editbox), tonumber(ether_cost_editbox), tonumber(litecoin_cost_editbox), tonumber(dogecoin_cost_editbox), tonumber(ripple_cost_editbox), tonumber(math.floor(bitcoin_cost_editbox * _FORV_11_.bitcoin) + math.floor(ether_cost_editbox * _FORV_11_.ethereum) + math.floor(litecoin_cost_editbox * _FORV_11_.litecoin) + math.floor(dogecoin_cost_editbox * _FORV_11_.dogecoin) + math.floor(ripple_cost_editbox * _FORV_11_.ripple)))
            blockClick = true
          end
        end
        lastTickCount = getTickCount()
      else
        return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
      end
    elseif isMouseIn(_UPVALUE0_.x + 320 / zoom, _UPVALUE0_.y + 11 / zoom, 55 / zoom, 60 / zoom) and windows.category == "GIE\197\129DA" then
      if self.sort[1] then
        self.sort[1] = false
      else
        self.sort[1] = true
      end
      cacheChartData(self.sort)
    elseif isMouseIn(_UPVALUE0_.x + 430 / zoom, _UPVALUE0_.y + 12 / zoom, 50 / zoom, 60 / zoom) and windows.category == "GIE\197\129DA" then
      if self.sort[2] then
        self.sort[2] = false
      else
        self.sort[2] = true
      end
      cacheChartData(self.sort)
    elseif isMouseIn(_UPVALUE0_.x + 541 / zoom, _UPVALUE0_.y + 11 / zoom, 55 / zoom, 60 / zoom) and windows.category == "GIE\197\129DA" then
      if self.sort[3] then
        self.sort[3] = false
      else
        self.sort[3] = true
      end
      cacheChartData(self.sort)
    elseif isMouseIn(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 11 / zoom, 55 / zoom, 60 / zoom) and windows.category == "GIE\197\129DA" then
      if self.sort[4] then
        self.sort[4] = false
      else
        self.sort[4] = true
      end
      cacheChartData(self.sort)
    elseif isMouseIn(_UPVALUE0_.x + 760 / zoom, _UPVALUE0_.y + 11 / zoom, 55 / zoom, 60 / zoom) and windows.category == "GIE\197\129DA" then
      if self.sort[5] then
        self.sort[5] = false
      else
        self.sort[5] = true
      end
      cacheChartData(self.sort)
    elseif isMouseIn(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 300 / zoom, 150 / zoom, 50 / zoom) and windows.background == true and windows.category == "MENU" then
      if getElementData(localPlayer, "player:moneyMNn") < 50000 then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.graphic_office == "GeForce GTX 750" then
          triggerServerEvent("ev", resourceRoot, "repair_card", localPlayer, 500)
        elseif _FORV_6_.graphic_office == "GeForce GTX 980 GAMING 4GB" then
          triggerServerEvent("ev", resourceRoot, "repair_card", localPlayer, 1000)
        elseif _FORV_6_.graphic_office == "GeForce GTX 1060 6GB" then
          triggerServerEvent("ev", resourceRoot, "repair_card", localPlayer, 1500)
        elseif _FORV_6_.graphic_office == "GeForce GTX 1660 SUPER OC 6GB" then
          triggerServerEvent("ev", resourceRoot, "repair_card", localPlayer, 2000)
        elseif _FORV_6_.graphic_office == "GeForce RTX 2070 SUPER GAMING 8GB" then
          triggerServerEvent("ev", resourceRoot, "repair_card", localPlayer, 2500)
        elseif _FORV_6_.graphic_office == "GeForce RTX 3070 Ti 8GB" then
          triggerServerEvent("ev", resourceRoot, "repair_card", localPlayer, 3000)
        elseif _FORV_6_.graphic_office == "GeForce RTX 4090 24GB" then
          triggerServerEvent("ev", resourceRoot, "repair_card", localPlayer, 3500)
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 1030 / zoom, _UPVALUE0_.y + 700 / zoom, 150 / zoom, 50 / zoom) and windows.background == true and windows.category == "MENU" then
      if getElementData(localPlayer, "player:moneyMNn") < 50000 then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.powerSupply == "SilentiumPC Elementum 350W" then
          triggerServerEvent("ev", resourceRoot, "repair_power", localPlayer, 3000)
        elseif _FORV_6_.powerSupply == "Corsair CX600 600W" then
          triggerServerEvent("ev", resourceRoot, "repair_power", localPlayer, 4000)
        elseif _FORV_6_.powerSupply == "Dark Power Pro P11 1000W" then
          triggerServerEvent("ev", resourceRoot, "repair_power", localPlayer, 5000)
        end
      end
    end
  end
end
bindKey("f9", "down", function()
  if windows.tablet == true then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    windows.tablet = false
    windows.category = false
    showCursor(false)
    removeEventHandler("onClientRender", root, renderChart)
    removeEventHandler("onClientRestore", root, cacheChartDrawing)
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
  elseif getTickCount() - lastTickCount > 3000 then
    triggerServerEvent("ev", resourceRoot, "openTablet", localPlayer, getElementData(localPlayer, "player:sid"))
    blockClick = true
    lastTickCount = getTickCount()
  else
    return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
  end
end)
lastTickCount = getTickCount()
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == markerENTER then
      if isPedInVehicle(localPlayer) then
        return
      end
      textures = {
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      triggerServerEvent("ev", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      windows.category = "WEJ\197\154CIE"
      showCursor(true)
    elseif source == markerEXIT then
      fadeCamera(false)
      setTimer(function()
        triggerServerEvent("ev", resourceRoot, "setElementPos", localPlayer, {
          -1835.2,
          -84.85,
          -0.92,
          0
        })
      end, 1500, 1)
      setTimer(function()
        fadeCamera(true)
      end, 3000, 1)
    elseif source == computerMarker then
      triggerServerEvent("ev", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.buy_office == 1 then
          textures = {
            cross = dxCreateTexture(":ST_gui/img/cross.png"),
            main_icon = dxCreateTexture("img/main_icon.png"),
            graphic_card_icon = dxCreateTexture("img/graphic_card_icon.png"),
            powerSupply_icon = dxCreateTexture("img/powerSupply_icon.png"),
            stock_exchange_icon = dxCreateTexture("img/stock_exchange_icon.png"),
            gtx750_icon = dxCreateTexture("img/gtx750_icon.png"),
            bitcoin_icon = dxCreateTexture("img/bitcoin_icon.png"),
            ethereum_icon = dxCreateTexture("img/ethereum_icon.png"),
            litecoin_icon = dxCreateTexture("img/litecoin_icon.png"),
            ripple_icon = dxCreateTexture("img/ripple_icon.png"),
            doge_icon = dxCreateTexture("img/doge_icon.png"),
            dolar_icon = dxCreateTexture("img/dolar_icon.png"),
            powerSupply3_icon = dxCreateTexture("img/powerSupply3_icon.png"),
            powerSupply1_icon = dxCreateTexture("img/powerSupply1_icon.png"),
            heart_icon = dxCreateTexture("img/heart_icon.png"),
            padlock_icon = dxCreateTexture("img/padlock_icon.png"),
            power_icon = dxCreateTexture("img/power_icon.png"),
            repair_icon = dxCreateTexture("img/repair_icon.png"),
            gtx960_icon = dxCreateTexture("img/gtx960_icon.png"),
            gtx1060_icon = dxCreateTexture("img/gtx1060_icon.png"),
            gtx1660_icon = dxCreateTexture("img/gtx1660_icon.png"),
            rtx2070_icon = dxCreateTexture("img/rtx2070_icon.png"),
            rtx3070_icon = dxCreateTexture("img/rtx3070_icon.png"),
            rtx4090_icon = dxCreateTexture("img/rtx4090_icon.png"),
            cpu_fan = dxCreateTexture("img/cpu_fan.png"),
            cpu_fan1 = dxCreateTexture("img/cpu_fan1.png"),
            powerSupply2_icon = dxCreateTexture("img/powerSupply2_icon.png"),
            game_photo = dxCreateTexture("img/game_photo.png"),
            strzalka = dxCreateTexture("img/strzalka.png"),
            improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
            tablet_icon = dxCreateTexture("img/tablet_icon.png")
          }
          graphic_card_table = {
            {
              name = "GeForce GTX 750",
              img = textures.gtx750_icon,
              level = 1,
              cost = 30000,
              heal = 500,
              watt = 300,
              crypto = 0
            },
            {
              name = "GeForce GTX 980 GAMING 4GB",
              img = textures.gtx960_icon,
              level = 2,
              cost = 500000,
              heal = 1000,
              watt = 360,
              crypto = 400
            },
            {
              name = "GeForce GTX 1060 6GB",
              img = textures.gtx1060_icon,
              level = 3,
              cost = 1000000,
              heal = 1500,
              watt = 500,
              crypto = 600
            },
            {
              name = "GeForce GTX 1660 SUPER OC 6GB",
              img = textures.gtx1660_icon,
              level = 4,
              cost = 1500000,
              heal = 2000,
              watt = 610,
              crypto = 1000
            },
            {
              name = "GeForce RTX 2070 SUPER GAMING 8GB",
              img = textures.rtx2070_icon,
              level = 5,
              cost = 2000000,
              heal = 2500,
              watt = 650,
              crypto = 1400
            },
            {
              name = "GeForce RTX 3070 Ti 8GB",
              img = textures.rtx3070_icon,
              level = 6,
              cost = 2500000,
              heal = 3000,
              watt = 790,
              crypto = 1800
            },
            {
              name = "GeForce RTX 4090 24GB",
              img = textures.rtx4090_icon,
              level = 7,
              cost = 3000000,
              heal = 3500,
              watt = 950,
              crypto = 2500
            }
          }
          powerSupply_table = {
            {
              name = "SilentiumPC Elementum 350W",
              img = textures.powerSupply3_icon,
              level = 1,
              cost = 200000,
              watt = 350,
              heal = 3000
            },
            {
              name = "Corsair CX600 600W",
              img = textures.powerSupply2_icon,
              level = 2,
              cost = 1000000,
              watt = 600,
              heal = 4000
            },
            {
              name = "Dark Power Pro P11 1000W",
              img = textures.powerSupply1_icon,
              level = 3,
              cost = 2000000,
              watt = 1000,
              heal = 5000
            }
          }
          category = {
            {
              text = "MENU",
              img = textures.main_icon
            },
            {
              text = "KARTY",
              img = textures.graphic_card_icon
            },
            {
              text = "ZASILACZE",
              img = textures.powerSupply_icon
            },
            {
              text = "GIE\197\129DA",
              img = textures.stock_exchange_icon
            },
            {
              text = "ULEPSZENIA",
              img = textures.improvement_icon
            }
          }
          triggerServerEvent("ev", resourceRoot, "showStockExchange", localPlayer)
          addEventHandler("onClientRender", root, window)
          addEventHandler("onClientClick", root, click)
          addEventHandler("onClientKey", root, key)
          windows.background = true
          windows.category = "MENU"
          showCursor(true)
          lastTickCount = getTickCount()
        end
      end
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ == "showStockExchangeClient" then
    table_stockExchange = _ARG_1_
  elseif _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    if _ARG_2_ then
      for _FORV_7_, _FORV_8_ in ipairs(_ARG_1_) do
        upgrades = {
          {
            name = "Tablet",
            description = "Tablet umo\197\188liwia w\197\130\196\133czanie koparki, sprawdzanie cen na gie\197\130dzie oraz wiele innych",
            icon = textures.tablet_icon,
            status = _FORV_8_.tablet_crypto,
            cost = 7500000,
            punkty = 3000,
            nameDatabase = "tablet_crypto"
          }
        }
      end
      bitcoin_cost_editbox = 0
      ether_cost_editbox = 0
      litecoin_cost_editbox = 0
      dogecoin_cost_editbox = 0
      ripple_cost_editbox = 0
      blockClick = false
    end
  elseif _ARG_0_ == "openTabletClient" then
    table_statistics = _ARG_1_
    blockClick = false
    for _FORV_6_, _FORV_7_ in ipairs(_ARG_1_) do
      if _FORV_7_.tablet_crypto == 1 then
        textures = {
          cross = dxCreateTexture(":ST_gui/img/cross.png"),
          main_icon = dxCreateTexture("img/main_icon.png"),
          graphic_card_icon = dxCreateTexture("img/graphic_card_icon.png"),
          powerSupply_icon = dxCreateTexture("img/powerSupply_icon.png"),
          stock_exchange_icon = dxCreateTexture("img/stock_exchange_icon.png"),
          gtx750_icon = dxCreateTexture("img/gtx750_icon.png"),
          bitcoin_icon = dxCreateTexture("img/bitcoin_icon.png"),
          ethereum_icon = dxCreateTexture("img/ethereum_icon.png"),
          litecoin_icon = dxCreateTexture("img/litecoin_icon.png"),
          ripple_icon = dxCreateTexture("img/ripple_icon.png"),
          doge_icon = dxCreateTexture("img/doge_icon.png"),
          dolar_icon = dxCreateTexture("img/dolar_icon.png"),
          powerSupply3_icon = dxCreateTexture("img/powerSupply3_icon.png"),
          powerSupply1_icon = dxCreateTexture("img/powerSupply1_icon.png"),
          heart_icon = dxCreateTexture("img/heart_icon.png"),
          padlock_icon = dxCreateTexture("img/padlock_icon.png"),
          power_icon = dxCreateTexture("img/power_icon.png"),
          repair_icon = dxCreateTexture("img/repair_icon.png"),
          gtx960_icon = dxCreateTexture("img/gtx960_icon.png"),
          gtx1060_icon = dxCreateTexture("img/gtx1060_icon.png"),
          gtx1660_icon = dxCreateTexture("img/gtx1660_icon.png"),
          rtx2070_icon = dxCreateTexture("img/rtx2070_icon.png"),
          rtx3070_icon = dxCreateTexture("img/rtx3070_icon.png"),
          rtx4090_icon = dxCreateTexture("img/rtx4090_icon.png"),
          cpu_fan = dxCreateTexture("img/cpu_fan.png"),
          cpu_fan1 = dxCreateTexture("img/cpu_fan1.png"),
          powerSupply2_icon = dxCreateTexture("img/powerSupply2_icon.png"),
          game_photo = dxCreateTexture("img/game_photo.png"),
          strzalka = dxCreateTexture("img/strzalka.png"),
          improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png")
        }
        category = {
          {
            text = "MENU",
            img = textures.main_icon
          },
          {
            text = "GIE\197\129DA",
            img = textures.stock_exchange_icon
          }
        }
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        windows.background = true
        windows.category = "MENU"
        windows.tablet = true
        showCursor(true)
        lastTickCount = getTickCount()
      end
    end
  end
end)
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
function cacheChartDrawing(_ARG_0_)
  if type(_ARG_0_) == "boolean" then
    if not _ARG_0_ then
      return
    end
    _ARG_0_ = true
  end
  if not _ARG_0_ then
    if isElement(rendertarget) then
      destroyElement(rendertarget)
    end
    rendertarget = dxCreateRenderTarget(600 / zoom, 600 / zoom, true)
  end
  if not rendertarget then
    return
  else
    dxSetRenderTarget(rendertarget)
  end
  for _FORV_15_ = 0, chart_columns_bitcoin do
    for _FORV_19_ = 0, 10 do
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_15_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_bitcoin), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_15_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_bitcoin), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom), tocolor(20, 20, 20, 255), 1)
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom, 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - _FORV_19_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10), 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - _FORV_19_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10), tocolor(20, 20, 20, 255), 1)
    end
  end
  dxDrawText(tonumber(string.sub(highest_value, 1, 6)), 0.1 / zoom * math.floor(600 / zoom) - 40 / zoom, 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), 0.1 / zoom * math.floor(600 / zoom) / 2 + 62 / zoom, 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true)
  for _FORV_15_ = 0, 9 do
    dxDrawText(tonumber(string.sub(_FORV_15_ / 10 * highest_value, 1, 6)), 0.1 / zoom * math.floor(600 / zoom) - 40 / zoom, 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10 * _FORV_15_, 0.1 / zoom * math.floor(600 / zoom) / 2 + 62 / zoom, 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10 * _FORV_15_, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true)
  end
  last_height = false
  last_height1 = false
  last_height2 = false
  last_height3 = false
  last_height4 = false
  for _FORV_15_ = 0, chart_columns_bitcoin do
    if self.sort[1] then
      if last_height then
        dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_15_ - 1) * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_bitcoin), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - last_height, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_15_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_bitcoin), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - chart_data_bitcoin[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(247, 147, 26, 255), 3)
      end
      last_height = chart_data_bitcoin[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    end
    if self.sort[2] then
      if last_height1 then
        dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_15_ - 1) * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_ethereum), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - last_height1, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_15_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_ethereum), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - chart_data_ethereum[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(96, 96, 96, 255), 3)
      end
      last_height1 = chart_data_ethereum[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    end
    if self.sort[3] then
      if last_height2 then
        dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_15_ - 1) * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_litecoin), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - last_height2, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_15_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_litecoin), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - chart_data_litecoin[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(189, 201, 227, 255), 3)
      end
      last_height2 = chart_data_litecoin[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    end
    if self.sort[4] then
      if last_height3 then
        dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_15_ - 1) * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_dogecoin), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - last_height3, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_15_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_dogecoin), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - chart_data_dogecoin[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(227, 204, 130, 255), 3)
      end
      last_height3 = chart_data_dogecoin[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    end
    if self.sort[5] then
      if last_height4 then
        dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_15_ - 1) * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_ripple), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - last_height4, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_15_ * ((600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_ripple), 600 / zoom - 0.1 / zoom * math.floor(600 / zoom) - chart_data_ripple[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(0, 0, 0, 255), 3)
      end
      last_height4 = chart_data_ripple[_FORV_15_ + 1] / highest_value * (600 / zoom - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    end
  end
  dxSetRenderTarget()
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.category == "KARTY" then
      if nScroll == mScroll then
        return
      end
      kScroll = kScroll - 1
      nScroll = nScroll - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and windows.category == "KARTY" then
    if nScroll >= #graphic_card_table then
      return
    end
    kScroll = kScroll + 1
    nScroll = nScroll + 1
  end
end
function renderChart()
  if not rendertarget then
    return
  end
  dxDrawImage(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y - 15 / zoom, 770 / zoom, 630 / zoom, rendertarget)
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
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / zoom, tocolor(20, 20, 20, 255))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_6_ == 1 then
      scrollbarPos = _ARG_2_
    elseif 0 < _ARG_6_ then
      scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
    end
    if _ARG_0_ <= _ARG_5_ then
    end
    dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / zoom, tocolor(255, 187, 0, 255))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / zoom, tocolor(255, 187, 0, 255))
  end
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "" .. hours .. ":" .. mins .. ":" .. secs
  end
end
getResourceName(getThisResource(), true, 962680491)
return
