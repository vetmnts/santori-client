windowsMechanic = {
  background = false,
  start = false,
  mechanic = false,
  offerDriver = false,
  paintshop = false,
  repairKit = false
}
function windowMechanic()
  if windowsMechanic.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesMechanic.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 65 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 80 / zoom, 70 / zoom, 400 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom, texturesMechanic.info_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom, texturesMechanic.info_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, texturesMechanic.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, texturesMechanic.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windowsMechanic.start == true then
    players = {}
    for _FORV_7_, _FORV_8_ in ipairs(getElementsByType("player")) do
      if getElementData(_FORV_8_, "player:job") and getElementData(_FORV_8_, "player:job") == _UPVALUE1_.nameBusiness[1] then
        table.insert(players, _FORV_7_)
      end
    end
    dxDrawText(_UPVALUE1_.nameBusiness[1], _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 147 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
    dxDrawText("W\197\129A\197\154CICIEL BIZNESU: #ffbb00" .. _UPVALUE1_.ownerName .. "", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 100 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    if #players == 1 then
      pracownikow = "pracownik"
    else
      pracownikow = "pracownik\195\179w"
    end
    dxDrawText("#ffbb00" .. #players .. " #ffffff" .. pracownikow .. " na warsztacie", _UPVALUE0_.x, _UPVALUE0_.y - 120 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, texturesMechanic.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
      dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, texturesMechanic.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
      dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, texturesMechanic.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
      dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, texturesMechanic.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
      dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, texturesMechanic.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 445 / zoom, 300 / zoom, 70 / zoom) then
      colorPay = 40
    else
      colorPay = 0
    end
    if _UPVALUE1_.playerWorker == true then
      dxDrawText("WYP\197\129ATA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190 + colorPay, 190 + colorPay, 190 + colorPay, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60 + colorPay, 60 + colorPay, 60 + colorPay, 230))
      dxDrawText("STATYSTYKI", _UPVALUE0_.x, _UPVALUE0_.y + 495 / zoom, _UPVALUE0_.x + 362 / zoom + 500 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 370 / zoom, 213 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      for _FORV_7_, _FORV_8_ in ipairs(dataInfoWorker) do
        dxDrawText("Obs\197\130u\197\188eni klienci w tygodniu: #ffbb00" .. _FORV_8_.car_week .. "\n#b4b4b4Obs\197\130u\197\188eni klienci dzi\197\155: #ffbb00" .. _FORV_8_.car_today .. "\n\n#b4b4b4Aktywno\197\155\196\135 w tygodniu " .. secondsToClock(60 * _FORV_8_.time_week) .. "\n#b4b4b4Aktywno\197\155\196\135 dzi\197\155: " .. secondsToClock(60 * _FORV_8_.time_today) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom + 500 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
        for _FORV_12_, _FORV_13_ in ipairs(_UPVALUE1_.table_data) do
          if _FORV_13_.ulepszenie_premia == 1 then
            dxDrawText("Do wyp\197\130aty: #009419" .. przecinek(math.floor(_FORV_8_.paycheck * (_FORV_8_.time_paycheck / 60))) .. " #d2d2d2PLN + #009419" .. przecinek(math.floor(_FORV_8_.paycheck * (_FORV_8_.time_paycheck / 60) * 1.1 - _FORV_8_.paycheck * (_FORV_8_.time_paycheck / 60))) .. [[
 #d2d2d2PLN premii
za #ffbb00]] .. secondsToClock(60 * _FORV_8_.time_paycheck) .. "", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + colorPay, 210 + colorPay, 210 + colorPay, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, true, false)
          else
            dxDrawText("Do wyp\197\130aty: #009419" .. przecinek(math.floor(_FORV_8_.paycheck * (_FORV_8_.time_paycheck / 60))) .. " #d2d2d2PLN za #ffbb00" .. secondsToClock(60 * _FORV_8_.time_paycheck) .. "", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 795 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + colorPay, 210 + colorPay, 210 + colorPay, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, true, false)
          end
        end
        dxDrawText("Praca polega na naprawianiu pojazd\195\179w innym\ngraczom.\nTwoja stawka: #009419" .. przecinek(math.floor(_FORV_8_.paycheck)) .. " #d2d2d2PLN / h", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, true, false)
      end
    elseif _UPVALUE1_.playerRandomWork == true then
      dxDrawText("WYP\197\129ATA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190 + colorPay, 190 + colorPay, 190 + colorPay, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60 + colorPay, 60 + colorPay, 60 + colorPay, 230))
      dxDrawText("STATYSTYKI", _UPVALUE0_.x, _UPVALUE0_.y + 495 / zoom, _UPVALUE0_.x + 362 / zoom + 500 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 370 / zoom, 213 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("Praca polega na naprawianiu pojazd\195\179w innym\ngraczom.\nTwoja stawka: #009419" .. przecinek(700000) .. " #d2d2d2PLN / h", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, true, false)
      for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE1_.table_stjobs) do
        dxDrawText("\197\130\196\133czny Czas: " .. _FORV_8_.czas_mechanik .. " minut\n\197\129\196\133czne zarobki: " .. przecinek(_FORV_8_.zarobek_mechanik) .. [[

Obecny czas: ]] .. _FORV_8_.czas_mechanik1 .. " minut", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom + 500 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, false, false)
        dxDrawText("Do wyp\197\130aty: #009419" .. przecinek(math.floor(700000 * (_FORV_8_.czas_mechanik1 / 60))) .. " #d2d2d2PLN za #ffbb00" .. secondsToClock(60 * _FORV_8_.czas_mechanik1) .. "", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 795 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + colorPay, 210 + colorPay, 210 + colorPay, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, true, false)
      end
    else
      dxDrawText("Praca polega na naprawianiu pojazd\195\179w innym\ngraczom.\nTwoja stawka: - #0094190 #d2d2d2PLN / h", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, true, false)
    end
    dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
  end
  if windowsMechanic.mechanic == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesMechanic.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    if getVehicleName(tabela_infoveh.vehicle) == "Sabre" and getVehicleVariant(tabela_infoveh.vehicle) .. ", " .. getVehicleVariant(tabela_infoveh.vehicle) == "1, 2" then
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    if windowsMechanic.category == "naprawa" then
      dxDrawText("NAPRAWA POJAZDU #ffaa00" .. exports.ST_core:changeNameClient("Sabre Turbo", getElementData(tabela_infoveh.vehicle, "vehicle:customID")) .. "", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, true, false)
      if getVehicleController(tabela_infoveh.vehicle) then
        dxDrawText("kierowca: #ffaa00" .. getPlayerName(getVehicleController(tabela_infoveh.vehicle)), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("brak kierowcy w poje\197\186dzie", _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      end
      exports.ST_buttons:dxCreateButton("ANULUJ", _UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 500 / zoom, 170 / zoom, 50 / zoom, 255, 1)
      exports.ST_buttons:dxCreateButton("WY\197\154LIJ OFERT\196\152", _UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 500 / zoom, 170 / zoom, 50 / zoom, 255, 1)
      for _FORV_12_ = 1, 12 do
        if 2 < 0 + 1 then
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 80 / zoom + 50 / zoom * (1 + 1 - 1), 350 / zoom, 43 / zoom, 15 / zoom, tocolor(45, 45, 45, 50), false)
      end
      costofall = 0
      for _FORV_14_, _FORV_15_ in ipairs(toRepairTable) do
        if 2 < 0 + 1 then
        end
        if _FORV_15_.selected then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 80 / zoom + 50 / zoom * (1 + 1 - 1), 350 / zoom, 43 / zoom, 15 / zoom, tocolor(40, 40, 40, 240), false)
          costofall = costofall + _FORV_15_.cost
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 80 / zoom + 50 / zoom * (1 + 1 - 1), 350 / zoom, 43 / zoom, 15 / zoom, tocolor(45, 45, 45, 240), false)
        end
        dxDrawText(_FORV_15_.name .. " [#ffaa00" .. _FORV_15_.number .. "#e6e6e6]", _UPVALUE0_.x + 90 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 3 / zoom + 100 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText("#009419" .. _FORV_15_.cost .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y + 1 / zoom + 100 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 58 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, true, false)
      end
      dxDrawText("Koszt naprawy: #009419" .. przecinek(costofall) .. " #ffffffPLN", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 670 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(235, 235, 235, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    elseif windowsMechanic.category == "konfiguracja" then
      dxDrawText("Mechanik: #ffaa00" .. getPlayerName(mechanic_offer), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      dxDrawText("KONFIGURACJA POJAZDU #ffaa00" .. exports.ST_core:changeNameClient("Sabre Turbo", getElementData(tabela_infoveh.vehicle, "vehicle:customID")) .. "", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, true, false)
      for _FORV_12_, _FORV_13_ in ipairs(tabela_config_mech) do
        if _FORV_12_ >= _UPVALUE2_ and _FORV_12_ <= _UPVALUE3_ then
          if 2 < 0 + 1 then
          end
          dxDrawRoundedRectangle(_UPVALUE0_.x + 35 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 80 / zoom + 140 / zoom * (1 + 1 - 1), 395 / zoom, 125 / zoom, 15 / zoom, tocolor(45, 45, 45, 240), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 45 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 140 / zoom * (1 + 1 - 1), 375 / zoom, 3 / zoom, 2 / zoom, tocolor(201, 161, 46, 255))
          if _FORV_13_.nameHandling == "centerOfMass" then
            if _FORV_13_.description then
              for _FORV_27_ in _FORV_13_.description:gmatch([[
[^
]+]]) do
                table.insert({}, _FORV_27_)
              end
              if isMouseIn(_UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) then
                dxDrawText("\226\147\152", _UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 14 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 213, 97, 120), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
                if isCursorShowing() then
                  cxs, cys = getCursorPosition()
                  cxs, cys = screenW * cxs, screenH * cys
                  dxDrawRoundedRectangle(cxs + 19 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 - 1 / zoom, math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15 + 2 / zoom, 0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom) + 2 / zoom, 8 / zoom, tocolor(80, 80, 80, 255), true)
                  dxDrawRoundedRectangle(cxs + 20 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2, math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15, 0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom), 8 / zoom, tocolor(50, 50, 50, 240), true)
                  for _FORV_32_, _FORV_33_ in ipairs({}) do
                    dxDrawText(_FORV_33_, cxs + 20 / zoom + 10 / zoom + 1 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 + 10 / zoom, cxs + 20 / zoom + math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15 - 10 / zoom + 1 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 + 10 / zoom + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) - 1 / zoom, tocolor(255, 255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal10"), "left", "top", false, false, true, true, false)
                  end
                end
              else
                dxDrawText("\226\147\152", _UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 14 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 213, 97, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
              end
            end
            if _FORV_13_.zmiana == "resetowanie" then
              dxDrawText(_FORV_13_[1] .. "", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
              dxDrawText("Przywr\195\179cenie do ustawie\197\132 fabrycznych", _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
              if isMouseIn(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) then
                dxDrawImage(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom, texturesMechanic.back_arrow, 0, 0, 0, tocolor(255, 187, 0, 255), false)
                if isCursorShowing() then
                  cxs, cys = getCursorPosition()
                  cxs, cys = screenW * cxs, screenH * cys
                  dxDrawText("Anuluj", cxs + 15 / zoom, cys + 35 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
                  dxDrawText("Anuluj", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
                end
              else
                dxDrawImage(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom, texturesMechanic.back_arrow, 0, 0, 0, tocolor(148, 110, 0, 255), false)
              end
            else
              dxDrawText("X", _UPVALUE0_.x - 95 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
              dxDrawText("Y", _UPVALUE0_.x + 55 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
              dxDrawText("Z", _UPVALUE0_.x + 195 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
              dxDrawRoundedRectangle(_UPVALUE0_.x + 149 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 121 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom, 5 / zoom, tocolor(30, 30, 30, 240), false)
              dxDrawText("+", _UPVALUE0_.x - 45 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 60 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
              dxDrawRoundedRectangle(_UPVALUE0_.x + 149 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 162 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom, 5 / zoom, tocolor(30, 30, 30, 240), false)
              dxDrawText("-", _UPVALUE0_.x - 45 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 142 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
              dxDrawRoundedRectangle(_UPVALUE0_.x + 224 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 121 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom, 5 / zoom, tocolor(30, 30, 30, 240), false)
              dxDrawText("+", _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 60 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
              dxDrawRoundedRectangle(_UPVALUE0_.x + 224 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 162 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom, 5 / zoom, tocolor(30, 30, 30, 240), false)
              dxDrawText("-", _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 142 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
              dxDrawRoundedRectangle(_UPVALUE0_.x + 294 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 121 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom, 5 / zoom, tocolor(30, 30, 30, 240), false)
              dxDrawText("+", _UPVALUE0_.x + 245 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 60 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
              dxDrawRoundedRectangle(_UPVALUE0_.x + 294 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 162 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom, 5 / zoom, tocolor(30, 30, 30, 240), false)
              dxDrawText("-", _UPVALUE0_.x + 245 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 142 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
              if tonumber(_FORV_13_[2]) == 0 then
                if _FORV_13_.block == 0 then
                  dxDrawText(_FORV_13_[1] .. " - #ff3d3dzablokowane", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
                else
                  dxDrawText(_FORV_13_[1] .. " - #a3a3a3fabryczne", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
                end
                if _FORV_13_.zmiana[1] ~= 0 then
                  if tonumber(("%.2f"):format(_FORV_13_.zmiana[1])) > 0 then
                    dxDrawText("+" .. ("%.2f"):format(_FORV_13_.zmiana[1]), _UPVALUE0_.x - 45 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  else
                    dxDrawText(("%.2f"):format(_FORV_13_.zmiana[1]), _UPVALUE0_.x - 45 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  end
                end
                if _FORV_13_.zmiana[2] ~= 0 then
                  if tonumber(("%.2f"):format(_FORV_13_.zmiana[2])) > 0 then
                    dxDrawText("+" .. ("%.2f"):format(_FORV_13_.zmiana[2]), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  else
                    dxDrawText(("%.2f"):format(_FORV_13_.zmiana[2]), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  end
                end
                if _FORV_13_.zmiana[3] ~= 0 then
                  if tonumber(("%.2f"):format(_FORV_13_.zmiana[3])) > 0 then
                    dxDrawText("+" .. ("%.2f"):format(_FORV_13_.zmiana[3]), _UPVALUE0_.x + 245 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  else
                    dxDrawText(("%.2f"):format(_FORV_13_.zmiana[3]), _UPVALUE0_.x + 245 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  end
                end
                dxDrawText(("%.2f"):format(_FORV_13_[3][1] + _FORV_13_.zmiana[1]), _UPVALUE0_.x - 45 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
                dxDrawText(("%.2f"):format(_FORV_13_[3][2] + _FORV_13_.zmiana[2]), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
                dxDrawText(("%.2f"):format(_FORV_13_[3][3] + _FORV_13_.zmiana[3]), _UPVALUE0_.x + 245 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
              else
                if _FORV_13_.block == 0 then
                  dxDrawText(_FORV_13_[1] .. " - #ff3d3dzablokowane", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
                else
                  dxDrawText(_FORV_13_[1] .. " - #d6ac38zmodyfikowane", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
                end
                if isMouseIn(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) then
                  dxDrawImage(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom, texturesMechanic.back_arrow, 0, 0, 0, tocolor(148, 110, 0, 255), false)
                  if isCursorShowing() then
                    cxs, cys = getCursorPosition()
                    cxs, cys = screenW * cxs, screenH * cys
                    dxDrawText("Przywr\195\179\196\135 do ustawie\197\132 fabrycznych", cxs + 15 / zoom, cys + 35 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
                    dxDrawText("Przywr\195\179\196\135 do ustawie\197\132 fabrycznych", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
                  end
                else
                  dxDrawImage(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom, texturesMechanic.back_arrow, 0, 0, 0, tocolor(255, 187, 0, 255), false)
                end
                if _FORV_13_.zmiana[1] ~= 0 then
                  if tonumber(("%.2f"):format(_FORV_13_.zmiana[1])) > 0 then
                    dxDrawText("+" .. ("%.2f"):format(_FORV_13_.zmiana[1]), _UPVALUE0_.x - 45 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  else
                    dxDrawText(("%.2f"):format(_FORV_13_.zmiana[1]), _UPVALUE0_.x - 45 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  end
                end
                if _FORV_13_.zmiana[2] ~= 0 then
                  if tonumber(("%.2f"):format(_FORV_13_.zmiana[2])) > 0 then
                    dxDrawText("+" .. ("%.2f"):format(_FORV_13_.zmiana[2]), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  else
                    dxDrawText(("%.2f"):format(_FORV_13_.zmiana[2]), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  end
                end
                if _FORV_13_.zmiana[3] ~= 0 then
                  if tonumber(("%.2f"):format(_FORV_13_.zmiana[3])) > 0 then
                    dxDrawText("+" .. ("%.2f"):format(_FORV_13_.zmiana[3]), _UPVALUE0_.x + 245 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  else
                    dxDrawText(("%.2f"):format(_FORV_13_.zmiana[3]), _UPVALUE0_.x + 245 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
                  end
                end
                dxDrawText(("%.2f"):format(split(_FORV_13_[2], ",")[1] + _FORV_13_.zmiana[1]), _UPVALUE0_.x - 45 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
                dxDrawText(("%.2f"):format(split(_FORV_13_[2], ",")[2] + _FORV_13_.zmiana[2]), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
                dxDrawText(("%.2f"):format(split(_FORV_13_[2], ",")[3] + _FORV_13_.zmiana[3]), _UPVALUE0_.x + 245 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
              end
            end
          else
            if _FORV_13_.zmiana ~= "resetowanie" then
              dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 120 / zoom + 140 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, 11 / zoom, tocolor(30, 30, 30, 240), false)
              dxDrawText("-", _UPVALUE0_.x + 4 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 65 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
              dxDrawRoundedRectangle(_UPVALUE0_.x + 270 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 120 / zoom + 140 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, 11 / zoom, tocolor(30, 30, 30, 240), false)
              dxDrawText("+", _UPVALUE0_.x + 204 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 65 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
              dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 140 / zoom * (1 + 1 - 1), 245 / zoom, 15 / zoom, 8 / zoom, tocolor(25, 25, 25, 240), false)
              currentValue = tonumber(_FORV_13_[2]) == 0 and _FORV_13_[3] + _FORV_13_.zmiana or split(_FORV_13_[2], ",")[1] + _FORV_13_.zmiana
              ratio = (currentValue - _FORV_13_.min) / (_FORV_13_.max - _FORV_13_.min)
              barWidth = 245 * ratio
            end
            if _FORV_13_.zmiana ~= 0 and _FORV_13_.zmiana ~= "resetowanie" then
              if tonumber(("%.2f"):format(_FORV_13_.zmiana)) > 0 then
                dxDrawText("+" .. ("%.2f"):format(_FORV_13_.zmiana), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 123 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 230, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
              else
                dxDrawText(("%.2f"):format(_FORV_13_.zmiana), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 123 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
              end
            end
            if _FORV_13_.zmiana == "resetowanie" then
              dxDrawText(_FORV_13_[1] .. "", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
              dxDrawText("Przywr\195\179cenie do ustawie\197\132 fabrycznych", _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 100 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
              if isMouseIn(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) then
                dxDrawImage(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom, texturesMechanic.back_arrow, 0, 0, 0, tocolor(255, 187, 0, 255), false)
                if isCursorShowing() then
                  cxs, cys = getCursorPosition()
                  cxs, cys = screenW * cxs, screenH * cys
                  dxDrawText("Anuluj", cxs + 15 / zoom, cys + 35 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
                  dxDrawText("Anuluj", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
                end
              else
                dxDrawImage(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom, texturesMechanic.back_arrow, 0, 0, 0, tocolor(148, 110, 0, 255), false)
              end
            else
              if _FORV_13_.nameHandling == "tractionBias" or _FORV_13_.nameHandling == "suspensionFrontRearBias" or _FORV_13_.nameHandling == "brakeBias" then
                dxDrawText("PRZ\195\147D", _UPVALUE0_.x + 400 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, true, false)
                dxDrawText("TY\197\129", _UPVALUE0_.x - 180 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, true, false)
              end
              if tonumber(_FORV_13_[2]) == 0 then
                if _FORV_13_.block == 0 then
                  dxDrawText(_FORV_13_[1] .. " - #ff3d3dzablokowane", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
                else
                  dxDrawText(_FORV_13_[1] .. " - #a3a3a3fabryczne", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
                end
                dxDrawText(("%.2f"):format(_FORV_13_[3] + _FORV_13_.zmiana), _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 68 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
                if barWidth / zoom <= 15 then
                  dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 140 / zoom * (1 + 1 - 1), 15 / zoom, 15 / zoom, 8 / zoom, tocolor(112, 112, 112, 240), false)
                else
                  dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 140 / zoom * (1 + 1 - 1), barWidth / zoom, 15 / zoom, 8 / zoom, tocolor(112, 112, 112, 240), false)
                end
                if _FORV_13_.description then
                  for _FORV_27_ in _FORV_13_.description:gmatch([[
[^
]+]]) do
                    table.insert({}, _FORV_27_)
                  end
                  if isMouseIn(_UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) then
                    dxDrawText("\226\147\152", _UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 14 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 213, 97, 120), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
                    if isCursorShowing() then
                      cxs, cys = getCursorPosition()
                      cxs, cys = screenW * cxs, screenH * cys
                      dxDrawRoundedRectangle(cxs + 19 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 - 1 / zoom, math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15 + 2 / zoom, 0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom) + 2 / zoom, 8 / zoom, tocolor(80, 80, 80, 255), true)
                      dxDrawRoundedRectangle(cxs + 20 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2, math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15, 0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom), 8 / zoom, tocolor(50, 50, 50, 240), true)
                      for _FORV_32_, _FORV_33_ in ipairs({}) do
                        dxDrawText(_FORV_33_, cxs + 20 / zoom + 10 / zoom + 1 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 + 10 / zoom, cxs + 20 / zoom + math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15 - 10 / zoom + 1 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 + 10 / zoom + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) - 1 / zoom, tocolor(255, 255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal10"), "left", "top", false, false, true, true, false)
                      end
                    end
                  else
                    dxDrawText("\226\147\152", _UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 14 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 213, 97, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
                  end
                end
              else
                if _FORV_13_.block == 0 then
                  dxDrawText(_FORV_13_[1] .. " - #ff3d3dzablokowane", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
                else
                  dxDrawText(_FORV_13_[1] .. " - #d6ac38zmodyfikowane", _UPVALUE0_.x + 72 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 11 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
                end
                if isMouseIn(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) then
                  dxDrawImage(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom, texturesMechanic.back_arrow, 0, 0, 0, tocolor(148, 110, 0, 255), false)
                  if isCursorShowing() then
                    cxs, cys = getCursorPosition()
                    cxs, cys = screenW * cxs, screenH * cys
                    dxDrawText("Przywr\195\179\196\135 do ustawie\197\132 fabrycznych", cxs + 15 / zoom, cys + 35 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
                    dxDrawText("Przywr\195\179\196\135 do ustawie\197\132 fabrycznych", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
                  end
                else
                  dxDrawImage(_UPVALUE0_.x + 400 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom, texturesMechanic.back_arrow, 0, 0, 0, tocolor(255, 187, 0, 255), false)
                end
                dxDrawText(("%.2f"):format(split(_FORV_13_[2], ",")[1] + _FORV_13_.zmiana) .. "", _UPVALUE0_.x + 105 / zoom + 820 / zoom * (1 - 1), _UPVALUE0_.y + 68 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
                if barWidth / zoom <= 15 then
                  dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 140 / zoom * (1 + 1 - 1), 15 / zoom, 15 / zoom, 8 / zoom, tocolor(255, 187, 0, 240), false)
                else
                  dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 180 / zoom + 140 / zoom * (1 + 1 - 1), barWidth / zoom, 15 / zoom, 8 / zoom, tocolor(255, 187, 0, 240), false)
                end
                if _FORV_13_.description then
                  for _FORV_27_ in _FORV_13_.description:gmatch([[
[^
]+]]) do
                    table.insert({}, _FORV_27_)
                  end
                  if isMouseIn(_UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) then
                    dxDrawText("\226\147\152", _UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 14 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 213, 97, 120), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
                    if isCursorShowing() then
                      cxs, cys = getCursorPosition()
                      cxs, cys = screenW * cxs, screenH * cys
                      dxDrawRoundedRectangle(cxs + 19 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 - 1 / zoom, math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15 + 2 / zoom, 0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom) + 2 / zoom, 8 / zoom, tocolor(80, 80, 80, 255), true)
                      dxDrawRoundedRectangle(cxs + 20 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2, math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15, 0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom), 8 / zoom, tocolor(50, 50, 50, 240), true)
                      for _FORV_32_, _FORV_33_ in ipairs({}) do
                        dxDrawText(_FORV_33_, cxs + 20 / zoom + 10 / zoom + 1 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 + 10 / zoom, cxs + 20 / zoom + math.max(math.max(0, (dxGetTextWidth(_FORV_27_, 1 / zoom, exports.ST_gui:getGUIFont("normal10")))) + 2 * (10 / zoom), 155 / zoom) / 1.15 - 10 / zoom + 1 / zoom, cys - (0 + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) + 2 * (10 / zoom)) / 2 + 10 / zoom + dxGetFontHeight(1 / zoom, exports.ST_gui:getGUIFont("normal10")) - 1 / zoom, tocolor(255, 255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal10"), "left", "top", false, false, true, true, false)
                      end
                    end
                  else
                    dxDrawText("\226\147\152", _UPVALUE0_.x + 47 / zoom + 410 / zoom * (1 - 1), _UPVALUE0_.y - 14 / zoom + 280 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 213, 97, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
                  end
                end
              end
            end
          end
        end
      end
      dxDrawScrollBar(#tabela_config_mech, _UPVALUE0_.x + 852 / zoom, _UPVALUE0_.y + 85 / zoom, 5 / zoom, 400 / zoom, _UPVALUE4_, _UPVALUE5_)
      exports.ST_buttons:dxCreateButton("ANULUJ", _UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 500 / zoom, 170 / zoom, 50 / zoom, 255, 1)
      exports.ST_buttons:dxCreateButton("KONFIGURUJ", _UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 500 / zoom, 170 / zoom, 50 / zoom, 255, 1)
      dxDrawText("KLIKNIJ #ffcf4aSHIFT #ffffff/ #ffcf4aCTRL#ffffff przy zmianach, ABY #ffcf4aZWI\196\152KSZY\196\134 #ffffff/ #ffcf4aZMNIEJSZY\196\134 #ffffffWARTO\197\154\196\134", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 1000 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 200), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("KOSZT KONFIGURACJI", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 820 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
      dxDrawText("#0cb50010,000 #ffffffPLN", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 880 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    elseif windowsMechanic.category == "przegl\196\133d pojazdu" then
      dxDrawText("Mechanik: #ffaa00" .. getPlayerName(mechanic_offer), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      dxDrawText("PRZEGL\196\132D TECHNICZNY W #ffaa00" .. exports.ST_core:changeNameClient("Sabre Turbo", getElementData(tabela_infoveh.vehicle, "vehicle:customID")) .. "", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 249 / zoom, _UPVALUE0_.y + 189 / zoom, 382 / zoom, 242 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 190 / zoom, 380 / zoom, 240 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y + 200 / zoom, 80 / zoom, 80 / zoom, texturesMechanic.techrev_icon, 0, 0, 0, oilColor, false)
      dxDrawText("\226\156\152", _UPVALUE0_.x + 555 / zoom, _UPVALUE0_.y + 311 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 40, 40, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("PRZEGL\196\132D NIEWA\197\187NY", _UPVALUE0_.x + 517 / zoom, _UPVALUE0_.y + 393 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 40, 40, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawText("KOSZT WYKONANIA PRZEGL\196\132DU:\n#009419" .. przecinek(150000) .. " #ffffffPLN", _UPVALUE0_.x + 517 / zoom, _UPVALUE0_.y + 475 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 200), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("ANULUJ", _UPVALUE0_.x + 265 / zoom, _UPVALUE0_.y + 370 / zoom, 150 / zoom, 45 / zoom, 255, 1)
      exports.ST_buttons:dxCreateButton("ZAAKCEPTUJ", _UPVALUE0_.x + 465 / zoom, _UPVALUE0_.y + 370 / zoom, 150 / zoom, 45 / zoom, 255, 1)
    elseif windowsMechanic.category == "wymiana oleju" then
      dxDrawText("Mechanik: #ffaa00" .. getPlayerName(mechanic_offer), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      dxDrawText("WYMIANA OLEJU W #ffaa00" .. exports.ST_core:changeNameClient("Sabre Turbo", getElementData(tabela_infoveh.vehicle, "vehicle:customID")) .. "", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 249 / zoom, _UPVALUE0_.y + 189 / zoom, 382 / zoom, 242 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 190 / zoom, 380 / zoom, 240 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 380 / zoom, _UPVALUE0_.y + 180 / zoom, 120 / zoom, 120 / zoom, texturesMechanic.oil_icon, 0, 0, 0, interpolateColor(tabela_infoveh.oil[1], 1000, 350, {
        {
          0,
          255,
          0
        },
        {
          127,
          255,
          0
        },
        {
          191,
          255,
          0
        },
        {
          255,
          255,
          0
        },
        {
          255,
          191,
          0
        },
        {
          255,
          0,
          0
        }
      }), false)
      dxDrawText(string.format("%02.1f", tabela_infoveh.oil[1] / 10) .. "%", _UPVALUE0_.x + 503 / zoom, _UPVALUE0_.y + 298 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 200), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawText([[
KOSZT WYMIANY OLEJU:
#009419]] .. przecinek(100000) .. " #ffffffPLN", _UPVALUE0_.x + 517 / zoom, _UPVALUE0_.y + 445 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 200), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("ANULUJ", _UPVALUE0_.x + 265 / zoom, _UPVALUE0_.y + 370 / zoom, 150 / zoom, 45 / zoom, 255, 1)
      exports.ST_buttons:dxCreateButton("ZAAKCEPTUJ", _UPVALUE0_.x + 465 / zoom, _UPVALUE0_.y + 370 / zoom, 150 / zoom, 45 / zoom, 255, 1)
    else
      if getVehicleController(tabela_infoveh.vehicle) then
        dxDrawText("POJAZD: #ffaa00" .. exports.ST_core:changeNameClient("Sabre Turbo", getElementData(tabela_infoveh.vehicle, "vehicle:customID")) .. " #d2d2d2 | kierowca: #ffaa00" .. getPlayerName(getVehicleController(tabela_infoveh.vehicle)), _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      else
        dxDrawText("brak kierowcy w poje\197\186dzie", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      end
      dxDrawText("WYBIERZ JEDN\196\132 Z OPCJI", _UPVALUE0_.x + 517 / zoom, _UPVALUE0_.y + 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 274 / zoom, _UPVALUE0_.y + 159 / zoom, 162 / zoom, 162 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 274 / zoom, _UPVALUE0_.y + 159 / zoom, 162 / zoom, 162 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 274 / zoom, _UPVALUE0_.y + 159 / zoom, 162 / zoom, 162 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 275 / zoom, _UPVALUE0_.y + 160 / zoom, 160 / zoom, 160 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 305 / zoom, _UPVALUE0_.y + 165 / zoom, 100 / zoom, 100 / zoom, texturesMechanic.fix_icon, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      dxDrawText("NAPRAWA", _UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 385 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 449 / zoom, _UPVALUE0_.y + 159 / zoom, 162 / zoom, 162 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 449 / zoom, _UPVALUE0_.y + 159 / zoom, 162 / zoom, 162 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 449 / zoom, _UPVALUE0_.y + 159 / zoom, 162 / zoom, 162 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 450 / zoom, _UPVALUE0_.y + 160 / zoom, 160 / zoom, 160 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 170 / zoom, 90 / zoom, 90 / zoom, texturesMechanic.configure_icon, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      dxDrawText("KONFIGURACJA", _UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 385 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 274 / zoom, _UPVALUE0_.y + 334 / zoom, 162 / zoom, 162 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 274 / zoom, _UPVALUE0_.y + 334 / zoom, 162 / zoom, 162 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 274 / zoom, _UPVALUE0_.y + 334 / zoom, 162 / zoom, 162 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 275 / zoom, _UPVALUE0_.y + 335 / zoom, 160 / zoom, 160 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 305 / zoom, _UPVALUE0_.y + 350 / zoom, 100 / zoom, 100 / zoom, texturesMechanic.oil_icon, 0, 0, 0, interpolateColor(tabela_infoveh.oil[1], 1000, 350, {
        {
          0,
          255,
          0
        },
        {
          127,
          255,
          0
        },
        {
          191,
          255,
          0
        },
        {
          255,
          255,
          0
        },
        {
          255,
          191,
          0
        },
        {
          255,
          0,
          0
        }
      }), false)
      dxDrawText(string.format("%02.1f", tabela_infoveh.oil[1] / 10) .. "%", _UPVALUE0_.x + 334 / zoom, _UPVALUE0_.y + 614 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 230), 1 / zoom, exports.ST_gui:getGUIFont("font11"), "center", "center", false, false, false, true, false)
      dxDrawText("WYMIANA OLEJU", _UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 730 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 449 / zoom, _UPVALUE0_.y + 334 / zoom, 162 / zoom, 162 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 449 / zoom, _UPVALUE0_.y + 334 / zoom, 162 / zoom, 162 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 449 / zoom, _UPVALUE0_.y + 334 / zoom, 162 / zoom, 162 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 450 / zoom, _UPVALUE0_.y + 335 / zoom, 160 / zoom, 160 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 495 / zoom, _UPVALUE0_.y + 340 / zoom, 80 / zoom, 80 / zoom, texturesMechanic.techrev_icon, 0, 0, 0, tocolor(255, 187, 0, 210), false)
      if tabela_infoveh.oil[2] == "niewa\197\188ny" then
        dxDrawText("\226\156\152", _UPVALUE0_.x + 743 / zoom, _UPVALUE0_.y + 590 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 40, 40, 210), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
        dxDrawText("NIEWA\197\187NY", _UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 680 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 40, 40, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("\226\156\148", _UPVALUE0_.x + 743 / zoom, _UPVALUE0_.y + 590 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(40, 180, 40, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
        dxDrawText("Do #7bc77d" .. tabela_infoveh.oil[2], _UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 680 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      end
      dxDrawText("PRZEGL\196\132D TECHNICZNY", _UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 735 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 822.5 / zoom, _UPVALUE0_.y + 24.5 / zoom, 25 / zoom, 25 / zoom) then
        dxDrawImage(_UPVALUE0_.x + 822.5 / zoom, _UPVALUE0_.y + 24.5 / zoom, 25 / zoom, 25 / zoom, texturesMechanic.cross, 0, 0, 0, tocolor(255, 255, 255, 140), false)
      else
        dxDrawImage(_UPVALUE0_.x + 825 / zoom, _UPVALUE0_.y + 27 / zoom, 20 / zoom, 20 / zoom, texturesMechanic.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
  end
  if windowsMechanic.offerDriver == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesMechanic.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("OFERTA NAPRAWY OD MECHANIKA #ffaa00" .. getPlayerName(mechanic_offer), _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    exports.ST_buttons:dxCreateButton("ODRZU\196\134", _UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 500 / zoom, 170 / zoom, 50 / zoom, 255, 1)
    exports.ST_buttons:dxCreateButton("ZAAKCEPTUJ", _UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 500 / zoom, 170 / zoom, 50 / zoom, 255, 1)
    for _FORV_9_ = 1, 12 do
      if 0 + 1 > 2 then
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 80 / zoom + 50 / zoom * (1 + 1 - 1), 350 / zoom, 43 / zoom, 15 / zoom, tocolor(45, 45, 45, 50), false)
    end
    costofall = 0
    for _FORV_11_, _FORV_12_ in ipairs(table_repair_driver) do
      if 0 + 1 > 2 then
      end
      costofall = costofall + _FORV_12_.cost
      dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 80 / zoom + 50 / zoom * (1 + 1 - 1), 350 / zoom, 43 / zoom, 15 / zoom, tocolor(45, 45, 45, 240), false)
      dxDrawText(_FORV_12_.name, _UPVALUE0_.x + 90 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 3 / zoom + 100 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawText("#009419" .. _FORV_12_.cost .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y + 1 / zoom + 100 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 58 / zoom + 380 / zoom * (1 - 1), _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, true, false)
    end
    dxDrawText("Koszt naprawy: #009419" .. przecinek(costofall) .. " #ffffffPLN", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 670 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(235, 235, 235, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  end
  if windowsMechanic.paintshop == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesMechanic.background, 0, 0, 0, tocolor(25, 25, 25, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ KOLOR", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 80 / zoom, 380 / zoom, 300 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRectangle(_UPVALUE0_.x + 45 / zoom, _UPVALUE0_.y + 95 / zoom, 350 / zoom, 250 / zoom, tocolor(selfPaintshop.colorCurrent[1], selfPaintshop.colorCurrent[2], selfPaintshop.colorCurrent[3], 255))
    dxDrawImage(_UPVALUE0_.x + 45 / zoom, _UPVALUE0_.y + 95 / zoom, 350 / zoom, 250 / zoom, texturesMechanic.sv, 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawRectangle(_UPVALUE0_.x + 43 / zoom, _UPVALUE0_.y + 94 / zoom, 354 / zoom, 2 / zoom, tocolor(255, 187, 0, 255))
    dxDrawRectangle(_UPVALUE0_.x + 43 / zoom, _UPVALUE0_.y + 343 / zoom, 354 / zoom, 2 / zoom, tocolor(255, 187, 0, 255))
    dxDrawRectangle(_UPVALUE0_.x + 43 / zoom, _UPVALUE0_.y + 95 / zoom, 2 / zoom, 250 / zoom, tocolor(255, 187, 0, 255))
    dxDrawRectangle(_UPVALUE0_.x + 395 / zoom, _UPVALUE0_.y + 95 / zoom, 2 / zoom, 250 / zoom, tocolor(255, 187, 0, 255))
    calculateMouse()
    dxDrawImage(_UPVALUE0_.x + 45 / zoom, _UPVALUE0_.y + 355 / zoom, 350 / zoom, 10 / zoom, texturesMechanic.h, 180, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawCircle(_UPVALUE0_.x + 45 / zoom + selfPaintshop.colorSlide, _UPVALUE0_.y + 360 / zoom, 9 / zoom, 0, 360, tocolor(255, 255, 255, 255))
    dxDrawCircle(_UPVALUE0_.x + 45 / zoom + selfPaintshop.colorSlide, _UPVALUE0_.y + 360 / zoom, 8 / zoom, 0, 360, tocolor(selfPaintshop.colorCurrent[1], selfPaintshop.colorCurrent[2], selfPaintshop.colorCurrent[3], 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y + 82 / zoom, 150 / zoom, 90 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("#d10000R #00d200G #0000d2B", _UPVALUE0_.x + 430 / zoom, _UPVALUE0_.y + 1 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawText("" .. hsv2rgb((350 / zoom - selfPaintshop.colorSlide) / (350 / zoom), selfPaintshop.colorPicker.x / (350 / zoom), (250 / zoom - selfPaintshop.colorPicker.y) / (250 / zoom)) .. ", " .. hsv2rgb((350 / zoom - selfPaintshop.colorSlide) / (350 / zoom), selfPaintshop.colorPicker.x / (350 / zoom), (250 / zoom - selfPaintshop.colorPicker.y) / (250 / zoom)) .. ", " .. hsv2rgb((350 / zoom - selfPaintshop.colorSlide) / (350 / zoom), selfPaintshop.colorPicker.x / (350 / zoom), (250 / zoom - selfPaintshop.colorPicker.y) / (250 / zoom)) .. "", _UPVALUE0_.x + 624 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y + 185 / zoom, 150 / zoom, 90 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("HEX", _UPVALUE0_.x + 430 / zoom, _UPVALUE0_.y + 205 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawText(RGBToHex(hsv2rgb((350 / zoom - selfPaintshop.colorSlide) / (350 / zoom), selfPaintshop.colorPicker.x / (350 / zoom), (250 / zoom - selfPaintshop.colorPicker.y) / (250 / zoom))), _UPVALUE0_.x + 624 / zoom, _UPVALUE0_.y + 300 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y + 288 / zoom, 150 / zoom, 90 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("WYSZUKAJ", _UPVALUE0_.x + 624 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 580 / zoom, _UPVALUE0_.y + 82 / zoom, 265 / zoom, 90 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("WYBRANY KOLOR", _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 1 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 120 / zoom, 245 / zoom, 40 / zoom, 10 / zoom, tocolor(hsv2rgb((350 / zoom - selfPaintshop.colorSlide) / (350 / zoom), selfPaintshop.colorPicker.x / (350 / zoom), (250 / zoom - selfPaintshop.colorPicker.y) / (250 / zoom))))
    if isMouseIn(_UPVALUE0_.x + 810 / zoom, _UPVALUE0_.y + 88 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 810 / zoom, _UPVALUE0_.y + 88 / zoom, 25 / zoom, 25 / zoom, texturesMechanic.preview, 0, 0, 0, tocolor(255, 255, 255, 255))
      if isCursorShowing() then
        dxDrawText("Podgl\196\133d", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
        dxDrawText("Podgl\196\133d", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, true, false)
      end
    else
      dxDrawImage(_UPVALUE0_.x + 810 / zoom, _UPVALUE0_.y + 88 / zoom, 25 / zoom, 25 / zoom, texturesMechanic.preview, 0, 0, 0, tocolor(200, 200, 200, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 580 / zoom, _UPVALUE0_.y + 185 / zoom, 265 / zoom, 192 / zoom, 10 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("WYBIERZ CO CHCESZ MALOWA\196\134", _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 205 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
    if selfPaintshop.selectPainting == "KAROSERIA" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 587 / zoom, _UPVALUE0_.y + 219 / zoom, 122 / zoom, 72 / zoom, 10 / zoom, tocolor(0, 255, 0, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 588 / zoom, _UPVALUE0_.y + 220 / zoom, 120 / zoom, 70 / zoom, 10 / zoom, tocolor(25, 25, 25, 255))
    dxDrawText("KAROSERIA", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("" .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. ", " .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. ", " .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. "", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 330 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(getVehicleColor(getPedOccupiedVehicle(localPlayer), true)), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    if selfPaintshop.selectPainting == "FELGI" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 587 / zoom, _UPVALUE0_.y + 297 / zoom, 122 / zoom, 72 / zoom, 10 / zoom, tocolor(0, 255, 0, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 588 / zoom, _UPVALUE0_.y + 298 / zoom, 120 / zoom, 70 / zoom, 10 / zoom, tocolor(25, 25, 25, 255))
    dxDrawText("FELGI", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 425 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("" .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. ", " .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. ", " .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. "", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 485 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(getVehicleColor(getPedOccupiedVehicle(localPlayer), true)), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    if selfPaintshop.selectPainting == "DODATKI" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 717 / zoom, _UPVALUE0_.y + 219 / zoom, 122 / zoom, 72 / zoom, 10 / zoom, tocolor(0, 255, 0, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 718 / zoom, _UPVALUE0_.y + 220 / zoom, 120 / zoom, 70 / zoom, 10 / zoom, tocolor(25, 25, 25, 255))
    dxDrawText("DODATKI", _UPVALUE0_.x + 725 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("" .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. ", " .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. ", " .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. "", _UPVALUE0_.x + 725 / zoom, _UPVALUE0_.y + 330 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(getVehicleColor(getPedOccupiedVehicle(localPlayer), true)), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    if selfPaintshop.selectPainting == "RANTY" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 717 / zoom, _UPVALUE0_.y + 297 / zoom, 122 / zoom, 72 / zoom, 10 / zoom, tocolor(0, 255, 0, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 718 / zoom, _UPVALUE0_.y + 298 / zoom, 120 / zoom, 70 / zoom, 10 / zoom, tocolor(25, 25, 25, 255))
    dxDrawText("RANTY", _UPVALUE0_.x + 725 / zoom, _UPVALUE0_.y + 425 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("" .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. ", " .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. ", " .. getVehicleColor(getPedOccupiedVehicle(localPlayer), true) .. "", _UPVALUE0_.x + 725 / zoom, _UPVALUE0_.y + 485 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(getVehicleColor(getPedOccupiedVehicle(localPlayer), true)), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    if tonumber((exports.ST_gui:getCustomEditboxText("rgb1"))) and tonumber((exports.ST_gui:getCustomEditboxText("rgb2"))) and tonumber((exports.ST_gui:getCustomEditboxText("rgb3"))) and tonumber((exports.ST_gui:getCustomEditboxText("rgb1"))) <= 255 and tonumber((exports.ST_gui:getCustomEditboxText("rgb2"))) <= 255 and tonumber((exports.ST_gui:getCustomEditboxText("rgb3"))) <= 255 and exports.ST_gui:getCustomEditboxText("rgb1") and exports.ST_gui:getCustomEditboxText("rgb2") and exports.ST_gui:getCustomEditboxText("rgb3") then
      selfPaintshop.colorSlide = (1 - rgbToHsv(exports.ST_gui:getCustomEditboxText("rgb1"), exports.ST_gui:getCustomEditboxText("rgb2"), (exports.ST_gui:getCustomEditboxText("rgb3")))) * 350 / zoom
      selfPaintshop.colorPicker = Vector2(rgbToHsv(exports.ST_gui:getCustomEditboxText("rgb1"), exports.ST_gui:getCustomEditboxText("rgb2"), (exports.ST_gui:getCustomEditboxText("rgb3"))) * (350 / zoom), 250 / zoom - rgbToHsv(exports.ST_gui:getCustomEditboxText("rgb1"), exports.ST_gui:getCustomEditboxText("rgb2"), (exports.ST_gui:getCustomEditboxText("rgb3"))) * (250 / zoom))
      selfPaintshop.colorCurrent = {
        hsv2rgb(rgbToHsv(exports.ST_gui:getCustomEditboxText("rgb1"), exports.ST_gui:getCustomEditboxText("rgb2"), (exports.ST_gui:getCustomEditboxText("rgb3"))))
      }
    end
    dxDrawCircle(_UPVALUE0_.x + 45 / zoom + selfPaintshop.colorPicker.x, _UPVALUE0_.y + 96 / zoom + selfPaintshop.colorPicker.y, 8 / zoom, 0, 360, tocolor(255, 255, 255, 255))
    dxDrawCircle(_UPVALUE0_.x + 45 / zoom + selfPaintshop.colorPicker.x, _UPVALUE0_.y + 96 / zoom + selfPaintshop.colorPicker.y, 7 / zoom, 0, 360, tocolor(exports.ST_gui:getCustomEditboxText("rgb1"), exports.ST_gui:getCustomEditboxText("rgb2"), exports.ST_gui:getCustomEditboxText("rgb3"), 255))
    if isMouseIn(_UPVALUE0_.x + 822.5 / zoom, _UPVALUE0_.y + 24.5 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 822.5 / zoom, _UPVALUE0_.y + 24.5 / zoom, 25 / zoom, 25 / zoom, texturesMechanic.cross, 0, 0, 0, tocolor(255, 255, 255, 140), false)
    else
      dxDrawImage(_UPVALUE0_.x + 825 / zoom, _UPVALUE0_.y + 27 / zoom, 20 / zoom, 20 / zoom, texturesMechanic.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 395 / zoom, _UPVALUE0_.w - 500 / zoom, 150 / zoom, 15 / zoom, tocolor(35, 35, 35, 255), false)
    dxDrawText("KOSZT MALOWANIA", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 630 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawText("#0cb500" .. przecinek(selfPaintshop.data.parts_price.paint) .. " #ffffffPLN", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 700 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ROZPOCZNIJ", _UPVALUE0_.x + 360 / zoom, _UPVALUE0_.y + 480 / zoom, _UPVALUE0_.w - 720 / zoom, 50 / zoom, 255, 1)
  end
  if windowsMechanic.repairKit == true then
    dxDrawRoundedRectangle(_UPVALUE6_.x - 1 / zoom, _UPVALUE6_.y - 1 / zoom, _UPVALUE6_.w + 2 / zoom, _UPVALUE6_.h + 2 / zoom, 25 / zoom, tocolor(255, 187, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(_UPVALUE6_.x + 15 / zoom, _UPVALUE6_.y + 40 / zoom, _UPVALUE6_.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawImage(_UPVALUE6_.x + _UPVALUE6_.w - 45 / zoom, _UPVALUE6_.y + 10 / zoom, 25 / zoom, 25 / zoom, texturesMechanic.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ZESTAW NAPRAWCZY", _UPVALUE6_.x + 20 / zoom, _UPVALUE6_.y - 155 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE6_.x + 122 / zoom, _UPVALUE6_.y + 50 / zoom, 165 / zoom, 150 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
    dxDrawImage(_UPVALUE6_.x + 122 / zoom, _UPVALUE6_.y + 55 / zoom, 70 / zoom, 70 / zoom, texturesMechanic.repairkit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ilo\197\155\196\135: #ffaa00" .. selfRepairKit.data.parts.repairKit .. "", _UPVALUE6_.x + 185 / zoom, _UPVALUE6_.y - 0 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, true, false)
    dxDrawText("ZESTAW NAPRAWCZY", _UPVALUE6_.x + 185 / zoom, _UPVALUE6_.y - 60 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font11"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE6_.x + 158 / zoom, _UPVALUE6_.y + 135 / zoom, 25 / zoom, 25 / zoom, 5 / zoom, tocolor(50, 50, 50, 255))
    dxDrawText("<", _UPVALUE6_.x - 21 / zoom, _UPVALUE6_.y + 97 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    dxDrawText(selfRepairKit.repairKit, _UPVALUE6_.x + 49 / zoom, _UPVALUE6_.y + 97 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE6_.x + 226 / zoom, _UPVALUE6_.y + 135 / zoom, 25 / zoom, 25 / zoom, 5 / zoom, tocolor(50, 50, 50, 255))
    dxDrawText(">", _UPVALUE6_.x + 115 / zoom, _UPVALUE6_.y + 97 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    dxDrawText("KOSZT: #009419" .. przecinek(selfRepairKit.data.parts_price.repairKit) .. " #ffffffPLN", _UPVALUE6_.x + 49 / zoom, _UPVALUE6_.y + 160 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE6_.x + 315 / zoom, _UPVALUE6_.y + 50 / zoom, 165 / zoom, 150 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
    dxDrawImage(_UPVALUE6_.x + 320 / zoom, _UPVALUE6_.y + 55 / zoom, 70 / zoom, 70 / zoom, texturesMechanic.aku_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("AKUMULATOR", _UPVALUE6_.x + 392 / zoom, _UPVALUE6_.y - 60 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
    dxDrawText("ilo\197\155\196\135: #ffaa00" .. selfRepairKit.data.parts.aku .. "", _UPVALUE6_.x + 392 / zoom, _UPVALUE6_.y - 0 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE6_.x + 351 / zoom, _UPVALUE6_.y + 135 / zoom, 25 / zoom, 25 / zoom, 5 / zoom, tocolor(50, 50, 50, 255))
    dxDrawText("<", _UPVALUE6_.x + 366 / zoom, _UPVALUE6_.y + 97 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    dxDrawText(selfRepairKit.battery, _UPVALUE6_.x + 432 / zoom, _UPVALUE6_.y + 97 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE6_.x + 419 / zoom, _UPVALUE6_.y + 135 / zoom, 25 / zoom, 25 / zoom, 5 / zoom, tocolor(50, 50, 50, 255))
    dxDrawText(">", _UPVALUE6_.x + 502 / zoom, _UPVALUE6_.y + 97 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    dxDrawText("KOSZT: #009419" .. przecinek(selfRepairKit.data.parts_price.aku) .. " #ffffffPLN", _UPVALUE6_.x + 432 / zoom, _UPVALUE6_.y + 160 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    dxDrawText("DO ZAP\197\129ATY: #009419" .. przecinek(selfRepairKit.battery * selfRepairKit.data.parts_price.aku + selfRepairKit.repairKit * selfRepairKit.data.parts_price.repairKit) .. " #ffffffPLN", _UPVALUE6_.x + 240 / zoom, _UPVALUE6_.y + 237 / zoom, _UPVALUE6_.x + 362 / zoom, _UPVALUE6_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE6_.x + 220 / zoom, _UPVALUE6_.y + 240 / zoom, 160 / zoom, 50 / zoom, 255, 1)
  end
end
function windowRender()
  if _UPVALUE1_.playerWorker == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 200))
    dxDrawText("PRACOWNIK WARSZTATU", _UPVALUE0_.x, _UPVALUE0_.y - 110 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    for _FORV_7_, _FORV_8_ in ipairs(dataInfoWorker) do
      dxDrawText("W\197\129A\197\154CICIEL: " .. _UPVALUE1_.dataBusiness.colorNickName .. "" .. _UPVALUE1_.dataBusiness.owner .. "", _UPVALUE0_.x, _UPVALUE0_.y - 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("PRZEPRACOWANY CZAS: #ffbf00" .. secondsToClock(60 * _FORV_8_.time_paycheck) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("OBS\197\129U\197\187ENI KLIENCI\nDZI\197\154: #ffbf00" .. przecinek(_FORV_8_.car_today), _UPVALUE0_.x, _UPVALUE0_.y + 120 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    end
    if getTickCount() - tick > 300000 then
      tick = getTickCount()
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "addMinutesMechanic", localPlayer, _UPVALUE1_.dataBusiness.id)
    end
    dxDrawText("PRACUJESZ OD: #ffbf00" .. secondsToClock1(timeMechanicOwner) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 140 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    if getTickCount() - tick1 > 1000 then
      tick1 = getTickCount()
      timeMechanicOwner = timeMechanicOwner + 1
    end
  elseif _UPVALUE1_.playerRandomWork == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 200))
    dxDrawText("PRACOWNIK WARSZTATU", _UPVALUE0_.x, _UPVALUE0_.y - 110 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    dxDrawText("W\197\129A\197\154CICIEL: " .. _UPVALUE1_.dataBusiness.colorNickName .. "" .. _UPVALUE1_.dataBusiness.owner .. "", _UPVALUE0_.x, _UPVALUE0_.y - 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    if getTickCount() - tick > 300000 then
      tick = getTickCount()
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "addMinutesMechanic", localPlayer, _UPVALUE1_.dataBusiness.id, true)
    end
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE1_.table_stjobs) do
      dxDrawText("\197\129\196\132CZNY CZAS: " .. secondsToClock(60 * _FORV_8_.czas_mechanik) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawText("PRZEPRACOWANY CZAS: " .. secondsToClock(60 * _FORV_8_.czas_mechanik1) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 140 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawText("DO WYP\197\129ATY: #009419" .. przecinek(math.floor(700000 * (_FORV_8_.czas_mechanik1 / 60))) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("PRACUJESZ OD: #ffbf00" .. secondsToClock1(timeMechanicOwner) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 140 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    if getTickCount() - tick1 > 1000 then
      tick1 = getTickCount()
      timeMechanicOwner = timeMechanicOwner + 1
    end
  else
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h - 50 / zoom, 15 / zoom, tocolor(25, 25, 25, 200))
    dxDrawText("PRACUJESZ JAKO W\197\129A\197\154CICIEL", _UPVALUE0_.x, _UPVALUE0_.y - 110 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    dxDrawText("PRACUJESZ OD: #ffbf00" .. secondsToClock1(timeMechanicOwner) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 10 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    if getTickCount() - tick1 > 1000 then
      tick1 = getTickCount()
      timeMechanicOwner = timeMechanicOwner + 1
    end
  end
  if math.floor(getDistanceBetweenPoints3D(_UPVALUE1_.posCenterMechanic[1], _UPVALUE1_.posCenterMechanic[2], _UPVALUE1_.posCenterMechanic[3], getElementPosition(localPlayer))) > 100 then
    triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "plrJob", localPlayer, false)
    exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153 mechanika", "info")
    removeEventHandler("onClientRender", root, windowRender)
    triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setSkin", localPlayer, false)
    triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "plrStrefa", localPlayer, false)
  end
  if _UPVALUE1_.malowanie and selfPaintshop.vehicle and getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) and getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) then
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) - 86 / zoom, getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(selfPaintshop.currentColors[1], selfPaintshop.currentColors[2], selfPaintshop.currentColors[3], 255))
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) - 85 / zoom, getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
    dxDrawText("MALOWANIE: " .. selfPaintshop.selectPainting, getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)))
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) - 80 / zoom, getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) + 60 / zoom, 160 / zoom, 15 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
    dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) - 80 / zoom, getScreenFromWorldPosition(getElementPosition(selfPaintshop.vehicle)) + 60 / zoom, 1.6 * selfPaintshop.posX / zoom, 15 / zoom, 5 / zoom, tocolor(selfPaintshop.currentColors[1], selfPaintshop.currentColors[2], selfPaintshop.currentColors[3], 255))
    if 159 / zoom < 1.6 * selfPaintshop.posX / zoom then
      toggleControl("fire", false)
      toggleControl("aim_weapon", false)
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "plrStrefa", localPlayer, false)
      _UPVALUE1_.malowanie = false
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "paintVehiclePainting", localPlayer, selfPaintshop.vehicle, selfPaintshop.currentColors, selfPaintshop.selectPainting, selfPaintshop.player, _UPVALUE1_.dataBusiness)
      removeEventHandler("onClientPlayerWeaponFire", root, PaintingUseCan)
    end
  end
end
function clickMechanic(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and windowsMechanic.repairKit == true then
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 45 / zoom, _UPVALUE0_.y + 10 / zoom, 25 / zoom, 25 / zoom) then
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.repairKit = false
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x + 158 / zoom, _UPVALUE0_.y + 135 / zoom, 25 / zoom, 25 / zoom) then
      if selfRepairKit.repairKit <= 0 then
        return
      end
      selfRepairKit.repairKit = selfRepairKit.repairKit - 1
    elseif isMouseIn(_UPVALUE0_.x + 226 / zoom, _UPVALUE0_.y + 135 / zoom, 25 / zoom, 25 / zoom) then
      if selfRepairKit.repairKit >= 5 then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz kupi\196\135 wi\196\153cej ni\197\188 5 zestaw\195\179w naprawczych", "error")
        return
      end
      selfRepairKit.repairKit = selfRepairKit.repairKit + 1
    elseif isMouseIn(_UPVALUE0_.x + 351 / zoom, _UPVALUE0_.y + 135 / zoom, 25 / zoom, 25 / zoom) then
      if 0 >= selfRepairKit.battery then
        return
      end
      selfRepairKit.battery = selfRepairKit.battery - 1
    elseif isMouseIn(_UPVALUE0_.x + 419 / zoom, _UPVALUE0_.y + 135 / zoom, 25 / zoom, 25 / zoom) then
      if 5 <= selfRepairKit.battery then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz kupi\196\135 wi\196\153cej ni\197\188 5 akumulator\195\179w", "error")
        return
      end
      selfRepairKit.battery = selfRepairKit.battery + 1
    elseif isMouseIn(_UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y + 240 / zoom, 160 / zoom, 50 / zoom) then
      if kupilZestawNaprawczy then
        return
      end
      kupilZestawNaprawczy = true
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "buyRepairKit", localPlayer, selfRepairKit.repairKit, selfRepairKit.data.id, selfRepairKit.battery)
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "down" and windowsMechanic.paintshop == true then
    if isMouseIn(_UPVALUE1_.x + 45 / zoom, _UPVALUE1_.y + 355 / zoom, 350 / zoom, 10 / zoom) then
      selfPaintshop.mouseSelected = "hue"
    elseif isMouseIn(_UPVALUE1_.x + 45 / zoom, _UPVALUE1_.y + 95 / zoom, 350 / zoom, 250 / zoom) then
      selfPaintshop.mouseSelected = "color"
    elseif isMouseIn(_UPVALUE1_.x + 822.5 / zoom, _UPVALUE1_.y + 24.5 / zoom, 25 / zoom, 25 / zoom) then
      exports.ST_gui:destroyCustomEditbox("rgb1")
      exports.ST_gui:destroyCustomEditbox("rgb2")
      exports.ST_gui:destroyCustomEditbox("rgb3")
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.paintshop = false
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
    elseif isMouseIn(_UPVALUE1_.x + 588 / zoom, _UPVALUE1_.y + 220 / zoom, 120 / zoom, 70 / zoom) then
      selfPaintshop.selectPainting = "KAROSERIA"
    elseif isMouseIn(_UPVALUE1_.x + 588 / zoom, _UPVALUE1_.y + 298 / zoom, 120 / zoom, 70 / zoom) then
      selfPaintshop.selectPainting = "FELGI"
    elseif isMouseIn(_UPVALUE1_.x + 718 / zoom, _UPVALUE1_.y + 220 / zoom, 120 / zoom, 70 / zoom) then
      selfPaintshop.selectPainting = "DODATKI"
    elseif isMouseIn(_UPVALUE1_.x + 718 / zoom, _UPVALUE1_.y + 298 / zoom, 120 / zoom, 70 / zoom) then
      selfPaintshop.selectPainting = "RANTY"
    elseif isMouseIn(_UPVALUE1_.x + 360 / zoom, _UPVALUE1_.y + 480 / zoom, _UPVALUE1_.w - 720 / zoom, 50 / zoom) then
      if selfPaintshop.preview then
        return
      end
      players = {}
      for _FORV_5_, _FORV_6_ in ipairs(getElementsByType("player")) do
        if getElementData(_FORV_6_, "player:job") and getElementData(_FORV_6_, "player:job") == selfPaintshop.idMechanic[1] then
          table.insert(players, _FORV_6_)
        end
      end
      if #players == 0 then
        exports.st_gui:showPlayerNotification("Brak aktywnych mechanik\195\179w na s\197\130u\197\188bie", "success")
        return
      end
      if 50 > getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
        triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "sendOfferMechanicPainting", localPlayer, selfPaintshop.vehicle, {
          hsv2rgb((350 / zoom - selfPaintshop.colorSlide) / (350 / zoom), selfPaintshop.colorPicker.x / (350 / zoom), (250 / zoom - selfPaintshop.colorPicker.y) / (250 / zoom))
        }, selfPaintshop.selectPainting, players[math.random(1, #players)])
        exports.st_gui:showPlayerNotification("Mechanik " .. getPlayerName(players[math.random(1, #players)]) .. " otrzyma\197\130 twoje zlecenie\nPoczekaj, a\197\188 pomaluje ci pojazd", "info")
        exports.ST_gui:destroyCustomEditbox("rgb1")
        exports.ST_gui:destroyCustomEditbox("rgb2")
        exports.ST_gui:destroyCustomEditbox("rgb3")
        removeEventHandler("onClientRender", root, windowMechanic)
        removeEventHandler("onClientClick", root, clickMechanic)
        windowsMechanic.paintshop = false
        for _FORV_18_, _FORV_19_ in pairs(texturesMechanic) do
          if isElement(_FORV_19_) then
            destroyElement(_FORV_19_)
          end
        end
        texturesMechanic = {}
      else
        exports.st_gui:showPlayerNotification("Jeste\197\155 za daleko", "error")
      end
    elseif isMouseIn(_UPVALUE1_.x + 810 / zoom, _UPVALUE1_.y + 88 / zoom, 25 / zoom, 25 / zoom) then
      if selfPaintshop.preview then
        return
      end
      selfPaintshop.preview = {
        getVehicleColor(selfPaintshop.vehicle, true)
      }
      windowsMechanic.paintshop = false
      if selfPaintshop.selectPainting == "KAROSERIA" then
        setVehicleColor(selfPaintshop.vehicle, hsv2rgb((350 / zoom - selfPaintshop.colorSlide) / (350 / zoom), selfPaintshop.colorPicker.x / (350 / zoom), (250 / zoom - selfPaintshop.colorPicker.y) / (250 / zoom)))
      elseif selfPaintshop.selectPainting == "DODATKI" then
        setVehicleColor(selfPaintshop.vehicle, getVehicleColor(selfPaintshop.vehicle, true))
      elseif selfPaintshop.selectPainting == "FELGI" then
        setVehicleColor(selfPaintshop.vehicle, getVehicleColor(selfPaintshop.vehicle, true))
      elseif selfPaintshop.selectPainting == "RANTY" then
        setVehicleColor(selfPaintshop.vehicle, getVehicleColor(selfPaintshop.vehicle, true))
      end
      exports.ST_gui:destroyCustomEditbox("rgb1")
      exports.ST_gui:destroyCustomEditbox("rgb2")
      exports.ST_gui:destroyCustomEditbox("rgb3")
      setTimer(function()
        setVehicleColor(selfPaintshop.vehicle, selfPaintshop.preview[1], selfPaintshop.preview[2], selfPaintshop.preview[3], selfPaintshop.preview[4], selfPaintshop.preview[5], selfPaintshop.preview[6], selfPaintshop.preview[7], selfPaintshop.preview[8], selfPaintshop.preview[9], selfPaintshop.preview[10], selfPaintshop.preview[11], selfPaintshop.preview[12])
        windowsMechanic.paintshop = true
        selfPaintshop.preview = false
        exports.ST_gui:createCustomEditbox("rgb1", "R", _UPVALUE0_.x + 422 / zoom, _UPVALUE0_.y + 338 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
        exports.ST_gui:createCustomEditbox("rgb2", "G", _UPVALUE0_.x + 472 / zoom, _UPVALUE0_.y + 338 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
        exports.ST_gui:createCustomEditbox("rgb3", "B", _UPVALUE0_.x + 522 / zoom, _UPVALUE0_.y + 338 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
      end, 10000, 1)
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" and windowsMechanic.paintshop == true then
    selfPaintshop.mouseSelected = nil
  end
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windowsMechanic.mechanic == true and windowsMechanic.category == "naprawa" then
      for _FORV_7_, _FORV_8_ in ipairs(toRepairTable) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE1_.x + 80 / zoom + 380 / zoom * (1 - 1), _UPVALUE1_.y + 80 / zoom + 50 / zoom * (1 + 1 - 1), 350 / zoom, 43 / zoom) then
          if not _FORV_8_.selected then
            if 0 >= _FORV_8_.number then
              exports.st_gui:showPlayerNotification("W magazynie nie ma wybranej cz\196\153\197\155ci", "error")
              return
            end
            _FORV_8_.selected = true
            _FORV_8_.number = _FORV_8_.number - 1
          else
            _FORV_8_.selected = false
            _FORV_8_.number = _FORV_8_.number + 1
          end
        end
      end
    end
    if windowsMechanic.mechanic == true and windowsMechanic.category == "konfiguracja" then
      for _FORV_9_, _FORV_10_ in ipairs(tabela_config_mech) do
        if _FORV_9_ >= _UPVALUE2_ and _FORV_9_ <= _UPVALUE3_ then
          if 0 + 1 > 2 then
          end
          if _FORV_10_.nameHandling == "centerOfMass" then
            liczbaZmiany = 0.05
            if getKeyState("lshift") then
              liczbaZmiany = 0.1
            end
            if getKeyState("lctrl") then
              liczbaZmiany = 0.01
            end
            if not isMouseIn(_UPVALUE1_.x + 400 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) or tonumber(_FORV_10_[2]) == 0 then
            elseif tabela_config_mech[_FORV_9_].zmiana == "resetowanie" then
              tabela_config_mech[_FORV_9_].zmiana = {
                0,
                0,
                0
              }
            else
              tabela_config_mech[_FORV_9_].zmiana = "resetowanie"
            end
            if isMouseIn(_UPVALUE1_.x + 150 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 125 / zoom + 140 / zoom * (1 + 1 - 1), 15 / zoom, 15 / zoom) then
              if _FORV_10_.block == 0 then
                exports.st_gui:showPlayerNotification("Nie mo\197\188na modyfikowa\196\135 bez kupionego ulepszenia", "error")
                return
              end
              if tonumber(_FORV_10_[2]) == 0 then
                if tonumber(("%.2f"):format(_FORV_10_[3][1] + tabela_config_mech[_FORV_9_].zmiana[1] + liczbaZmiany)) > tonumber(("%.2f"):format(_FORV_10_.max)) then
                  return
                end
                _FORV_10_.zmiana[1] = _FORV_10_.zmiana[1] + liczbaZmiany
              else
                if tonumber(("%.2f"):format(split(_FORV_10_[2], ",")[1] + tabela_config_mech[_FORV_9_].zmiana[1] + liczbaZmiany)) > tonumber(("%.2f"):format(_FORV_10_.max)) then
                  return
                end
                _FORV_10_.zmiana[1] = _FORV_10_.zmiana[1] + liczbaZmiany
              end
              if tonumber(("%.2f"):format(_FORV_10_.zmiana[1])) == tonumber(("%.2f"):format(0)) or tonumber(("%.2f"):format(_FORV_10_.zmiana[1])) == tonumber(("%.2f"):format(0)) then
                _FORV_10_.zmiana[1] = 0
              end
            elseif isMouseIn(_UPVALUE1_.x + 150 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 165 / zoom + 140 / zoom * (1 + 1 - 1), 15 / zoom, 15 / zoom) then
              if _FORV_10_.block == 0 then
                exports.st_gui:showPlayerNotification("Nie mo\197\188na modyfikowa\196\135 bez kupionego ulepszenia", "error")
                return
              end
              if tonumber(_FORV_10_[2]) == 0 then
                if tonumber(("%.2f"):format(_FORV_10_[3][1] + tabela_config_mech[_FORV_9_].zmiana[1] - liczbaZmiany)) < tonumber(("%.2f"):format(_FORV_10_.min)) then
                  return
                end
                _FORV_10_.zmiana[1] = _FORV_10_.zmiana[1] - liczbaZmiany
              else
                if tonumber(("%.2f"):format(split(_FORV_10_[2], ",")[1] + tabela_config_mech[_FORV_9_].zmiana[1] - liczbaZmiany)) < tonumber(("%.2f"):format(_FORV_10_.min)) then
                  return
                end
                _FORV_10_.zmiana[1] = _FORV_10_.zmiana[1] - liczbaZmiany
              end
              if tonumber(("%.2f"):format(_FORV_10_.zmiana[1])) == tonumber(("%.2f"):format(0)) or tonumber(("%.2f"):format(_FORV_10_.zmiana[1])) == tonumber(("%.2f"):format(0)) then
                _FORV_10_.zmiana[1] = 0
              end
            elseif isMouseIn(_UPVALUE1_.x + 224 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 121 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom) then
              if _FORV_10_.block == 0 then
                exports.st_gui:showPlayerNotification("Nie mo\197\188na modyfikowa\196\135 bez kupionego ulepszenia", "error")
                return
              end
              if tonumber(_FORV_10_[2]) == 0 then
                if tonumber(("%.2f"):format(_FORV_10_[3][2] + tabela_config_mech[_FORV_9_].zmiana[2] + liczbaZmiany)) > tonumber(("%.2f"):format(_FORV_10_.max)) then
                  return
                end
                _FORV_10_.zmiana[2] = _FORV_10_.zmiana[2] + liczbaZmiany
              else
                if tonumber(("%.2f"):format(split(_FORV_10_[2], ",")[2] + tabela_config_mech[_FORV_9_].zmiana[2] + liczbaZmiany)) > tonumber(("%.2f"):format(_FORV_10_.max)) then
                  return
                end
                _FORV_10_.zmiana[2] = _FORV_10_.zmiana[2] + liczbaZmiany
              end
              if tonumber(("%.2f"):format(_FORV_10_.zmiana[3])) == tonumber(("%.2f"):format(0)) or tonumber(("%.2f"):format(_FORV_10_.zmiana[2])) == tonumber(("%.2f"):format(0)) then
                _FORV_10_.zmiana[2] = 0
              end
            elseif isMouseIn(_UPVALUE1_.x + 224 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 162 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom) then
              if _FORV_10_.block == 0 then
                exports.st_gui:showPlayerNotification("Nie mo\197\188na modyfikowa\196\135 bez kupionego ulepszenia", "error")
                return
              end
              if tonumber(_FORV_10_[2]) == 0 then
                if tonumber(("%.2f"):format(_FORV_10_[3][2] + tabela_config_mech[_FORV_9_].zmiana[2] - liczbaZmiany)) < tonumber(("%.2f"):format(_FORV_10_.min)) then
                  return
                end
                _FORV_10_.zmiana[2] = _FORV_10_.zmiana[2] - liczbaZmiany
              else
                if tonumber(("%.2f"):format(split(_FORV_10_[2], ",")[2] + tabela_config_mech[_FORV_9_].zmiana[2] - liczbaZmiany)) < tonumber(("%.2f"):format(_FORV_10_.min)) then
                  return
                end
                _FORV_10_.zmiana[2] = _FORV_10_.zmiana[2] - liczbaZmiany
              end
              if tonumber(("%.2f"):format(_FORV_10_.zmiana[2])) == tonumber(("%.2f"):format(0)) or tonumber(("%.2f"):format(_FORV_10_.zmiana[2])) == tonumber(("%.2f"):format(0)) then
                _FORV_10_.zmiana[2] = 0
              end
            elseif isMouseIn(_UPVALUE1_.x + 294 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 121 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom) then
              if _FORV_10_.block == 0 then
                exports.st_gui:showPlayerNotification("Nie mo\197\188na modyfikowa\196\135 bez kupionego ulepszenia", "error")
                return
              end
              if tonumber(_FORV_10_[2]) == 0 then
                if tonumber(("%.2f"):format(_FORV_10_[3][3] + tabela_config_mech[_FORV_9_].zmiana[3] + liczbaZmiany)) > tonumber(("%.2f"):format(_FORV_10_.max)) then
                  return
                end
                _FORV_10_.zmiana[3] = _FORV_10_.zmiana[3] + liczbaZmiany
              else
                if tonumber(("%.2f"):format(split(_FORV_10_[2], ",")[3] + tabela_config_mech[_FORV_9_].zmiana[3] + liczbaZmiany)) > tonumber(("%.2f"):format(_FORV_10_.max)) then
                  return
                end
                _FORV_10_.zmiana[3] = _FORV_10_.zmiana[3] + liczbaZmiany
              end
              if tonumber(("%.2f"):format(_FORV_10_.zmiana[3])) == tonumber(("%.2f"):format(0)) or tonumber(("%.2f"):format(_FORV_10_.zmiana[3])) == tonumber(("%.2f"):format(0)) then
                _FORV_10_.zmiana[3] = 0
              end
            elseif isMouseIn(_UPVALUE1_.x + 294 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 162 / zoom + 140 / zoom * (1 + 1 - 1), 18 / zoom, 18 / zoom) then
              if _FORV_10_.block == 0 then
                exports.st_gui:showPlayerNotification("Nie mo\197\188na modyfikowa\196\135 bez kupionego ulepszenia", "error")
                return
              end
              if tonumber(_FORV_10_[2]) == 0 then
                if tonumber(("%.2f"):format(_FORV_10_[3][3] + tabela_config_mech[_FORV_9_].zmiana[3] - liczbaZmiany)) < tonumber(("%.2f"):format(_FORV_10_.min)) then
                  return
                end
                _FORV_10_.zmiana[3] = _FORV_10_.zmiana[3] - liczbaZmiany
              else
                if tonumber(("%.2f"):format(split(_FORV_10_[2], ",")[3] + tabela_config_mech[_FORV_9_].zmiana[3] - liczbaZmiany)) < tonumber(("%.2f"):format(_FORV_10_.min)) then
                  return
                end
                _FORV_10_.zmiana[3] = _FORV_10_.zmiana[3] - liczbaZmiany
              end
              if tonumber(("%.2f"):format(_FORV_10_.zmiana[3])) == tonumber(("%.2f"):format(0)) or tonumber(("%.2f"):format(_FORV_10_.zmiana[3])) == tonumber(("%.2f"):format(0)) then
                _FORV_10_.zmiana[3] = 0
              end
            end
          else
            if _FORV_10_.nameHandling == "steeringLock" then
              liczbaZmiany = 1
              if getKeyState("lshift") then
                liczbaZmiany = 10
              end
            elseif _FORV_10_.nameHandling == "mass" or _FORV_10_.nameHandling == "turnMass" then
              liczbaZmiany = 5
              if getKeyState("lshift") then
                liczbaZmiany = 50
              end
              if getKeyState("lctrl") then
                liczbaZmiany = 1
              end
            else
              liczbaZmiany = 0.05
              if getKeyState("lshift") then
                liczbaZmiany = 0.2
              end
              if getKeyState("lctrl") then
                liczbaZmiany = 0.01
              end
            end
            if not isMouseIn(_UPVALUE1_.x + 400 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 85 / zoom + 140 / zoom * (1 + 1 - 1), 20 / zoom, 20 / zoom) or tonumber(_FORV_10_[2]) == 0 then
            elseif tabela_config_mech[_FORV_9_].zmiana == "resetowanie" then
              tabela_config_mech[_FORV_9_].zmiana = 0
            else
              tabela_config_mech[_FORV_9_].zmiana = "resetowanie"
            end
            if isMouseIn(_UPVALUE1_.x + 170 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 120 / zoom + 140 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom) then
              if _FORV_10_.block == 0 then
                exports.st_gui:showPlayerNotification("Nie mo\197\188na modyfikowa\196\135 bez kupionego ulepszenia", "error")
                return
              end
              if tonumber(_FORV_10_[2]) == 0 then
                if tonumber(("%.2f"):format(_FORV_10_[3] + tabela_config_mech[_FORV_9_].zmiana - liczbaZmiany)) < tonumber(("%.2f"):format(_FORV_10_.min)) then
                  return
                end
                tabela_config_mech[_FORV_9_].zmiana = tabela_config_mech[_FORV_9_].zmiana - liczbaZmiany
              else
                if tonumber(("%.2f"):format(split(_FORV_10_[2], ",")[1] + tabela_config_mech[_FORV_9_].zmiana - liczbaZmiany)) < tonumber(("%.2f"):format(_FORV_10_.min)) then
                  return
                end
                tabela_config_mech[_FORV_9_].zmiana = tabela_config_mech[_FORV_9_].zmiana - liczbaZmiany
              end
              if tonumber(("%.2f"):format(_FORV_10_.zmiana)) == tonumber(("%.2f"):format(0)) or tonumber(("%.2f"):format(_FORV_10_.zmiana)) == tonumber(("%.2f"):format(0)) then
                _FORV_10_.zmiana = 0
              end
            elseif isMouseIn(_UPVALUE1_.x + 270 / zoom + 415 / zoom * (1 - 1), _UPVALUE1_.y + 120 / zoom + 140 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom) then
              if _FORV_10_.block == 0 then
                exports.st_gui:showPlayerNotification("Nie mo\197\188na modyfikowa\196\135 bez kupionego ulepszenia", "error")
                return
              end
              if tonumber(_FORV_10_[2]) == 0 then
                if tonumber(("%.2f"):format(_FORV_10_[3] + tabela_config_mech[_FORV_9_].zmiana + liczbaZmiany)) > tonumber(("%.2f"):format(_FORV_10_.max)) then
                  return
                end
                tabela_config_mech[_FORV_9_].zmiana = tabela_config_mech[_FORV_9_].zmiana + liczbaZmiany
              else
                if tonumber(("%.2f"):format(split(_FORV_10_[2], ",")[1] + tabela_config_mech[_FORV_9_].zmiana + liczbaZmiany)) > tonumber(("%.2f"):format(_FORV_10_.max)) then
                  return
                end
                tabela_config_mech[_FORV_9_].zmiana = tabela_config_mech[_FORV_9_].zmiana + liczbaZmiany
              end
              if tonumber(("%.2f"):format(_FORV_10_.zmiana)) == tonumber(("%.2f"):format(0)) or tonumber(("%.2f"):format(_FORV_10_.zmiana)) == tonumber(("%.2f"):format(0)) then
                _FORV_10_.zmiana = 0
              end
            end
          end
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 420 / zoom, 50 / zoom, 50 / zoom) and windowsMechanic.background == true then
      windowsMechanic.background = false
      windowsMechanic.start = false
      windowsMechanic.paintshop = false
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
    elseif isMouseIn(_UPVALUE1_.x + 690 / zoom, _UPVALUE1_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windowsMechanic.start == true then
      if getElementData(localPlayer, "player:job") == _UPVALUE4_.nameBusiness[1] then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      if _UPVALUE4_.playerRandomWork == true then
        if #players >= 2 then
          exports.st_gui:showPlayerNotification("W tej pracy nie ma wolnych miejsc.", "info")
          return
        end
      elseif #players >= 3 then
        exports.st_gui:showPlayerNotification("W tej pracy nie ma wolnych miejsc.", "info")
        return
      end
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "plrJob", localPlayer, true, _UPVALUE4_.nameBusiness[1])
      if not _UPVALUE4_.playerRandomWork then
        outputChatBox(" ")
        outputChatBox("#297bff\226\151\143 #ffffffRozpocz\196\153to prac\196\153 mechanika", 255, 255, 255, true)
        outputChatBox("#297bff\226\151\143 #ffffffAby pisa\196\135 na czacie biznesowym u\197\188yj /#297bffbiznes #ffffff<#297bffwiadomo\197\155\196\135#ffffff>", 255, 255, 255, true)
        outputChatBox(" ")
      end
      addEventHandler("onClientRender", root, windowRender)
      tick = getTickCount()
      tick1 = getTickCount()
      timeMechanicOwner = 0
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setSkin", localPlayer, true, _UPVALUE4_.dataBusiness.id)
    elseif isMouseIn(_UPVALUE1_.x + 490 / zoom, _UPVALUE1_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windowsMechanic.start == true then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= _UPVALUE4_.nameBusiness[1] then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "plrJob", localPlayer, false)
      outputChatBox(" ")
      outputChatBox("#297bff\226\151\143 #ffffffZako\197\132czono prac\196\153 mechanika", 255, 255, 255, true)
      outputChatBox(" ")
      removeEventHandler("onClientRender", root, windowRender)
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setSkin", localPlayer, false)
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "plrStrefa", localPlayer, false)
    elseif isMouseIn(_UPVALUE1_.x + 110 / zoom, _UPVALUE1_.y + 445 / zoom, 300 / zoom, 70 / zoom) and windowsMechanic.start == true then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if wyplacil == true then
        return
      end
      if _UPVALUE4_.playerWorker then
        for _FORV_5_, _FORV_6_ in ipairs(dataInfoWorker) do
          if _FORV_6_.time_paycheck < 59 then
            exports.st_gui:showPlayerNotification("Musisz przepracowa\196\135 min. 1h, aby wyp\197\130aci\196\135", "error")
            return
          end
          wyplacil = true
          for _FORV_10_, _FORV_11_ in ipairs(_UPVALUE4_.table_data) do
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "payWorkers", localPlayer, _UPVALUE4_.dataBusiness.id, math.floor(_FORV_6_.paycheck * (_FORV_6_.time_paycheck / 60)), _FORV_6_.time_paycheck, _FORV_11_.ulepszenie_premia)
          end
        end
      elseif _UPVALUE4_.playerRandomWork == true then
        if wyplacil == true then
          return
        end
        for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE4_.table_stjobs) do
          if _FORV_6_.czas_mechanik1 == 0 then
            exports.st_gui:showPlayerNotification("Nie masz nic do wyp\197\130acenia", "error")
            return
          end
          wyplacil = true
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "payWorkers", localPlayer, _UPVALUE4_.dataBusiness.id, math.floor(700000 * (_FORV_6_.czas_mechanik1 / 60)), false, false, true)
        end
      end
    elseif isMouseIn(_UPVALUE1_.x + 550 / zoom, _UPVALUE1_.y + 500 / zoom, 170 / zoom, 50 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == "naprawa" then
      newToRepairTable = {}
      for _FORV_5_, _FORV_6_ in pairs(toRepairTable) do
        if _FORV_6_.selected then
          table.insert(newToRepairTable, _FORV_6_)
        end
      end
      if 0 < #newToRepairTable then
        vehiclePlayer = getVehicleController(tabela_infoveh.vehicle)
        if not vehiclePlayer then
          exports.st_gui:showPlayerNotification("W poje\197\186dzie nie ma kierowcy.", "info")
          return
        end
        if 10 > getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "sendOfferRepairMechanic", localPlayer, vehiclePlayer, newToRepairTable, _UPVALUE4_.dataBusiness.id)
          exports.st_gui:showPlayerNotification("Wys\197\130ano ofert\196\153 do gracza " .. getPlayerName(vehiclePlayer) .. "", "info")
          removeEventHandler("onClientRender", root, windowMechanic)
          removeEventHandler("onClientClick", root, clickMechanic)
          windowsMechanic.mechanic = false
          windowsMechanic.category = false
          showCursor(false)
          _UPVALUE4_.sendOffer = true
          for _FORV_11_, _FORV_12_ in pairs(texturesMechanic) do
            if isElement(_FORV_12_) then
              destroyElement(_FORV_12_)
            end
          end
          texturesMechanic = {}
        else
          exports.st_gui:showPlayerNotification("Kierowca jest za daleko", "info")
        end
      else
      end
    elseif isMouseIn(_UPVALUE1_.x + 274 / zoom, _UPVALUE1_.y + 159 / zoom, 162 / zoom, 162 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == false then
      if not tabela_infoveh.vehicle then
        exports.st_gui:showPlayerNotification("Brak pojazdu", "error")
        return
      end
      if not getVehicleController(tabela_infoveh.vehicle) then
        exports.st_gui:showPlayerNotification("W poje\197\186dzie nie ma kierowcy.", "info")
        return
      end
      if 10 > getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
        toRepairTable = checkWhatNeedRepair(tabela_infoveh.vehicle)
        windowsMechanic.category = "naprawa"
      else
        exports.st_gui:showPlayerNotification("Kierowca jest za daleko", "info")
      end
    elseif isMouseIn(_UPVALUE1_.x + 449 / zoom, _UPVALUE1_.y + 159 / zoom, 162 / zoom, 162 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == false then
      if not tabela_infoveh.vehicle then
        exports.st_gui:showPlayerNotification("Brak pojazdu", "error")
        return
      end
      if not getVehicleController(tabela_infoveh.vehicle) then
        exports.st_gui:showPlayerNotification("W poje\197\186dzie nie ma kierowcy.", "info")
        return
      end
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      windowsMechanic.category = false
      showCursor(false)
      for _FORV_6_, _FORV_7_ in pairs(texturesMechanic) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      texturesMechanic = {}
      _UPVALUE4_.sendOffer = true
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "sendOfferConfigure", localPlayer, tabela_infoveh, idTable)
    elseif isMouseIn(_UPVALUE1_.x + 274 / zoom, _UPVALUE1_.y + 334 / zoom, 162 / zoom, 162 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == false then
      if not tabela_infoveh.vehicle then
        exports.st_gui:showPlayerNotification("Brak pojazdu", "error")
        return
      end
      if not getVehicleController(tabela_infoveh.vehicle) then
        exports.st_gui:showPlayerNotification("W poje\197\186dzie nie ma kierowcy.", "info")
        return
      end
      if _UPVALUE5_[getElementModel(tabela_infoveh.vehicle)] then
        exports.st_gui:showPlayerNotification("W tym poje\197\186dzie nie ma potrzeby wymiany oleju", "error")
        return
      end
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      windowsMechanic.category = false
      showCursor(false)
      for _FORV_6_, _FORV_7_ in pairs(texturesMechanic) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      texturesMechanic = {}
      _UPVALUE4_.sendOffer = true
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "sendOfferOil", localPlayer, tabela_infoveh, idTable)
    elseif isMouseIn(_UPVALUE1_.x + 449 / zoom, _UPVALUE1_.y + 334 / zoom, 162 / zoom, 162 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == false then
      if not tabela_infoveh.vehicle then
        exports.st_gui:showPlayerNotification("Brak pojazdu", "error")
        return
      end
      if _UPVALUE5_[getElementModel(tabela_infoveh.vehicle)] then
        exports.st_gui:showPlayerNotification("W tym poje\197\186dzie nie ma potrzeby\nwykonywania przegl\196\133du", "error")
        return
      end
      if not getVehicleController(tabela_infoveh.vehicle) then
        exports.st_gui:showPlayerNotification("W poje\197\186dzie nie ma kierowcy.", "info")
        return
      end
      if tabela_infoveh.oil[2] == "niewa\197\188ny" then
        removeEventHandler("onClientRender", root, windowMechanic)
        removeEventHandler("onClientClick", root, clickMechanic)
        windowsMechanic.mechanic = false
        windowsMechanic.category = false
        showCursor(false)
        for _FORV_6_, _FORV_7_ in pairs(texturesMechanic) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        texturesMechanic = {}
        _UPVALUE4_.sendOffer = true
        triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "sendOfferTechnicalReview", localPlayer, tabela_infoveh, idTable)
      else
        exports.st_gui:showPlayerNotification("Przegl\196\133d pojazdu jest jeszcze wa\197\188ny", "error")
      end
    elseif isMouseIn(_UPVALUE1_.x + 150 / zoom, _UPVALUE1_.y + 500 / zoom, 170 / zoom, 50 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category ~= false then
      if windowsMechanic.category == "wymiana oleju" then
        return
      end
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
      if windowsMechanic.category == "konfiguracja" then
        triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "rejectOfferConfigureVeh", localPlayer, mechanic_offer)
      elseif windowsMechanic.category == "wymiana oleju" then
        triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "rejectOfferOilChange", localPlayer, mechanic_offer)
      end
      windowsMechanic.category = false
    elseif isMouseIn(_UPVALUE1_.x + 265 / zoom, _UPVALUE1_.y + 370 / zoom, 150 / zoom, 45 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == "wymiana oleju" then
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "rejectOfferOilChange", localPlayer, mechanic_offer)
      windowsMechanic.category = false
    elseif isMouseIn(_UPVALUE1_.x + 465 / zoom, _UPVALUE1_.y + 370 / zoom, 150 / zoom, 45 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == "wymiana oleju" then
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "acceptOfferOilChange", localPlayer, mechanic_offer)
      windowsMechanic.category = false
    elseif isMouseIn(_UPVALUE1_.x + 265 / zoom, _UPVALUE1_.y + 370 / zoom, 150 / zoom, 45 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == "przegl\196\133d pojazdu" then
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "rejectOfferTechnicalReview", localPlayer, mechanic_offer)
      windowsMechanic.category = false
    elseif isMouseIn(_UPVALUE1_.x + 465 / zoom, _UPVALUE1_.y + 370 / zoom, 150 / zoom, 45 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == "przegl\196\133d pojazdu" then
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "acceptOfferTechnicalReview", localPlayer, mechanic_offer)
      windowsMechanic.category = false
    elseif isMouseIn(_UPVALUE1_.x + 822.5 / zoom, _UPVALUE1_.y + 24.5 / zoom, 25 / zoom, 25 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == false then
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      windowsMechanic.category = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
    elseif isMouseIn(_UPVALUE1_.x + 550 / zoom, _UPVALUE1_.y + 500 / zoom, 170 / zoom, 50 / zoom) and windowsMechanic.offerDriver == true then
      costofall = 0
      for _FORV_5_, _FORV_6_ in pairs(table_repair_driver) do
        costofall = costofall + _FORV_6_.cost
      end
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.offerDriver = false
      showCursor(false)
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "acceptOfferRepairDriverMechanic", localPlayer, mechanic_offer, table_repair_driver, costofall, driver_idBusiness)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
    elseif isMouseIn(_UPVALUE1_.x + 150 / zoom, _UPVALUE1_.y + 500 / zoom, 170 / zoom, 50 / zoom) and windowsMechanic.offerDriver == true then
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.offerDriver = false
      showCursor(false)
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "cancelOfferRepairDriverMechanic", localPlayer, mechanic_offer)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
    elseif isMouseIn(_UPVALUE1_.x + 550 / zoom, _UPVALUE1_.y + 500 / zoom, 170 / zoom, 50 / zoom) and windowsMechanic.mechanic == true and windowsMechanic.category == "konfiguracja" then
      if getElementData(localPlayer, "player:moneyMNn") < 10000 then
        exports.st_gui:showPlayerNotification("Nie masz tyle pieni\196\153dzy", "error")
        return
      end
      if getElementData(getPedOccupiedVehicle(localPlayer), "resetDoPrzecho") then
        exports.st_gui:showPlayerNotification("Pojazd musi by\196\135 najpierw schowany do przechowalni", "error")
        return
      end
      if getElementData(tabela_infoveh.vehicle, "vehicle:ownedPlayer") ~= getElementData(localPlayer, "player:sid") then
        exports.st_gui:showPlayerNotification("Nie jeste\197\155 w\197\130a\197\155cicielem pojazdu", "error")
        return
      end
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "configureVeh", localPlayer, tabela_config_mech, tabela_infoveh.vehicle, idTable, mechanic_offer)
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.mechanic = false
      windowsMechanic.category = false
      showCursor(false)
      removeEventHandler("onClientKey", root, keyGui)
      for _FORV_5_, _FORV_6_ in pairs(texturesMechanic) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      texturesMechanic = {}
    end
  end
end
function keyGui(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windowsMechanic.mechanic == true and windowsMechanic.category == "konfiguracja" then
      if _UPVALUE0_ == _UPVALUE1_ then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ - 2
      _UPVALUE3_ = _UPVALUE3_ - 1
      _UPVALUE0_ = _UPVALUE0_ - 2
    end
  elseif _ARG_0_ == "mouse_wheel_down" and windowsMechanic.mechanic == true and windowsMechanic.category == "konfiguracja" then
    if _UPVALUE0_ >= #tabela_config_mech then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 2
    _UPVALUE3_ = _UPVALUE3_ + 1
    _UPVALUE0_ = _UPVALUE0_ + 2
  end
end
function scrollRender(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_ == _UPVALUE1_ then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ - 2
    _UPVALUE0_ = _UPVALUE0_ - 2
    render()
  elseif _ARG_0_ == "mouse_wheel_down" then
    if _UPVALUE0_ >= #tabela_config then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 2
    _UPVALUE0_ = _UPVALUE0_ + 2
    render()
  end
end
addEvent("evcMechanic", true)
addEventHandler("evcMechanic", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_)
  if _ARG_0_ == "showGui" then
    if _ARG_1_ then
      texturesMechanic = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
        stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
        off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
        info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
        improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
        game_photo = dxCreateTexture("img/game_photo.png"),
        dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png")
      }
      addEventHandler("onClientRender", root, windowMechanic)
      addEventHandler("onClientClick", root, clickMechanic)
      showCursor(true)
      windowsMechanic.start = true
      windowsMechanic.background = true
      _UPVALUE0_ = {}
      _UPVALUE0_.nameBusiness = _ARG_2_
      _UPVALUE0_.ownerName = _ARG_4_
      _UPVALUE0_.dataBusiness = _ARG_5_
      _UPVALUE0_.posCenterMechanic = _ARG_6_
      _UPVALUE0_.table_data = _ARG_7_
      dataInfoWorker = {}
      _UPVALUE0_.playerWorker = false
      _UPVALUE0_.playerRandomWork = false
      windowsMechanic.paintshop = false
      if _ARG_8_ then
        _UPVALUE0_.table_stjobs = _ARG_8_
        _UPVALUE0_.playerRandomWork = true
      end
      if _ARG_3_ then
        _UPVALUE0_.playerWorker = true
        dataInfoWorker = _ARG_3_
      else
        _UPVALUE0_.playerWorker = false
      end
    elseif windowsMechanic.background == true then
      windowsMechanic.background = false
      windowsMechanic.start = false
      removeEventHandler("onClientRender", root, windowMechanic)
      removeEventHandler("onClientClick", root, clickMechanic)
      showCursor(false)
      for _FORV_12_, _FORV_13_ in pairs(texturesMechanic) do
        if isElement(_FORV_13_) then
          destroyElement(_FORV_13_)
        end
      end
      texturesMechanic = {}
    end
  elseif _ARG_0_ == "reloadDataWorkerMechanic" then
    if _ARG_2_ then
      _UPVALUE0_.table_stjobs = _ARG_2_
    else
      dataInfoWorker = _ARG_1_
    end
  elseif _ARG_0_ == "reloadDataBusinessClient" then
    if _UPVALUE0_.lastMarker then
      exports.st_gui:showPlayerNotification("Najpierw napraw pojazd do ko\197\132ca", "info")
      return
    end
    if _UPVALUE0_.sendOffer then
      exports.st_gui:showPlayerNotification("Masz oczekuj\196\133 ofert\196\153", "info")
      return
    end
    if #getElementsWithinColShape(_ARG_2_, "vehicle") > 1 then
      exports.st_gui:showPlayerNotification("Na stanowisku znajduje si\196\153 wi\196\153cej ni\197\188 1 pojazd.", "info")
      return
    end
    vehicle = getElementsWithinColShape(_ARG_2_, "vehicle")[1]
    texturesMechanic = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      fix_icon = dxCreateTexture("img/fix_icon.png"),
      configure_icon = dxCreateTexture("img/configure_icon.png"),
      back_arrow = dxCreateTexture(":ST_dashboard/img/back_arrow.png"),
      oil_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/oil_icon.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      techrev_icon = dxCreateTexture("img/techrev_icon.png")
    }
    addEventHandler("onClientRender", root, windowMechanic)
    addEventHandler("onClientClick", root, clickMechanic)
    windowsMechanic.mechanic = true
    windowsMechanic.category = false
    windowsMechanic.paintshop = false
    showCursor(true)
    idTable = _ARG_3_
    tabela_infoveh = _ARG_4_
    getRealTimeAntyBug = _ARG_5_
    _UPVALUE0_.dataBusiness = _ARG_1_
  elseif _ARG_0_ == "sendOfferDriverMechanicClient" then
    texturesMechanic = {
      background = dxCreateTexture(":ST_gui/img/background2.png")
    }
    table_repair_driver = _ARG_1_
    mechanic_offer = _ARG_2_
    driver_idBusiness = _ARG_3_
    addEventHandler("onClientRender", root, windowMechanic)
    addEventHandler("onClientClick", root, clickMechanic)
    showCursor(true)
    windowsMechanic.offerDriver = true
    windowsMechanic.paintshop = false
  elseif _ARG_0_ == "cancelOfferRepairMechanicClient" then
    _UPVALUE0_.sendOffer = false
  elseif _ARG_0_ == "startRepairMechanicClient" then
    _UPVALUE0_.sendOffer = false
    _UPVALUE0_.player_vehicle = _ARG_3_
    _UPVALUE0_.lastMarker = 0
    _UPVALUE0_.naprawianieCzas = false
    repairingVehicle = _ARG_1_
    for _FORV_13_, _FORV_14_ in pairs(_UPVALUE1_) do
      for _FORV_19_, _FORV_20_ in pairs(_FORV_14_) do
        for _FORV_24_, _FORV_25_ in pairs(_ARG_2_) do
          if _FORV_25_.name == _FORV_20_ then
            break
          end
        end
      end
      if true then
        table.insert({}, {
          unical = _FORV_14_.unical,
          x = _FORV_14_.x,
          y = _FORV_14_.y,
          z = _FORV_14_.z
        })
      end
    end
    for _FORV_16_, _FORV_17_ in pairs({}) do
      if tonumber(_FORV_17_.x) then
        cx = _FORV_17_.x
      else
        cx = ({
          x0 = getElementBoundingBox(repairingVehicle)
        })[_FORV_17_.x]
      end
      if tonumber(_FORV_17_.y) then
        cy = _FORV_17_.y
      else
        cy = ({
          x0 = getElementBoundingBox(repairingVehicle)
        })[_FORV_17_.y]
      end
      if tonumber(_FORV_17_.z) then
        cz = _FORV_17_.z
      else
        cz = ({
          x0 = getElementBoundingBox(repairingVehicle)
        })[_FORV_17_.z]
      end
      _UPVALUE2_[_FORV_17_.unical] = createMarker(0, 0, 0, "cylinder", 0.8, 255, 174, 0, 255)
      attachElements(_UPVALUE2_[_FORV_17_.unical], repairingVehicle, cx * 1.25, cy * 1.25, getElementPosition(repairingVehicle) - getGroundPosition(getElementPosition(repairingVehicle)) - 1.8)
      setElementData(_UPVALUE2_[_FORV_17_.unical], "repair:data", {
        marker = _UPVALUE2_[_FORV_17_.unical],
        name = _FORV_17_.name,
        vehicle = repairingVehicle,
        unical = _FORV_17_.unical
      })
      _UPVALUE0_.lastMarker = _UPVALUE0_.lastMarker + 1
      addEventHandler("onClientMarkerHit", _UPVALUE2_[_FORV_17_.unical], function(_ARG_0_, _ARG_1_)
        if _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
          if _UPVALUE0_.naprawianieCzas == true then
            return
          end
          _UPVALUE0_.naprawianieCzas = true
          setElementFrozen(localPlayer, true)
          if getElementData(source, "repair:data") then
            if isElement(getElementData(source, "repair:data").vehicle) then
              _UPVALUE0_.lastMarker = _UPVALUE0_.lastMarker - 1
              triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "animations", localPlayer, true)
              setTimer(function()
                if _UPVALUE0_.lastMarker == 0 then
                  exports.st_gui:showPlayerNotification("Pomy\197\155lnie naprawiono pojazd graczowi " .. getPlayerName(_UPVALUE0_.player_vehicle) .. "", "success")
                  triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "endRepair", localPlayer, _UPVALUE0_.player_vehicle)
                  _UPVALUE0_.lastMarker = false
                end
                triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "animations", localPlayer, false)
                if isElement(_UPVALUE1_[_UPVALUE2_.unical]) then
                  destroyElement(_UPVALUE1_[_UPVALUE2_.unical])
                end
                triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "repairPart", _UPVALUE3_.vehicle, _UPVALUE3_.unical)
                setElementFrozen(localPlayer, false)
                _UPVALUE0_.naprawianieCzas = false
              end, 2000, 1)
            else
              stopRepairingVehicle()
            end
          end
        end
      end)
    end
  elseif _ARG_0_ == "payWorkersClient" then
    wyplacil = false
    if _ARG_2_ then
      _UPVALUE0_.table_stjobs = _ARG_2_
    else
      dataInfoWorker = _ARG_1_
    end
  elseif _ARG_0_ == "showGuiPaintshop" then
    if _ARG_1_ and isPedInVehicle(localPlayer) then
      if getElementData(localPlayer, "player:sid") ~= getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:ownedPlayer") then
        exports.st_gui:showPlayerNotification("To nie jest tw\195\179j pojazd!", "error")
        return
      end
      selfPaintshop = {}
      selfPaintshop.alpha = 0
      selfPaintshop.idMechanic = _ARG_2_
      selfPaintshop.colorCurrent = {
        255,
        255,
        255
      }
      selfPaintshop.colorSlide = 0
      selfPaintshop.colorPicker = Vector2(0, 0)
      selfPaintshop.selectPainting = "KAROSERIA"
      selfPaintshop.vehicle = getPedOccupiedVehicle(localPlayer)
      selfPaintshop.paintingProgress = {
        front = 0,
        back = 0,
        left = 0,
        right = 0
      }
      selfPaintshop.data = _ARG_3_
      exports.ST_gui:destroyCustomEditbox("rgb1")
      exports.ST_gui:destroyCustomEditbox("rgb2")
      exports.ST_gui:destroyCustomEditbox("rgb3")
      texturesMechanic = {
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        h = dxCreateTexture("img/h.png"),
        sv = dxCreateTexture("img/sv.png"),
        preview = dxCreateTexture(":ST_adminsPanel/img/search_icon.png")
      }
      addEventHandler("onClientRender", root, windowMechanic)
      addEventHandler("onClientClick", root, clickMechanic)
      windowsMechanic.paintshop = true
      exports.ST_gui:createCustomEditbox("rgb1", "R", _UPVALUE3_.x + 422 / zoom, _UPVALUE3_.y + 338 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
      exports.ST_gui:createCustomEditbox("rgb2", "G", _UPVALUE3_.x + 472 / zoom, _UPVALUE3_.y + 338 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
      exports.ST_gui:createCustomEditbox("rgb3", "B", _UPVALUE3_.x + 522 / zoom, _UPVALUE3_.y + 338 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
    else
    end
  elseif _ARG_0_ == "sendOfferMechanicPaintingClient" then
    selfPaintshop = {}
    selfPaintshop.player = _ARG_1_
    selfPaintshop.vehicle = _ARG_2_
    selfPaintshop.currentColors = {
      _ARG_3_[1],
      _ARG_3_[2],
      _ARG_3_[3]
    }
    selfPaintshop.selectPainting = _ARG_4_
    selfPaintshop.posX = 5
    addEventHandler("onClientPlayerWeaponFire", root, PaintingUseCan)
    _UPVALUE0_.malowanie = true
    exports.st_gui:showPlayerNotification("Otrzymano zlecenie pomalowania pojazdu od " .. getPlayerName(selfPaintshop.player) .. "", "info")
    triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "plrStrefa", localPlayer, true)
    toggleControl("fire", true)
    toggleControl("aim_weapon", true)
  elseif _ARG_0_ == "showGuiRepairKit" then
    texturesMechanic = {
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      repairkit_icon = dxCreateTexture(":ST_invetory/img/repairkit_icon.png"),
      aku_icon = dxCreateTexture(":ST_invetory/img/aku_icon.png")
    }
    addEventHandler("onClientRender", root, windowMechanic)
    addEventHandler("onClientClick", root, clickMechanic)
    windowsMechanic.repairKit = true
    windowsMechanic.paintshop = false
    kupilZestawNaprawczy = false
    showCursor(true)
    selfRepairKit = {}
    selfRepairKit.data = _ARG_2_
    selfRepairKit.repairKit = 0
    selfRepairKit.battery = 0
    lastTickCount = getTickCount()
  elseif _ARG_0_ == "buyRepairKitClient" then
    kupilZestawNaprawczy = false
    selfRepairKit.data = _ARG_1_
  elseif _ARG_0_ == "loadCustomSkin" then
    if tonumber(string.sub(_ARG_1_, 9, 14)) >= 201 and tonumber(string.sub(_ARG_1_, 9, 14)) <= 300 then
      exports.ST_customs_skins3:loadCustomSkin(_ARG_1_)
    elseif tonumber(string.sub(_ARG_1_, 9, 14)) >= 100 and tonumber(string.sub(_ARG_1_, 9, 14)) <= 200 then
      exports.ST_customs_skins2:loadCustomSkin(_ARG_1_)
    else
      exports.ST_customs_skins1:loadCustomSkin(_ARG_1_)
    end
  elseif _ARG_0_ == "renderInfo" then
    stanowiska_tabela = _ARG_1_
    if _ARG_2_ then
      if shd[stanowiska_tabela.id1] then
        destroyElement(shd[stanowiska_tabela.id1])
        shd[stanowiska_tabela.id1] = nil
      end
      if obj[stanowiska_tabela.id1] then
        destroyElement(obj[stanowiska_tabela.id1])
        obj[stanowiska_tabela.id1] = nil
      end
      if rt[stanowiska_tabela.id1] then
        destroyElement(rt[stanowiska_tabela.id1])
        rt[stanowiska_tabela.id1] = nil
      end
      if isEventHandlerAdded("onClientKey", root, scrollRender) then
        removeEventHandler("onClientKey", root, scrollRender)
      end
      if not isEventHandlerAdded("onClientKey", root, scrollRender) then
        addEventHandler("onClientKey", root, scrollRender)
      end
      obj[stanowiska_tabela.id1] = createObject(8084, _ARG_1_.posTablica[1], _ARG_1_.posTablica[2], _ARG_1_.posTablica[3], _ARG_1_.posTablica[4], _ARG_1_.posTablica[5], _ARG_1_.posTablica[6])
      rt[stanowiska_tabela.id1] = dxCreateRenderTarget(1000, 1000, false)
      setObjectScale(obj[stanowiska_tabela.id1], 1.5)
      if stanowiska_tabela.infoVeh then
        if tonumber(stanowiska_tabela.infoVeh.config[1]) == 0 then
          maxConfigMultiplier = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionMultiplier") + 0.1
        else
          maxConfigMultiplier = split(stanowiska_tabela.infoVeh.config[1], ",")[2] + 0.1
        end
        if tonumber(stanowiska_tabela.infoVeh.config[2]) == 0 then
          maxConfigLoss = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionLoss") + 0.1
        else
          maxConfigLoss = split(stanowiska_tabela.infoVeh.config[2], ",")[2] + 0.1
        end
        if tonumber(stanowiska_tabela.infoVeh.config[7]) == 0 then
          maxConfigDamping = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "suspensionDamping") + 5
        else
          maxConfigDamping = split(stanowiska_tabela.infoVeh.config[7], ",")[2] + 5
        end
        if tonumber(stanowiska_tabela.infoVeh.config[8]) == 0 then
          maxConfigBrakeDeceleration = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "brakeDeceleration") + 5
        else
          maxConfigBrakeDeceleration = split(stanowiska_tabela.infoVeh.config[8], ",")[2] + 5
        end
        if tonumber(stanowiska_tabela.infoVeh.config[10]) == 0 then
          maxConfigMass = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass") + getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass") / 7
          minConfigMass = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass") - getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass") / 7
        else
          maxConfigMass = split(stanowiska_tabela.infoVeh.config[10], ",")[2] + split(stanowiska_tabela.infoVeh.config[10], ",")[2] / 7
          minConfigMass = split(stanowiska_tabela.infoVeh.config[10], ",")[2] - split(stanowiska_tabela.infoVeh.config[10], ",")[2] / 7
        end
        if tonumber(stanowiska_tabela.infoVeh.config[11]) == 0 then
          maxConfigTurnMass = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass") + getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass") / 7
          minConfigTurnMass = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass") - getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass") / 7
        else
          maxConfigTurnMass = split(stanowiska_tabela.infoVeh.config[11], ",")[2] + split(stanowiska_tabela.infoVeh.config[11], ",")[2] / 7
          minConfigTurnMass = split(stanowiska_tabela.infoVeh.config[11], ",")[2] - split(stanowiska_tabela.infoVeh.config[11], ",")[2] / 7
        end
        tabela_config = {
          {
            "mno\197\188nik trakcji",
            stanowiska_tabela.infoVeh.config[1],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionMultiplier"),
            zmiana = 0,
            min = 0.5,
            max = tonumber(("%.2f"):format(maxConfigMultiplier)),
            block = stanowiska_tabela.infoVeh.tuning.traction
          },
          {
            "utrata trakcji",
            stanowiska_tabela.infoVeh.config[2],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionLoss"),
            zmiana = 0,
            min = 0.5,
            max = tonumber(("%.2f"):format(maxConfigLoss)),
            block = stanowiska_tabela.infoVeh.tuning.traction
          },
          {
            "Rozk\197\130ad trakcji",
            stanowiska_tabela.infoVeh.config[3],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionBias"),
            zmiana = 0,
            min = 0.3,
            max = 0.7,
            block = stanowiska_tabela.infoVeh.tuning.traction
          },
          {
            "Zakres skr\196\153tu k\195\179\197\130",
            stanowiska_tabela.infoVeh.config[5],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "steeringLock"),
            zmiana = 0,
            min = 30,
            max = 80,
            block = stanowiska_tabela.infoVeh.tuning.skret
          },
          {
            "Rozk\197\130ad zawieszenia",
            stanowiska_tabela.infoVeh.config[6],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "suspensionFrontRearBias"),
            zmiana = 0,
            min = 0.3,
            max = 0.7,
            block = stanowiska_tabela.infoVeh.tuning.rh
          },
          {
            "T\197\130umienie zawieszenia",
            stanowiska_tabela.infoVeh.config[7],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "suspensionDamping"),
            zmiana = 0,
            min = 0,
            max = tonumber(("%.2f"):format(maxConfigDamping)),
            block = stanowiska_tabela.infoVeh.tuning.rh
          },
          {
            "Si\197\130a hamowania",
            stanowiska_tabela.infoVeh.config[8],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "brakeDeceleration"),
            zmiana = 0,
            min = 0,
            max = tonumber(("%.2f"):format(maxConfigBrakeDeceleration)),
            block = stanowiska_tabela.infoVeh.tuning.hamulce
          },
          {
            "Rozk\197\130ad hamowania",
            stanowiska_tabela.infoVeh.config[9],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "brakeBias"),
            zmiana = 0,
            min = 0.1,
            max = 0.9,
            block = stanowiska_tabela.infoVeh.tuning.hamulce
          },
          {
            "\197\154rodek ci\196\153\197\188ko\197\155ci",
            stanowiska_tabela.infoVeh.config[4],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "centerOfMass"),
            zmiana = {
              0,
              0,
              0
            },
            min = -0.6,
            max = 0.6,
            block = stanowiska_tabela.infoVeh.tuning.regulacjaMasy
          },
          {
            "Masa",
            stanowiska_tabela.infoVeh.config[10],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass"),
            zmiana = 0,
            min = tonumber(("%.2f"):format(minConfigMass)),
            max = tonumber(("%.2f"):format(maxConfigMass)),
            block = stanowiska_tabela.infoVeh.tuning.regulacjaMasy
          },
          {
            "Masa skr\196\153tu",
            stanowiska_tabela.infoVeh.config[11],
            getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass"),
            zmiana = 0,
            min = tonumber(("%.2f"):format(minConfigTurnMass)),
            max = tonumber(("%.2f"):format(maxConfigTurnMass)),
            block = stanowiska_tabela.infoVeh.tuning.regulacjaMasy
          }
        }
      end
      render()
    else
      if shd[stanowiska_tabela.id1] then
        destroyElement(shd[stanowiska_tabela.id1])
        shd[stanowiska_tabela.id1] = nil
      end
      if obj[stanowiska_tabela.id1] then
        destroyElement(obj[stanowiska_tabela.id1])
        obj[stanowiska_tabela.id1] = nil
      end
      if rt[stanowiska_tabela.id1] then
        destroyElement(rt[stanowiska_tabela.id1])
        rt[stanowiska_tabela.id1] = nil
      end
      if isEventHandlerAdded("onClientKey", root, scrollRender) then
        removeEventHandler("onClientKey", root, scrollRender)
      end
    end
  elseif _ARG_0_ == "reloadRender" then
    stanowiska_tabela = _ARG_1_
    if rt[stanowiska_tabela.id1] and stanowiska_tabela.infoVeh then
      if tonumber(stanowiska_tabela.infoVeh.config[1]) == 0 then
        maxConfigMultiplier = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionMultiplier") + 0.1
      else
        maxConfigMultiplier = split(stanowiska_tabela.infoVeh.config[1], ",")[2] + 0.1
      end
      if tonumber(stanowiska_tabela.infoVeh.config[2]) == 0 then
        maxConfigLoss = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionLoss") + 0.1
      else
        maxConfigLoss = split(stanowiska_tabela.infoVeh.config[2], ",")[2] + 0.1
      end
      if tonumber(stanowiska_tabela.infoVeh.config[7]) == 0 then
        maxConfigDamping = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "suspensionDamping") + 5
      else
        maxConfigDamping = split(stanowiska_tabela.infoVeh.config[7], ",")[2] + 5
      end
      if tonumber(stanowiska_tabela.infoVeh.config[8]) == 0 then
        maxConfigBrakeDeceleration = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "brakeDeceleration") + 5
      else
        maxConfigBrakeDeceleration = split(stanowiska_tabela.infoVeh.config[8], ",")[2] + 5
      end
      if tonumber(stanowiska_tabela.infoVeh.config[10]) == 0 then
        maxConfigMass = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass") + getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass") / 7
        minConfigMass = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass") - getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass") / 7
      else
        maxConfigMass = split(stanowiska_tabela.infoVeh.config[10], ",")[2] + split(stanowiska_tabela.infoVeh.config[10], ",")[2] / 7
        minConfigMass = split(stanowiska_tabela.infoVeh.config[10], ",")[2] - split(stanowiska_tabela.infoVeh.config[10], ",")[2] / 7
      end
      if tonumber(stanowiska_tabela.infoVeh.config[11]) == 0 then
        maxConfigTurnMass = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass") + getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass") / 7
        minConfigTurnMass = getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass") - getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass") / 7
      else
        maxConfigTurnMass = split(stanowiska_tabela.infoVeh.config[11], ",")[2] + split(stanowiska_tabela.infoVeh.config[11], ",")[2] / 7
        minConfigTurnMass = split(stanowiska_tabela.infoVeh.config[11], ",")[2] - split(stanowiska_tabela.infoVeh.config[11], ",")[2] / 7
      end
      tabela_config = {
        {
          "mno\197\188nik trakcji",
          stanowiska_tabela.infoVeh.config[1],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionMultiplier"),
          zmiana = 0,
          min = 0.5,
          max = tonumber(("%.2f"):format(maxConfigMultiplier)),
          block = stanowiska_tabela.infoVeh.tuning.traction
        },
        {
          "utrata trakcji",
          stanowiska_tabela.infoVeh.config[2],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionLoss"),
          zmiana = 0,
          min = 0.5,
          max = tonumber(("%.2f"):format(maxConfigLoss)),
          block = stanowiska_tabela.infoVeh.tuning.traction
        },
        {
          "Rozk\197\130ad trakcji",
          stanowiska_tabela.infoVeh.config[3],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "tractionBias"),
          zmiana = 0,
          min = 0.3,
          max = 0.7,
          block = stanowiska_tabela.infoVeh.tuning.traction
        },
        {
          "Zakres skr\196\153tu k\195\179\197\130",
          stanowiska_tabela.infoVeh.config[5],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "steeringLock"),
          zmiana = 0,
          min = 30,
          max = 80,
          block = stanowiska_tabela.infoVeh.tuning.rh
        },
        {
          "Rozk\197\130ad zawieszenia",
          stanowiska_tabela.infoVeh.config[6],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "suspensionFrontRearBias"),
          zmiana = 0,
          min = 0.3,
          max = 0.7,
          block = stanowiska_tabela.infoVeh.tuning.rh
        },
        {
          "T\197\130umienie zawieszenia",
          stanowiska_tabela.infoVeh.config[7],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "suspensionDamping"),
          zmiana = 0,
          min = 0,
          max = tonumber(("%.2f"):format(maxConfigDamping)),
          block = stanowiska_tabela.infoVeh.tuning.rh
        },
        {
          "Si\197\130a hamowania",
          stanowiska_tabela.infoVeh.config[8],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "brakeDeceleration"),
          zmiana = 0,
          min = 0,
          max = tonumber(("%.2f"):format(maxConfigBrakeDeceleration)),
          block = stanowiska_tabela.infoVeh.tuning.hamulce
        },
        {
          "Rozk\197\130ad si\197\130y hamowania",
          stanowiska_tabela.infoVeh.config[9],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "brakeBias"),
          zmiana = 0,
          min = 0.1,
          max = 0.9,
          block = stanowiska_tabela.infoVeh.tuning.hamulce
        },
        {
          "\197\154rodek ci\196\153\197\188ko\197\155ci",
          stanowiska_tabela.infoVeh.config[4],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "centerOfMass"),
          zmiana = {
            0,
            0,
            0
          },
          min = -0.7,
          max = 0.8,
          block = stanowiska_tabela.infoVeh.tuning.regulacjaMasy
        },
        {
          "Masa",
          stanowiska_tabela.infoVeh.config[10],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "mass"),
          zmiana = 0,
          min = tonumber(("%.2f"):format(minConfigMass)),
          max = tonumber(("%.2f"):format(maxConfigMass)),
          block = stanowiska_tabela.infoVeh.tuning.regulacjaMasy
        },
        {
          "Masa skr\196\153tu",
          stanowiska_tabela.infoVeh.config[11],
          getVehicleHandlingProperty(stanowiska_tabela.infoVeh.vehicle, "turnMass"),
          zmiana = 0,
          min = tonumber(("%.2f"):format(minConfigTurnMass)),
          max = tonumber(("%.2f"):format(maxConfigTurnMass)),
          block = stanowiska_tabela.infoVeh.tuning.regulacjaMasy
        }
      }
      render()
    end
  elseif _ARG_0_ == "sendOfferConfigureClient" then
    mechanic_offer = _ARG_1_
    tabela_infoveh = _ARG_2_
    if tonumber(tabela_infoveh.config[1]) == 0 then
      maxConfigMultiplier = getVehicleHandlingProperty(tabela_infoveh.vehicle, "tractionMultiplier") + 0.1
    else
      maxConfigMultiplier = split(tabela_infoveh.config[1], ",")[2] + 0.1
    end
    if tonumber(tabela_infoveh.config[2]) == 0 then
      maxConfigLoss = getVehicleHandlingProperty(tabela_infoveh.vehicle, "tractionLoss") + 0.1
    else
      maxConfigLoss = split(tabela_infoveh.config[2], ",")[2] + 0.1
    end
    if tonumber(tabela_infoveh.config[7]) == 0 then
      maxConfigDamping = getVehicleHandlingProperty(tabela_infoveh.vehicle, "suspensionDamping") + 5
    else
      maxConfigDamping = split(tabela_infoveh.config[7], ",")[2] + 5
    end
    if tonumber(tabela_infoveh.config[8]) == 0 then
      maxConfigBrakeDeceleration = getVehicleHandlingProperty(tabela_infoveh.vehicle, "brakeDeceleration") + 5
    else
      maxConfigBrakeDeceleration = split(tabela_infoveh.config[8], ",")[2] + 5
    end
    if tonumber(tabela_infoveh.config[10]) == 0 then
      maxConfigMass = getVehicleHandlingProperty(tabela_infoveh.vehicle, "mass") + getVehicleHandlingProperty(tabela_infoveh.vehicle, "mass") / 7
      minConfigMass = getVehicleHandlingProperty(tabela_infoveh.vehicle, "mass") - getVehicleHandlingProperty(tabela_infoveh.vehicle, "mass") / 7
    else
      maxConfigMass = split(tabela_infoveh.config[10], ",")[2] + split(tabela_infoveh.config[10], ",")[2] / 7
      minConfigMass = split(tabela_infoveh.config[10], ",")[2] - split(tabela_infoveh.config[10], ",")[2] / 7
    end
    if tonumber(tabela_infoveh.config[11]) == 0 then
      maxConfigTurnMass = getVehicleHandlingProperty(tabela_infoveh.vehicle, "turnMass") + getVehicleHandlingProperty(tabela_infoveh.vehicle, "turnMass") / 7
      minConfigTurnMass = getVehicleHandlingProperty(tabela_infoveh.vehicle, "turnMass") - getVehicleHandlingProperty(tabela_infoveh.vehicle, "turnMass") / 7
    else
      maxConfigTurnMass = split(tabela_infoveh.config[11], ",")[2] + split(tabela_infoveh.config[11], ",")[2] / 7
      minConfigTurnMass = split(tabela_infoveh.config[11], ",")[2] - split(tabela_infoveh.config[11], ",")[2] / 7
    end
    tabela_config_mech = {
      {
        "mno\197\188nik trakcji",
        tabela_infoveh.config[1],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "tractionMultiplier"),
        zmiana = 0,
        min = 0.5,
        max = tonumber(("%.2f"):format(maxConfigMultiplier)),
        nameDataBase = "configTractionMultiplier",
        nameHandling = "tractionMultiplier",
        description = "#ffbb00Traction Multiplier #ffffff- Ustawienie warto\197\155ci wp\197\130ywaj\196\133ce\nna si\197\130\196\153 przyczepno\197\155ci k\195\179\197\130 do nawierzchni. Im wy\197\188sza\nwarto\197\155\196\135, tym lepsza przyczepno\197\155\196\135. Jednak, warto\nzwr\195\179ci\196\135 uwag\196\153, \197\188e zbyt wysoka warto\197\155\196\135 mo\197\188e wp\197\130yn\196\133\196\135\nna zwrotno\197\155\196\135 pojazdu i utrudni\196\135 manewrowanie nim.",
        block = tabela_infoveh.tuning.traction
      },
      {
        "utrata trakcji",
        tabela_infoveh.config[2],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "tractionLoss"),
        zmiana = 0,
        min = 0.5,
        max = tonumber(("%.2f"):format(maxConfigLoss)),
        nameDataBase = "configTractionLoss",
        nameHandling = "tractionLoss",
        description = "#ffbb00Traction Loss #ffffff- Okre\197\155la, jak \197\130atwo ko\197\130a trac\196\133\nprzyczepno\197\155\196\135 do nawierzchni. Wy\197\188sza warto\197\155\196\135\noznacza trudniejsz\196\133 kontrol\196\153 pojazdu, mo\197\188e\nte\197\188 poprawi\196\135 zwrotno\197\155\196\135. Odpowiednie ustawienie\nTraction Loss mo\197\188e by\196\135 kluczowe dla\nuzyskania dobrych wynik\195\179w w wy\197\155cigach i\npoprawy og\195\179lnej kontroli nad pojazdem.",
        block = tabela_infoveh.tuning.traction
      },
      {
        "Rozk\197\130ad trakcji",
        tabela_infoveh.config[3],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "tractionBias"),
        zmiana = 0,
        min = 0.3,
        max = 0.7,
        nameDataBase = "configTractionBias",
        nameHandling = "tractionBias",
        description = "#ffbb00Traction Bias #ffffff- Pozwala na regulacj\196\153 przyczepno\197\155ci mi\196\153dzy osiami pojazdu.\nWysoka warto\197\155\196\135 na przedniej osi mo\197\188e poprawi\196\135 zwrotno\197\155\196\135, ale\nzwi\196\153kszy\196\135 ryzyko po\197\155lizgu, podczas gdy wysoka warto\197\155\196\135 na tylnej\nosi mo\197\188e poprawi\196\135 stabilno\197\155\196\135, ale zmniejszy\196\135 zwrotno\197\155\196\135.",
        block = tabela_infoveh.tuning.traction
      },
      {
        "Zakres skr\196\153tu k\195\179\197\130",
        tabela_infoveh.config[5],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "steeringLock"),
        zmiana = 0,
        min = 30,
        max = 80,
        nameDataBase = "configSteeringLock",
        nameHandling = "steeringLock",
        description = "#ffbb00Steering Lock #ffffff- Okre\197\155la zakres, w jakim kierownica mo\197\188e obr\195\179ci\196\135 ko\197\130a.\nWarto\197\155\196\135 ta mo\197\188e wp\197\130yn\196\133\196\135 na zwrotno\197\155\196\135 pojazdu i kontrol\196\153 w trudnych\nsytuacjach.",
        block = tabela_infoveh.tuning.skret
      },
      {
        "Rozk\197\130ad si\197\130y zawieszenia",
        tabela_infoveh.config[6],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "suspensionFrontRearBias"),
        zmiana = 0,
        min = 0.3,
        max = 0.7,
        nameDataBase = "configSuspensionFrontRearBias",
        nameHandling = "suspensionFrontRearBias",
        description = "#ffbb00Suspension Front/Rear Bias #ffffff- warto\197\155\196\135 ustawiona na 1 odpowiada pe\197\130nej si\197\130y zawieszenia\nna przedniej osi pojazdu, natomiast warto\197\155\196\135 ustawiona na 0 odpowiada braku\nsi\197\130y zawieszenia na przedniej osi. Im wy\197\188sza warto\197\155\196\135 ustawiona na przedniej\nosi, tym bardziej zastosowane zostanie si\197\130owe zawieszenie na ko\197\130a przednie, co\nwp\197\130ynie na popraw\196\153 prowadzenia i zwrotno\197\155ci pojazdu, ale mo\197\188e zmniejszy\196\135\nstabilno\197\155\196\135 pojazdu i zwi\196\153kszy\196\135 ryzyko ko\197\130ysania. Natomiast im ni\197\188sza\nwarto\197\155\196\135 ustawiona na przedniej osi, tym mniejsza si\197\130a zawieszenia na ko\197\130a przednie, co\nwp\197\130ynie na zmniejszenie zwrotno\197\155ci pojazdu, ale mo\197\188e poprawi\196\135 jego stabilno\197\155\196\135.",
        block = tabela_infoveh.tuning.rh
      },
      {
        "T\197\130umienie zawieszenia",
        tabela_infoveh.config[7],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "suspensionDamping"),
        zmiana = 0,
        min = 0,
        max = tonumber(("%.2f"):format(maxConfigDamping)),
        nameDataBase = "configSuspensionDamping",
        nameHandling = "suspensionDamping",
        description = "#ffbb00Suspension Damping #ffffff- Wp\197\130ywa na to, jak pojazd reaguje na\nnier\195\179wno\197\155ci terenu. Wy\197\188sza warto\197\155\196\135 oznacza lepsz\196\133 stabilno\197\155\196\135\ni kontrol\196\153 pojazdu, ale mo\197\188e wp\197\130yn\196\133\196\135 na komfort jazdy.",
        block = tabela_infoveh.tuning.rh
      },
      {
        "Si\197\130a hamowania",
        tabela_infoveh.config[8],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "brakeDeceleration"),
        zmiana = 0,
        min = 0,
        max = tonumber(("%.2f"):format(maxConfigBrakeDeceleration)),
        nameDataBase = "configBrakeDeceleration",
        nameHandling = "brakeDeceleration",
        description = "#ffbb00Brake Deceleration #ffffff- Okre\197\155la si\197\130\196\153 hamowania pojazdu.\nWy\197\188sza warto\197\155\196\135 oznacza silniejsze hamowanie",
        block = tabela_infoveh.tuning.hamulce
      },
      {
        "Rozk\197\130ad si\197\130y hamowania",
        tabela_infoveh.config[9],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "brakeBias"),
        zmiana = 0,
        min = 0.1,
        max = 0.9,
        nameDataBase = "configBrakeBias",
        nameHandling = "brakeBias",
        description = "#ffbb00Brake Bias #ffffff-  umo\197\188liwia regulacj\196\153 si\197\130y hamowania mi\196\153dzy osiami pojazdu. Warto\197\155\196\135\nustawiona na wy\197\188sz\196\133 na tylnej osi pojazdu mo\197\188e poprawi\196\135 hamowanie\ni kontrol\196\153 nad pojazdem podczas hamowania, ale zmniejszy\196\135 jego stabilno\197\155\196\135\nszczeg\195\179lnie na zakr\196\153tach. Natomiast wy\197\188sza warto\197\155\196\135 na przedniej osi pojazdu\nmo\197\188e poprawi\196\135 stabilno\197\155\196\135, ale zmniejszy\196\135 kontrol\196\153 i prowadzenie pojazdu\npodczas hamowania.",
        block = tabela_infoveh.tuning.hamulce
      },
      {
        "\197\154rodek ci\196\153\197\188ko\197\155ci",
        tabela_infoveh.config[4],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "centerOfMass"),
        zmiana = {
          0,
          0,
          0
        },
        min = -0.7,
        max = 0.8,
        nameDataBase = "configCenterOfMass",
        nameHandling = "centerOfMass",
        description = "#ffbb00Center of Mass #ffffff- Okre\197\155la po\197\130o\197\188enie \197\155rodka ci\196\153\197\188ko\197\155ci\npojazdu, kt\195\179re wp\197\130ywa na jego stabilno\197\155\196\135 i prowadzenie.",
        block = tabela_infoveh.tuning.regulacjaMasy
      },
      {
        "Masa",
        tabela_infoveh.config[10],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "mass"),
        zmiana = 0,
        min = tonumber(("%.2f"):format(minConfigMass)),
        max = tonumber(("%.2f"):format(maxConfigMass)),
        nameDataBase = "configMass",
        nameHandling = "mass",
        description = "#ffbb00Mass #ffffff- to parametr, kt\195\179ry okre\197\155la ca\197\130kowit\196\133 mas\196\153 pojazdu.\nIm wy\197\188sza warto\197\155\196\135, tym wi\196\153ksza jest masa pojazdu, co\noznacza, \197\188e b\196\153dzie on trudniejszy w przyspieszeniu i\nhamowaniu, ale jednocze\197\155nie bardziej stabilny podczas\njazdy z du\197\188\196\133 pr\196\153dko\197\155ci\196\133.",
        block = tabela_infoveh.tuning.regulacjaMasy
      },
      {
        "Masa skr\196\153tu",
        tabela_infoveh.config[11],
        getVehicleHandlingProperty(tabela_infoveh.vehicle, "turnMass"),
        zmiana = 0,
        min = tonumber(("%.2f"):format(minConfigTurnMass)),
        max = tonumber(("%.2f"):format(maxConfigTurnMass)),
        nameDataBase = "configTurnMass",
        nameHandling = "turnMass",
        description = "#ffbb00TurnMass #ffffff- okre\197\155la moment bezw\197\130adno\197\155ci pojazdu, czyli si\197\130\196\153\nkt\195\179ra dzia\197\130a na pojazd, aby go obr\195\179ci\196\135. Im wy\197\188sza warto\197\155\196\135, tym\nwi\196\153ksza si\197\130a jest potrzebna do obr\195\179cenia pojazdu, co mo\197\188e\nwp\197\130yn\196\133\196\135 na jego zwrotno\197\155\196\135 i spos\195\179b prowadzenia w zakr\196\153tach.\nWarto jednak pami\196\153ta\196\135, \197\188e zbyt niska warto\197\155\196\135 TurnMass mo\197\188e\nsprawi\196\135, \197\188e pojazd b\196\153dzie zbyt szybko si\196\153 obraca\197\130 i trudno go\nb\196\153dzie kontrolowa\196\135.",
        block = tabela_infoveh.tuning.regulacjaMasy
      }
    }
    texturesMechanic = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      back_arrow = dxCreateTexture(":ST_dashboard/img/back_arrow.png")
    }
    addEventHandler("onClientRender", root, windowMechanic)
    addEventHandler("onClientClick", root, clickMechanic)
    addEventHandler("onClientKey", root, keyGui)
    windowsMechanic.paintshop = false
    windowsMechanic.mechanic = true
    windowsMechanic.category = "konfiguracja"
    showCursor(true)
    idTable = _ARG_3_
  elseif _ARG_0_ == "acceptOfferConfigureClient" then
    _UPVALUE0_.sendOffer = false
  elseif _ARG_0_ == "rejectOfferConfigureClient" then
    _UPVALUE0_.sendOffer = false
  elseif _ARG_0_ == "sendOfferOilClient" then
    mechanic_offer = _ARG_1_
    tabela_infoveh = _ARG_2_
    idTable = _ARG_3_
    texturesMechanic = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      oil_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/oil_icon.png")
    }
    addEventHandler("onClientRender", root, windowMechanic)
    addEventHandler("onClientClick", root, clickMechanic)
    windowsMechanic.paintshop = false
    windowsMechanic.mechanic = true
    windowsMechanic.category = "wymiana oleju"
    showCursor(true)
  elseif _ARG_0_ == "rejectOfferOilChangeClient" then
    _UPVALUE0_.sendOffer = false
  elseif _ARG_0_ == "startOilChangeClient" then
    _UPVALUE0_.player_vehicle = _ARG_1_
    _UPVALUE0_.naprawianieCzas = false
    if _UPVALUE1_[1] then
      if type(tonumber(_UPVALUE1_[1].x) and _UPVALUE1_[1].x or ({
        x0 = getElementBoundingBox(_UPVALUE0_.player_vehicle)
      })[_UPVALUE1_[1].x]) == "number" then
      end
      if type(tonumber(_UPVALUE1_[1].y) and _UPVALUE1_[1].y or ({
        x0 = getElementBoundingBox(_UPVALUE0_.player_vehicle)
      })[_UPVALUE1_[1].y]) == "number" then
      end
      markerOil = createMarker(0, 0, 0, "cylinder", 0.8, 255, 174, 0, 255)
      attachElements(markerOil, _UPVALUE0_.player_vehicle, (tonumber(_UPVALUE1_[1].x) and _UPVALUE1_[1].x or ({
        x0 = getElementBoundingBox(_UPVALUE0_.player_vehicle)
      })[_UPVALUE1_[1].x]) * 1.25, (tonumber(_UPVALUE1_[1].y) and _UPVALUE1_[1].y or ({
        x0 = getElementBoundingBox(_UPVALUE0_.player_vehicle)
      })[_UPVALUE1_[1].y]) * 1.25, getElementPosition(_UPVALUE0_.player_vehicle) - getGroundPosition(getElementPosition(_UPVALUE0_.player_vehicle)) - 1.8)
      addEventHandler("onClientMarkerHit", markerOil, function(_ARG_0_, _ARG_1_)
        if _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
          if _UPVALUE0_.naprawianieCzas == true then
            return
          end
          _UPVALUE0_.naprawianieCzas = true
          setElementFrozen(localPlayer, true)
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "animations", localPlayer, true, true)
          setTimer(function()
            _UPVALUE0_.sendOffer = false
            exports.st_gui:showPlayerNotification("Pomy\197\155lnie wymieniono olej graczowi " .. getPlayerName(getVehicleController(_UPVALUE0_.player_vehicle)), "success")
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "endChangeOil", localPlayer, _UPVALUE0_.player_vehicle)
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "animations", localPlayer, false)
            if isElement(markerOil) then
              destroyElement(markerOil)
            end
            setElementFrozen(localPlayer, false)
            _UPVALUE0_.naprawianieCzas = false
          end, 10000, 1)
        end
      end)
    end
  elseif _ARG_0_ == "sendOfferTechnicalReviewClient" then
    mechanic_offer = _ARG_1_
    tabela_infoveh = _ARG_2_
    idTable = _ARG_3_
    texturesMechanic = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      techrev_icon = dxCreateTexture("img/techrev_icon.png")
    }
    addEventHandler("onClientRender", root, windowMechanic)
    addEventHandler("onClientClick", root, clickMechanic)
    windowsMechanic.paintshop = false
    windowsMechanic.mechanic = true
    windowsMechanic.category = "przegl\196\133d pojazdu"
    showCursor(true)
  elseif _ARG_0_ == "startTechnicalReviewClient" then
    _UPVALUE0_.lastMarker = 0
    _UPVALUE0_.naprawianieCzas = false
    _UPVALUE0_.player_vehicle = _ARG_2_
    setElementFrozen(_ARG_1_, true)
    for _FORV_16_, _FORV_17_ in pairs(_UPVALUE1_) do
      _UPVALUE2_[_FORV_17_.unical] = createMarker(0, 0, 0, "cylinder", 0.8, 255, 174, 0, 255)
      attachElements(_UPVALUE2_[_FORV_17_.unical], _ARG_1_, (tonumber(_FORV_17_.x) and _FORV_17_.x or ({
        x0 = getElementBoundingBox(_ARG_1_)
      })[_FORV_17_.x]) * 1.25, (tonumber(_FORV_17_.y) and _FORV_17_.y or ({
        x0 = getElementBoundingBox(_ARG_1_)
      })[_FORV_17_.y]) * 1.25, getElementPosition(_ARG_1_) - getGroundPosition(getElementPosition(_ARG_1_)) - 1.8)
      setElementData(_UPVALUE2_[_FORV_17_.unical], "repair:data", {
        marker = _UPVALUE2_[_FORV_17_.unical],
        name = _FORV_17_.name,
        vehicle = _ARG_1_,
        unical = _FORV_17_.unical
      })
      _UPVALUE0_.lastMarker = _UPVALUE0_.lastMarker + 1
      addEventHandler("onClientMarkerHit", _UPVALUE2_[_FORV_17_.unical], function(_ARG_0_, _ARG_1_)
        if _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
          if _UPVALUE0_.naprawianieCzas == true then
            return
          end
          _UPVALUE0_.naprawianieCzas = true
          setElementFrozen(localPlayer, true)
          if getElementData(source, "repair:data") and isElement(getElementData(source, "repair:data").vehicle) then
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "animations", localPlayer, true, true, getElementData(source, "repair:data").name)
            _UPVALUE0_.lastMarker = _UPVALUE0_.lastMarker - 1
            setTimer(function()
              if _UPVALUE0_.lastMarker == 0 then
                _UPVALUE0_.sendOffer = false
                _UPVALUE0_.lastMarker = false
                triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "endTechnicalReview", localPlayer, _UPVALUE1_)
              end
              if isElement(_UPVALUE2_[_UPVALUE3_.unical]) then
                destroyElement(_UPVALUE2_[_UPVALUE3_.unical])
              end
              setElementFrozen(localPlayer, false)
              triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "animations", localPlayer, false)
              _UPVALUE0_.naprawianieCzas = false
            end, 4000, 1)
          end
        end
      end)
    end
  end
end)
function checkWhatNeedRepair(_ARG_0_)
  for _FORV_6_, _FORV_7_ in pairs({
    {
      "Silnik",
      "silnik",
      fn = function(_ARG_0_)
        if getElementHealth(_ARG_0_) >= 2040 then
          return true
        end
        return false, (_UPVALUE0_.dataBusiness.parts_price.engine - getElementHealth(_ARG_0_)) * 3, _UPVALUE0_.dataBusiness.parts.engine
      end
    },
    {
      "Maska",
      "maska",
      fn = function(_ARG_0_)
        if getVehicleDoorState(_ARG_0_, 0) == 0 or getVehicleDoorState(_ARG_0_, 0) == 1 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.hood, _UPVALUE0_.dataBusiness.parts.hood
      end
    },
    {
      "Baga\197\188nik",
      "bagaznik",
      fn = function(_ARG_0_)
        if getVehicleDoorState(_ARG_0_, 1) == 0 or getVehicleDoorState(_ARG_0_, 1) == 1 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.trunk, _UPVALUE0_.dataBusiness.parts.trunk
      end
    },
    {
      "Drzwi, lewy prz\195\179d",
      "drzwi",
      fn = function(_ARG_0_)
        if getVehicleDoorState(_ARG_0_, 2) == 0 or getVehicleDoorState(_ARG_0_, 2) == 1 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.door, _UPVALUE0_.dataBusiness.parts.door
      end
    },
    {
      "Drzwi, prawy prz\195\179d",
      "drzwi",
      fn = function(_ARG_0_)
        if getVehicleDoorState(_ARG_0_, 3) == 0 or getVehicleDoorState(_ARG_0_, 3) == 1 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.door, _UPVALUE0_.dataBusiness.parts.door
      end
    },
    {
      "Drzwi, lewy ty\197\130",
      "drzwi",
      fn = function(_ARG_0_)
        if getVehicleDoorState(_ARG_0_, 4) == 0 or getVehicleDoorState(_ARG_0_, 4) == 1 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.door, _UPVALUE0_.dataBusiness.parts.door
      end
    },
    {
      "Drzwi, prawy ty\197\130",
      "drzwi",
      fn = function(_ARG_0_)
        if getVehicleDoorState(_ARG_0_, 5) == 0 or getVehicleDoorState(_ARG_0_, 5) == 1 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.door, _UPVALUE0_.dataBusiness.parts.door
      end
    },
    {
      "Szyba",
      "szyba",
      fn = function(_ARG_0_)
        if getVehiclePanelState(_ARG_0_, 4) == 0 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.glass, _UPVALUE0_.dataBusiness.parts.glass
      end
    },
    {
      "Zderzak prz\195\179d",
      "zderzaki",
      fn = function(_ARG_0_)
        if getVehiclePanelState(_ARG_0_, 5) == 0 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.bumper, _UPVALUE0_.dataBusiness.parts.bumper
      end
    },
    {
      "Zderzak ty\197\130",
      "zderzaki",
      fn = function(_ARG_0_)
        if getVehiclePanelState(_ARG_0_, 6) == 0 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.bumper, _UPVALUE0_.dataBusiness.parts.bumper
      end
    },
    {
      "\197\154wiat\197\130a, lewy prz\195\179d",
      "\197\155wiat\197\130a",
      fn = function(_ARG_0_)
        if getVehicleLightState(_ARG_0_, 0) == 0 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.light, _UPVALUE0_.dataBusiness.parts.light
      end
    },
    {
      "\197\154wiat\197\130a, prawy prz\195\179d",
      "\197\155wiat\197\130a",
      fn = function(_ARG_0_)
        if getVehicleLightState(_ARG_0_, 1) == 0 then
          return true
        end
        return false, _UPVALUE0_.dataBusiness.parts_price.light, _UPVALUE0_.dataBusiness.parts.light
      end
    }
  }) do
    if _FORV_7_.fn(_ARG_0_) == false and _FORV_7_.fn(_ARG_0_) > 0 then
      table.insert({}, {
        name = _FORV_7_[1],
        type = _FORV_7_[2],
        cost = math.floor(_FORV_7_.fn(_ARG_0_)),
        selected = false,
        number = _FORV_7_.fn(_ARG_0_)
      })
    end
  end
  return {}
end
function secondsToClock1(_ARG_0_)
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
function calculateMouse()
  if selfPaintshop.mouseSelected == "hue" then
    selfPaintshop.colorSlide = math.max(math.min(getCursorPosition() * screenW - (_UPVALUE0_.x + 45 / zoom), 350 / zoom), 0)
    selfPaintshop.colorCurrent = {
      hsv2rgb((346 / zoom - selfPaintshop.colorSlide) / (346 / zoom), 1, 1)
    }
  elseif selfPaintshop.mouseSelected == "color" then
    selfPaintshop.colorPicker = Vector2(math.max(math.min(getCursorPosition() * screenW - (_UPVALUE0_.x + 45 / zoom), 350 / zoom), 0), math.max(math.min(getCursorPosition() * screenH - (_UPVALUE0_.y + 95 / zoom), 250 / zoom), 0))
  end
end
function hsv2rgb(_ARG_0_, _ARG_1_, _ARG_2_)
  if math.floor(_ARG_0_ * 6) % 6 == 0 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 1 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 2 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 3 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 4 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 5 then
  end
  return math.floor(_ARG_2_ * 255), math.floor(_ARG_2_ * (1 - _ARG_1_) * 255), math.floor(_ARG_2_ * (1 - (_ARG_0_ * 6 - math.floor(_ARG_0_ * 6)) * _ARG_1_) * 255)
end
function hex2rgb(_ARG_0_)
  _ARG_0_ = _ARG_0_:gsub("#", "")
  return tonumber("0x" .. _ARG_0_:sub(1, 2)), tonumber("0x" .. _ARG_0_:sub(3, 4)), tonumber("0x" .. _ARG_0_:sub(5, 6))
end
function rgbToHsv(_ARG_0_, _ARG_1_, _ARG_2_)
  _ARG_0_, _ARG_1_, _ARG_2_ = _ARG_0_ / 255, _ARG_1_ / 255, _ARG_2_ / 255
  if math.max(_ARG_0_, _ARG_1_, _ARG_2_) == 0 then
  else
  end
  if math.max(_ARG_0_, _ARG_1_, _ARG_2_) == math.min(_ARG_0_, _ARG_1_, _ARG_2_) then
  elseif math.max(_ARG_0_, _ARG_1_, _ARG_2_) == _ARG_0_ then
    if _ARG_1_ < _ARG_2_ then
    end
  elseif math.max(_ARG_0_, _ARG_1_, _ARG_2_) == _ARG_1_ then
  elseif math.max(_ARG_0_, _ARG_1_, _ARG_2_) == _ARG_2_ then
  end
  return ((_ARG_0_ - _ARG_1_) / (math.max(_ARG_0_, _ARG_1_, _ARG_2_) - math.min(_ARG_0_, _ARG_1_, _ARG_2_)) + 4) / 6, (math.max(_ARG_0_, _ARG_1_, _ARG_2_) - math.min(_ARG_0_, _ARG_1_, _ARG_2_)) / math.max(_ARG_0_, _ARG_1_, _ARG_2_), (math.max(_ARG_0_, _ARG_1_, _ARG_2_))
end
function RGBToHex(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ < 0 or 255 < _ARG_0_ or _ARG_1_ < 0 or 255 < _ARG_1_ or _ARG_2_ < 0 or 255 < _ARG_2_ or alpha and (0 > alpha or 255 < alpha) then
    return nil
  end
  return string.format("#%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_)
end
function PaintingUseCan(...)
  if (nil)[1] == 41 then
    selfPaintshop.posX = selfPaintshop.posX + 0.1
  end
end
stanowiska_tabela = {}
selfInfo = {}
shd = {}
obj = {}
rt = {}
function render()
  dxSetRenderTarget(rt[stanowiska_tabela.id1], true)
  dxDrawRectangle(0, 0, 1000, 1000, tocolor(35, 35, 35, 255), false)
  if stanowiska_tabela.infoVeh then
    dxDrawText("Pojazd: #ffaa00" .. stanowiska_tabela.infoVeh.name .. "", 40, -726, 0, 0, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("light34"), "left", "top", false, false, false, true, false, 90, 90, 90)
    if stanowiska_tabela.infoVeh.oil[2] == "niewa\197\188ny" then
      dxDrawText("Przegl\196\133d: #c82828" .. stanowiska_tabela.infoVeh.oil[2] .. "", 40, -669, 0, 0, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("normal25"), "left", "top", false, false, false, true, false, 90, 90, 90)
    else
      dxDrawText("Przegl\196\133d: #28b428" .. stanowiska_tabela.infoVeh.oil[2] .. "", 40, -669, 0, 0, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("normal25"), "left", "top", false, false, false, true, false, 90, 90, 90)
    end
    dxDrawRoundedRectangle(800, 40, 2, 920, 2, tocolor(255, 187, 0, 150), false)
    for _FORV_5_, _FORV_6_ in ipairs(tabela_config) do
      if _FORV_5_ >= _UPVALUE0_ and _FORV_5_ <= _UPVALUE1_ then
        if 0 + 1 > 2 then
        end
        dxDrawRoundedRectangle(570 - 223 * (1 + 1 - 1), 40 + 470 * (1 - 1), 200, 450, 15, tocolor(45, 45, 45, 240), false)
        dxDrawRoundedRectangle(715 - 223 * (1 + 1 - 1), 50 + 470 * (1 - 1), 2, 430, 2, tocolor(255, 187, 0, 255))
        if _FORV_6_[1] == "\197\154rodek ci\196\153\197\188ko\197\155ci" then
          dxDrawText("X", 185 + 940 * (1 - 1), -488 + 223 * (1 + 1 - 1), 0, 0, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
          dxDrawText("Y", 435 + 940 * (1 - 1), -488 + 223 * (1 + 1 - 1), 0, 0, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
          dxDrawText("Z", 685 + 940 * (1 - 1), -488 + 223 * (1 + 1 - 1), 0, 0, tocolor(150, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
          if tonumber(_FORV_6_[2]) == 0 then
            if _FORV_6_.block == 0 then
              dxDrawText(_FORV_6_[1] .. " - #ff3d3dzablokowane", 50 + 470 * (1 - 1), -579 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font22"), "left", "top", false, false, false, true, false, 90, 90, 90)
            else
              dxDrawText(_FORV_6_[1] .. " - #a3a3a3fabryczne", 50 + 470 * (1 - 1), -579 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font22"), "left", "top", false, false, false, true, false, 90, 90, 90)
            end
            dxDrawText(("%.2f"):format(_FORV_6_[3][1]), 280 + 940 * (1 - 1), -488 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
            dxDrawText(("%.2f"):format(_FORV_6_[3][2]), 530 + 940 * (1 - 1), -488 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
            dxDrawText(("%.2f"):format(_FORV_6_[3][3]), 780 + 940 * (1 - 1), -488 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
          else
            if _FORV_6_.block == 0 then
              dxDrawText(_FORV_6_[1] .. " - #ff3d3dzablokowane", 50 + 470 * (1 - 1), -579 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font22"), "left", "top", false, false, false, true, false, 90, 90, 90)
            else
              dxDrawText(_FORV_6_[1] .. " - #d6ac38zmodyfikowane", 50 + 470 * (1 - 1), -579 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font22"), "left", "top", false, false, false, true, false, 90, 90, 90)
            end
            dxDrawText(("%.2f"):format(split(_FORV_6_[2], ",")[1]), 280 + 940 * (1 - 1), -490 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
            dxDrawText(("%.2f"):format(split(_FORV_6_[2], ",")[2]), 530 + 940 * (1 - 1), -490 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
            dxDrawText(("%.2f"):format(split(_FORV_6_[2], ",")[3]), 780 + 940 * (1 - 1), -490 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false, 90, 90, 90)
          end
        else
          dxDrawRoundedRectangle(595 - 223 * (1 + 1 - 1), 120 + 470 * (1 - 1), 25, 295, 8, tocolor(25, 25, 25, 240), false)
          if _FORV_6_[1] == "Rozk\197\130ad trakcji" or _FORV_6_[1] == "Rozk\197\130ad zawieszenia" or _FORV_6_[1] == "Rozk\197\130ad hamowania" then
            dxDrawText("PRZ\195\147D", 425 + 470 * (1 - 1), -442 + 223 * (1 + 1 - 1), 0, 0, tocolor(200, 200, 200, 255), 1, exports.ST_gui:getGUIFont("font18"), "left", "top", false, false, false, true, false, 90, 90, 90)
            dxDrawText("TY\197\129", 80 + 470 * (1 - 1), -442 + 223 * (1 + 1 - 1), 0, 0, tocolor(200, 200, 200, 255), 1, exports.ST_gui:getGUIFont("font18"), "left", "top", false, false, false, true, false, 90, 90, 90)
          end
          if tonumber(_FORV_6_[2]) == 0 then
            if _FORV_6_.block == 0 then
              dxDrawText(_FORV_6_[1] .. " - #ff3d3dzablokowane", 50 + 470 * (1 - 1), -579 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font22"), "left", "top", false, false, false, true, false, 90, 90, 90)
            else
              dxDrawText(_FORV_6_[1] .. " - #a3a3a3fabryczne", 50 + 470 * (1 - 1), -579 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font22"), "left", "top", false, false, false, true, false, 90, 90, 90)
            end
            dxDrawText(("%.2f"):format(_FORV_6_[3]), 530 + 940 * (1 - 1), -510 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font30"), "center", "top", false, false, false, true, false, 90, 90, 90)
            if 295 * (((tonumber(_FORV_6_[2]) == 0 and _FORV_6_[3] + _FORV_6_.zmiana or split(_FORV_6_[2], ",")[1] + _FORV_6_.zmiana) - _FORV_6_.min) / (_FORV_6_.max - _FORV_6_.min)) / zoom <= 25 then
              dxDrawRoundedRectangle(595 - 223 * (1 + 1 - 1), 120 + 470 * (1 - 1), 25, 25, 8, tocolor(112, 112, 112, 240), false)
            else
              dxDrawRoundedRectangle(595 - 223 * (1 + 1 - 1), 120 + 470 * (1 - 1), 25, 295 * (((tonumber(_FORV_6_[2]) == 0 and _FORV_6_[3] + _FORV_6_.zmiana or split(_FORV_6_[2], ",")[1] + _FORV_6_.zmiana) - _FORV_6_.min) / (_FORV_6_.max - _FORV_6_.min)), 8, tocolor(112, 112, 112, 240), false)
            end
          else
            if _FORV_6_.block == 0 then
              dxDrawText(_FORV_6_[1] .. " - #ff3d3dzablokowane", 50 + 470 * (1 - 1), -579 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font22"), "left", "top", false, false, false, true, false, 90, 90, 90)
            else
              dxDrawText(_FORV_6_[1] .. " - #d6ac38zmodyfikowane", 50 + 470 * (1 - 1), -579 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font22"), "left", "top", false, false, false, true, false, 90, 90, 90)
            end
            dxDrawText(("%.2f"):format(split(_FORV_6_[2], ",")[1]) .. "", 530 + 940 * (1 - 1), -510 + 223 * (1 + 1 - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font30"), "center", "top", false, false, false, true, false, 90, 90, 90)
            if 295 * (((tonumber(_FORV_6_[2]) == 0 and _FORV_6_[3] + _FORV_6_.zmiana or split(_FORV_6_[2], ",")[1] + _FORV_6_.zmiana) - _FORV_6_.min) / (_FORV_6_.max - _FORV_6_.min)) / zoom <= 25 then
              dxDrawRoundedRectangle(595 - 223 * (1 + 1 - 1), 120 + 470 * (1 - 1), 25, 25, 8, tocolor(255, 187, 0, 240), false)
            else
              dxDrawRoundedRectangle(595 - 223 * (1 + 1 - 1), 120 + 470 * (1 - 1), 25, 295 * (((tonumber(_FORV_6_[2]) == 0 and _FORV_6_[3] + _FORV_6_.zmiana or split(_FORV_6_[2], ",")[1] + _FORV_6_.zmiana) - _FORV_6_.min) / (_FORV_6_.max - _FORV_6_.min)), 8, tocolor(255, 187, 0, 240), false)
            end
          end
        end
      end
    end
    dxDrawScrollBar(#tabela_config, 130, 977, 630, 5, _UPVALUE2_, _UPVALUE0_, true)
  else
    dxDrawText("Brak pojazdu na stanowisku", 1000, -340, 0, 0, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("light40"), "center", "top", false, false, false, true, false, 90, 90, 90)
  end
  dxSetRenderTarget()
  if shd[stanowiska_tabela.id1] then
    destroyElement(shd[stanowiska_tabela.id1])
    shd[stanowiska_tabela.id1] = nil
  end
  shd[stanowiska_tabela.id1] = dxCreateShader(":ST_devpaczka1/shader.fx", 0, 0, false, "object")
  dxSetShaderValue(shd[stanowiska_tabela.id1], "DevTexture", rt[stanowiska_tabela.id1])
  engineApplyShaderToWorldTexture(shd[stanowiska_tabela.id1], "b", obj[stanowiska_tabela.id1])
  engineApplyShaderToWorldTexture(shd[stanowiska_tabela.id1], "a", obj[stanowiska_tabela.id1])
end
function getVehicleHandlingProperty(_ARG_0_, _ARG_1_)
  if isElement(_ARG_0_) and getElementType(_ARG_0_) == "vehicle" and type(_ARG_1_) == "string" and getVehicleHandling(_ARG_0_)[_ARG_1_] then
    return getVehicleHandling(_ARG_0_)[_ARG_1_]
  end
  return false
end
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / zoom, tocolor(15, 15, 15, 255))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_7_ then
      if _ARG_6_ == 1 then
        scrollbarPos = _ARG_1_
      elseif 0 < _ARG_6_ then
        scrollbarPos = _ARG_6_ * (_ARG_3_ / _ARG_0_ / 1.1) + _ARG_1_
      end
      if _ARG_0_ <= _ARG_5_ then
      end
      dxDrawRoundedRectangle(_ARG_1_ + _ARG_3_ - scrollbarPos - _ARG_3_ - 80, _ARG_2_, _ARG_3_ * (_ARG_5_ - 1), _ARG_4_, 3 / zoom, tocolor(255, 187, 0, 255))
    else
      if _ARG_6_ == 1 then
        scrollbarPos = _ARG_2_
      elseif 0 < _ARG_6_ then
        scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
      end
      if _ARG_0_ <= _ARG_5_ then
      end
      dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / zoom, tocolor(255, 187, 0, 255))
    end
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / zoom, tocolor(255, 187, 0, 255))
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
function interpolateColor(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ < 351 then
    _ARG_0_ = 351
  end
  return tocolor(_ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][1] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][1] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][1]), _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][2] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][2] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][2]), _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][3] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][3] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][3]), 190)
end
getResourceName(getThisResource(), true, 683730260)
return
