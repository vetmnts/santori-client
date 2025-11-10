windows = {background = false, category = false}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 4 / zoom, _UPVALUE0_.y - 4 / zoom, _UPVALUE0_.w + 8 / zoom, _UPVALUE0_.h + 8 / zoom, 30 / zoom, tocolor(255, 187, 0, 150), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 30 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y + 15 / zoom, 100 / zoom, _UPVALUE0_.h - 30 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
      tl = true,
      tr = 5 / zoom,
      bl = true,
      br = 5 / zoom
    })
    category_window = {
      {
        "Informacje",
        textures.info_icon
      },
      {
        "Sklep",
        textures.shop_icon
      },
      {
        "Sprzeda\197\188",
        textures.sell_icon
      },
      {
        "Ulepszenia",
        textures.upgrade_icon
      }
    }
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(category_window) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y + 115 / zoom + 100 / zoom * (xY - 1), 100 / zoom, 3 / zoom, 1 / zoom, tocolor(50, 50, 50, 255))
      if windows.category and windows.category == _FORV_8_[1] then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y + 115 / zoom + 100 / zoom * (xY - 1), 100 / zoom, 3 / zoom, 1 / zoom, tocolor(255, 187, 0, 100))
      end
      if _FORV_8_[1] == "Sprzeda\197\188" then
        dxDrawImage(_UPVALUE0_.x + 35 / zoom, _UPVALUE0_.y + 22 / zoom + 100 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 187, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 32.5 / zoom, _UPVALUE0_.y + 22 / zoom + 100 / zoom * (xY - 1), 65 / zoom, 65 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 187, 0, 255), false)
      end
      dxDrawText(_FORV_8_[1], _UPVALUE0_.x - 230 / zoom, _UPVALUE0_.y - 3 / zoom + 200 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    end
    dxDrawImage(_UPVALUE0_.x + 32.5 / zoom, _UPVALUE0_.y + 463 / zoom, 65 / zoom, 65 / zoom, textures.off_icon, 0, 0, 0, tocolor(255, 187, 0, 255), false)
    dxDrawText("Zamknij", _UPVALUE0_.x - 230 / zoom, _UPVALUE0_.y + 880 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    if windows.category == "Informacje" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 15 / zoom, 745 / zoom, 105 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = true,
        bl = 5 / zoom,
        br = 5 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 25 / zoom, 4 / zoom, 35 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("Twoja w\196\153dka", _UPVALUE0_.x + 143 / zoom, _UPVALUE0_.y - 115 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 160 / zoom, _UPVALUE0_.y + 75 / zoom, 163 / zoom, 30 / zoom, 10 / zoom, tocolor(26, 26, 26, 230), {
        tl = true,
        tr = 2 / zoom,
        bl = true,
        br = 2 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 327 / zoom, _UPVALUE0_.y + 75 / zoom, 163 / zoom, 30 / zoom, 8 / zoom, tocolor(26, 26, 26, 230), {
        tl = 2 / zoom,
        tr = 2 / zoom,
        bl = 2 / zoom,
        br = 2 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 494 / zoom, _UPVALUE0_.y + 75 / zoom, 163 / zoom, 30 / zoom, 8 / zoom, tocolor(26, 26, 26, 230), {
        tl = 2 / zoom,
        tr = 2 / zoom,
        bl = 2 / zoom,
        br = 2 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 661 / zoom, _UPVALUE0_.y + 75 / zoom, 163 / zoom, 30 / zoom, 10 / zoom, tocolor(26, 26, 26, 230), {
        tl = 2 / zoom,
        tr = true,
        bl = 2 / zoom,
        br = true
      })
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if 1 <= _FORV_8_.level_fishingRod then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 160 / zoom, _UPVALUE0_.y + 75 / zoom, 163 / zoom, 30 / zoom, 10 / zoom, tocolor(255, 187, 0, 230), {
            tl = true,
            tr = 2 / zoom,
            bl = true,
            br = 2 / zoom
          })
          dxDrawText("Level: 1", _UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 120), 1.05 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("Level: 1", _UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("+5%", _UPVALUE0_.x + 279.5 / zoom, _UPVALUE0_.y - 19.5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 120), 1.05 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          dxDrawText("#17bf04+5%", _UPVALUE0_.x + 280 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("Level: 1", _UPVALUE0_.x + 170 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 180), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("#690000+5%", _UPVALUE0_.x + 280 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        end
        if 2 <= _FORV_8_.level_fishingRod then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 327 / zoom, _UPVALUE0_.y + 75 / zoom, 163 / zoom, 30 / zoom, 10 / zoom, tocolor(255, 187, 0, 230), {
            tl = 2 / zoom,
            tr = 2 / zoom,
            bl = 2 / zoom,
            br = 2 / zoom
          })
          dxDrawText("Level: 2", _UPVALUE0_.x + 334 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 120), 1.05 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("Level: 2", _UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("+10%", _UPVALUE0_.x + 439 / zoom, _UPVALUE0_.y - 19.5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 120), 1.05 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          dxDrawText("#17bf04+10%", _UPVALUE0_.x + 440 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("Level: 2", _UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 180), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("#690000+10%", _UPVALUE0_.x + 440 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        end
        if 3 <= _FORV_8_.level_fishingRod then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 494 / zoom, _UPVALUE0_.y + 75 / zoom, 163 / zoom, 30 / zoom, 10 / zoom, tocolor(255, 187, 0, 230), {
            tl = 2 / zoom,
            tr = 2 / zoom,
            bl = 2 / zoom,
            br = 2 / zoom
          })
          dxDrawText("Level: 3", _UPVALUE0_.x + 499 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 120), 1.05 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("Level: 3", _UPVALUE0_.x + 500 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("+15%", _UPVALUE0_.x + 604 / zoom, _UPVALUE0_.y - 19.5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 120), 1.05 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          dxDrawText("#17bf04+15%", _UPVALUE0_.x + 605 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("Level: 3", _UPVALUE0_.x + 500 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 180), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("#690000+15%", _UPVALUE0_.x + 605 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        end
        if 4 <= _FORV_8_.level_fishingRod then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 661 / zoom, _UPVALUE0_.y + 75 / zoom, 163 / zoom, 30 / zoom, 10 / zoom, tocolor(255, 187, 0, 230), {
            tl = 2 / zoom,
            tr = true,
            bl = 2 / zoom,
            br = true
          })
          dxDrawText("Level: 4", _UPVALUE0_.x + 669 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 120), 1.05 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("Level: 4", _UPVALUE0_.x + 670 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("+20%", _UPVALUE0_.x + 769 / zoom, _UPVALUE0_.y - 19.5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 0, 0, 120), 1.05 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          dxDrawText("#17bf04+20%", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("Level: 4", _UPVALUE0_.x + 670 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 180), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
          dxDrawText("#690000+20%", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        end
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 125 / zoom, 370 / zoom, 105 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = 5 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 135 / zoom, 4 / zoom, 35 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("Przyn\196\153ty", _UPVALUE0_.x + 143 / zoom, _UPVALUE0_.y + 105 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 140 / zoom, _UPVALUE0_.y + 200 / zoom, 330 / zoom, 20 / zoom, 5 / zoom, tocolor(26, 26, 26, 230))
      dxDrawText("#ffbb00" .. przynety .. " #e6e6e6szt. / #ffbb00" .. przynetyMax .. " #e6e6e6szt.", _UPVALUE0_.x + 245 / zoom, _UPVALUE0_.y + 170 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / zoom, _UPVALUE0_.y + 125 / zoom, 370 / zoom, 105 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = 5 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 505 / zoom, _UPVALUE0_.y + 135 / zoom, 4 / zoom, 35 / zoom, 2 / zoom, tocolor(179, 255, 0, 230))
      dxDrawText("Przyn\196\153ty Premium", _UPVALUE0_.x + 517 / zoom, _UPVALUE0_.y + 105 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 200 / zoom, 330 / zoom, 20 / zoom, 5 / zoom, tocolor(26, 26, 26, 230))
      dxDrawText("#b3ff00" .. przynetyPremium .. " #e6e6e6szt. / #b3ff00" .. przynetyPremiumMax .. " #e6e6e6szt.", _UPVALUE0_.x + 1000 / zoom, _UPVALUE0_.y + 170 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 235 / zoom, 370 / zoom, 105 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = 5 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 245 / zoom, 4 / zoom, 35 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("Zape\197\130nienie", _UPVALUE0_.x + 143 / zoom, _UPVALUE0_.y + 325 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 140 / zoom, _UPVALUE0_.y + 310 / zoom, 330 / zoom, 20 / zoom, 5 / zoom, tocolor(26, 26, 26, 230))
      dxDrawText("#ffbb00" .. zapelnienieEkwipunku .. "  #e6e6e6kg / #ffbb00" .. maxKgZapelnienie .. " #e6e6e6kg", _UPVALUE0_.x + 245 / zoom, _UPVALUE0_.y + 391 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      if 330 / przynetyMax * przynety / zoom < 20 / zoom then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 140 / zoom, _UPVALUE0_.y + 200 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(255, 187, 0, 195))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 140 / zoom, _UPVALUE0_.y + 200 / zoom, 330 / przynetyMax * przynety / zoom, 20 / zoom, 5 / zoom, tocolor(255, 187, 0, 195))
      end
      if 330 / przynetyPremiumMax * przynetyPremium / zoom < 20 / zoom then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 200 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(255, 94, 0, 195))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 200 / zoom, 330 / przynetyPremiumMax * przynetyPremium / zoom, 20 / zoom, 5 / zoom, tocolor(179, 255, 0, 195))
      end
      if 330 / maxKgZapelnienie * zapelnienieEkwipunku / zoom < 20 / zoom then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 140 / zoom, _UPVALUE0_.y + 310 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(255, 187, 0, 195))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 140 / zoom, _UPVALUE0_.y + 310 / zoom, 330 / maxKgZapelnienie * zapelnienieEkwipunku / zoom, 20 / zoom, 5 / zoom, tocolor(255, 187, 0, 195))
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / zoom, _UPVALUE0_.y + 235 / zoom, 370 / zoom, 105 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = 5 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 505 / zoom, _UPVALUE0_.y + 245 / zoom, 4 / zoom, 35 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("WARTO\197\154\196\134 RYB", _UPVALUE0_.x + 517 / zoom, _UPVALUE0_.y + 325 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawText("#00ad23" .. przecinek(lacznaCenaRyb) .. " #ffffffPLN", _UPVALUE0_.x + 517 / zoom, _UPVALUE0_.y + 409 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 235), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 345 / zoom, 745 / zoom, 213 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = true
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 355 / zoom, 4 / zoom, 35 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
      dxDrawText("Informacje", _UPVALUE0_.x + 143 / zoom, _UPVALUE0_.y + 545 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 410 / zoom, 25 / zoom, 25 / zoom, textures.time_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      dxDrawImage(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 461 / zoom, 25 / zoom, 25 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      dxDrawImage(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 511 / zoom, 25 / zoom, 25 / zoom, textures.fish_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      dxDrawImage(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 410 / zoom, 25 / zoom, 25 / zoom, textures.fish_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      dxDrawImage(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 461 / zoom, 25 / zoom, 25 / zoom, textures.duo_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("Przegrany czas: " .. secondsToClock(_FORV_8_.czas_rybak), _UPVALUE0_.x + 163 / zoom, _UPVALUE0_.y + 645 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText("\197\129\196\133czny zarobek: #00ad23" .. przecinek(_FORV_8_.zarobki_rybak) .. " #e6e6e6PLN", _UPVALUE0_.x + 163 / zoom, _UPVALUE0_.y + 745 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText("Wy\197\130owione KG w tygodniu: #ffbb00" .. przecinek(_FORV_8_.kg_rybak1) .. " #e6e6e6KG", _UPVALUE0_.x + 163 / zoom, _UPVALUE0_.y + 845 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText("Wy\197\130owione KG og\195\179\197\130: #ffbb00" .. przecinek(_FORV_8_.kg_rybak) .. " #e6e6e6KG", _UPVALUE0_.x + 543 / zoom, _UPVALUE0_.y + 645 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      end
      for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("player")) do
        if getElementData(_FORV_9_, "player:job") == "Rybak" then
        end
      end
      dxDrawText("Liczba pracuj\196\133cych graczy: #ffbb00" .. 0 + 1, _UPVALUE0_.x + 543 / zoom, _UPVALUE0_.y + 745 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    end
    if windows.category == "Sklep" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 15 / zoom, 745 / zoom, 65 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = true,
        bl = 5 / zoom,
        br = 5 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 85 / zoom, 745 / zoom, _UPVALUE0_.h - 170 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = false,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = false
      })
      dxDrawText("Sklep", _UPVALUE0_.x + 143 / zoom, _UPVALUE0_.y - 102 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
      xY = 0
      lacznaCenaSklep_kupno = 0
      for _FORV_7_, _FORV_8_ in ipairs(lista_sklep) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 90 / zoom + 79 / zoom * (xY - 1), 720 / zoom, 74 / zoom, 10 / zoom, tocolor(27, 27, 27, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 95 / zoom + 79 / zoom * (xY - 1), 64 / zoom, 64 / zoom, 10 / zoom, tocolor(35, 35, 35, 255), false)
        dxDrawImage(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 95 / zoom + 79 / zoom * (xY - 1), 64 / zoom, 64 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 20 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
        dxDrawRectangle(_UPVALUE0_.x + 202 / zoom, _UPVALUE0_.y + 108 / zoom + 79 / zoom * (xY - 1), 2 / zoom, 35 / zoom, tocolor(128, 128, 128, 100), false)
        dxDrawRectangle(_UPVALUE0_.x + 202 / zoom, _UPVALUE0_.y + 143 / zoom + 79 / zoom * (xY - 1), 15 / zoom, 2 / zoom, tocolor(128, 128, 128, 100), false)
        dxDrawText("#00ad23" .. przecinek(_FORV_8_[3]) .. " #f0f0f0PLN", _UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y + 87 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 710 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (xY - 1), 105 / zoom, 40 / zoom, 5 / zoom, tocolor(23, 23, 23, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 710 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (xY - 1), 30 / zoom, 40 / zoom, 5 / zoom, tocolor(40, 40, 40, 230))
        dxDrawText("-", _UPVALUE0_.x + 1088 / zoom, _UPVALUE0_.y + 55 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 50, 50, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (xY - 1), 30 / zoom, 40 / zoom, 5 / zoom, tocolor(40, 40, 40, 230))
        dxDrawText("+", _UPVALUE0_.x + 1268 / zoom, _UPVALUE0_.y + 55 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(50, 240, 50, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_.numberSelect, _UPVALUE0_.x + 1175 / zoom, _UPVALUE0_.y + 55 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
        dxDrawText("#ffbb00" .. _FORV_8_.aktualnaIlosc .. " #e6e6e6szt. / #ffbb00" .. _FORV_8_.maxIlosc .. " #e6e6e6szt.", _UPVALUE0_.x + 640 / zoom, _UPVALUE0_.y + 55 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
        lacznaCenaSklep_kupno = lacznaCenaSklep_kupno + _FORV_8_[3] * _FORV_8_.numberSelect
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + _UPVALUE0_.h - 80 / zoom, 745 / zoom, 65 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = true
      })
      dxDrawText("Suma: #00ad23" .. przecinek(math.floor(lacznaCenaSklep_kupno)) .. " #f0f0f0PLN", _UPVALUE0_.x + 135 / zoom, _UPVALUE0_.y + 853 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 738 / zoom, _UPVALUE0_.y + _UPVALUE0_.h - 69.5 / zoom, 109 / zoom, 44 / zoom, 8 / zoom, tocolor(50, 50, 50, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 740 / zoom, _UPVALUE0_.y + _UPVALUE0_.h - 67.5 / zoom, 105 / zoom, 40 / zoom, 8 / zoom, tocolor(23, 23, 23, 230))
      dxDrawText("KUP", _UPVALUE0_.x + 1223 / zoom, _UPVALUE0_.y + 853 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    end
    if windows.category == "Sprzeda\197\188" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 15 / zoom, 745 / zoom, 65 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = true,
        bl = 5 / zoom,
        br = 5 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 85 / zoom, 745 / zoom, _UPVALUE0_.h - 170 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = false,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = false
      })
      dxDrawText("Sprzeda\197\188 rybek", _UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y - 102 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
      dxDrawText("Prze\197\130adowanie za: #ffbf00" .. secondsToClock(czas_przeladowanie / 1000) .. "", _UPVALUE0_.x, _UPVALUE0_.y - 102 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
      lacznaCenaRyb_sprzedaz = 0
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(rybkiSprzedaz_tabela) do
        if _FORV_7_ >= _UPVALUE1_ and _FORV_7_ <= _UPVALUE2_ then
          xY = xY + 1
          dxDrawRoundedRectangle(_UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 90 / zoom + 79 / zoom * (xY - 1), 720 / zoom, 74 / zoom, 10 / zoom, tocolor(27, 27, 27, 255), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 95 / zoom + 79 / zoom * (xY - 1), 64 / zoom, 64 / zoom, 10 / zoom, tocolor(35, 35, 35, 255), false)
          dxDrawImage(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 95 / zoom + 79 / zoom * (xY - 1), 64 / zoom, 64 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 20 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
          dxDrawRectangle(_UPVALUE0_.x + 202 / zoom, _UPVALUE0_.y + 108 / zoom + 79 / zoom * (xY - 1), 2 / zoom, 35 / zoom, tocolor(128, 128, 128, 100), false)
          dxDrawRectangle(_UPVALUE0_.x + 202 / zoom, _UPVALUE0_.y + 143 / zoom + 79 / zoom * (xY - 1), 15 / zoom, 2 / zoom, tocolor(128, 128, 128, 100), false)
          dxDrawText("#ffbf00" .. przecinek(_FORV_8_.ilosc) .. " #f0f0f0kg", _UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y + 87 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (xY - 1), 120 / zoom, 40 / zoom, 5 / zoom, tocolor(23, 23, 23, 230))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (xY - 1), 30 / zoom, 40 / zoom, 5 / zoom, tocolor(40, 40, 40, 230))
          dxDrawText("-", _UPVALUE0_.x + 1060 / zoom, _UPVALUE0_.y + 55 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 50, 50, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (xY - 1), 30 / zoom, 40 / zoom, 5 / zoom, tocolor(40, 40, 40, 230))
          dxDrawText("+", _UPVALUE0_.x + 1268 / zoom, _UPVALUE0_.y + 55 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(50, 240, 50, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
          if isMouseIn(_UPVALUE0_.x + 695 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (xY - 1), 30 / zoom, 40 / zoom) and isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Kliknij lshift lub capslock aby przewija\196\135 szybciej", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
            dxDrawText("Kliknij lshift lub capslock aby przewija\196\135 szybciej", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          end
          if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (xY - 1), 30 / zoom, 40 / zoom) and isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Kliknij lshift lub capslock aby przewija\196\135 szybciej", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
            dxDrawText("Kliknij lshift lub capslock aby przewija\196\135 szybciej", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          end
          dxDrawText(_FORV_8_.numberSelect .. "", _UPVALUE0_.x + 1162 / zoom, _UPVALUE0_.y + 55 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
          dxDrawText("#00ad23" .. przecinek(_FORV_8_.cena) .. " #f0f0f0PLN / #ffbf001#f0f0f0kg", _UPVALUE0_.x + 431 / zoom, _UPVALUE0_.y + 95 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, true, false)
          dxDrawText("#00ad23" .. przecinek(math.floor(_FORV_8_.numberSelect * _FORV_8_.cena)) .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y + 55 / zoom + 158 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 325 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
          if _FORV_8_.history and #_FORV_8_.history > 1 then
            for _FORV_20_, _FORV_21_ in ipairs(_FORV_8_.history) do
              if _FORV_21_ < _FORV_8_.max[1] then
              end
              if _FORV_21_ > _FORV_8_.max[2] then
              end
            end
            for _FORV_22_ = 1, #_FORV_8_.history - 1 do
              if _FORV_22_ == #_FORV_8_.history - 1 then
                if _FORV_8_.history[#_FORV_8_.history] >= _FORV_8_.history[#_FORV_8_.history - 1] then
                else
                end
              end
              dxDrawLine(_UPVALUE0_.x + 430 / zoom + (_FORV_22_ - 1) * (85 / zoom / (#_FORV_8_.history - 1)), _UPVALUE0_.y + 110 / zoom + 79 / zoom * (xY - 1) + 30 / zoom - (_FORV_8_.history[_FORV_22_] - _FORV_21_) / math.max(1.0E-4, _FORV_21_ - _FORV_21_) * (30 / zoom), _UPVALUE0_.x + 430 / zoom + _FORV_22_ * (85 / zoom / (#_FORV_8_.history - 1)), _UPVALUE0_.y + 110 / zoom + 79 / zoom * (xY - 1) + 30 / zoom - (_FORV_8_.history[_FORV_22_ + 1] - _FORV_21_) / math.max(1.0E-4, _FORV_21_ - _FORV_21_) * (30 / zoom), tocolor(200, 50, 50, 255), 3)
            end
          end
        end
        lacznaCenaRyb_sprzedaz = lacznaCenaRyb_sprzedaz + _FORV_8_.cena * _FORV_8_.numberSelect
      end
      dxDrawScrollBar(#rybkiSprzedaz_tabela, _UPVALUE0_.x + 854 / zoom, _UPVALUE0_.y + 95 / zoom, 4 / zoom, _UPVALUE0_.h - 187 / zoom, _UPVALUE3_, _UPVALUE1_)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + _UPVALUE0_.h - 80 / zoom, 745 / zoom, 65 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = true
      })
      dxDrawText("Suma: #00ad23" .. przecinek(math.floor(lacznaCenaRyb_sprzedaz)) .. " #f0f0f0PLN", _UPVALUE0_.x + 135 / zoom, _UPVALUE0_.y + 853 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 738 / zoom, _UPVALUE0_.y + _UPVALUE0_.h - 69.5 / zoom, 109 / zoom, 44 / zoom, 8 / zoom, tocolor(50, 50, 50, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 740 / zoom, _UPVALUE0_.y + _UPVALUE0_.h - 67.5 / zoom, 105 / zoom, 40 / zoom, 8 / zoom, tocolor(23, 23, 23, 230))
      dxDrawText("SPRZEDAJ", _UPVALUE0_.x + 1223 / zoom, _UPVALUE0_.y + 853 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    end
    if windows.category == "Ulepszenia" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 15 / zoom, 745 / zoom, 65 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = 5 / zoom,
        tr = true,
        bl = 5 / zoom,
        br = 5 / zoom
      })
      dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 85 / zoom, 745 / zoom, _UPVALUE0_.h - 100 / zoom, 15 / zoom, tocolor(33, 33, 33, 230), {
        tl = false,
        tr = 5 / zoom,
        bl = 5 / zoom,
        br = true
      })
      dxDrawText("Ulepszenia", _UPVALUE0_.x + 135 / zoom, _UPVALUE0_.y - 102 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
      for _FORV_8_, _FORV_9_ in ipairs(table_statistics) do
      end
      xY = 0
      for _FORV_9_, _FORV_10_ in ipairs(upgrades) do
        if _FORV_9_ >= _UPVALUE4_ and _FORV_9_ <= _UPVALUE5_ then
          xY = xY + 1
          dxDrawRoundedRectangle(_UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 90 / zoom + 155 / zoom * (xY - 1), 720 / zoom, 150 / zoom, 10 / zoom, tocolor(27, 27, 27, 255), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 130 / zoom, _UPVALUE0_.y + 95 / zoom + 155 / zoom * (xY - 1), 140 / zoom, 140 / zoom, 10 / zoom, tocolor(35, 35, 35, 255), false)
          dxDrawText(_FORV_10_.name, _UPVALUE0_.x + 290 / zoom, _UPVALUE0_.y + 15 / zoom + 310 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
          dxDrawImage(_UPVALUE0_.x + 140 / zoom, _UPVALUE0_.y + 105 / zoom + 155 / zoom * (xY - 1), 120 / zoom, 120 / zoom, _FORV_10_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          dxDrawRectangle(_UPVALUE0_.x + 280 / zoom, _UPVALUE0_.y + 108 / zoom + 155 / zoom * (xY - 1), 2 / zoom, 110 / zoom, tocolor(128, 128, 128, 100), false)
          dxDrawRectangle(_UPVALUE0_.x + 282 / zoom, _UPVALUE0_.y + 135 / zoom + 155 / zoom * (xY - 1), 14 / zoom, 2 / zoom, tocolor(128, 128, 128, 100), false)
          dxDrawRectangle(_UPVALUE0_.x + 282 / zoom, _UPVALUE0_.y + 163 / zoom + 155 / zoom * (xY - 1), 14 / zoom, 2 / zoom, tocolor(128, 128, 128, 100), false)
          dxDrawRectangle(_UPVALUE0_.x + 282 / zoom, _UPVALUE0_.y + 216 / zoom + 155 / zoom * (xY - 1), 19 / zoom, 2 / zoom, tocolor(128, 128, 128, 100), false)
          dxDrawText("Aktualne ulepszenie:  #ffbf00" .. _FORV_10_.status .. "#f0f0f0/#ffbf00" .. _FORV_10_.maxLevel, _UPVALUE0_.x + 305 / zoom, _UPVALUE0_.y + 75 / zoom + 310 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
          if _FORV_10_.status >= _FORV_10_.maxLevel then
            dxDrawText("Zmiana:  " .. _FORV_10_.unit[1] .. "#ffbf00" .. _FORV_10_.zmiana[_FORV_10_.status] .. " " .. _FORV_10_.unit[2] .. "", _UPVALUE0_.x + 305 / zoom, _UPVALUE0_.y + 125 / zoom + 310 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
            dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 235 / zoom + 310 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          else
            dxDrawRectangle(_UPVALUE0_.x + 282 / zoom, _UPVALUE0_.y + 195 / zoom + 155 / zoom * (xY - 1), 19 / zoom, 2 / zoom, tocolor(128, 128, 128, 100), false)
            dxDrawText("Zmiana:  " .. _FORV_10_.unit[1] .. "#ffbf00" .. _FORV_10_.zmiana[_FORV_10_.status + 1] .. " " .. _FORV_10_.unit[2] .. "", _UPVALUE0_.x + 305 / zoom, _UPVALUE0_.y + 125 / zoom + 310 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
            dxDrawText("Cena:  #00ad23" .. przecinek(_FORV_10_.price[_FORV_10_.status + 1]) .. " #f0f0f0PLN", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 190 / zoom + 310 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
            if _FORV_9_.kg_rybak > _FORV_10_.wymagania[_FORV_10_.status + 1] then
              dxDrawText("Wy\197\130owione kg:  #ffbf00" .. _FORV_9_.kg_rybak .. " #f0f0f0kg / #ffbf00" .. przecinek(_FORV_10_.wymagania[_FORV_10_.status + 1]) .. " #f0f0f0KG", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 235 / zoom + 310 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
            else
              dxDrawText("Wy\197\130owione kg:  #bf0000" .. _FORV_9_.kg_rybak .. " #f0f0f0kg / #ffbf00" .. przecinek(_FORV_10_.wymagania[_FORV_10_.status + 1]) .. " #f0f0f0KG", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 235 / zoom + 310 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
            end
            exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 140 / zoom + 155 / zoom * (xY - 1), 140 / zoom, 45 / zoom, 255, 1)
          end
        end
      end
      dxDrawScrollBar(#upgrades, _UPVALUE0_.x + 854 / zoom, _UPVALUE0_.y + 95 / zoom, 4 / zoom, _UPVALUE0_.h - 120 / zoom, _UPVALUE6_, _UPVALUE4_)
      dxDrawText("Ulepszenia: #ffbf00" .. 0 + _FORV_10_.status .. "  #f0f0f0/ #ffbf00" .. 17, _UPVALUE0_.x, _UPVALUE0_.y - 102 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
    end
  end
end
function click(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and windows.background == true then
    for _FORV_8_, _FORV_9_ in ipairs(category_window) do
      if isMouseIn(_UPVALUE0_.x + 22.5 / zoom, _UPVALUE0_.y + 25 / zoom + 100 / zoom * (0 + 1 - 1), 75 / zoom, 75 / zoom) then
        windows.category = _FORV_9_[1]
        if windows.category == "Sklep" then
          lista_sklep = {
            {
              "W\196\153dka",
              textures.fishing_rod_icon,
              2000000,
              numberSelect = 0,
              maxIlosc = 1,
              aktualnaIlosc = maWedke
            },
            {
              "Przyn\196\153ty standardowe",
              textures.przyneta_icon,
              500,
              numberSelect = 0,
              maxIlosc = przynetyMax,
              aktualnaIlosc = przynety
            },
            {
              "Przyn\196\153ty premium +10%",
              textures.przyneta1_icon,
              1200,
              numberSelect = 0,
              maxIlosc = przynetyPremiumMax,
              aktualnaIlosc = przynetyPremium
            }
          }
          setTimer(function()
            lista_sklep = {
              {
                "W\196\153dka",
                textures.fishing_rod_icon,
                2000000,
                numberSelect = 0,
                maxIlosc = 1,
                aktualnaIlosc = maWedke
              },
              {
                "Przyn\196\153ty standardowe",
                textures.przyneta_icon,
                500,
                numberSelect = 0,
                maxIlosc = przynetyMax,
                aktualnaIlosc = przynety
              },
              {
                "Przyn\196\153ty premium +10%",
                textures.przyneta1_icon,
                1200,
                numberSelect = 0,
                maxIlosc = przynetyPremiumMax,
                aktualnaIlosc = przynetyPremium
              }
            }
          end, 300, 1)
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 32.5 / zoom, _UPVALUE0_.y + 463 / zoom, 65 / zoom, 65 / zoom) then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      removeEventHandler("onClientClick", root, click)
      windows.background = false
      windows.category = false
      showCursor(false)
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
    end
    if windows.category == "Sprzeda\197\188" then
      for _FORV_9_, _FORV_10_ in ipairs(rybkiSprzedaz_tabela) do
        if _FORV_9_ >= _UPVALUE1_ and _FORV_9_ <= _UPVALUE2_ then
          if getKeyState("capslock") then
            numberAdd = 100
          elseif getKeyState("lshift") then
            numberAdd = 10
          else
            numberAdd = 1
          end
          if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (0 + 1 - 1), 30 / zoom, 40 / zoom) then
            if tonumber(_FORV_10_.numberSelect + numberAdd) >= tonumber(_FORV_10_.ilosc) then
              _FORV_10_.numberSelect = _FORV_10_.ilosc
              return
            end
            _FORV_10_.numberSelect = _FORV_10_.numberSelect + numberAdd
          elseif isMouseIn(_UPVALUE0_.x + 695 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (0 + 1 - 1), 30 / zoom, 40 / zoom) then
            if 0 >= tonumber(_FORV_10_.numberSelect - numberAdd) then
              _FORV_10_.numberSelect = 0
              return
            end
            _FORV_10_.numberSelect = _FORV_10_.numberSelect - numberAdd
          end
        end
      end
      if isMouseIn(_UPVALUE0_.x + 740 / zoom, _UPVALUE0_.y + _UPVALUE0_.h - 67.5 / zoom, 105 / zoom, 40 / zoom) then
        for _FORV_10_, _FORV_11_ in ipairs(rybkiSprzedaz_tabela) do
          if tonumber(_FORV_11_.numberSelect) and 0 < tonumber(_FORV_11_.numberSelect) then
            table.insert({}, {
              nazwa = _FORV_11_.name,
              ilosc = _FORV_11_.numberSelect,
              cena = _FORV_11_.cena
            })
          end
        end
        if 0 < #{} then
          triggerServerEvent("ev", resourceRoot, "sellFish", {})
        end
      end
    end
    if windows.category == "Sklep" then
      for _FORV_9_, _FORV_10_ in ipairs(lista_sklep) do
        if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (0 + 1 - 1), 30 / zoom, 40 / zoom) then
          if _FORV_10_[1] == "Przyn\196\153ty premium +10%" and not getElementData(localPlayer, "player:premium") then
            exports.st_gui:showPlayerNotification("Nie posiadasz konta premium", "error")
            return
          end
          if tonumber(_FORV_10_.numberSelect) >= tonumber(_FORV_10_.maxIlosc) - tonumber(_FORV_10_.aktualnaIlosc) then
            _FORV_10_.numberSelect = tonumber(_FORV_10_.maxIlosc) - tonumber(_FORV_10_.aktualnaIlosc)
            if 0 > _FORV_10_.numberSelect then
              _FORV_10_.numberSelect = 0
            end
            return
          end
          _FORV_10_.numberSelect = _FORV_10_.numberSelect + 1
        elseif isMouseIn(_UPVALUE0_.x + 710 / zoom, _UPVALUE0_.y + 106.5 / zoom + 79 / zoom * (0 + 1 - 1), 30 / zoom, 40 / zoom) then
          if 0 >= tonumber(_FORV_10_.numberSelect - 1) then
            _FORV_10_.numberSelect = 0
            return
          end
          _FORV_10_.numberSelect = _FORV_10_.numberSelect - 1
        end
      end
      if isMouseIn(_UPVALUE0_.x + 740 / zoom, _UPVALUE0_.y + _UPVALUE0_.h - 67.5 / zoom, 105 / zoom, 40 / zoom) then
        for _FORV_10_, _FORV_11_ in ipairs(lista_sklep) do
          if _FORV_11_.numberSelect and 0 < _FORV_11_.numberSelect then
            table.insert({}, {
              nazwa = _FORV_11_[1],
              ilosc = _FORV_11_.numberSelect,
              cena = _FORV_11_[3]
            })
          end
        end
        if 0 < #{} then
          triggerServerEvent("ev", resourceRoot, "buyShop", {})
        end
      end
    end
    if windows.category == "Ulepszenia" then
      for _FORV_9_, _FORV_10_ in ipairs(upgrades) do
        if _FORV_9_ >= _UPVALUE3_ and _FORV_9_ <= _UPVALUE4_ and isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 140 / zoom + 155 / zoom * (0 + 1 - 1), 140 / zoom, 45 / zoom) then
          for _FORV_16_, _FORV_17_ in ipairs(table_statistics) do
          end
          if _FORV_10_.status >= _FORV_10_.maxLevel then
          elseif _FORV_17_.kg_rybak > _FORV_10_.wymagania[_FORV_10_.status + 1] then
            triggerServerEvent("ev", resourceRoot, "upgrade", _FORV_10_.nameDatabase, _FORV_10_.status, _FORV_9_)
          end
        end
      end
    end
  end
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.category == "Sprzeda\197\188" then
      if _UPVALUE0_ == _UPVALUE1_ then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ - 1
      _UPVALUE0_ = _UPVALUE0_ - 1
    elseif windows.category == "Ulepszenia" then
      if _UPVALUE3_ == _UPVALUE4_ then
        return
      end
      _UPVALUE5_ = _UPVALUE5_ - 1
      _UPVALUE3_ = _UPVALUE3_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" then
    if windows.category == "Sprzeda\197\188" then
      if _UPVALUE0_ >= #rybkiSprzedaz_tabela then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ + 1
      _UPVALUE0_ = _UPVALUE0_ + 1
    elseif windows.category == "Ulepszenia" then
      if _UPVALUE3_ >= #upgrades then
        return
      end
      _UPVALUE5_ = _UPVALUE5_ + 1
      _UPVALUE3_ = _UPVALUE3_ + 1
    end
  end
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
