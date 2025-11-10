function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("Uratuj bota!", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 125 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 25 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_, 350 / _UPVALUE2_, 200 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(25, 25, 25, 230))
    dxDrawText("BRAK ILUSTRACJI", _UPVALUE1_.x + 50 / _UPVALUE2_, _UPVALUE1_.y + 150 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(40, 40, 40, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    dxDrawText("Pytanie #fcba03" .. self.questionNumber .. " #ffffff/ #fcba03" .. #self.questionsTable, _UPVALUE1_.x + 400 / _UPVALUE2_, _UPVALUE1_.y - 20 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    for _FORV_9_, _FORV_10_ in ipairs(self.questionsTable) do
      if self.questionNumber == _FORV_9_ then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 399 / _UPVALUE2_ + 35 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 109 / _UPVALUE2_, 32 / _UPVALUE2_, 32 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(100, 100, 100, 255))
      end
      dxDrawRoundedRectangle(_UPVALUE1_.x + 400 / _UPVALUE2_ + 35 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 110 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(25, 25, 25, 255))
      dxDrawText(_FORV_9_, _UPVALUE1_.x + 469 / _UPVALUE2_ + 70 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 50 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    dxDrawText(self.questionsTable[self.questionNumber].question, _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 300 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "top", false, false, false, true, false)
    for _FORV_10_, _FORV_11_ in ipairs(self.questionsTable[self.questionNumber].odp) do
      if self.selectQuestion == _FORV_10_ then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 28 / _UPVALUE2_, _UPVALUE1_.y + 378 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), 54 / _UPVALUE2_, 54 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(100, 100, 100, 255))
      end
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 380 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), 50 / _UPVALUE2_, 50 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(25, 25, 25, 230))
      if _FORV_10_ == 1 then
        dxDrawText("A", _UPVALUE1_.x - 250 / _UPVALUE2_, _UPVALUE1_.y + 390 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, true, false)
      elseif _FORV_10_ == 2 then
        dxDrawText("B", _UPVALUE1_.x - 250 / _UPVALUE2_, _UPVALUE1_.y + 390 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, true, false)
      elseif _FORV_10_ == 3 then
        dxDrawText("C", _UPVALUE1_.x - 250 / _UPVALUE2_, _UPVALUE1_.y + 390 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, true, false)
      end
      dxDrawText(_FORV_11_, _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y + 608 / _UPVALUE2_ + 120 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
    end
    if self.selectQuestion then
      if self.questionNumber >= tonumber(#self.questionsTable) then
        exports.ST_buttons:dxCreateButton("Zako\197\132cz pomoc", _UPVALUE1_.x + 680 / _UPVALUE2_, _UPVALUE1_.y + 500 / _UPVALUE2_, 170 / _UPVALUE2_, 50 / _UPVALUE2_, 255, 1)
      else
        exports.ST_buttons:dxCreateButton("Nast\196\153pne pytanie", _UPVALUE1_.x + 680 / _UPVALUE2_, _UPVALUE1_.y + 500 / _UPVALUE2_, 170 / _UPVALUE2_, 50 / _UPVALUE2_, 255, 1)
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and _UPVALUE0_.main == true then
    for _FORV_6_, _FORV_7_ in ipairs(self.questionsTable[self.questionNumber].odp) do
      if isMouseIn(_UPVALUE2_.x + 30 / _UPVALUE1_, _UPVALUE2_.y + 380 / _UPVALUE1_ + 60 / _UPVALUE1_ * (0 + 1 - 1), 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
        self.selectQuestion = _FORV_6_
      end
    end
    if isMouseIn(_UPVALUE2_.x + 680 / _UPVALUE1_, _UPVALUE2_.y + 500 / _UPVALUE1_, 170 / _UPVALUE1_, 50 / _UPVALUE1_) and self.selectQuestion then
      if self.selectQuestion ~= self.questionsTable[self.questionNumber].true_ then
        exports.st_gui:showPlayerNotification("Nie uda\197\130o Ci si\196\153 uratowa\196\135 poszkodowanego", "error")
        triggerServerEvent("evEwenciks_jtydrhgf", resourceRoot, "deleteNPC", localPlayer, self.idNPC, false)
        closeGui()
        return
      end
      if self.questionNumber >= tonumber(#self.questionsTable) then
        triggerServerEvent("evEwenciks_jtydrhgf", resourceRoot, "deleteNPC", localPlayer, self.idNPC, true)
        closeGui()
      else
        self.questionNumber = self.questionNumber + 1
      end
      self.selectQuestion = false
    end
    if isMouseIn(_UPVALUE2_.x + _UPVALUE2_.w - 61 / _UPVALUE1_, _UPVALUE2_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      triggerServerEvent("evEwenciks_jtydrhgf", resourceRoot, "deleteNPC", localPlayer, self.idNPC, false)
      closeGui()
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "openGuiNPC" then
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    self = {}
    self.questionsTable = {}
    for _FORV_9_ = 1, math.random(1, 4) do
      table.insert(self.questionsTable, ({
        {
          question = "U poszkodowanego wyst\196\153puje z\197\130amanie zamkni\196\153te prawej r\196\153ki, czego u\197\188yjesz do usztywnienia?",
          odp = {
            "Szyny krammera 100 cm",
            "Banda\197\188y oraz gazy",
            "Szyny krammera 50 cm"
          },
          true_ = 3
        },
        {
          question = "U poszkodowanego wyst\196\153puje z\197\130amanie otwarte lewej nogi, czego u\197\188yjesz do usztywnienia?",
          odp = {
            "Torby medycznej",
            "Szyny krammera 100 cm",
            "Ko\197\130nierza ortopedycznego"
          },
          true_ = 2
        },
        {
          question = "Osoba poszkodowana ma rozci\196\153ty \197\130uk brwiowy, z jakich przedmiot\195\179w wykonasz opatrunek?",
          odp = {
            "Gaza ja\197\130owa, codofix",
            "Szyna krammera, ko\197\130nierz ortopedyczny",
            "Gaza ja\197\130owa, banda\197\188e elastyczne"
          },
          true_ = 1
        },
        {
          question = "Z nosa poszkodowanego leci krew, jakiego przedmiotu u\197\188yjesz do zatamowania krwawienia?",
          odp = {
            "Gaza ja\197\130owa",
            "Banda\197\188",
            "Tamponada"
          },
          true_ = 3
        },
        {
          question = "Poszkodowany zosta\197\130 d\197\186gni\196\153ty no\197\188em w lewe udo, czego NIE mo\197\188esz wykona\196\135 na miejscu zdarzenia?",
          odp = {
            "Wyci\196\133gn\196\133\196\135 przedmiot",
            "Stabilizowa\196\135 przedmiot",
            "Za\197\130o\197\188y\196\135 staze"
          },
          true_ = 1
        },
        {
          question = "Poszkodowany ma brak pulsu oraz oddechu, ile wykonasz ucisk\195\179w oraz wdech\195\179w?",
          odp = {
            "20 ucisk\195\179w 2 wdechy",
            "15 ucisk\195\179w 3 wdechy",
            "30 ucisk\195\179w 2 wdechy"
          },
          true_ = 3
        },
        {
          question = "Poszkodowany zosta\197\130 postrzelony w lewe kolano,za pomoc\196\133 jakich przedmiot\195\179w wykonasz opatrunek?",
          odp = {
            "Gazy ja\197\130owe, banda\197\188e",
            "Gazy ja\197\130owe, szyne kramera",
            "Gazy ja\197\130owe, szyna zimmera"
          },
          true_ = 1
        },
        {
          question = "Ile wykonasz ucisk\195\179w oraz wdech\195\179w u osoby wyci\196\133gni\196\153tej z wody?",
          odp = {
            "30 ucisk\195\179w 2 wdechy",
            "30 wdech\195\179w  5 ucisk\195\179w",
            "5 wdech\195\179w 30 ucisk\195\179w"
          },
          true_ = 3
        },
        {
          question = "Poszkodowany z\197\130ama\197\130 palca u lewej r\196\153ki, jakiego przedmiotu u\197\188yjesz do stabilizacji palca?",
          odp = {
            "Szyna kramera",
            "Szyna zimmera",
            "Szyna Falchera"
          },
          true_ = 2
        },
        {
          question = "Osoba poszkodowana dozna\197\130a poparzenia klatki piersiowej, jakiego opatrunku u\197\188yjesz?",
          odp = {
            "Opatrunek hydro\197\188elowy",
            "Opatrunek wodny",
            "Opatrunek Ch\197\130odny"
          },
          true_ = 1
        },
        {
          question = "Co zrobisz gdy poszkodowany ma uszkodzenie kr\196\153gos\197\130upa?",
          odp = {
            "Owine banda\197\188em",
            "Wsun\196\153 pod niego desk\196\153 ort. i zapinam pasy",
            "Za\197\130o\197\188e ko\197\130nierz ortopedyczny na kark poszkodowanego"
          },
          true_ = 2
        },
        {
          question = "Co zrobisz na wypadku z odci\196\153tym palcem poszkodowanego?",
          odp = {
            "Zszywam ig\197\130\196\133 i niciami",
            "Zabanda\197\188uje i dam szyn\196\153 zimmera",
            "Daje do worka strunowego"
          },
          true_ = 3
        },
        {
          question = "Kt\195\179re zdanie prawid\197\130owo opisuje uraz wytrzewienia brzucha?",
          odp = {
            "Nazwa ta fachowo opisuje przestrza\197\130 w okolicy podbrzusza",
            "\226\128\156Go\197\130e\226\128\157 jelita wydostaj\196\133ce si\196\153 na zewn\196\133trz jamy brzusznej",
            "G\197\130\196\153bokie poparzenia brzucha"
          },
          true_ = 2
        },
        {
          question = "Co robimy na wypadku ze z\197\130amaniem ko\197\155ci w klatce piersiowej?",
          odp = {
            "Owijamy klatk\196\153 piersiow\196\133 banda\197\188em",
            "Na wypadku nie mo\197\188emy nic z tym zrobi\196\135",
            "Zak\197\130adamy staze"
          },
          true_ = 2
        },
        {
          question = "Co robimy gdy cia\197\130o obce znajduje si\196\153 w oku.",
          odp = {
            "Zak\197\130adamy codofix",
            "Polewamy oczy kroplami",
            "Staramy si\196\153 stabilizowa\196\135 cia\197\130o obce oraz nak\197\130adamy banda\197\188 na oczy"
          },
          true_ = 3
        },
        {
          question = "Jakie badanie wykonasz w celu sprawdzenia pulsu i oddechu?",
          odp = {
            "Badanie urazowe",
            "Badanie ABC",
            "Badanie wst\196\153pne"
          },
          true_ = 2
        },
        {
          question = "Jakie badanie wykonasz w celu sprawdzenia czy s\196\133 jakie\197\155 urazy b\196\133d\197\186 z\197\130amania?",
          odp = {
            "Badanie okresowe",
            "Badanie ABC",
            "Badanie urazowe"
          },
          true_ = 3
        },
        {
          question = "Co aplikujesz w cia\197\130o poszkodowanego po wjechaniu z nim na noszach do karetki?",
          odp = {
            "Kropl\195\179wke",
            "Kaniule",
            "Szczepionk\196\153"
          },
          true_ = 2
        },
        {
          question = "Jaki przep\197\130yw tlenu powinna mie\196\135 tlenoterapia?",
          odp = {
            "10l/min",
            "20l/min",
            "15l/min"
          },
          true_ = 3
        },
        {
          question = "Czym wyci\196\133gniesz kul\196\153 z rany postrza\197\130owej?",
          odp = {
            "Szczypcami",
            "R\196\153koma",
            "Rozwieraczem do ran"
          },
          true_ = 1
        },
        {
          question = "Co pod\197\130\196\133czysz do kaniuli po wypadku?",
          odp = {
            "Antybiotyk",
            "Kropl\195\179wk\196\153",
            "Leki przeciwb\195\179lowe"
          },
          true_ = 2
        },
        {
          question = "Do czego s\197\130u\197\188y AED?",
          odp = {
            "Kontrolowania poziomu cukru w organizmie",
            "Przywracania prawid\197\130owej pracy serca",
            "Przywracania pracy serca"
          },
          true_ = 2
        },
        {
          question = "Czym rozcinamy odzie\197\188 poszkodowanego?",
          odp = {
            "No\197\188yczkami ratowniczymi",
            "No\197\188em",
            "No\197\188yczkami atraumatycznymi"
          },
          true_ = 3
        },
        {
          question = "Rana na wylot to\226\128\166?",
          odp = {
            "Postrza\197\130owa",
            "Przestrza\197\130owa",
            "Prze\197\155witowa"
          },
          true_ = 2
        },
        {
          question = "Co b\196\153dzie pierwsz\196\133 rzecz\196\133 jak\196\133 zrobisz przy zacz\196\153ciu pierwszej pomocy?",
          odp = {
            "Przechodz\196\153 do badania ABC",
            "Sprawdzam czy jest bezpiecznie",
            "Wykonuje RKO"
          },
          true_ = 2
        },
        {
          question = "Czym zabezpieczysz g\197\130ow\196\153 poszkodowanego na noszach?",
          odp = {
            "Nie trzeba zabezpiecza\196\135",
            "Pasami",
            "Klockami"
          },
          true_ = 3
        },
        {
          question = "Co to jest NZK?",
          odp = {
            "Nag\197\130e Zatrzymanie Kr\196\133\197\188enia",
            "Natychmiastowe Zatrzymanie Krtani",
            "Nag\197\130e Zapalenie Karku"
          },
          true_ = 1
        },
        {
          question = "Zaznacz prawid\197\130owe wyposa\197\188enie torby r1:",
          odp = {
            "No\197\188yczki atraumatyczne, gazy ja\197\130owe, banda\197\188e, codofix",
            "Gazy ja\197\130owe, gazy spr\196\153\197\188ynowe, no\197\188yczki atraumatyczne, banda\197\188e",
            "Codofix, szyny Zimmera, banda\197\188e, gazy ja\197\130owe"
          },
          true_ = 1
        },
        {
          question = "Zaznacz prawid\197\130owe wyposa\197\188enie torby r2:",
          odp = {
            "Kask stra\197\188acki, str\195\179j nurka, maska tlenowa",
            "Butle tlenowa, reduktor, maseczka tlenowa",
            "Szyny kramera, szyny zimmera, ko\197\130nierz ortopedyczny"
          },
          true_ = 2
        },
        {
          question = "Po kt\195\179rym cyklu RKO uznajemy jako zgon?",
          odp = {
            "Po drugim",
            "Po czwartym",
            "Po trzecim"
          },
          true_ = 2
        },
        {
          question = "Co trzeba zrobi\196\135 je\197\155li poszkodowany ma puls ale nie ma oddechu?",
          odp = {
            "Wykonujemy RKO 30:2",
            "Podajemy butle z tlenem",
            "Podajemy kropl\195\179wke"
          },
          true_ = 2
        },
        {
          question = "Co to jest rytm zatokowy?",
          odp = {
            "Prawid\197\130owa praca serca",
            "Zaburzenie pracy serca, polegaj\196\133ce na szybkiej i nieskoordynowanej pracy kom\195\179r serca",
            "P\197\130aski zapis na EKG"
          },
          true_ = 1
        },
        {
          question = "Do czego s\197\130u\197\188y skalpel? ",
          odp = {
            "Do nacinania sk\195\179ry",
            "Do przenoszenia poszkodowanego",
            "Do zatrzymania krwawienia z rany"
          },
          true_ = 1
        },
        {
          question = "Poszkodowany ma cia\197\130o obce w g\197\130owie co robisz? ",
          odp = {
            "Unieruchamiasz zwini\196\153tym banda\197\188em i nak\197\130adasz codofix",
            "Przyk\197\130adasz gaze ja\197\130ow\196\133 i owijasz banda\197\188em",
            "Owijasz samym banda\197\188em"
          },
          true_ = 1
        },
        {
          question = "Za pomoc\196\133 jakiego przyrz\196\133du wykonujesz 2 wdechy? ",
          odp = {
            "Woreczek AMBU",
            "Woreczek BAMBU",
            "Woreczek BUNARU"
          },
          true_ = 1
        },
        {
          question = "Kiedy zak\197\130adamy r\196\153kawiczki nitrylowe? ",
          odp = {
            "Przed wykonywanymi czynno\197\155ciami z poszkodowanym",
            "Po wykonanych czynno\197\155ciach z poszkodowanym",
            "Nie zak\197\130adamy wcale"
          },
          true_ = 1
        },
        {
          question = "U poszkodowanego wystepuj\196\153 rana z cia\197\130em obcym w brzuchu co wyci\196\133gasz z torby r1? ",
          odp = {
            "codofix oraz banda\197\188e",
            "gazy ja\197\130owe oraz codofix",
            "banda\197\188e oraz gazy ja\197\130owe"
          },
          true_ = 3
        },
        {
          question = "Co bardziej zagra\197\188a \197\188yciu poszkodowanemu?",
          odp = {
            "Cia\197\130o obce w klatce piersiowej",
            "Oparzenie prawego uda",
            "Krwotok z nosa"
          },
          true_ = 1
        },
        {
          question = "Co to jest hipoksja?",
          odp = {
            "Badanie polegaj\196\133ce na sprawdzeniu ilo\197\155ci cukru we krwi",
            "Jest to niedotlenienie organizmu wynikaj\196\133cym z niedoboru tlenu w tkankach w stosunku do zapotrzebowania",
            "Zaburzenie rytmu serca, polegaj\196\133ce na szybkiej i nieskoordynowanej pracy kom\195\179r serca"
          },
          true_ = 2
        },
        {
          question = "Jak sprawdzisz poziom cukru we krwi u poszkodowanego?",
          odp = {
            "Aplikuj\196\133c kaniule",
            "Pod\197\130\196\133czaj\196\133c poszkodowanego do AED",
            "Za pomoc\196\133 glukometru"
          },
          true_ = 3
        }
      })[math.random(1, #{
        {
          question = "U poszkodowanego wyst\196\153puje z\197\130amanie zamkni\196\153te prawej r\196\153ki, czego u\197\188yjesz do usztywnienia?",
          odp = {
            "Szyny krammera 100 cm",
            "Banda\197\188y oraz gazy",
            "Szyny krammera 50 cm"
          },
          true_ = 3
        },
        {
          question = "U poszkodowanego wyst\196\153puje z\197\130amanie otwarte lewej nogi, czego u\197\188yjesz do usztywnienia?",
          odp = {
            "Torby medycznej",
            "Szyny krammera 100 cm",
            "Ko\197\130nierza ortopedycznego"
          },
          true_ = 2
        },
        {
          question = "Osoba poszkodowana ma rozci\196\153ty \197\130uk brwiowy, z jakich przedmiot\195\179w wykonasz opatrunek?",
          odp = {
            "Gaza ja\197\130owa, codofix",
            "Szyna krammera, ko\197\130nierz ortopedyczny",
            "Gaza ja\197\130owa, banda\197\188e elastyczne"
          },
          true_ = 1
        },
        {
          question = "Z nosa poszkodowanego leci krew, jakiego przedmiotu u\197\188yjesz do zatamowania krwawienia?",
          odp = {
            "Gaza ja\197\130owa",
            "Banda\197\188",
            "Tamponada"
          },
          true_ = 3
        },
        {
          question = "Poszkodowany zosta\197\130 d\197\186gni\196\153ty no\197\188em w lewe udo, czego NIE mo\197\188esz wykona\196\135 na miejscu zdarzenia?",
          odp = {
            "Wyci\196\133gn\196\133\196\135 przedmiot",
            "Stabilizowa\196\135 przedmiot",
            "Za\197\130o\197\188y\196\135 staze"
          },
          true_ = 1
        },
        {
          question = "Poszkodowany ma brak pulsu oraz oddechu, ile wykonasz ucisk\195\179w oraz wdech\195\179w?",
          odp = {
            "20 ucisk\195\179w 2 wdechy",
            "15 ucisk\195\179w 3 wdechy",
            "30 ucisk\195\179w 2 wdechy"
          },
          true_ = 3
        },
        {
          question = "Poszkodowany zosta\197\130 postrzelony w lewe kolano,za pomoc\196\133 jakich przedmiot\195\179w wykonasz opatrunek?",
          odp = {
            "Gazy ja\197\130owe, banda\197\188e",
            "Gazy ja\197\130owe, szyne kramera",
            "Gazy ja\197\130owe, szyna zimmera"
          },
          true_ = 1
        },
        {
          question = "Ile wykonasz ucisk\195\179w oraz wdech\195\179w u osoby wyci\196\133gni\196\153tej z wody?",
          odp = {
            "30 ucisk\195\179w 2 wdechy",
            "30 wdech\195\179w  5 ucisk\195\179w",
            "5 wdech\195\179w 30 ucisk\195\179w"
          },
          true_ = 3
        },
        {
          question = "Poszkodowany z\197\130ama\197\130 palca u lewej r\196\153ki, jakiego przedmiotu u\197\188yjesz do stabilizacji palca?",
          odp = {
            "Szyna kramera",
            "Szyna zimmera",
            "Szyna Falchera"
          },
          true_ = 2
        },
        {
          question = "Osoba poszkodowana dozna\197\130a poparzenia klatki piersiowej, jakiego opatrunku u\197\188yjesz?",
          odp = {
            "Opatrunek hydro\197\188elowy",
            "Opatrunek wodny",
            "Opatrunek Ch\197\130odny"
          },
          true_ = 1
        },
        {
          question = "Co zrobisz gdy poszkodowany ma uszkodzenie kr\196\153gos\197\130upa?",
          odp = {
            "Owine banda\197\188em",
            "Wsun\196\153 pod niego desk\196\153 ort. i zapinam pasy",
            "Za\197\130o\197\188e ko\197\130nierz ortopedyczny na kark poszkodowanego"
          },
          true_ = 2
        },
        {
          question = "Co zrobisz na wypadku z odci\196\153tym palcem poszkodowanego?",
          odp = {
            "Zszywam ig\197\130\196\133 i niciami",
            "Zabanda\197\188uje i dam szyn\196\153 zimmera",
            "Daje do worka strunowego"
          },
          true_ = 3
        },
        {
          question = "Kt\195\179re zdanie prawid\197\130owo opisuje uraz wytrzewienia brzucha?",
          odp = {
            "Nazwa ta fachowo opisuje przestrza\197\130 w okolicy podbrzusza",
            "\226\128\156Go\197\130e\226\128\157 jelita wydostaj\196\133ce si\196\153 na zewn\196\133trz jamy brzusznej",
            "G\197\130\196\153bokie poparzenia brzucha"
          },
          true_ = 2
        },
        {
          question = "Co robimy na wypadku ze z\197\130amaniem ko\197\155ci w klatce piersiowej?",
          odp = {
            "Owijamy klatk\196\153 piersiow\196\133 banda\197\188em",
            "Na wypadku nie mo\197\188emy nic z tym zrobi\196\135",
            "Zak\197\130adamy staze"
          },
          true_ = 2
        },
        {
          question = "Co robimy gdy cia\197\130o obce znajduje si\196\153 w oku.",
          odp = {
            "Zak\197\130adamy codofix",
            "Polewamy oczy kroplami",
            "Staramy si\196\153 stabilizowa\196\135 cia\197\130o obce oraz nak\197\130adamy banda\197\188 na oczy"
          },
          true_ = 3
        },
        {
          question = "Jakie badanie wykonasz w celu sprawdzenia pulsu i oddechu?",
          odp = {
            "Badanie urazowe",
            "Badanie ABC",
            "Badanie wst\196\153pne"
          },
          true_ = 2
        },
        {
          question = "Jakie badanie wykonasz w celu sprawdzenia czy s\196\133 jakie\197\155 urazy b\196\133d\197\186 z\197\130amania?",
          odp = {
            "Badanie okresowe",
            "Badanie ABC",
            "Badanie urazowe"
          },
          true_ = 3
        },
        {
          question = "Co aplikujesz w cia\197\130o poszkodowanego po wjechaniu z nim na noszach do karetki?",
          odp = {
            "Kropl\195\179wke",
            "Kaniule",
            "Szczepionk\196\153"
          },
          true_ = 2
        },
        {
          question = "Jaki przep\197\130yw tlenu powinna mie\196\135 tlenoterapia?",
          odp = {
            "10l/min",
            "20l/min",
            "15l/min"
          },
          true_ = 3
        },
        {
          question = "Czym wyci\196\133gniesz kul\196\153 z rany postrza\197\130owej?",
          odp = {
            "Szczypcami",
            "R\196\153koma",
            "Rozwieraczem do ran"
          },
          true_ = 1
        },
        {
          question = "Co pod\197\130\196\133czysz do kaniuli po wypadku?",
          odp = {
            "Antybiotyk",
            "Kropl\195\179wk\196\153",
            "Leki przeciwb\195\179lowe"
          },
          true_ = 2
        },
        {
          question = "Do czego s\197\130u\197\188y AED?",
          odp = {
            "Kontrolowania poziomu cukru w organizmie",
            "Przywracania prawid\197\130owej pracy serca",
            "Przywracania pracy serca"
          },
          true_ = 2
        },
        {
          question = "Czym rozcinamy odzie\197\188 poszkodowanego?",
          odp = {
            "No\197\188yczkami ratowniczymi",
            "No\197\188em",
            "No\197\188yczkami atraumatycznymi"
          },
          true_ = 3
        },
        {
          question = "Rana na wylot to\226\128\166?",
          odp = {
            "Postrza\197\130owa",
            "Przestrza\197\130owa",
            "Prze\197\155witowa"
          },
          true_ = 2
        },
        {
          question = "Co b\196\153dzie pierwsz\196\133 rzecz\196\133 jak\196\133 zrobisz przy zacz\196\153ciu pierwszej pomocy?",
          odp = {
            "Przechodz\196\153 do badania ABC",
            "Sprawdzam czy jest bezpiecznie",
            "Wykonuje RKO"
          },
          true_ = 2
        },
        {
          question = "Czym zabezpieczysz g\197\130ow\196\153 poszkodowanego na noszach?",
          odp = {
            "Nie trzeba zabezpiecza\196\135",
            "Pasami",
            "Klockami"
          },
          true_ = 3
        },
        {
          question = "Co to jest NZK?",
          odp = {
            "Nag\197\130e Zatrzymanie Kr\196\133\197\188enia",
            "Natychmiastowe Zatrzymanie Krtani",
            "Nag\197\130e Zapalenie Karku"
          },
          true_ = 1
        },
        {
          question = "Zaznacz prawid\197\130owe wyposa\197\188enie torby r1:",
          odp = {
            "No\197\188yczki atraumatyczne, gazy ja\197\130owe, banda\197\188e, codofix",
            "Gazy ja\197\130owe, gazy spr\196\153\197\188ynowe, no\197\188yczki atraumatyczne, banda\197\188e",
            "Codofix, szyny Zimmera, banda\197\188e, gazy ja\197\130owe"
          },
          true_ = 1
        },
        {
          question = "Zaznacz prawid\197\130owe wyposa\197\188enie torby r2:",
          odp = {
            "Kask stra\197\188acki, str\195\179j nurka, maska tlenowa",
            "Butle tlenowa, reduktor, maseczka tlenowa",
            "Szyny kramera, szyny zimmera, ko\197\130nierz ortopedyczny"
          },
          true_ = 2
        },
        {
          question = "Po kt\195\179rym cyklu RKO uznajemy jako zgon?",
          odp = {
            "Po drugim",
            "Po czwartym",
            "Po trzecim"
          },
          true_ = 2
        },
        {
          question = "Co trzeba zrobi\196\135 je\197\155li poszkodowany ma puls ale nie ma oddechu?",
          odp = {
            "Wykonujemy RKO 30:2",
            "Podajemy butle z tlenem",
            "Podajemy kropl\195\179wke"
          },
          true_ = 2
        },
        {
          question = "Co to jest rytm zatokowy?",
          odp = {
            "Prawid\197\130owa praca serca",
            "Zaburzenie pracy serca, polegaj\196\133ce na szybkiej i nieskoordynowanej pracy kom\195\179r serca",
            "P\197\130aski zapis na EKG"
          },
          true_ = 1
        },
        {
          question = "Do czego s\197\130u\197\188y skalpel? ",
          odp = {
            "Do nacinania sk\195\179ry",
            "Do przenoszenia poszkodowanego",
            "Do zatrzymania krwawienia z rany"
          },
          true_ = 1
        },
        {
          question = "Poszkodowany ma cia\197\130o obce w g\197\130owie co robisz? ",
          odp = {
            "Unieruchamiasz zwini\196\153tym banda\197\188em i nak\197\130adasz codofix",
            "Przyk\197\130adasz gaze ja\197\130ow\196\133 i owijasz banda\197\188em",
            "Owijasz samym banda\197\188em"
          },
          true_ = 1
        },
        {
          question = "Za pomoc\196\133 jakiego przyrz\196\133du wykonujesz 2 wdechy? ",
          odp = {
            "Woreczek AMBU",
            "Woreczek BAMBU",
            "Woreczek BUNARU"
          },
          true_ = 1
        },
        {
          question = "Kiedy zak\197\130adamy r\196\153kawiczki nitrylowe? ",
          odp = {
            "Przed wykonywanymi czynno\197\155ciami z poszkodowanym",
            "Po wykonanych czynno\197\155ciach z poszkodowanym",
            "Nie zak\197\130adamy wcale"
          },
          true_ = 1
        },
        {
          question = "U poszkodowanego wystepuj\196\153 rana z cia\197\130em obcym w brzuchu co wyci\196\133gasz z torby r1? ",
          odp = {
            "codofix oraz banda\197\188e",
            "gazy ja\197\130owe oraz codofix",
            "banda\197\188e oraz gazy ja\197\130owe"
          },
          true_ = 3
        },
        {
          question = "Co bardziej zagra\197\188a \197\188yciu poszkodowanemu?",
          odp = {
            "Cia\197\130o obce w klatce piersiowej",
            "Oparzenie prawego uda",
            "Krwotok z nosa"
          },
          true_ = 1
        },
        {
          question = "Co to jest hipoksja?",
          odp = {
            "Badanie polegaj\196\133ce na sprawdzeniu ilo\197\155ci cukru we krwi",
            "Jest to niedotlenienie organizmu wynikaj\196\133cym z niedoboru tlenu w tkankach w stosunku do zapotrzebowania",
            "Zaburzenie rytmu serca, polegaj\196\133ce na szybkiej i nieskoordynowanej pracy kom\195\179r serca"
          },
          true_ = 2
        },
        {
          question = "Jak sprawdzisz poziom cukru we krwi u poszkodowanego?",
          odp = {
            "Aplikuj\196\133c kaniule",
            "Pod\197\130\196\133czaj\196\133c poszkodowanego do AED",
            "Za pomoc\196\133 glukometru"
          },
          true_ = 3
        }
      })])
    end
    self.questionNumber = 1
    self.idNPC = _ARG_1_
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    _UPVALUE0_.main = true
    showCursor(true)
  end
end)
function closeGui()
  removeEventHandler("onClientRender", root, window)
  removeEventHandler("onClientClick", root, click)
  _UPVALUE0_.main = false
  showCursor(false)
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
  self = {}
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
getResourceName(getThisResource(), true, 963351464)
return
