windows = {
  background = false,
  main = false,
  update = false,
  commands = false,
  keyboard = false,
  guide = false,
  socialmedia = false
}
animations = {
  posXBar = 800,
  alpha255 = 255,
  alpha255_ = 255,
  alpha100 = 100
}
k = 1
n = 5
m = 5
function window()
  if windows.main == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 30 / _UPVALUE1_, tocolor(255, 187, 0, animations.alpha255_), false)
    dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 30 / _UPVALUE1_, tocolor(20, 20, 20, animations.alpha100))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 70 / _UPVALUE1_, 780 / _UPVALUE1_, 6 / _UPVALUE1_, 3 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha100), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + animations.posXBar / _UPVALUE1_, _UPVALUE0_.y + 70 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, 3 / _UPVALUE1_, tocolor(255, 247, 0, animations.alpha255_), false)
    xX = 0
    for _FORV_7_, _FORV_8_ in ipairs(categories) do
      xX = xX + 1
      if isMouseIn(_UPVALUE0_.x + 55 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 30 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) then
        alphaIcon = 200
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = _UPVALUE2_ * cxs, _UPVALUE3_ * cys
          dxDrawText(_FORV_8_.name, cxs + 14 / _UPVALUE1_, cys + 34 / _UPVALUE1_, cxs, cys, tocolor(0, 0, 0, animations.alpha255_), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, true, false, false)
          dxDrawText(_FORV_8_.name, cxs + 13 / _UPVALUE1_, cys + 33 / _UPVALUE1_, cxs, cys, tocolor(255, 255, 255, animations.alpha255_), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, true, false, false)
        end
      else
        alphaIcon = animations.alpha255_
      end
      dxDrawImage(_UPVALUE0_.x + 55 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 20 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, alphaIcon), false)
    end
    dxDrawText("PRZEWODNIK SANTORIRPG", _UPVALUE0_.x + 580 / _UPVALUE1_, _UPVALUE0_.y - 119 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255_), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
  end
  if windows.update == true then
    dxDrawText("AKTUALIZACJE - #decf00" .. #update_table, _UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(update_table) do
      if _FORV_7_ >= k and _FORV_7_ <= n then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 138 / _UPVALUE1_ + 85 / _UPVALUE1_ * (xY - 1), 780 / _UPVALUE1_, 80 / _UPVALUE1_, 16 / _UPVALUE1_, tocolor(13, 13, 13, animations.alpha100), false)
        if _FORV_8_.categories then
          if string.sub(_FORV_8_.data, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
            dataUpdate = "Dzi\197\155 o " .. string.sub(_FORV_8_.data, 12, 16) .. ""
          elseif string.sub(_FORV_8_.data, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.data, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            dataUpdate = "Wczoraj o " .. string.sub(_FORV_8_.data, 12, 16) .. ""
          elseif string.sub(_FORV_8_.data, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.data, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            dataUpdate = "2 dni temu o " .. string.sub(_FORV_8_.data, 12, 16) .. ""
          elseif string.sub(_FORV_8_.data, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.data, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            dataUpdate = "3 dni temu o " .. string.sub(_FORV_8_.data, 12, 16) .. ""
          elseif string.sub(_FORV_8_.data, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.data, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            dataUpdate = "4 dni temu o " .. string.sub(_FORV_8_.data, 12, 16) .. ""
          elseif string.sub(_FORV_8_.data, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.data, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            dataUpdate = "5 dni temu o " .. string.sub(_FORV_8_.data, 12, 16) .. ""
          else
            dataUpdate = "" .. string.sub(_FORV_8_.data, 1, 10) .. ""
          end
          dxDrawText(_FORV_8_.categories, _UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 115 / _UPVALUE1_ + 170 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_8_.aktualizacja, _UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 177 / _UPVALUE1_ + 170 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
          dxDrawText(dataUpdate, _UPVALUE0_.x, _UPVALUE0_.y + 115 / _UPVALUE1_ + 170 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 460 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, false, false)
        end
      end
    end
  end
  if windows.commands == true then
    dxDrawText("KOMENDY", _UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    for _FORV_9_, _FORV_10_ in ipairs(commands_table) do
      if 0 + 1 > 9 then
      end
      dxDrawText(_FORV_10_[1], _UPVALUE0_.x + 50 / _UPVALUE1_ + math.floor(380 / _UPVALUE1_) * (1 + 1 - 1), _UPVALUE0_.y + 101 / _UPVALUE1_ + math.floor(94 / _UPVALUE1_) * (1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_10_[2], _UPVALUE0_.x + 50 / _UPVALUE1_ + math.floor(380 / _UPVALUE1_) * (1 + 1 - 1), _UPVALUE0_.y + 146 / _UPVALUE1_ + math.floor(94 / _UPVALUE1_) * (1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, false, false)
    end
  end
  if windows.keyboard == true then
    dxDrawText("KLAWISZOLOGIA", _UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawImage(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_, 500 / _UPVALUE1_, 200 / _UPVALUE1_, textures.keyboard, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    drawCorner(_UPVALUE0_.x + 301 / _UPVALUE1_, _UPVALUE0_.y + 455 / _UPVALUE1_, "pd", 50 / _UPVALUE1_, 80 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 333 / _UPVALUE1_, _UPVALUE0_.y + 510 / _UPVALUE1_, "pd", 50 / _UPVALUE1_, 135 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 481 / _UPVALUE1_, _UPVALUE0_.y + 520 / _UPVALUE1_, "pd", 50 / _UPVALUE1_, 180 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 463 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, "pd", 30 / _UPVALUE1_, 75 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 529 / _UPVALUE1_, _UPVALUE0_.y + 515 / _UPVALUE1_, "ld", 70 / _UPVALUE1_, 140 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 563 / _UPVALUE1_, _UPVALUE0_.y + 455 / _UPVALUE1_, "ld", 30 / _UPVALUE1_, 80 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 297 / _UPVALUE1_, "lg", 70 / _UPVALUE1_, 15 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 260 / _UPVALUE1_, _UPVALUE0_.y + 215 / _UPVALUE1_, "pg", 130 / _UPVALUE1_, 20 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 215 / _UPVALUE1_, "lg", 30 / _UPVALUE1_, 30 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 293 / _UPVALUE1_, _UPVALUE0_.y + 205 / _UPVALUE1_, "pg", 120 / _UPVALUE1_, 30 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 205 / _UPVALUE1_, "ld", 70 / _UPVALUE1_, 10 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 327 / _UPVALUE1_, _UPVALUE0_.y + 175 / _UPVALUE1_, "pg", 70 / _UPVALUE1_, 60 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 361 / _UPVALUE1_, _UPVALUE0_.y + 155 / _UPVALUE1_, "lg", 70 / _UPVALUE1_, 80 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 395 / _UPVALUE1_, _UPVALUE0_.y + 195 / _UPVALUE1_, "lg", 60 / _UPVALUE1_, 40 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 429 / _UPVALUE1_, _UPVALUE0_.y + 215 / _UPVALUE1_, "lg", 160 / _UPVALUE1_, 20 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 590 / _UPVALUE1_, _UPVALUE0_.y + 215 / _UPVALUE1_, "pd", 30 / _UPVALUE1_, 60 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 605 / _UPVALUE1_, _UPVALUE0_.y + 205 / _UPVALUE1_, "lg", 50 / _UPVALUE1_, 30 / _UPVALUE1_)
    drawCorner(_UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 370 / _UPVALUE1_, "lg", 70 / _UPVALUE1_, 15 / _UPVALUE1_)
    drawFramedText("Lista Graczy", _UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("VoiceChat", _UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Przyklejenie postaci do pojazdu", _UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y + 485 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Ekwipunek", _UPVALUE0_.x + 355 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Panel Animacji", _UPVALUE0_.x + 345 / _UPVALUE1_, _UPVALUE0_.y + 498 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Otwieranie baga\197\188nika", _UPVALUE0_.x + 590 / _UPVALUE1_, _UPVALUE0_.y + 490 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Wsiadanie do baga\197\188nika", _UPVALUE0_.x + 590 / _UPVALUE1_, _UPVALUE0_.y + 432 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Mapa", _UPVALUE0_.x + 640 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Przewodnik", _UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y + 245 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Dashboard", _UPVALUE0_.x + 90 / _UPVALUE1_, _UPVALUE0_.y + 155 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Kursor", _UPVALUE0_.x + 220 / _UPVALUE1_, _UPVALUE0_.y + 155 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Panel Organizacji", _UPVALUE0_.x + 325 / _UPVALUE1_, _UPVALUE0_.y + 125 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Zg\197\130oszenia Frakcyjne", _UPVALUE0_.x + 415 / _UPVALUE1_, _UPVALUE0_.y + 167 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Panel Administracji", _UPVALUE0_.x + 570 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
    drawFramedText("Panel interakcji", _UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y + 380 / _UPVALUE1_, 12 / _UPVALUE1_, 10 / _UPVALUE1_, 0.75 / _UPVALUE1_)
  end
  if windows.guide == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, 780 / _UPVALUE1_, 420 / _UPVALUE1_, 8 / _UPVALUE1_, tocolor(25, 25, 25, animations.alpha100))
    dxDrawText("JAK ZACZ\196\132\196\134?", _UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxSetRenderTarget(przewodnikRT, true)
    dxDrawText("Witaj na SantoriRPG!", 10, 90 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 780, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left", "top", false, false, false, false, false)
    dxDrawText("\nNo cze\197\155\196\135! \nJe\197\188eli czytasz ten poradnik to znaczy, \197\188e uda\197\130o ci si\196\153 przebrn\196\133\196\135 przez rejestracje \nB\196\133d\197\186 jeste\197\155 powracaj\196\133cym graczem, kt\195\179ry musi od nowa po\197\130apa\196\135 si\196\153 w tym wszystkim.\nPami\196\153taj, \197\188e w twojej przygodzie najwa\197\188niejszy jest jej start. \nPoniewa\197\188 to ty kierujesz losem swojej dalszej rozgrywki. \nPS. Mog\196\153 ci\196\153 zapewni\196\135, \197\188e zostaniesz z nami na o wiele d\197\130u\197\188ej ni\197\188 aktualnie planujesz.\n\nPierwsze co mog\196\153 ci zaproponowa\196\135 to zapoznanie si\196\153 z wszystkimi regulaminami \npanuj\196\133cymi na serwerze, a przede wszystkim g\197\130\195\179wnym, aby wiedzie\196\135 \nJakich b\197\130\196\153d\195\179w nie pope\197\130nia\196\135 oraz co mo\197\188na robi\196\135.\n\nDo tego polecam wej\197\155\196\135 na naszego discorda (discord.gg/santori)\nPo czym po\197\130\196\133czy\196\135 konto z serwerem cho\196\135 raczej ju\197\188 zauwa\197\188y\197\130e\197\155 napis na g\195\179rze ekranu. \nWracaj\196\133c do tematu to po wej\197\155ciu na naszego discorda zajrzyj na kana\197\130 #faq \nGdzie znajdziesz odpowiedzi na wszystkie podstawowe zagwostki. \n\nNast\196\153pn\196\133 wa\197\188n\196\133 rzecz\196\133, kt\195\179r\196\133 powiniene\197\155 sobie ustawi\196\135 to PIN \nPotrzebny przy wej\197\155ciu na serwer. \nZnajdziesz go pod klawiszem 'F2' w zak\197\130adce ustawienia. \nKod pin to najmocniejsza linia ochrony swojego konta. \nW razie zapomnienia go zawsze pomo\197\188emy ci go odzyska\196\135. \nMy\197\155l\196\153, \197\188e z mojego gadania to tyle i mo\197\188emy przej\197\155\196\135 do konkret\195\179w.", 10, 130 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText("1. Pieni\196\133dze na start", 10, 820 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Dok\197\130adnie! Dobrze czytasz, jednak takie rzeczy s\196\133 mo\197\188liwe.\nNa naszym serwerze dzia\197\130a system polecaj\196\133cy.\nKt\195\179ry znajdziesz pod F2 w zak\197\130adce \"Polecanie $\". \nU\197\188ywaj\196\133c tam kodu, kt\195\179rego\197\155 z swoich koleg\195\179w b\196\133d\197\186 innego gracza na serwerze \nObydwoje jeste\197\155cie w stanie otrzyma\196\135 na start 75 tysi\196\153cy, kt\195\179re \nNa pewno pomog\196\133 si\196\153 wam na pocz\196\133tku rozwin\196\133\196\135!", 10, 860 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText("2. Pierwsza praca dorywcza", 10, 1070 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Skoro zaczynamy z tematem zarobku to wydaje mi si\196\153, \197\188e b\196\153dzie ci\196\153 to interesowa\196\135. \nPrace dorywcze to jedne z wa\197\188niejszych miejsc na serwerze, poniewa\197\188 to w\197\130a\197\155nie tam \nZarabiasz na swoje wymarzone pojazdy czy inne przyjemno\197\155ci.\n\nAktualnie na serwerze znajduje si\196\153 wiele prac wi\196\153c na pewno znajdziesz w nich co\197\155\nDla siebie, a przypominam \197\188e ci\196\133gle je ulepszamy oraz staramy si\196\153, \nAby na ka\197\188dej z nich zarabia\197\130o si\196\153 tyle samo aby praca to by\197\130a przyjemno\197\155\196\135 \nA nie przymus ^^\n\nJe\197\188eli nie wiesz gdzie si\196\153 one znajduj\196\133 to wystarczy, \197\188e klikniesz \"F2\"\nOraz wejdziesz w zak\197\130adk\196\153 \"Prac\196\153\" Po klikni\196\153ciu w ni\196\133 znajdziesz tam swoje statystyki\nJak i dost\196\153p do og\195\179lnej tablicy rankingowej oraz zauwa\197\188ysz tam przycisk do teleportacji\nB\196\153dziesz m\195\179g\197\130 go u\197\188y\196\135 do prawie ka\197\188dej z nich lecz pami\196\153taj \197\188e dzia\197\130a to tylko do 10 lvl\n\nJe\197\188eli zastanawiasz si\196\153, kt\195\179ra z nich jest najlepsza to na start poleci\197\130bym ci\nMagazyniera b\196\133d\197\186 kierowc\196\153 autobusu, s\196\133 to prace typowo na start.\nJe\197\188eli jednak szukasz czego\197\155 konkretniejszego to poni\197\188ej przedstawi\196\153 ci \nZdaniem graczy list\196\153 najbardziej op\197\130acalnych prac:\n\nPrace pod exp:\n-Magazynier\n-Farmer\n\nPrace pod zarobek:\n-SOLO: Logistyka l\196\133dowa, Transport Towar\195\179w\n-DUO: Kosiarki, Drwal, Kurier\n-Od 1 do 4 os\195\179b: Wyw\195\179z odpad\195\179w", 10, 1110 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left", "top", false, false, false, false, false)
    dxDrawText("3. Transport", 10, 1910 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Nie oszukujmy si\196\153 chyba ka\197\188dy z nas my\197\155l\196\133c o transporcie wpada na zdanie prawa jazdy.\nOt\195\179\197\188 owe prawo jazdy mo\197\188ecie zda\196\135 w OSK, kt\195\179ry znajduje si\196\153 w Los Santos, \na dosta\196\135 si\196\153 tam mo\197\188ecie dzi\196\153ki pomocy naszej wspania\197\130ej administracji.\n\nJe\197\188eli ju\197\188 si\196\153 tam udasz to zostaje ci tylko znale\197\186\196\135 odpowiedni egzamin \nOraz podej\197\155cie do niego, z czym raczej nie powinno by\196\135 problem\195\179w, prawda? \n\nNa start polecam zda\196\135 prawo jazdy kat. B, kt\195\179re oczywi\197\155cie \njest potrzebne do kierowania autem, oraz kat. C, \nkt\195\179re otwiera nam mo\197\188liwo\197\155\196\135 zatrudnienia si\196\153 w lepiej p\197\130atnych pracach dorywczych\ntak jak wcze\197\155niej wspomniany Transport Towar\195\179w.\n\nJe\197\188eli jednak teoria ci\196\153 przerasta to zajrzyj na serwerowe forum w zak\197\130adk\196\153 poradnik\195\179w.\nZnajdziesz tam odpowiedzi do ka\197\188dej kategorii!\nZ praktyk\196\133 wydaje mi si\196\153, \197\188e problemu nie b\196\153dzie.\n\nO nie! Z jakiego\197\155 powodu straci\197\130e\197\155 prawo jazdy lub go jeszcze nie masz? Nie martw si\196\153!\nNa naszym serwerze znajdziesz przystanki autobusowe rozmieszczone na ca\197\130ej mapie, \na gdyby tego by\197\130o ma\197\130o to w niekt\195\179rych miejscach s\196\133 r\195\179wnie\197\188 skuterki publiczne, \nna kt\195\179rych porusza\196\135 si\196\153 mo\197\188esz bez prawa jazdy!", 10, 1950 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left", "top", false, false, false, false, false)
    dxDrawText("4. Pierwsze auto", 10, 2560 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Na pewno poruszaj\196\133c si\196\153 po mapie widzia\197\130e\197\155 wiele fajnych furek wi\196\153c \nprzyszed\197\130 czas aby\197\155 i ty si\196\153 w jak\196\133\197\155 wyposa\197\188y\197\130. \nAktualne fundusze na zbyt wiele ci nie pozwol\196\133, dlatego na start polecam ci odwiedzi\196\135 \ncygana, lub uda\196\135 si\196\153 na gie\197\130d\196\153 samochodow\196\133 i tam ustrzeli\196\135 \nTwoje wymarzone pierwsze auto.\n\nNa pocz\196\133tek poleca\197\130bym ci jedn\196\133 z najta\197\132szych gie\197\130d w przedziale cenowym \n1,000 PLN - 1,000,000 PLN, kt\195\179r\196\133 znajdziesz w Los Santos\nwraz z wcze\197\155niej wspomnianym cyganem.\n\nJe\197\155li uda\197\130o ci si\196\153 ju\197\188 zakupi\196\135 jakie\197\155 autko to polecam zapozna\196\135 si\196\153 z panelem interakcji, \nkt\195\179ry znajdziesz pod shiftem, a do tego poje\197\186dzi\196\135 po mapie i zobaczy\196\135 \ngdzie mo\197\188esz zatankowa\196\135, lub naprawi\196\135 swoj\196\133 now\196\133 kabaryne.\n\nJe\197\188eli boisz si\196\153, \197\188e w kt\195\179rym\197\155 momencie zabraknie ci paliwa i utkniesz \nna \197\155rodku pustkowia to na ka\197\188dej stacji benzynowej mo\197\188esz \nkupi\196\135 kanister, kt\195\179ry uratowa\197\130 ju\197\188 nie jedn\196\133 osob\196\153.", 10, 2600 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText("PAMI\196\152TAJ", 10, 3080 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 100, 100, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Porzucenie swojego auta to nie do ko\197\132ca dobra sprawa. Albowiem w momencie, \nw kt\195\179rym tak zrobisz mo\197\188e zosta\196\135 odholowany on na parking policyjny gdzie b\196\153dziesz \nzmuszony zap\197\130aci\196\135 za jego przechowywanie.\nJe\197\188eli jednak chcesz tego unikn\196\133\196\135 to poleca\197\130bym parkowa\196\135 w miejscach do tego \nprzeznaczonych b\196\133d\197\186 na terenie swojej w\197\130asnej posiad\197\130o\197\155ci.\nSwoje auto mo\197\188esz r\195\179wnie\197\188 schowa\196\135 do przechowywalni gdzie b\196\153dzie ono w 100%\nbezpieczne, a do tego mo\197\188esz wyci\196\133gn\196\133\196\135 je z niej kiedy tylko chcesz. \n\nWspomina\197\130em, \197\188e jest to darmowe?", 10, 3110 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText("5. Gie\197\130dy", 10, 3410 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Miejsce ci\196\133g\197\130ej rotacji w asortymencie oraz cz\196\153stej negocjacji. \nTo w\197\130a\197\155nie tam polecam ci szuka\196\135 swojego pierwszego powa\197\188nego samochodu.\nNa serwerze mamy par\196\153 takich wi\196\153c pozw\195\179l, \197\188e pomog\196\153 ci si\196\153 w tym wszystkim po\197\130apa\196\135:\n\n-Gie\197\130da aut i motocykli (przedzia\197\130 1,000 - 1,000,000) - Los Santos\n-Gie\197\130da aut i motocykli (przedzia\197\130 1,000,000 - 30,000,000) - San Fierro\n-Gie\197\130da aut i motocykli (przedzia\197\130 30,000,000 - 1,000,000,000) - Las Venturas\n-Gie\197\130da pojazd\195\179w ci\196\153\197\188arowych - Blueberry\n-Gie\197\130da pojazd\195\179w wodnych - Las Venturas\n-Gie\197\130da pojazd\195\179w lotniczych - Las Venturas\n", 10, 3450 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText("\n6. Organizacje cywilne oraz przest\196\153pcze ", 10, 3730 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("\nJe\197\188eli chcia\197\130by\197\155 zbudowa\196\135 swoje w\197\130asne imperium, ale nie wiesz od czego zacz\196\133\196\135 \nto dobrym pomys\197\130em b\196\153dzie za\197\130o\197\188enie organizacji cywilnej w jednym z urz\196\153d\195\179w.\n\nDaje ona takie mo\197\188liwo\197\155ci jak wsp\195\179lne saldo organizacyjne, importowanie porzuconych \npojazd\195\179w (ulepszenie i/e z panelu) czy te\197\188 mo\197\188liwo\197\155\196\135 przepisywania \ndo niej pojazd\195\179w co pozwala wszystkim jej cz\197\130onkom na poruszanie si\196\153 nimi bez \npotrzeby dawania sobie kluczy czy te\197\188 og\195\179lna wsp\195\179\197\130praca mi\196\153dzy cz\197\130onkami \njak i wzajemna pomoc.\n\nNast\196\153pnym krokiem w zostaniu jednym z ciemnych charakter\195\179w serwera \nb\196\153dzie ulepszenie organizacji cywilnej na grupk\196\153 przest\196\153pcz\196\133.\nPozwala to nam na upraw\196\153 marihuany oraz wykonywanie r\195\179\197\188norakich napad\195\179w, kt\195\179re \nznajdziecie w zak\197\130adce \"napady\", a do tego otrzymacie mo\197\188liwo\197\155\196\135 u\197\188ywania \nbroni bia\197\130ej b\196\133d\197\186 palnej na strefie DM znajduj\196\133cej si\196\153 w San Fierro.\n\nOstatnim oraz najpot\196\153\197\188niejszym krokiem w \197\188yciu przest\196\153pcy jest organizacja przest\196\153pcza.\nPozwala ona na o wiele wi\196\153cej od grupki m.in dost\196\153p do wytwarzania \nznacznie dro\197\188szych do sprzeda\197\188y narkotyk\195\179w, \nu\197\188ywania broni niezale\197\188nie od tego gdzie jeste\197\155my czy mo\197\188liwo\197\155ci prania \nbrudnych pieni\196\153dzy. \n\nJest to najwy\197\188szy szczebel jaki mo\197\188e osi\196\133gn\196\133\196\135 aspiruj\196\133cy bandyta.\nJe\197\188eli chcia\197\130by\197\155 podj\196\133\196\135 si\196\153 prowadzenia takiej to zerknij na forum. \nTam w\197\130a\197\155nie mo\197\188esz z\197\130o\197\188y\196\135 o takow\196\133 podanie i sta\196\135 si\196\153 kim\197\155 wi\196\153cej ni\197\188 \nzwyk\197\130y bandzior z ulicy. ", 10, 3780 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText([[

7. Strefa Deathmatch]], 10, 4510 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("\nW skr\195\179cie wcze\197\155niej wspomniany DM. \nStref\196\153 t\196\133 znajdziesz w San Fierro i ju\197\188 t\197\130umacz\196\153 ci dok\197\130adnie do czego ona s\197\130u\197\188y.\nOt\195\179\197\188 grupki przest\196\153pcze s\196\133 w stanie przejmowa\196\135 tam mniejsze strefy, \nkt\195\179re co jaki\197\155 czas pasywnie generuj\196\133 zarobek na saldo organizacyjne.\nPonadto po ca\197\130ej strefie s\196\133 rozmieszczone boty, kt\195\179re mo\197\188na \nzabi\196\135 w celu pozyskania paczek. \nDok\197\130adn\196\133 ich zawarto\197\155\196\135 na pewno znajdziesz w jednym z poradnik\195\179w na forum.\nPami\196\153taj te\197\188, \197\188e je\197\188eli chcesz si\196\153 na tak\196\133 wybra\196\135 to polecam wyposa\197\188y\196\135 si\196\153 \nw bro\197\132 paln\196\133, kt\195\179r\196\133 zakupi\196\135 mo\197\188esz u graczy.", 10, 4560 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText("8. Frakcje ", 10, 4900 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Na serwerze aktualnie posiadamy dwie frakcje. \nSAPD czyli policja oraz SAFD (z pododdzia\197\130em medycznym) czyli stra\197\188ak\195\179w oraz medyk\195\179w. \nGdzie ich kompetentny zarz\196\133d przygotuje was do s\197\130u\197\188by dzi\196\153ki \nstarannie przygotowanym szkoleniom.\n\nSAPD zajmuje si\196\153 oczywi\197\155cie zwalczaniem przest\196\153pstwa \noraz pilnowaniem porz\196\133dku na drogach. \nDo tego to oni najcz\196\153\197\155ciej stawiaj\196\133 czo\197\130a przeciwko p\195\179\197\130\197\155wiatkowi przest\196\153pczemu \nwi\196\153c na pewno nie ma tam nudy.\nSAFD natomiast gasi po\197\188ary oraz dba o porz\196\133dek na drogach poprzez usuwanie plam \noleju jak i drzew. Ponadto s\196\133 oni naszymi lekarzami i \nod czasu do czasu pomagaj\196\133 SAPD w ratowaniu \197\188ycia graczy jak i robi\196\133 to sami.\nMy\197\155l\196\153, \197\188e jest to co\197\155 dla os\195\179b, kt\195\179re wol\196\133 unika\196\135 kontaktu z przest\196\153pcami.", 10, 4940 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText("9. Radio Santori ", 10, 5370 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Prowadzone przez graczy dla graczy, czyli radio.\nJest to miejsce, w kt\195\179rym odnajd\196\133 si\196\153 osoby, kt\195\179re z ch\196\153ci\196\133 \numil\196\133 czas innym graczom podczas ich rozgrywki. \nJe\197\188eli uwa\197\188asz, \197\188e nie nadajesz si\196\153 do ko\197\132ca ani na przest\196\153pc\196\153 ani do \197\188adnej z frakcji, \na jednak chcesz przys\197\130u\197\188y\196\135 si\196\153 serwerowi to jest to miejsce w\197\130a\197\155nie dla ciebie.\nZarz\196\133d radia wiele nie wymaga za to z ch\196\153ci\196\133 witaj\196\133 nowe osoby przy czym ucz\196\133 je \ntak\197\188e korzystania z potrzebnych do prowadzenia audycji program\195\179w \nkompletnie za darmo!", 10, 5410 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxDrawText("10. Zako\197\132czenie ", 10, 5670 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left")
    dxDrawText("Wydaje mi si\196\153, \197\188e ten poradnik przygotuje ci\196\153 do rozpocz\196\153cia rozgrywki \nbez \197\188adnych problem\195\179w. \nOd siebie polecam zajrze\196\135 na forum oraz na naszego discorda, poniewa\197\188 \nznajdziesz tam wiele przydatnych informacji na temat serwera. \nOraz pami\196\153taj, \197\188e w razie jakichkolwiek problem\195\179w mo\197\188esz kierowa\196\135 si\196\153 do administracji serwera.\n\nSantoriRPG - z my\197\155l\196\133 o graczach.\nPami\196\153taj, to ty tworzysz ten projekt.\nData zrobienia poradnika: 20.07.2025r.\nPisa\197\130 Zet0r.", 10, 5710 - exports.ST_gui:getScrollProgress(Scroll) * 5690, 750, 418, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left")
    dxSetRenderTarget()
    exports.ST_gui:renderScroll(Scroll)
    dxDrawImage(_UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 131 / _UPVALUE1_, 780 / _UPVALUE1_, 418 / _UPVALUE1_, przewodnikRT)
  end
  if windows.socialmedia == true then
    dxDrawText("SOCIAL MEDIA", _UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 370 / _UPVALUE1_, 90 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, animations.alpha100))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(85, 85, 85, animations.alpha100))
    dxDrawImage(_UPVALUE0_.x + 65 / _UPVALUE1_, _UPVALUE0_.y + 165 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.logo, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    dxDrawImage(_UPVALUE0_.x + 95 / _UPVALUE1_, _UPVALUE0_.y + 195 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.discord_icon, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    dxDrawText("DISCORD", _UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    dxDrawText((usersDiscord or 9999) .. " USERS", _UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    dxDrawText(usersDiscordOnline .. " #32a852ONLINE", _UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 235 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(44, 125, 69, animations.alpha255))
      dxDrawText(discordCopy, _UPVALUE0_.x + 330 / _UPVALUE1_, _UPVALUE0_.y + 187 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(52, 168, 88, animations.alpha255))
      dxDrawText(discordCopy, _UPVALUE0_.x + 330 / _UPVALUE1_, _UPVALUE0_.y + 187 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(250, 250, 250, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, 370 / _UPVALUE1_, 90 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, animations.alpha100))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(85, 85, 85, animations.alpha100))
    dxDrawImage(_UPVALUE0_.x + 65 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.logo, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    dxDrawImage(_UPVALUE0_.x + 95 / _UPVALUE1_, _UPVALUE0_.y + 315 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.internet_icon, 0, 0, 0, tocolor(0, 121, 191, animations.alpha255), false)
    dxDrawText("FORUM", _UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 370 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    dxDrawText(usersForum .. " USERS", _UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(44, 125, 69, animations.alpha255))
      dxDrawText(forumCopy, _UPVALUE0_.x + 330 / _UPVALUE1_, _UPVALUE0_.y + 427 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(52, 168, 88, animations.alpha255))
      dxDrawText(forumCopy, _UPVALUE0_.x + 330 / _UPVALUE1_, _UPVALUE0_.y + 427 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(250, 250, 250, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 370 / _UPVALUE1_, 90 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, animations.alpha100))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 400 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(85, 85, 85, animations.alpha100))
    dxDrawImage(_UPVALUE0_.x + 65 / _UPVALUE1_, _UPVALUE0_.y + 405 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.logo, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    dxDrawImage(_UPVALUE0_.x + 95 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.teamspeak_icon, 0, 0, 0, tocolor(0, 121, 191, animations.alpha255), false)
    dxDrawText("TEAMSPEAK", _UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 610 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(44, 125, 69, animations.alpha255))
      dxDrawText(teamspeakCopy, _UPVALUE0_.x + 330 / _UPVALUE1_, _UPVALUE0_.y + 667 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(52, 168, 88, animations.alpha255))
      dxDrawText(teamspeakCopy, _UPVALUE0_.x + 330 / _UPVALUE1_, _UPVALUE0_.y + 667 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(250, 250, 250, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 460 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 370 / _UPVALUE1_, 90 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, animations.alpha100))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(85, 85, 85, animations.alpha100))
    dxDrawImage(_UPVALUE0_.x + 475 / _UPVALUE1_, _UPVALUE0_.y + 165 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.logo, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    dxDrawImage(_UPVALUE0_.x + 505 / _UPVALUE1_, _UPVALUE0_.y + 195 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.tiktok_logo, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    dxDrawText("TIKTOK", _UPVALUE0_.x + 550 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(44, 125, 69, animations.alpha255))
      dxDrawText(tiktokCopy, _UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, _UPVALUE0_.x + 695 / _UPVALUE1_ + 120 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_ + 50 / _UPVALUE1_, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(52, 168, 88, animations.alpha255))
      dxDrawText(tiktokCopy, _UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, _UPVALUE0_.x + 695 / _UPVALUE1_ + 120 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_ + 50 / _UPVALUE1_, tocolor(250, 250, 250, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 460 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, 370 / _UPVALUE1_, 90 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, animations.alpha100))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(85, 85, 85, animations.alpha100))
    dxDrawImage(_UPVALUE0_.x + 475 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.logo, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    dxDrawImage(_UPVALUE0_.x + 505 / _UPVALUE1_, _UPVALUE0_.y + 315 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.radio_logo, 0, 0, 0, tocolor(0, 121, 191, animations.alpha255), false)
    dxDrawText("RADIO SANTORI", _UPVALUE0_.x + 550 / _UPVALUE1_, _UPVALUE0_.y + 370 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(44, 125, 69, animations.alpha255))
      dxDrawText(radioCopy, _UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, _UPVALUE0_.x + 695 / _UPVALUE1_ + 120 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_ + 50 / _UPVALUE1_, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(52, 168, 88, animations.alpha255))
      dxDrawText(radioCopy, _UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, _UPVALUE0_.x + 695 / _UPVALUE1_ + 120 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_ + 50 / _UPVALUE1_, tocolor(250, 250, 250, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 460 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 370 / _UPVALUE1_, 90 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, animations.alpha100))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 400 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(85, 85, 85, animations.alpha100))
    dxDrawImage(_UPVALUE0_.x + 475 / _UPVALUE1_, _UPVALUE0_.y + 405 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.logo, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
    dxDrawImage(_UPVALUE0_.x + 505 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.stereo_logo, 0, 0, 0, tocolor(0, 121, 191, animations.alpha255), false)
    dxDrawText("STEREO SANTORI", _UPVALUE0_.x + 550 / _UPVALUE1_, _UPVALUE0_.y + 610 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(44, 125, 69, animations.alpha255))
      dxDrawText(stereoCopy, _UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, _UPVALUE0_.x + 695 / _UPVALUE1_ + 120 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_ + 50 / _UPVALUE1_, tocolor(200, 200, 200, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 6 / _UPVALUE1_, tocolor(52, 168, 88, animations.alpha255))
      dxDrawText(stereoCopy, _UPVALUE0_.x + 695 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, _UPVALUE0_.x + 695 / _UPVALUE1_ + 120 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_ + 50 / _UPVALUE1_, tocolor(250, 250, 250, animations.alpha255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(categories) do
        if isMouseIn(_UPVALUE1_.x + 60 / _UPVALUE0_ + 80 / _UPVALUE0_ * (0 + 1 - 1), _UPVALUE1_.y + 30 / _UPVALUE0_, 40 / _UPVALUE0_, 40 / _UPVALUE0_) and windows.main == true and windows.main == true then
          createAnimation(255, 0, "SineCurve", 400, function(_ARG_0_)
            animations.alpha255 = _ARG_0_
          end)
          createAnimation(animations.posXBar, _FORV_7_.pos, "InOutQuad", 400, function(_ARG_0_)
            animations.posXBar = _ARG_0_
          end)
          setTimer(function()
            windows.update = false
            windows.commands = false
            windows.keyboard = false
            windows.guide = false
            windows.socialmedia = false
            if _UPVALUE0_.name == "Aktualizacje" then
              windows.update = true
            elseif _UPVALUE0_.name == "Komendy" then
              windows.commands = true
              commands_table = {
                {
                  "/pm [id] [tre\197\155\196\135]",
                  "Pisze prywatn\196\133 wiadomo\197\155\196\135 do gracza"
                },
                {
                  "/pmoff [pow\195\179d]",
                  "Wy\197\130\196\133cza Prywatne Wiadomosci"
                },
                {
                  "/pmon",
                  "W\197\130\196\133cza Prywatne Wiadomosci"
                },
                {
                  "/admins",
                  " Pokazuje administracj\196\153 online"
                },
                {
                  "/v [tre\197\155\196\135]",
                  "Wysy\197\130amy wiadomo\197\155\196\135 na czacie premium"
                },
                {
                  "/v [on/off ]",
                  "W\197\130\196\133cza/Wy\197\130\196\133cza czat premium"
                },
                {
                  "/voicevolume 1-100",
                  "Ustawia g\197\130o\197\155no\197\155\196\135 czatu g\197\130osowego "
                },
                {
                  "/report [id] [pow\195\179d]",
                  "Wysy\197\130a zg\197\130oszenie do administracji "
                },
                {
                  "/op",
                  "Obraca nasz pojazd"
                },
                {
                  "/dajkase [id] [ilo\197\155\196\135]",
                  "Daje danemu graczowi okre\197\155lon\196\133 ilo\197\155\196\135 pieni\196\153dzy "
                },
                {
                  "/dajpp [id] [ilo\197\155\196\135]",
                  "Daje danemu graczowi okre\197\155lon\196\133 ilo\197\155\196\135 Punkt\195\179w Premium"
                },
                {
                  "/ogloszenie [Tre\197\155\196\135]",
                  "Piszemy og\197\130oszenie wy\197\155wietlane wszystkim graczom"
                },
                {
                  "/cb [tre\197\155\196\135]",
                  "Piszemy wiadomo\197\155\196\135 na radiu cb"
                },
                {
                  "/ogloszenia",
                  "Wy\197\155wietla kolejk\196\153 og\197\130osze\197\132"
                },
                {
                  "/usun.reporta",
                  "Usuwa reporta wys\197\130anego wcze\197\155niej"
                },
                {
                  "/afk",
                  "W\197\130\196\133cza tryb afk"
                },
                {
                  "/tpev",
                  "Teleportuje do miejsca ustawionego przed administracj\196\153"
                },
                {
                  "/ignore [id]",
                  "Blokuje wiadomosci od danego gracza"
                }
              }
            elseif _UPVALUE0_.name == "Klawiszologia" then
              windows.keyboard = true
            elseif _UPVALUE0_.name == "Jak zacz\196\133\196\135?" then
              Scroll = exports.ST_gui:createScroll(_UPVALUE1_.x + 840 / _UPVALUE2_, _UPVALUE1_.y + 130 / _UPVALUE2_, 20 / _UPVALUE2_, 420 / _UPVALUE2_, {
                background = textures.scrollbar,
                grip = textures.scrollbar_point
              }, dxGetMaterialSize(textures.scrollbar_point) * 1 / _UPVALUE2_, {
                45,
                45,
                45
              }, {
                255,
                187,
                0
              })
              przewodnikRT = dxCreateRenderTarget(780 / _UPVALUE2_, 420 / _UPVALUE2_, true)
              windows.guide = true
            elseif _UPVALUE0_.name == "Social media" then
              windows.socialmedia = true
              if not downloadUsers then
                downloadUsers = true
                usersTeamSpeak = 9999
                usersForum = 9999
                usersDiscord = 9999
                usersDiscordOnline = 9999
                triggerServerEvent("ev", resourceRoot, "usersTeamSpeak", localPlayer)
                setTimer(function()
                  downloadUsers = false
                end, 600000, 1)
              end
            end
          end, 200, 1)
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 285 / _UPVALUE0_, _UPVALUE1_.y + 170 / _UPVALUE0_, 120 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.socialmedia == true then
      if discordCopy == "SKOPIUJ" then
        discordCopy = "SKOPIOWANO"
        setClipboard("https://discord.gg/2BFEuSW")
        exports.st_gui:showPlayerNotification("Skopiowano link do schowka", "info")
      end
    elseif isMouseIn(_UPVALUE1_.x + 285 / _UPVALUE0_, _UPVALUE1_.y + 290 / _UPVALUE0_, 120 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.socialmedia == true then
      if forumCopy == "SKOPIUJ" then
        forumCopy = "SKOPIOWANO"
        setClipboard("forum.santori.xyz")
        exports.st_gui:showPlayerNotification("Skopiowano link do schowka", "info")
      end
    elseif isMouseIn(_UPVALUE1_.x + 285 / _UPVALUE0_, _UPVALUE1_.y + 410 / _UPVALUE0_, 120 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.socialmedia == true then
      if teamspeakCopy == "SKOPIUJ" then
        teamspeakCopy = "SKOPIOWANO"
        setClipboard("santori")
        exports.st_gui:showPlayerNotification("Skopiowano ip do schowka", "info")
      end
    elseif isMouseIn(_UPVALUE1_.x + 695 / _UPVALUE0_, _UPVALUE1_.y + 170 / _UPVALUE0_, 120 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.socialmedia == true then
      if tiktokCopy == "SKOPIUJ" then
        tiktokCopy = "SKOPIOWANO"
        setClipboard("https://www.tiktok.com/@santorirpg_official")
        exports.st_gui:showPlayerNotification("Skopiowano link do schowka", "info")
      end
    elseif isMouseIn(_UPVALUE1_.x + 695 / _UPVALUE0_, _UPVALUE1_.y + 290 / _UPVALUE0_, 120 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.socialmedia == true then
      if radioCopy == "SKOPIUJ" then
        radioCopy = "SKOPIOWANO"
        setClipboard("https://santorirpg.panelradiowy.pl/radio")
        exports.st_gui:showPlayerNotification("Skopiowano link do schowka", "info")
      end
    elseif isMouseIn(_UPVALUE1_.x + 695 / _UPVALUE0_, _UPVALUE1_.y + 410 / _UPVALUE0_, 120 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.socialmedia == true and stereoCopy == "SKOPIUJ" then
      stereoCopy = "SKOPIOWANO"
      setClipboard("https://stereo.santori.xyz")
      exports.st_gui:showPlayerNotification("Skopiowano link do schowka", "info")
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showUpdateClient" then
    update_table = _ARG_1_
  elseif _ARG_0_ == "usersTeamSpeakClient" then
    usersTeamSpeak = _ARG_1_
    usersForum = _ARG_2_
    usersDiscord = _ARG_3_
    usersDiscordOnline = _ARG_4_
  end
end)
bindKey("mouse_wheel_down", "both", function()
  if windows.guide == true then
    exports.ST_gui:moveScroll(Scroll, "down", 200 / _UPVALUE0_ / 30)
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.guide == true then
    exports.ST_gui:moveScroll(Scroll, "up", 200 / _UPVALUE0_ / 30)
  end
end)
bindKey("F1", "down", function()
  if windows.background == true then
    showCursor(false)
    setTimer(function()
      removeEventHandler("onClientRender", root, window)
      windows.background = false
      windows.main = false
      for _FORV_3_, _FORV_4_ in pairs(textures) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      textures = {}
      windows.update = false
      windows.commands = false
      windows.keyboard = false
      windows.guide = false
      windows.socialmedia = false
      createShaderBlur(false)
    end, 400, 1)
    createAnimation(255, 0, "InOutQuad", 400, function(_ARG_0_)
      animations.alpha255 = _ARG_0_
    end)
    createAnimation(255, 0, "InOutQuad", 400, function(_ARG_0_)
      animations.alpha255_ = _ARG_0_
    end)
    createAnimation(100, 0, "InOutQuad", 400, function(_ARG_0_)
      animations.alpha100 = _ARG_0_
    end)
  else
    if not getElementData(localPlayer, "player:sid") then
      return
    end
    update_table = {
      {categories = false},
      {categories = false},
      {categories = false},
      {categories = false},
      {categories = false}
    }
    triggerServerEvent("ev", resourceRoot, "showUpdate", localPlayer)
    textures = {
      background = dxCreateTexture("img/background.png"),
      update_icon = dxCreateTexture("img/update_icon.png"),
      commands_icon = dxCreateTexture("img/commands_icon.png"),
      keyboard_icon = dxCreateTexture("img/keyboard_icon.png"),
      guide_icon = dxCreateTexture("img/guide_icon.png"),
      scrollbar = dxCreateTexture("img/scrollbar.png"),
      scrollbar_point = dxCreateTexture("img/scrollbar_point.png"),
      socialmedia_icon = dxCreateTexture("img/socialmedia_icon.png"),
      logo = dxCreateTexture(":ST_gui/img/logo.png"),
      internet_icon = dxCreateTexture("img/internet_icon.png"),
      teamspeak_icon = dxCreateTexture("img/teamspeak_icon.png"),
      discord_icon = dxCreateTexture("img/discord_icon.png"),
      tiktok_logo = dxCreateTexture("img/tiktok_logo.png"),
      radio_logo = dxCreateTexture("img/radio_logo.png"),
      stereo_logo = dxCreateTexture("img/stereo_logo.png"),
      keyboard = dxCreateTexture("img/keyboard.png")
    }
    discordCopy = "SKOPIUJ"
    forumCopy = "SKOPIUJ"
    teamspeakCopy = "SKOPIUJ"
    tiktokCopy = "SKOPIUJ"
    radioCopy = "SKOPIUJ"
    stereoCopy = "SKOPIUJ"
    categories = {
      {
        name = "Aktualizacje",
        img = textures.update_icon,
        pos = 50
      },
      {
        name = "Komendy",
        img = textures.commands_icon,
        pos = 130
      },
      {
        name = "Klawiszologia",
        img = textures.keyboard_icon,
        pos = 210
      },
      {
        name = "Jak zacz\196\133\196\135?",
        img = textures.guide_icon,
        pos = 290
      },
      {
        name = "Social media",
        img = textures.socialmedia_icon,
        pos = 370
      }
    }
    windows.update = true
    createAnimation(0, 255, "InOutQuad", 400, function(_ARG_0_)
      animations.alpha255 = _ARG_0_
    end)
    createAnimation(0, 255, "InOutQuad", 400, function(_ARG_0_)
      animations.alpha255_ = _ARG_0_
    end)
    createAnimation(0, 100, "InOutQuad", 400, function(_ARG_0_)
      animations.alpha100 = _ARG_0_
    end)
    createAnimation(animations.posXBar, 50, "InOutQuad", 400, function(_ARG_0_)
      animations.posXBar = _ARG_0_
    end)
    createShaderBlur(true)
    addEventHandler("onClientRender", root, window)
    windows.background = true
    windows.main = true
    showCursor(true)
  end
end)
bindKey("mouse_wheel_down", "both", function()
  if windows.update == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.update == true then
    scrollDown()
  end
end)
function scrollDown()
  if n == m then
    return
  end
  k = k - 1
  n = n - 1
end
function scrollUp()
  if n >= #update_table then
    return
  end
  k = k + 1
  n = n + 1
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
function drawCorner(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_2_ == "lg" then
    dxDrawLine(_ARG_0_, _ARG_1_, _ARG_0_ + (_ARG_3_ or 20), _ARG_1_, _ARG_5_ or tocolor(250, 176, 0, animations.alpha255), _ARG_6_ or 2)
    dxDrawLine(_ARG_0_, _ARG_1_, _ARG_0_, _ARG_1_ + (_ARG_4_ or 20), _ARG_5_ or tocolor(250, 176, 0, animations.alpha255), _ARG_6_ or 2)
  elseif _ARG_2_ == "pg" then
    dxDrawLine(_ARG_0_ - (_ARG_3_ or 20), _ARG_1_, _ARG_0_, _ARG_1_, _ARG_5_ or tocolor(250, 176, 0, animations.alpha255), _ARG_6_ or 2)
    dxDrawLine(_ARG_0_, _ARG_1_, _ARG_0_, _ARG_1_ + (_ARG_4_ or 20), _ARG_5_ or tocolor(250, 176, 0, animations.alpha255), _ARG_6_ or 2)
  elseif _ARG_2_ == "ld" then
    dxDrawLine(_ARG_0_, _ARG_1_, _ARG_0_ + (_ARG_3_ or 20), _ARG_1_, _ARG_5_ or tocolor(250, 176, 0, animations.alpha255), _ARG_6_ or 2)
    dxDrawLine(_ARG_0_, _ARG_1_ - (_ARG_4_ or 20), _ARG_0_, _ARG_1_, _ARG_5_ or tocolor(250, 176, 0, animations.alpha255), _ARG_6_ or 2)
  elseif _ARG_2_ == "pd" then
    dxDrawLine(_ARG_0_ - (_ARG_3_ or 20), _ARG_1_, _ARG_0_, _ARG_1_, _ARG_5_ or tocolor(250, 176, 0, animations.alpha255), _ARG_6_ or 2)
    dxDrawLine(_ARG_0_, _ARG_1_ - (_ARG_4_ or 20), _ARG_0_, _ARG_1_, _ARG_5_ or tocolor(250, 176, 0, animations.alpha255), _ARG_6_ or 2)
  end
end
function drawFramedText(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  _ARG_3_ = tonumber(_ARG_3_) or 12
  _ARG_4_ = tonumber(_ARG_4_) or 10
  _ARG_5_ = tonumber(_ARG_5_) or 1
  dxDrawRoundedRectangle(_ARG_1_ - 1, _ARG_2_ - 1, dxGetTextWidth(_ARG_0_, _ARG_5_, (exports.ST_gui:getGUIFont("font17"))) + _ARG_3_ * 1.4 + 1 * 2, dxGetFontHeight(_ARG_5_, (exports.ST_gui:getGUIFont("font17"))) + _ARG_3_ * 1.4 + 1 * 2, _ARG_4_ + 1, (tocolor(250, 176, 0, animations.alpha255)))
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, dxGetTextWidth(_ARG_0_, _ARG_5_, (exports.ST_gui:getGUIFont("font17"))) + _ARG_3_ * 1.4, dxGetFontHeight(_ARG_5_, (exports.ST_gui:getGUIFont("font17"))) + _ARG_3_ * 1.4, _ARG_4_, (tocolor(40, 40, 40, animations.alpha255)))
  dxDrawText(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_1_ + (dxGetTextWidth(_ARG_0_, _ARG_5_, (exports.ST_gui:getGUIFont("font17"))) + _ARG_3_ * 1.4), _ARG_2_ + (dxGetFontHeight(_ARG_5_, (exports.ST_gui:getGUIFont("font17"))) + _ARG_3_ * 1.4), tocolor(255, 255, 255, animations.alpha255), _ARG_5_, exports.ST_gui:getGUIFont("font17"), "center", "center")
end
function createShaderBlur(_ARG_0_)
  if _ARG_0_ == true then
    screenSource = dxCreateScreenSource(_UPVALUE0_, _UPVALUE1_, true)
    blurShader = dxCreateShader(":ST_blurUI/liquidGlass.fx")
    dxSetShaderValue(blurShader, "screenSize", _UPVALUE0_, _UPVALUE1_)
    dxSetShaderValue(blurShader, "opacity", 1)
    dxSetShaderValue(blurShader, "blurStrength", 5)
    dxSetShaderValue(blurShader, "tintColor", 0, 0, 0)
    dxSetShaderValue(blurShader, "tintAlpha", 0.305)
    dxSetShaderValue(blurShader, "rectLT", _UPVALUE2_.x / _UPVALUE0_, _UPVALUE2_.y / _UPVALUE1_)
    dxSetShaderValue(blurShader, "rectSize", _UPVALUE2_.w / _UPVALUE0_, _UPVALUE2_.h / _UPVALUE1_)
    dxSetShaderValue(blurShader, "radiusUV", 30 / _UPVALUE3_ / _UPVALUE2_.w, 30 / _UPVALUE3_ / _UPVALUE2_.h)
  else
    if isElement(blurShader) then
      destroyElement(blurShader)
    end
    if isElement(screenSource) then
      destroyElement(screenSource)
    end
  end
end
getResourceName(getThisResource(), true, 723317569)
return
