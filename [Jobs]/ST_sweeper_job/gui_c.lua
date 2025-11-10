screenW, screenH = guiGetScreenSize()
px, py = screenW / 1920, screenH / 1080
zoom = exports.st_gui:getInterfaceZoom()
windowsUP = {
  x = screenW / 2 - 225,
  y = 20 / zoom,
  w = 450 / zoom,
  h = 120 / zoom
}
graph = {}
selfInfoJob = {}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 80 / zoom, 70 / zoom, 400 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.info_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.info_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windows.main == true then
      dxDrawText("SWEEPERY - SPRZ\196\132TANIE ULIC", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText([[
Twoj zadaniem jest czysczenie ulic
po stanie San Andreas.]], _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("- Brak", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      if isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("STATYSTYKI", _UPVALUE0_.x, _UPVALUE0_.y + 495 / zoom, _UPVALUE0_.x + 362 / zoom + 500 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 370 / zoom, 213 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("Punkty ulepsze\197\132: #ffb700" .. _FORV_8_.punkty_sweeper .. "\n#b4b4b4\197\129\196\133czne zarobki: #ffb700" .. przecinek(_FORV_8_.zarobki_sweeper) .. " #b4b4b4PLN \nOg\195\179\197\130 KG: #ffb700" .. _FORV_8_.ogol_kg_sweeper .. [[

#b4b4b4KG ranking: #ffb700]] .. przecinek(_FORV_8_.kg_ranking_sweeper) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom + 500 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.upgrades == true then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: #ffb700" .. przecinek(_FORV_8_.punkty_sweeper), _UPVALUE0_.x, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / zoom, _UPVALUE0_.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #ffb700" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 2 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 70 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.status == 1 then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 255, 1)
        end
      end
    end
  end
  if windows.endJob == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 198 / zoom, _UPVALUE0_.y + 148 / zoom, _UPVALUE0_.w - 396 / zoom, _UPVALUE0_.h - 296 / zoom, 25 / zoom, tocolor(90, 90, 90, 240))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 150 / zoom, _UPVALUE0_.w - 400 / zoom, _UPVALUE0_.h - 300 / zoom, 25 / zoom, tocolor(20, 20, 20, 230))
    dxDrawText("CZY NA PEWNO CHCESZ ZAKO\197\131CZY\196\134\nPRAC\196\152?", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 230 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("TAK", _UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 335 / zoom, 100 / zoom, 60 / zoom, 255, 1)
    exports.ST_buttons:dxCreateButton("NIE", _UPVALUE0_.x + 540 / zoom, _UPVALUE0_.y + 335 / zoom, 100 / zoom, 60 / zoom, 255, 1)
  end
  if windows.saleKG == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 39 / zoom, _UPVALUE0_.y - 26 / zoom, _UPVALUE0_.w + 78 / zoom, _UPVALUE0_.h + 52 / zoom, 38 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x - 50 / zoom, _UPVALUE0_.y - 32.5 / zoom, _UPVALUE0_.w + 100 / zoom, _UPVALUE0_.h + 65 / zoom, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 20 / zoom, _UPVALUE0_.y + 35 / zoom, 920 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("SPRZEDA\197\187 \197\154MIECI -", _UPVALUE0_.x - 15 / zoom, _UPVALUE0_.y - 180 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    dxDrawText("OD\197\154WIE\197\187ENIE RYNKU ZA #ffb700" .. CzasZmiany .. " #ffffffminut", _UPVALUE0_.x + 205 / zoom, _UPVALUE0_.y - 180 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 15 / zoom, _UPVALUE0_.y + 55 / zoom, 470 / zoom, 360 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / zoom, _UPVALUE0_.y + 55 / zoom, 420 / zoom, 175 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / zoom, _UPVALUE0_.y + 240 / zoom, 420 / zoom, 175 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / zoom, _UPVALUE0_.y + 430 / zoom, 420 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("CENY \197\154MIECI NA RYNKU", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y - 40 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText("TWOJE \197\154MIECI", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 330 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText("SPRZEDA\197\187", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 705 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      for _FORV_12_, _FORV_13_ in ipairs(table_stockExchange) do
        dxDrawText("#15afe3\226\154\171 Papier#ffffff: " .. _FORV_13_.paper .. " PLN / 1kg\n#01a753\226\154\171 Szk\197\130o#ffffff: " .. _FORV_13_.glass .. " PLN / 1kg\n#fdcc29\226\154\171 Plastik#ffffff: " .. _FORV_13_.plastic .. " PLN / 1kg", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 110 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
        dxDrawText("#15afe3\226\154\171 Papier#ffffff:  " .. _FORV_8_.kg_papier_sweeper .. " kg   ( #00ad23" .. przecinek(_FORV_8_.kg_papier_sweeper * _FORV_13_.paper) .. " #ffffffPLN )\n#01a753\226\154\171 Szk\197\130o#ffffff:  " .. _FORV_8_.kg_szklo_sweeper .. " kg   ( #00ad23" .. przecinek(_FORV_8_.kg_szklo_sweeper * _FORV_13_.glass) .. " #ffffffPLN )\n#fdcc29\226\154\171 Plastik#ffffff:  " .. _FORV_8_.kg_plastik_sweeper .. " kg   ( #00ad23" .. przecinek(_FORV_8_.kg_plastik_sweeper * _FORV_13_.plastic) .. " #ffffffPLN )", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 480 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
        dxDrawText("#15afe3Papier#ffffff:  " .. graph.paperNumber .. " kg   ( #00ad23" .. przecinek(graph.paperNumber * _FORV_13_.paper) .. " #ffffffPLN )", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 770 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText("#01a753Szk\197\130o#ffffff:  " .. graph.glassNumber .. " kg   ( #00ad23" .. przecinek(graph.glassNumber * _FORV_13_.glass) .. " #ffffffPLN )", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 820 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText("#fdcc29Plastik#ffffff:  " .. graph.plasticNumber .. " kg   ( #00ad23" .. przecinek(graph.plasticNumber * _FORV_13_.plastic) .. " #ffffffPLN )", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 870 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        if _FORV_8_.ulepszenie_zarobek_sweeper == 1 then
          dxDrawText("OTRZYMASZ: #00ad23" .. przecinek(math.floor(graph.paperNumber * _FORV_13_.paper + graph.glassNumber * _FORV_13_.glass + graph.plasticNumber * _FORV_13_.plastic)) .. " PLN  #05f034+" .. przecinek(math.floor((graph.paperNumber * _FORV_13_.paper + graph.glassNumber * _FORV_13_.glass + graph.plasticNumber * _FORV_13_.plastic) * 1.2 - (graph.paperNumber * _FORV_13_.paper + graph.glassNumber * _FORV_13_.glass + graph.plasticNumber * _FORV_13_.plastic))) .. " (20%)", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 930 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("OTRZYMASZ: #00ad23" .. przecinek(math.floor(graph.paperNumber * _FORV_13_.paper + graph.glassNumber * _FORV_13_.glass + graph.plasticNumber * _FORV_13_.plastic)) .. " PLN", _UPVALUE0_.x + 485 / zoom, _UPVALUE0_.y + 930 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        end
      end
    end
    exports.ST_buttons:dxCreateButton("SPRZEDAJ", _UPVALUE0_.x + 745 / zoom, _UPVALUE0_.y + 490 / zoom, 130 / zoom, 45 / zoom, 255, 1)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 15 / zoom, _UPVALUE0_.y + 430 / zoom, 150 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("\225\144\138", _UPVALUE0_.x - 330 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("#15afe3PAPIER", _UPVALUE0_.x - 240 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText(graph.paperNumber, _UPVALUE0_.x - 240 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    dxDrawText("\225\144\133", _UPVALUE0_.x - 150 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("MAX", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 535 / zoom, 100 / zoom, 35 / zoom, 255, 1)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / zoom, _UPVALUE0_.y + 430 / zoom, 150 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("\225\144\138", _UPVALUE0_.x - 10 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("#01a753SZK\197\129O", _UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText(graph.glassNumber, _UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    dxDrawText("\225\144\133", _UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("MAX", _UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y + 535 / zoom, 100 / zoom, 35 / zoom, 255, 1)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 305 / zoom, _UPVALUE0_.y + 430 / zoom, 150 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("\225\144\138", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("#fdcc29PLASTIK", _UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText(graph.plasticNumber, _UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    dxDrawText("\225\144\133", _UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 805 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("MAX", _UPVALUE0_.x + 330 / zoom, _UPVALUE0_.y + 535 / zoom, 100 / zoom, 35 / zoom, 255, 1)
    if isMouseIn(_UPVALUE0_.x + 860 / zoom, _UPVALUE0_.y - 8 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 859 / zoom, _UPVALUE0_.y - 9 / zoom, 32 / zoom, 32 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 860 / zoom, _UPVALUE0_.y - 8 / zoom, 30 / zoom, 30 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if rendertarget then
      dxDrawImage(_UPVALUE0_.x - 45 / zoom, _UPVALUE0_.y + 1 / zoom, 540 / zoom, 435 / zoom, rendertarget)
    end
  end
  if windows.landing == true then
    if selfInfoJob.landingSTART == true then
      selfInfoJob.allKG = selfInfoJob.allKG - math.random(20, 50) / 100
      if 0 > selfInfoJob.allKG then
        selfInfoJob.landingSTART = false
        selfInfoJob.allKG = 0
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WY\197\129ADUNEK \197\154MIECI", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 20 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 819 / zoom, _UPVALUE0_.y + 19 / zoom, 32 / zoom, 32 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 20 / zoom, 30 / zoom, 30 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawText("ZA\197\129ADUNEK \197\154MIECI: #ffbf00" .. string.format("%0.2f", selfInfoJob.allKG) .. " #ffffff/ #ffbf00" .. selfInfoJob.maxKG .. " #ffffffKG", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 67 / zoom, _UPVALUE0_.y + 267 / zoom, 746 / zoom, 46 / zoom, 15 / zoom, tocolor(70, 70, 70, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 68 / zoom, _UPVALUE0_.y + 268 / zoom, 744 / zoom, 44 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    if 740 / selfInfoJob.maxKG * selfInfoJob.allKG / zoom > 30 / zoom then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 70 / zoom, _UPVALUE0_.y + 270 / zoom, 740 / selfInfoJob.maxKG * selfInfoJob.allKG / zoom, 40 / zoom, 15 / zoom, tocolor(255, 187, 0, 230))
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 70 / zoom, _UPVALUE0_.y + 270 / zoom, 30 / zoom, 40 / zoom, 15 / zoom, tocolor(255, 187, 0, 230))
    end
    if selfInfoJob.allKG > 20 and not selfInfoJob.landingSTART then
      exports.ST_buttons:dxCreateButton("WY\197\129ADUJ", _UPVALUE0_.x + 330 / zoom, _UPVALUE0_.y + 430 / zoom, 220 / zoom, 65 / zoom, 255, 1)
    end
  end
end
function windowXD()
  if getTickCount() - tick1 > 1000 then
    tick1 = getTickCount()
    selfInfoJob.time = selfInfoJob.time + 1
    loadingTime = loadingTime - 1
  end
  if getTickCount() - tick > 35555 then
    tick = getTickCount()
    if selfInfoJob.allKG + 0.01 >= selfInfoJob.maxKG then
      exports.st_gui:showPlayerNotification("Tw\195\179j sweeper jest pe\197\130ny!\nZako\197\132cz prac\196\153 lub roz\197\130aduj \197\155mieci", "info")
      return
    end
    if selfInfoJob.paperSave + selfInfoJob.plasticSave + selfInfoJob.glassSave > 25 then
      exports.st_gui:showPlayerNotification([[
Zapisano dane
Papier: +]] .. selfInfoJob.paperSave .. "   Szk\197\130o: +" .. selfInfoJob.glassSave .. "   Plastik: +" .. selfInfoJob.plasticSave .. "", "info")
      triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "wages", localPlayer, {
        selfInfoJob.paperSave,
        selfInfoJob.plasticSave,
        selfInfoJob.glassSave,
        65437542
      })
      selfInfoJob.paperSave = 0
      selfInfoJob.plasticSave = 0
      selfInfoJob.glassSave = 0
      selfInfoJob.blockStopJob = true
    end
  end
  dxDrawRoundedRectangle(windowsUP.x - 2 / zoom, windowsUP.y - 2 / zoom, windowsUP.w + 4 / zoom, windowsUP.h + 4 / zoom, 15 / zoom, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, 15 / zoom, tocolor(25, 25, 25, 220))
  dxDrawText("SWEEPERY - SPRZ\196\132TANIE ULIC", windowsUP.x, windowsUP.y - 70 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
  dxDrawText("KM: #ffbf00" .. string.format("%0.2f", selfInfoJob.mileage) .. "", windowsUP.x, windowsUP.y - 10 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  dxDrawText("\197\129\196\132CZNE KG: #ffbf00" .. string.format("%0.2f", selfInfoJob.allKG) .. " #ffffff/ #ffbf00" .. selfInfoJob.maxKG .. "", windowsUP.x, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(selfInfoJob.time) .. "", windowsUP.x, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  dxDrawText("#15afe3PAPIER#ffffff: " .. string.format("%0.2f", selfInfoJob.paperKG) .. " " .. selfInfoJob.addPaper .. "", windowsUP.x + 10 / zoom, windowsUP.y - 10 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("#01a753SZK\197\129O#ffffff: " .. string.format("%0.2f", selfInfoJob.glassKG) .. " " .. selfInfoJob.addGlass .. "", windowsUP.x + 10 / zoom, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("#fdcc29PLASTIK#ffffff: " .. string.format("%0.2f", selfInfoJob.plasticKG) .. " " .. selfInfoJob.addPlastic .. "", windowsUP.x + 10 / zoom, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if not getElementModel((getPedOccupiedVehicle(localPlayer))) then
    return
  end
  if getElementModel((getPedOccupiedVehicle(localPlayer))) == 574 and 1 > loadingTime then
    loadingTime = 2
    if 0 < (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.2 / 2 then
      selfInfoJob.mileage = selfInfoJob.mileage + (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.2 / 2 / 5
    end
    if (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.2 / 2 > 0.22 then
      if selfInfoJob.allKG + math.random(1, 32) / 100 >= selfInfoJob.maxKG then
        return
      end
      if math.random(1, 3) == 1 then
        selfInfoJob.glassKG = selfInfoJob.glassKG + math.random(1, 32) / 100
        selfInfoJob.glassSave = selfInfoJob.glassSave + math.random(1, 32) / 100
        selfInfoJob.addGlass = "#01a753+" .. string.format("%0.2f", math.random(1, 32) / 100) .. ""
        setTimer(function()
          selfInfoJob.addGlass = ""
        end, 1500, 1)
      elseif math.random(1, 3) == 2 then
        selfInfoJob.plasticKG = selfInfoJob.plasticKG + math.random(1, 32) / 100
        selfInfoJob.plasticSave = selfInfoJob.plasticSave + math.random(1, 32) / 100
        selfInfoJob.addPlastic = "#fdcc29+" .. string.format("%0.2f", math.random(1, 32) / 100) .. ""
        setTimer(function()
          selfInfoJob.addPlastic = ""
        end, 1500, 1)
      elseif math.random(1, 3) == 3 then
        selfInfoJob.paperKG = selfInfoJob.paperKG + math.random(1, 32) / 100
        selfInfoJob.paperSave = selfInfoJob.paperSave + math.random(1, 32) / 100
        selfInfoJob.addPaper = "#15afe3+" .. string.format("%0.2f", math.random(1, 32) / 100) .. ""
        setTimer(function()
          selfInfoJob.addPaper = ""
        end, 1500, 1)
      end
      selfInfoJob.allKG = selfInfoJob.allKG + math.random(1, 32) / 100
    end
  end
  if getDistanceBetweenPoints3D(Vector3(getElementPosition((getPedOccupiedVehicle(localPlayer)))), selfInfoJob.lastPos) > 26 then
    createNewPoints(Vector3(getElementPosition((getPedOccupiedVehicle(localPlayer)))), getElementRotation((getPedOccupiedVehicle(localPlayer))))
  end
  for _FORV_10_, _FORV_11_ in pairs(selfInfoJob.objects) do
    if getScreenFromWorldPosition(getElementPosition(_FORV_11_)) and getScreenFromWorldPosition(getElementPosition(_FORV_11_)) then
      dxDrawImage(getScreenFromWorldPosition(getElementPosition(_FORV_11_)) - 25 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_11_)) + 37 / zoom, 50 / zoom, 50 / zoom, texturesTracking.rubbish_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(_FORV_11_))) .. "m", getScreenFromWorldPosition(getElementPosition(_FORV_11_)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(_FORV_11_)) + 207 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_11_)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(_FORV_11_)))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(_FORV_11_))) .. "m", getScreenFromWorldPosition(getElementPosition(_FORV_11_)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(_FORV_11_)) + 205 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_11_)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(_FORV_11_)))
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.upgrades == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) then
          if _FORV_6_.name == "Pojemno\197\155\196\135" then
            triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
          elseif _FORV_6_.status == "0" or _FORV_6_.status == 0 then
            triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
          end
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 1 / zoom, _UPVALUE0_.y + 488 / zoom, 30 / zoom, 30 / zoom) and windows.saleKG == true then
      if 0 >= graph.paperNumber then
        return
      end
      graph.paperNumber = graph.paperNumber - 1
    elseif isMouseIn(_UPVALUE0_.x + 90 / zoom, _UPVALUE0_.y + 488 / zoom, 30 / zoom, 30 / zoom) and windows.saleKG == true then
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if tonumber(_FORV_6_.kg_papier_sweeper) < tonumber(graph.paperNumber + 1) then
          return
        end
        graph.paperNumber = graph.paperNumber + 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 160 / zoom, _UPVALUE0_.y + 488 / zoom, 30 / zoom, 30 / zoom) and windows.saleKG == true then
      if 0 >= graph.glassNumber then
        return
      end
      graph.glassNumber = graph.glassNumber - 1
    elseif isMouseIn(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 488 / zoom, 30 / zoom, 30 / zoom) and windows.saleKG == true then
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if tonumber(_FORV_6_.kg_szklo_sweeper) < tonumber(graph.glassNumber + 1) then
          return
        end
        graph.glassNumber = graph.glassNumber + 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 320 / zoom, _UPVALUE0_.y + 488 / zoom, 30 / zoom, 30 / zoom) and windows.saleKG == true then
      if 0 >= graph.plasticNumber then
        return
      end
      graph.plasticNumber = graph.plasticNumber - 1
    elseif isMouseIn(_UPVALUE0_.x + 410 / zoom, _UPVALUE0_.y + 488 / zoom, 30 / zoom, 30 / zoom) and windows.saleKG == true then
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if tonumber(_FORV_6_.kg_plastik_sweeper) < tonumber(graph.plasticNumber + 1) then
          return
        end
        graph.plasticNumber = graph.plasticNumber + 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 535 / zoom, 100 / zoom, 35 / zoom) and windows.saleKG == true then
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        graph.paperNumber = _FORV_6_.kg_papier_sweeper
      end
    elseif isMouseIn(_UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y + 535 / zoom, 100 / zoom, 35 / zoom) and windows.saleKG == true then
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        graph.glassNumber = _FORV_6_.kg_szklo_sweeper
      end
    elseif isMouseIn(_UPVALUE0_.x + 330 / zoom, _UPVALUE0_.y + 535 / zoom, 100 / zoom, 35 / zoom) and windows.saleKG == true then
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        graph.plasticNumber = _FORV_6_.kg_plastik_sweeper
      end
    elseif isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.main == true then
      if getElementData(localPlayer, "player:job") == "sweepery" then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.main = false
      windows.background = false
      windows.upgrades = false
      showCursor(false)
      triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "plrJob", localPlayer, true)
      addEventHandler("onClientRender", root, windowXD)
      texturesTracking = {
        rubbish_icon = dxCreateTexture("img/rubbish_icon.png")
      }
      windows.render = true
      exports.st_gui:showPlayerNotification("Rozpoczynasz prac\196\153.", "success")
      startJob1()
      loadingTime = 2
      for _FORV_6_, _FORV_7_ in pairs(textures) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.main == true then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "sweepery" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      endJobAll()
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.main = true
      windows.upgrades = false
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.main = false
      windows.upgrades = true
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.main = false
      windows.upgrades = false
      windows.background = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 335 / zoom, 100 / zoom, 60 / zoom) and windows.endJob == true then
      endJobAll()
      showCursor(false)
      exports.st_gui:showPlayerNotification("Zako\197\132czy\197\130e\197\155 prace", "success")
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.endJob = false
    elseif isMouseIn(_UPVALUE0_.x + 540 / zoom, _UPVALUE0_.y + 335 / zoom, 100 / zoom, 60 / zoom) and windows.endJob == true then
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.endJob = false
    elseif isMouseIn(_UPVALUE0_.x + 860 / zoom, _UPVALUE0_.y - 8 / zoom, 30 / zoom, 30 / zoom) and windows.saleKG == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.saleKG = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 745 / zoom, _UPVALUE0_.y + 490 / zoom, 130 / zoom, 45 / zoom) and windows.saleKG == true then
      if graph.blockSell then
        return
      end
      graph.blockSell = true
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        for _FORV_10_, _FORV_11_ in ipairs(table_stockExchange) do
          if _FORV_6_.ulepszenie_zarobek_sweeper == 1 then
            triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "sellKG", localPlayer, math.floor((graph.paperNumber * _FORV_11_.paper + graph.glassNumber * _FORV_11_.glass + graph.plasticNumber * _FORV_11_.plastic) * 1.2), {
              graph.glassNumber,
              graph.paperNumber,
              graph.plasticNumber
            })
          else
            triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "sellKG", localPlayer, math.floor(graph.paperNumber * _FORV_11_.paper + graph.glassNumber * _FORV_11_.glass + graph.plasticNumber * _FORV_11_.plastic), {
              graph.glassNumber,
              graph.paperNumber,
              graph.plasticNumber
            })
          end
          graph.glassNumber = 0
          graph.paperNumber = 0
          graph.plasticNumber = 0
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 20 / zoom, 30 / zoom, 30 / zoom) and windows.landing == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.landing = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 330 / zoom, _UPVALUE0_.y + 430 / zoom, 220 / zoom, 65 / zoom) and windows.landing == true and 20 < selfInfoJob.allKG and not selfInfoJob.landingSTART then
      selfInfoJob.landingSTART = true
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Sprzedajesz \197\155mieci o #00ad2320% #a0a0a0dro\197\188ej ni\197\188 cena na rynku",
          price = 8500,
          icon = textures.dolar_icon,
          status = _FORV_10_.ulepszenie_zarobek_sweeper,
          nameDatabase = "ulepszenie_zarobek_sweeper"
        },
        {
          name = "Pojemno\197\155\196\135",
          description = "Mo\197\188esz zebra\196\135 #ffbf00+100 kg #a0a0a0wi\196\153cej kg \197\155mieci. Aktualnie: #ffbf00" .. _FORV_10_.ulepszenie_energiczny_sweeper .. " #a0a0a0kg",
          price = 3500,
          icon = textures.energy_icon,
          status = _FORV_10_.ulepszenie_energiczny_sweeper,
          nameDatabase = "ulepszenie_energiczny_sweeper"
        },
        {
          name = "Ulepszony sweeper",
          description = "Otrzymujesz ulepszonego oraz szybszego sweepera",
          price = 5000,
          icon = textures.car_icon,
          status = _FORV_10_.ulepszenie_sweeper_sweeper,
          nameDatabase = "ulepszenie_sweeper_sweeper"
        },
        {
          name = "Wi\196\153cej \197\155mieci",
          description = "Na twojej drodze pojawia si\196\153 wi\196\153cej \197\155mieci",
          price = 6500,
          icon = textures.rubbish_icon,
          status = _FORV_10_.ulepszenie_rubbish_sweeper,
          nameDatabase = "ulepszenie_rubbish_sweeper"
        }
      }
    end
  elseif _ARG_0_ == "showStockExchangeClient" then
    if _ARG_4_ then
      graph.blockSell = false
    end
    table_stockExchange = _ARG_1_
    CzasZmiany = _ARG_2_
    table_statistics = _ARG_3_
    highest_value = false
    for _FORV_8_, _FORV_9_ in ipairs(table_stockExchange) do
      plastic01 = _FORV_9_.plastic
      plastic2 = _FORV_9_.plastic2
      plastic3 = _FORV_9_.plastic3
      plastic4 = _FORV_9_.plastic4
      plastic5 = _FORV_9_.plastic5
      plastic6 = _FORV_9_.plastic6
      plastic7 = _FORV_9_.plastic7
      plastic8 = _FORV_9_.plastic8
      plastic9 = _FORV_9_.plastic9
      data_plastic = {
        plastic9,
        plastic8,
        plastic7,
        plastic6,
        plastic5,
        plastic4,
        plastic3,
        plastic2,
        plastic01
      }
      paper01 = _FORV_9_.paper
      paper2 = _FORV_9_.paper2
      paper3 = _FORV_9_.paper3
      paper4 = _FORV_9_.paper4
      paper5 = _FORV_9_.paper5
      paper6 = _FORV_9_.paper6
      paper4 = _FORV_9_.paper4
      paper5 = _FORV_9_.paper5
      paper6 = _FORV_9_.paper6
      paper7 = _FORV_9_.paper7
      paper8 = _FORV_9_.paper8
      paper9 = _FORV_9_.paper9
      data_paper = {
        paper9,
        paper8,
        paper7,
        paper6,
        paper5,
        paper4,
        paper3,
        paper2,
        paper01
      }
      glass01 = _FORV_9_.glass
      glass2 = _FORV_9_.glass2
      glass3 = _FORV_9_.glass3
      glass4 = _FORV_9_.glass4
      glass5 = _FORV_9_.glass5
      glass6 = _FORV_9_.glass6
      glass4 = _FORV_9_.glass4
      glass5 = _FORV_9_.glass5
      glass6 = _FORV_9_.glass6
      glass7 = _FORV_9_.glass7
      glass8 = _FORV_9_.glass8
      glass9 = _FORV_9_.glass9
      data_glass = {
        glass9,
        glass8,
        glass7,
        glass6,
        glass5,
        glass4,
        glass3,
        glass2,
        glass01
      }
      data_highest_value = {
        glass9,
        glass8,
        glass7,
        glass6,
        glass5,
        glass4,
        glass3,
        glass2,
        glass01,
        paper9,
        paper8,
        paper7,
        paper6,
        paper5,
        paper4,
        paper3,
        paper2,
        paper01,
        plastic9,
        plastic8,
        plastic7,
        plastic6,
        plastic5,
        plastic4,
        plastic3,
        plastic2,
        plastic01
      }
    end
    for _FORV_8_ = 1, #data_highest_value do
      if not highest_value or data_highest_value[_FORV_8_] > highest_value then
        highest_value = data_highest_value[_FORV_8_]
      end
    end
    chart_data_plastic = data_plastic
    chart_data_paper = data_paper
    chart_data_glass = data_glass
    chart_columns_plastic = #data_plastic - 1
    chart_columns_paper = #data_paper - 1
    chart_columns_glass = #data_glass - 1
    cacheChartDrawing()
  elseif _ARG_0_ == "wagesClient" then
    selfInfoJob.blockStopJob = false
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
  for _FORV_13_ = 0, chart_columns_plastic do
    for _FORV_17_ = 0, 10 do
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_13_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_plastic), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_13_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_plastic), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom), tocolor(0, 0, 0, 255))
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom, math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - _FORV_17_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10), 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - _FORV_17_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10), tocolor(0, 0, 0, 255))
    end
  end
  dxDrawText(przecinek(highest_value), 0.1 / zoom * math.floor(600 / zoom) - 5 / zoom, math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), 0.1 / zoom * math.floor(600 / zoom) / 2 + 42 / zoom, math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true)
  for _FORV_13_ = 0, 9 do
    dxDrawText(przecinek(("%.0f"):format(_FORV_13_ / 10 * highest_value)), 0.1 / zoom * math.floor(600 / zoom) - 5 / zoom, math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10 * _FORV_13_, 0.1 / zoom * math.floor(600 / zoom) / 2 + 42 / zoom, math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10 * _FORV_13_, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true)
  end
  last_height = false
  last_height1 = false
  last_height2 = false
  for _FORV_13_ = 0, chart_columns_plastic do
    if last_height then
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_13_ - 1) * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_plastic), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - last_height, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_13_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_plastic), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - chart_data_plastic[_FORV_13_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(253, 204, 41, 255), 4)
    end
    last_height = chart_data_plastic[_FORV_13_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    if last_height1 then
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_13_ - 1) * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_paper), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - last_height1, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_13_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_paper), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - chart_data_paper[_FORV_13_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(21, 175, 227, 255), 4)
    end
    last_height1 = chart_data_paper[_FORV_13_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    if last_height2 then
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_13_ - 1) * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_glass), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - last_height2, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_13_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_glass), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - chart_data_glass[_FORV_13_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(1, 167, 83, 255), 4)
    end
    last_height2 = chart_data_glass[_FORV_13_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
  end
  dxSetRenderTarget()
end
getResourceName(getThisResource(), true, 206135982)
return
