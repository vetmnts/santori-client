for _FORV_11_, _FORV_12_ in ipairs({
  {
    415.64,
    2535.56,
    19.15
  }
}) do
  text = createElement("text")
  setElementPosition(text, _FORV_12_[1], _FORV_12_[2], _FORV_12_[3])
  setElementData(text, "name", "Licencje lotnicze")
  addEventHandler("onClientMarkerHit", createMarker(_FORV_12_[1], _FORV_12_[2], _FORV_12_[3] - 0.9, "cylinder", 2, 246, 255, 0, 255), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ then
      textures = {
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        photo_icon = dxCreateTexture("img/photo_icon.png"),
        sparrow = dxCreateTexture("img/4.png")
      }
      questions_l = {
        {
          question = "Bezpo\197\155rednio przed wej\197\155ciem do kabiny statku powietrznego pilot sprawdza",
          odp = {
            "Stan techniczny statku powietrznego wykonuj\196\133c przegl\196\133d przedlotowy.",
            "Warunki meteorologiczne do planowanego lotu.",
            "Zgodno\197\155\196\135 listy pasa\197\188er\195\179w."
          },
          true_ = 1,
          info = false
        },
        {
          question = "Co mierzy pr\196\153dko\197\155ciomierz jako lotniczy przyrz\196\133d pok\197\130adowy",
          odp = {
            "Pr\196\153dko\197\155\196\135 lotu samolotu wzgl\196\153dem otaczaj\196\133cych mas powietrza",
            "Wysoko\197\155\196\135 lotu",
            "Ci\197\155nienie lotniska"
          },
          true_ = 1,
          info = false
        },
        {
          question = "Ile trwa\197\130 pierwszy lot na swiecie",
          odp = {
            "15 minut",
            "5 minut",
            "12 sekund"
          },
          true_ = 3,
          info = false
        },
        {
          question = "W jakim kierunku lecisz z LS do LV",
          odp = {
            "Zachodu",
            "P\195\179\197\130nocy",
            "Po\197\130udnia"
          },
          true_ = 2,
          info = false
        },
        {
          question = "Jak nazywa sie ster w samolocie",
          odp = {
            "Wolant",
            "Kierownica",
            "Joystick"
          },
          true_ = 1,
          info = false
        },
        {
          question = "Co oznacza termin 'Przyci\196\133gniecie'",
          odp = {
            "Zbyt du\197\188a pr\196\153dko\197\155\196\135",
            "Nag\197\130em spadek pr\196\153dkosci i utraty si\197\130y",
            "Zbyt wielkie pochylenie samolotu"
          },
          true_ = 2,
          info = false
        },
        {
          question = "Hamowanie ko\197\130ami podwozia jest",
          odp = {
            "Hydrauliczne lub pneumatyczne",
            "Pneumatyczne",
            "Elektryczne"
          },
          true_ = 1,
          info = false
        },
        {
          question = "Kad\197\130ub konstrukcji p\195\179\197\130skorupowej sk\197\130ada si\196\153 z",
          odp = {
            "Wr\196\153gi, pod\197\130u\197\188nice, pokrycie",
            "D\197\186wigary, wr\196\153gi, pokrycie",
            "Wr\196\153gi, pod\197\130u\197\188nice, d\197\186wigary"
          },
          true_ = 1,
          info = false
        },
        {
          question = "Lotki s\197\130u\197\188\196\133 do",
          odp = {
            "Sterowalno\197\155ci kierunkowej",
            "Utrzymanie stateczno\197\155ci samolotu",
            "Sterowania przechyleniami samolotu wzgl\196\153dem jego osi pod\197\130u\197\188nej"
          },
          true_ = 3,
          info = false
        },
        {
          question = "Alternator zbudowany jest z",
          odp = {
            "Przetwornicy tr\195\179jfazowej",
            "Pr\196\133dnicy pr\196\133du przemiennego z uk\197\130adem prostowniczym",
            "Pr\196\133dnicy pr\196\133du sta\197\130ego"
          },
          true_ = 2,
          info = false
        }
      }
      questions_h = {
        {
          question = "Jaki manewr mo\197\188na wykona\196\135 \197\155mig\197\130owcem, a kt\195\179rego nie da sie wykona\196\135 samolotem?",
          odp = {
            "Zawis",
            "Wznoszenie",
            "Przechyl"
          },
          true_ = 1,
          info = false
        },
        {
          question = "Kogo uwa\197\188a si\196\153 powszechnie za tw\195\179rce \197\155mig\197\130owca?",
          odp = {
            "Nowackiego",
            "Sikorskiego",
            "Kowalskiego"
          },
          true_ = 2,
          info = false
        },
        {
          question = "Czy sparrow mo\197\188e l\196\133dowa\196\135 na wodzie?",
          odp = {
            "Tak",
            "Nie",
            "Tak, ale zale\197\188y od warunk\195\179w pogodowych"
          },
          true_ = 2,
          info = false
        },
        {
          question = "Ilu osobowy jest maverick?",
          odp = {
            "2",
            "5",
            "4"
          },
          true_ = 3,
          info = false
        },
        {
          question = "Czy pilot \197\155mig\197\130owca ratunkowego jest zobowi\196\133zany komunikowa\196\135 si\196\153 z wie\197\188\196\133?",
          odp = {
            "Tak, zawsze",
            "Zale\197\188y",
            "Nie"
          },
          true_ = 1,
          info = false
        },
        {
          question = "Jak nazywa si\196\153 helikopter na powy\197\188szym zdj\196\153ciu?",
          odp = {
            "Seasparrow",
            "News Chopper",
            "Sparrow"
          },
          true_ = 3,
          info = false,
          img = textures.sparrow
        },
        {
          question = "W kt\195\179rym roku odby\197\130 si\196\153 pierwszy lot \197\155mig\197\130owca?",
          odp = {
            "1907",
            "1945",
            "1950"
          },
          true_ = 1,
          info = false
        },
        {
          question = "Jaka jest nazwa najwi\196\153ksz\196\153go \197\155mig\197\130owca, kt\195\179ry kiedykolwiek wni\195\179s\197\130 si\196\153 w powietrze?",
          odp = {
            "Mi-14",
            "Mi-12",
            "Mi-10"
          },
          true_ = 2,
          info = false
        },
        {
          question = "Kt\195\179ra z poni\197\188szych maszyn w GTA SA jest \197\155mig\197\130owcem?",
          odp = {
            "Leviathan",
            "Dodo",
            "Perennial"
          },
          true_ = 1,
          info = false
        },
        {
          question = "W realnym \197\155wiecie odpowiednikiem mavericka jest",
          odp = {
            "Bell 206",
            "Eurocopter EC135",
            "BK 117"
          },
          true_ = 1,
          info = false
        }
      }
      addEventHandler("onClientRender", root, window)
      _UPVALUE0_.mainL = true
      showCursor(true)
    end
  end)
end
for _FORV_11_, _FORV_12_ in ipairs({
  {
    1206.36,
    -1800.32,
    16.61
  },
  {
    1209.76,
    -1800.34,
    16.6
  },
  {
    1213.46,
    -1800.28,
    16.6
  },
  {
    1224.07,
    -1798.29,
    16.6
  },
  {
    1227.9,
    -1798.29,
    16.6
  },
  {
    1231.65,
    -1798.26,
    16.6
  }
}) do
  text = createElement("text")
  setElementPosition(text, _FORV_12_[1], _FORV_12_[2], _FORV_12_[3])
  setElementData(text, "name", "Egzamin na prawo jazdy")
  addEventHandler("onClientMarkerHit", createMarker(_FORV_12_[1], _FORV_12_[2], _FORV_12_[3] - 0.9, "cylinder", 1.2, 246, 255, 0, 255), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ then
      textures = {
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        manekin = dxCreateTexture("img/1.png"),
        znaki = dxCreateTexture("img/2.png"),
        photo_icon = dxCreateTexture("img/photo_icon.png"),
        znak70wz = dxCreateTexture("img/3.png")
      }
      questions_b = {
        {
          question = "Czy poduszka powietrzna spe\197\130ni swoj\196\133 funkcj\196\153 w czasie wypadku, je\197\188eli nie zapniesz\npas\195\179w bezpiecze\197\132stwa?",
          odp = {"Tak", "Nie"},
          true_ = 2,
          info = "tak/nie"
        },
        {
          question = "Czy cofaj\196\133c masz obowi\196\133zek zachowa\196\135 szczeg\195\179ln\196\133 ostro\197\188no\197\155\196\135?",
          odp = {"Tak", "Nie"},
          true_ = 1,
          info = "tak/nie"
        },
        {
          question = "Czy mo\197\188esz nagle zawr\195\179ci\196\135 na autostradzie?",
          odp = {"Tak", "Nie"},
          true_ = 2,
          info = "tak/nie"
        },
        {
          question = "Czy wolno zatrzyma\196\135 Ci pojazd, tu\197\188 za przejazdem kolejowym?",
          odp = {"Tak", "Nie"},
          true_ = 2,
          info = "tak/nie"
        },
        {
          question = "Czy tylko kierowca jest zobowi\196\133zany do zapi\196\153cia pas\195\179w bezpiecze\197\132stwa podczas jazdy?",
          odp = {"Tak", "Nie"},
          true_ = 2,
          info = "tak/nie"
        },
        {
          question = "Kt\195\179ry z wymienionych sposob\195\179w przewo\197\188enia ga\197\155nicy w samochodzie osobowym jest w\197\130a\197\155ciwy?",
          odp = {
            "Ga\197\155nica umieszczona jest na tylnej p\195\179\197\130ce.",
            "Ga\197\155nica umieszczona jest lu\197\186no mi\196\153dzy siedzeniami.",
            "Ga\197\155nica zamocowana pod fotelem pasa\197\188era."
          },
          true_ = 3,
          info = false,
          img = false
        },
        {
          question = "Jaki jest cel stosowania uk\197\130adu ASR w samochodzie osobowym?",
          odp = {
            "Przeciwdzia\197\130anie po\197\155lizgowi podczas hamowania silnikiem.",
            "Zapobieganie blokowaniu k\195\179\197\130 hamowanych.",
            "Przeciwdzia\197\130anie po\197\155lizgowi k\195\179\197\130 podczas ruszania."
          },
          true_ = 3,
          info = false,
          img = false
        },
        {
          question = "Jak d\197\130ugo nale\197\188y prowadzi\196\135 uciskanie klatki piersiowej i sztuczne oddychanie u osoby z nag\197\130ym\nzatrzymaniem kr\196\133\197\188enia?",
          odp = {
            "Do momentu przyjazdu zespo\197\130u ratownictwa medycznego.",
            "Przez 15 minut.",
            "Dop\195\179ki cia\197\130o poszkodowanego zachowuje w\197\130a\197\155ciw\196\133 ciep\197\130ot\196\153."
          },
          true_ = 1,
          info = false,
          img = textures.manekin
        },
        {
          question = "Kierujesz pojazdem w czasie deszczu. Kt\195\179r\196\133 z wymienionych czynno\197\155ci powiniene\197\155 przede wszystkim\nwykona\196\135, by jecha\196\135 bezpieczniej?",
          odp = {
            "Jecha\196\135 w koleinach.",
            "Zmniejszy\196\135 pr\196\153dko\197\155\196\135.",
            "Wy\197\130\196\133czy\196\135 system kontroli trakcji."
          },
          true_ = 2,
          info = false,
          img = false
        },
        {
          question = "Jaki jest cel stosowania uk\197\130adu ESP w samochodzie osobowym?",
          odp = {
            "Przeciwdzia\197\130anie po\197\155lizgowi k\195\179\197\130 podczas hamowania silnikiem.",
            "Zapobieganie blokowaniu k\195\179\197\130 hamowanych.",
            "Stabilizowanie ruchu pojazdu podczas jazdy po \197\130uku drogi."
          },
          true_ = 3,
          info = false,
          img = false
        },
        {
          question = "Kierujesz samochodem. Jak powiniene\197\155 si\196\153 zachowa\196\135 w czasie wymijania pojazdu noc\196\133?",
          odp = {
            "Patrze\196\135 w prawo od \197\186r\195\179d\197\130a \197\155wiat\197\130a pojazdu nadje\197\188d\197\188aj\196\133cego z przeciwka i wypatrywa\196\135 tam\newentualnej przeszkody.",
            "Zmieni\196\135 \197\155wiat\197\130a mijania na drogowe.",
            "Patrze\196\135 prosto w reflektory pojazdu nadje\197\188d\197\188aj\196\133cego z przeciwka."
          },
          true_ = 1,
          info = false,
          img = false
        },
        {
          question = "Jeste\197\155 \197\155wiadkiem potr\196\133cenia pieszego. Jak powiniene\197\155 si\196\153 zachowa\196\135?",
          odp = {
            "Nie podejmowa\196\135 dzia\197\130a\197\132, gdy\197\188 pomocy musi udzieli\196\135 sprawca wypadku.",
            "Zatrzyma\196\135 si\196\153, wezwa\196\135 pomo\196\135 medyczn\196\133 i udzieli\196\135 pierwszej pomocy poszkodowanemu.",
            "Wezwa\196\135 pomoc drogow\196\133."
          },
          true_ = 2,
          info = false,
          img = false
        }
      }
      questions_a = {
        {
          question = "Czy mo\197\188esz nagle zawr\195\179ci\196\135 na autostradzie?",
          odp = {"Tak", "Nie"},
          true_ = 2,
          info = "tak/nie"
        },
        {
          question = "Czy wolno zatrzyma\196\135 Ci pojazd, tu\197\188 za przejazdem kolejowym?",
          odp = {"Tak", "Nie"},
          true_ = 2,
          info = "tak/nie"
        },
        {
          question = "Kt\195\179ry z pokazanych znak\195\179w zabrania przekraczania pr\196\153dko\197\155ci 40 km/h?",
          odp = {
            "",
            "",
            ""
          },
          true_ = 3,
          info = false,
          img = textures.znaki
        },
        {
          question = "Kt\195\179ry z element\195\179w jest obowi\196\133zkowym wyposa\197\188eniem motocykla?",
          odp = {
            "Sygna\197\130 d\197\186wi\196\153kowy.",
            "Ga\197\155nica.",
            "Apteczka dora\197\186nej pomocy."
          },
          true_ = 1,
          info = false
        },
        {
          question = "Kt\195\179re z wymienionych \197\155wiate\197\130 odblaskowych stanowi obowi\196\133zkowe wyposa\197\188enie motocykla?",
          odp = {
            "Tylne tr\195\179jk\196\133tne.",
            "Tylne inne ni\197\188 tr\195\179jk\196\133tne.",
            "Boczne."
          },
          true_ = 2,
          info = false
        },
        {
          question = "Kt\195\179ry z element\195\179w jest obowi\196\133zkowym wyposa\197\188eniem motocykla jedno\197\155ladowego, kt\195\179rego pr\196\153dko\197\155\196\135\nmaksymalna jest wy\197\188sza ni\197\188 100 km/h?",
          odp = {
            "Tr\195\179jk\196\133t ostrzegawczy.",
            "Ga\197\155nica.",
            "Co najmniej dwa lusterka zewn\196\153trzne."
          },
          true_ = 3,
          info = false
        },
        {
          question = "Czy obowi\196\133zkowym wyposa\197\188eniem motocykla s\196\133 \197\155wiat\197\130a awaryjne?",
          odp = {
            "Tak.",
            "Nie, jest to zabronione.",
            "Nie, ale jest to dopuszczalne."
          },
          true_ = 3,
          info = false
        },
        {
          question = "Kt\195\179ry z wymienionych stroj\195\179w zapewnia najskuteczniejsz\196\133 ochron\196\153 kieruj\196\133cego w przypadku\nprzewr\195\179cenia si\196\153 motocykla?",
          odp = {
            "Spodnie materia\197\130owe, koszula z kr\195\179tkim r\196\153kawem, sanda\197\130y.",
            "D\197\188insowe spodnie i koszula z d\197\130ugim r\196\153kawem, buty sportowe.",
            "Kombinezon z ochraniaczami, buty z cholewk\196\133, r\196\153kawice."
          },
          true_ = 3,
          info = false
        },
        {
          question = "Czy jad\196\133c motocyklem masz obowi\196\133zek u\197\188ywa\196\135 kasku ochronnego?",
          odp = {
            "Tak, jad\196\133c dowolnym motocyklem.",
            "Tak, z wyj\196\133tkiem jazdy motocyklem fabrycznie wyposa\197\188onym w pasy bezpiecze\197\132stwa.",
            "Nie, jad\196\133c dowolnym motocyklem z bocznym w\195\179zkiem."
          },
          true_ = 2,
          info = false
        },
        {
          question = "Co w zasadniczy spos\195\179b decyduje o d\197\130ugo\197\155ci drogi hamowania motocykla?",
          odp = {
            "Rodzaj nawierzchni, po kt\195\179rej porusza si\196\153 pojazd.",
            "System kontroli trakcji.",
            "Czas reakcji kieruj\196\133cego."
          },
          true_ = 1,
          info = false
        },
        {
          question = "Jak, w przybli\197\188eniu, wzrasta d\197\130ugo\197\155\196\135 drogi hamowania motocykla przy dwukrotnie wi\196\153kszej pr\196\153dko\197\155ci?",
          odp = {
            "Dwukrotnie.",
            "Trzykrotnie.",
            "Czterokrotnie."
          },
          true_ = 3,
          info = false
        },
        {
          question = "W kt\195\179rym momencie, kieruj\196\133c motocyklem, powiniene\197\155 rozpocz\196\133\196\135 hamowanie zamierzaj\196\133c pokona\196\135\nostry \197\130uk drogi?",
          odp = {
            "Wje\197\188d\197\188aj\196\133c w \197\130uk.",
            "Odpowiednio wcze\197\155nie, tak aby unikn\196\133\196\135 hamowania na \197\130uku drogi.",
            "Wyje\197\188d\197\188aj\196\133c z \197\130uku."
          },
          true_ = 2,
          info = false
        }
      }
      questions_c = {
        {
          question = "Czy kieruj\196\133cy, widz\196\133c zbli\197\188aj\196\133cy si\196\153 pojazd uprzywilejowany jest\nzobowi\196\133zany u\197\130atwi\196\135 mu przejazd?",
          odp = {"Tak", "Nie"},
          true_ = 1,
          info = "tak/nie"
        },
        {
          question = "Czy masz prawo zabezpieczy\196\135 miejsce wypadku do kt\195\179rego dojecha\197\130e\197\155, ustawiaj\196\133c odpowiednio\nswoj\196\133 ci\196\153\197\188ar\195\179wk\196\153 i w\197\130\196\133czaj\196\133c \197\155wiat\197\130a awaryjne?",
          odp = {"Tak", "Nie"},
          true_ = 1,
          info = "tak/nie"
        },
        {
          question = "Czy mo\197\188esz nagle zawr\195\179ci\196\135 na autostradzie?",
          odp = {"Tak", "Nie"},
          true_ = 2,
          info = "tak/nie"
        },
        {
          question = "Czy wolno zatrzyma\196\135 Ci pojazd, tu\197\188 za przejazdem kolejowym?",
          odp = {"Tak", "Nie"},
          true_ = 2,
          info = "tak/nie"
        },
        {
          question = "Kierujesz samochodem ci\196\153\197\188arowym. Kt\195\179ry z wymienionych czynnik\195\179w jeste\197\155 zobowi\196\133zany uwzgl\196\153dni\196\135\naby zachowa\196\135 bezpieczny odst\196\153p od poprzedzaj\196\133cego pojazdu?",
          odp = {
            "Pr\196\153dko\197\155\196\135 pojazd\195\179w.",
            "Moc silnika.",
            "Szeroko\197\155\196\135 pojazd\195\179w."
          },
          true_ = 1,
          info = false
        },
        {
          question = "Czy kieruj\196\133c samochodem ci\196\153\197\188arowym o dopuszczalnej masie ca\197\130kowitej powy\197\188ej 3,5 t\nna obszarze zabudowanym, mo\197\188esz jecha\196\135 z pr\196\153dko\197\155ci\196\133 70 km/h na drodze za tym znakiem?",
          odp = {
            "Tak.",
            "Nie.",
            "Tak, ale tylko w godzinach od 23.00 do 5.00."
          },
          true_ = 2,
          info = false,
          img = textures.znak70wz
        },
        {
          question = "Jaka jest maksymalna dopuszczalna wysoko\197\155\196\135 samochodu ci\196\153\197\188arowego z \197\130adunkiem?",
          odp = {
            "3,5 m.",
            "4,5 m.",
            "4 m."
          },
          true_ = 3,
          info = false
        },
        {
          question = [[
Jaki jest maksymalny czas pracy kierowcy w danej dobie, w przypadku gdy praca
jest wykonywana w porze nocnej?]],
          odp = {
            "8 godzin.",
            "10 godzin.",
            "12 godzin."
          },
          true_ = 2,
          info = false
        },
        {
          question = "Do jakiego rodzaju czynno\197\155ci kierowcy, zalicza si\196\153 wymiana ko\197\130a w poje\197\186dzie?",
          odp = {
            "Inna praca.",
            "Okres gotowo\197\155ci.",
            "Przerwa w pracy."
          },
          true_ = 1,
          info = false
        },
        {
          question = "Jakie czynniki mog\196\133 ogranicza\196\135 pole widzenia kierowcy samochodu ci\196\153\197\188arowego?",
          odp = {
            "W\197\130a\197\155ciwy spos\195\179b ustawienia kolumny kierowniczej.",
            "\197\154wiec\196\133ce diody z imieniem kierowcy umieszczone na przedniej szybie.",
            "Reklamy umieszczone na bokach pojazdu."
          },
          true_ = 2,
          info = false
        }
      }
      addEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = true
      showCursor(true)
    end
  end)
end
function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("O\197\155rodek szkolenia kierowc\195\179w", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 125 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 25 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    xY = 0
    for _FORV_7_ = 1, 6 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_ + 80 / _UPVALUE2_ * (xY - 1), 820 / _UPVALUE2_, 74 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(20, 20, 20, 80), false)
    end
    for _FORV_10_, _FORV_11_ in ipairs({
      {
        "A",
        50000,
        tonumber(getElementData(localPlayer, "player:elementDat").license_A)
      },
      {
        "B",
        10000,
        tonumber(getElementData(localPlayer, "player:elementDat").license_B)
      },
      {
        "C",
        70000,
        tonumber(getElementData(localPlayer, "player:elementDat").license_C)
      }
    }) do
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_ + 80 / _UPVALUE2_ * (0 + 1 - 1), 820 / _UPVALUE2_, 74 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(20, 20, 20, 200), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 32 / _UPVALUE2_, _UPVALUE1_.y + 77 / _UPVALUE2_ + 80 / _UPVALUE2_ * (0 + 1 - 1), 70 / _UPVALUE2_, 70 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 230))
      dxDrawText(_FORV_11_[1], _UPVALUE1_.x + 56 / _UPVALUE2_, _UPVALUE1_.y + 20 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal30"), "left", "center", false, false, false, false, false)
      dxDrawText("#00ad23" .. przecinek(_FORV_11_[2]) .. " #ffffffPLN", _UPVALUE1_.x + 110 / _UPVALUE2_, _UPVALUE1_.y + 60 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(252, 186, 3, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawText("Kategoria #fcba03" .. _FORV_11_[1], _UPVALUE1_.x + 110 / _UPVALUE2_, _UPVALUE1_.y - 5 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      if _FORV_11_[3] == 1 then
        dxDrawText("#00ff37Zaliczone", _UPVALUE1_.x, _UPVALUE1_.y + 25 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 470 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
      else
        exports.ST_buttons:dxCreateButton("ROZPOCZNIJ", _UPVALUE1_.x + 680 / _UPVALUE2_, _UPVALUE1_.y + 87 / _UPVALUE2_ + 80 / _UPVALUE2_ * (0 + 1 - 1), 160 / _UPVALUE2_, 50 / _UPVALUE2_, 255, 1)
      end
    end
  end
  if _UPVALUE0_.mainL == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("Licencja lotnicze", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 125 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 25 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    xY = 0
    for _FORV_7_ = 1, 6 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_ + 80 / _UPVALUE2_ * (xY - 1), 820 / _UPVALUE2_, 74 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(20, 20, 20, 80), false)
    end
    for _FORV_10_, _FORV_11_ in ipairs({
      {
        "L",
        200000,
        tonumber(getElementData(localPlayer, "player:elementDat").license_L)
      },
      {
        "H",
        300000,
        tonumber(getElementData(localPlayer, "player:elementDat").license_H)
      }
    }) do
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_ + 80 / _UPVALUE2_ * (0 + 1 - 1), 820 / _UPVALUE2_, 74 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(20, 20, 20, 200), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 32 / _UPVALUE2_, _UPVALUE1_.y + 77 / _UPVALUE2_ + 80 / _UPVALUE2_ * (0 + 1 - 1), 70 / _UPVALUE2_, 70 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 230))
      dxDrawText(_FORV_11_[1], _UPVALUE1_.x + 56 / _UPVALUE2_, _UPVALUE1_.y + 20 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal30"), "left", "center", false, false, false, false, false)
      dxDrawText("#00ad23" .. przecinek(_FORV_11_[2]) .. " #ffffffPLN", _UPVALUE1_.x + 110 / _UPVALUE2_, _UPVALUE1_.y + 60 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(252, 186, 3, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawText("Licencja #fcba03" .. _FORV_11_[1], _UPVALUE1_.x + 110 / _UPVALUE2_, _UPVALUE1_.y - 5 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      if _FORV_11_[3] == 1 then
        dxDrawText("#00ff37Zaliczone", _UPVALUE1_.x, _UPVALUE1_.y + 25 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 470 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
      else
        exports.ST_buttons:dxCreateButton("ROZPOCZNIJ", _UPVALUE1_.x + 680 / _UPVALUE2_, _UPVALUE1_.y + 87 / _UPVALUE2_ + 80 / _UPVALUE2_ * (0 + 1 - 1), 160 / _UPVALUE2_, 50 / _UPVALUE2_, 255, 1)
      end
    end
  end
  if _UPVALUE0_.licences == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("Egzamin kat. #fcba03" .. _UPVALUE3_.selectCategories .. "", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 125 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_, 350 / _UPVALUE2_, 200 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(25, 25, 25, 230))
    if _UPVALUE3_.questionsTable[_UPVALUE3_.questionNumber].img then
      dxDrawImage(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_, 350 / _UPVALUE2_, 200 / _UPVALUE2_, _UPVALUE3_.questionsTable[_UPVALUE3_.questionNumber].img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 120 / _UPVALUE2_, 100 / _UPVALUE2_, 100 / _UPVALUE2_, textures.photo_icon, 0, 0, 0, tocolor(255, 255, 255, 100), false)
    end
    dxDrawText("Pytanie #fcba03" .. _UPVALUE3_.questionNumber .. " #ffffff/ #fcba03" .. #_UPVALUE3_.questionsTable, _UPVALUE1_.x + 400 / _UPVALUE2_, _UPVALUE1_.y - 20 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE3_.questionsTable) do
      if 0 + 1 > 7 then
      end
      if _UPVALUE3_.questionNumber == _FORV_9_ then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 399 / _UPVALUE2_ + 35 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 109 / _UPVALUE2_ + 35 / _UPVALUE2_ * (1 + 1 - 1), 32 / _UPVALUE2_, 32 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(100, 100, 100, 255))
      end
      dxDrawRoundedRectangle(_UPVALUE1_.x + 400 / _UPVALUE2_ + 35 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 110 / _UPVALUE2_ + 35 / _UPVALUE2_ * (1 + 1 - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(25, 25, 25, 255))
      dxDrawText(_FORV_9_, _UPVALUE1_.x + 469 / _UPVALUE2_ + 70 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 50 / _UPVALUE2_ + 70 / _UPVALUE2_ * (1 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    dxDrawText(_UPVALUE3_.questionsTable[_UPVALUE3_.questionNumber].question, _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 300 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "top", false, false, false, true, false)
    for _FORV_10_, _FORV_11_ in ipairs(_UPVALUE3_.questionsTable[_UPVALUE3_.questionNumber].odp) do
      if _UPVALUE3_.selectQuestion == _FORV_10_ then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 28 / _UPVALUE2_, _UPVALUE1_.y + 378 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), 54 / _UPVALUE2_, 54 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(100, 100, 100, 255))
      end
      if _UPVALUE3_.questionsTable[_UPVALUE3_.questionNumber].info == "tak/nie" then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 380 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), 50 / _UPVALUE2_, 50 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(25, 25, 25, 230))
        dxDrawText(_FORV_11_, _UPVALUE1_.x - 250 / _UPVALUE2_, _UPVALUE1_.y + 390 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, true, false)
      else
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
    end
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 25 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if _UPVALUE3_.selectQuestion then
      if _UPVALUE3_.questionNumber >= tonumber(#_UPVALUE3_.questionsTable) then
        exports.ST_buttons:dxCreateButton("Zako\197\132cz egzamin", _UPVALUE1_.x + 680 / _UPVALUE2_, _UPVALUE1_.y + 500 / _UPVALUE2_, 170 / _UPVALUE2_, 50 / _UPVALUE2_, 255, 1)
      else
        exports.ST_buttons:dxCreateButton("Nast\196\153pne pytanie", _UPVALUE1_.x + 680 / _UPVALUE2_, _UPVALUE1_.y + 500 / _UPVALUE2_, 170 / _UPVALUE2_, 50 / _UPVALUE2_, 255, 1)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.main == true then
      for _FORV_8_, _FORV_9_ in ipairs({
        {
          "A",
          50000,
          tonumber(getElementData(localPlayer, "player:elementDat").license_A)
        },
        {
          "B",
          10000,
          tonumber(getElementData(localPlayer, "player:elementDat").license_B)
        },
        {
          "C",
          70000,
          tonumber(getElementData(localPlayer, "player:elementDat").license_C)
        }
      }) do
        if isMouseIn(_UPVALUE2_.x + 680 / _UPVALUE1_, _UPVALUE2_.y + 87 / _UPVALUE1_ + 80 / _UPVALUE1_ * (0 + 1 - 1), 160 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.main == true and _FORV_9_[3] == 0 then
          if getElementData(localPlayer, "player:moneyMNn") < _FORV_9_[2] then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
            return
          end
          triggerServerEvent("ev", resourceRoot, "takeMoney", localPlayer, _FORV_9_[2])
          _UPVALUE3_.selectCategories = _FORV_9_[1]
          _UPVALUE0_.main = false
          _UPVALUE0_.mainL = false
          _UPVALUE0_.licences = true
          _UPVALUE3_.questionNumber = 1
          _UPVALUE3_.punkty = 0
          if _UPVALUE3_.selectCategories == "A" then
            _UPVALUE3_.questionsTable = questions_a
          elseif _UPVALUE3_.selectCategories == "B" then
            _UPVALUE3_.questionsTable = questions_b
          elseif _UPVALUE3_.selectCategories == "C" then
            _UPVALUE3_.questionsTable = questions_c
          end
        end
      end
    end
    if _UPVALUE0_.mainL == true then
      for _FORV_8_, _FORV_9_ in ipairs({
        {
          "L",
          200000,
          tonumber(getElementData(localPlayer, "player:elementDat").license_L)
        },
        {
          "H",
          300000,
          tonumber(getElementData(localPlayer, "player:elementDat").license_H)
        }
      }) do
        if isMouseIn(_UPVALUE2_.x + 680 / _UPVALUE1_, _UPVALUE2_.y + 87 / _UPVALUE1_ + 80 / _UPVALUE1_ * (0 + 1 - 1), 160 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.mainL == true and _FORV_9_[3] == 0 then
          if getElementData(localPlayer, "player:moneyMNn") < _FORV_9_[2] then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
            return
          end
          triggerServerEvent("ev", resourceRoot, "takeMoney", localPlayer, _FORV_9_[2])
          _UPVALUE3_.selectCategories = _FORV_9_[1]
          _UPVALUE0_.main = false
          _UPVALUE0_.mainL = false
          _UPVALUE0_.licences = true
          _UPVALUE3_.questionNumber = 1
          _UPVALUE3_.punkty = 0
          if _UPVALUE3_.selectCategories == "L" then
            _UPVALUE3_.questionsTable = questions_l
          elseif _UPVALUE3_.selectCategories == "H" then
            _UPVALUE3_.questionsTable = questions_h
          end
        end
      end
    end
    if _UPVALUE0_.licences == true then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE3_.questionsTable[_UPVALUE3_.questionNumber].odp) do
        if isMouseIn(_UPVALUE2_.x + 30 / _UPVALUE1_, _UPVALUE2_.y + 380 / _UPVALUE1_ + 60 / _UPVALUE1_ * (0 + 1 - 1), 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
          _UPVALUE3_.selectQuestion = _FORV_6_
        end
      end
      if isMouseIn(_UPVALUE2_.x + 680 / _UPVALUE1_, _UPVALUE2_.y + 500 / _UPVALUE1_, 170 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE3_.selectQuestion then
        if _UPVALUE3_.selectQuestion == _UPVALUE3_.questionsTable[_UPVALUE3_.questionNumber].true_ then
          _UPVALUE3_.punkty = _UPVALUE3_.punkty + 1
        end
        if _UPVALUE3_.questionNumber >= tonumber(#_UPVALUE3_.questionsTable) then
          if _UPVALUE3_.selectCategories == "A" or _UPVALUE3_.selectCategories == "B" then
            if _UPVALUE3_.punkty >= 8 then
              exports.st_gui:showPlayerNotification("Tw\195\179j wynik egzaminu to " .. _UPVALUE3_.punkty .. " / " .. _UPVALUE3_.questionNumber .. [[

Gratulacje!]], "success")
              setTimer(function()
                exports.st_gui:showPlayerNotification("Za chwil\196\153 rozpoczniemy egzamin praktyczny", "info")
              end, 1000, 1)
              setTimer(function()
                triggerServerEvent("ev", resourceRoot, "createVeh", localPlayer, _UPVALUE0_.selectCategories)
                _UPVALUE0_ = {}
              end, 3000, 1)
            else
              exports.st_gui:showPlayerNotification("Tw\195\179j wynik egzaminu to " .. _UPVALUE3_.punkty .. " / " .. _UPVALUE3_.questionNumber .. "\nSpr\195\179buj jeszcze raz", "error")
            end
          elseif _UPVALUE3_.selectCategories == "L" or _UPVALUE3_.selectCategories == "H" or _UPVALUE3_.selectCategories == "C" then
            if _UPVALUE3_.punkty >= 7 then
              exports.st_gui:showPlayerNotification("Tw\195\179j wynik egzaminu to " .. _UPVALUE3_.punkty .. " / " .. _UPVALUE3_.questionNumber .. [[

Gratulacje!]], "success")
              setTimer(function()
                exports.st_gui:showPlayerNotification("Za chwil\196\153 rozpoczniemy egzamin praktyczny", "info")
              end, 1000, 1)
              setTimer(function()
                triggerServerEvent("ev", resourceRoot, "createVeh", localPlayer, _UPVALUE0_.selectCategories)
                _UPVALUE0_ = {}
              end, 3000, 1)
            else
              exports.st_gui:showPlayerNotification("Tw\195\179j wynik egzaminu to " .. _UPVALUE3_.punkty .. " / " .. _UPVALUE3_.questionNumber .. "\nSpr\195\179buj jeszcze raz", "error")
            end
          end
          removeEventHandler("onClientRender", root, window)
          _UPVALUE0_.main = false
          _UPVALUE0_.mainL = false
          _UPVALUE0_.licences = false
          showCursor(false)
          for _FORV_6_, _FORV_7_ in pairs(textures) do
            if isElement(_FORV_7_) then
              destroyElement(_FORV_7_)
            end
          end
          textures = {}
        else
          _UPVALUE3_.questionNumber = _UPVALUE3_.questionNumber + 1
        end
        _UPVALUE3_.selectQuestion = false
      end
    end
    if isMouseIn(_UPVALUE2_.x + _UPVALUE2_.w - 61 / _UPVALUE1_, _UPVALUE2_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) and (_UPVALUE0_.main == true or _UPVALUE0_.mainL == true) then
      removeEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = false
      _UPVALUE0_.licences = false
      _UPVALUE0_.mainL = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      _UPVALUE3_ = {}
    elseif isMouseIn(_UPVALUE2_.x + _UPVALUE2_.w - 61 / _UPVALUE1_, _UPVALUE2_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) and _UPVALUE0_.licences == true then
      removeEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = false
      _UPVALUE0_.licences = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      _UPVALUE3_ = {}
      exports.st_gui:showPlayerNotification("Zako\197\132czono egzamin", "info")
    end
  end
end)
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
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "startVeh" then
    licence = {}
    licence.target = 1
    licence.category = _ARG_1_
    nextMarker()
  end
end)
function nextMarker()
  if licence.category == "L" or licence.category == "H" then
    licence.marker = createMarker(_UPVALUE0_[licence.category][licence.target][1], _UPVALUE0_[licence.category][licence.target][2], _UPVALUE0_[licence.category][licence.target][3], "ring", 3.5, 255, 132, 0, 255)
  else
    licence.marker = createMarker(_UPVALUE0_[licence.category][licence.target][1], _UPVALUE0_[licence.category][licence.target][2], _UPVALUE0_[licence.category][licence.target][3] - 0.9, "cylinder", 3, 255, 132, 0, 255)
  end
  licence.blip = createBlip(_UPVALUE0_[licence.category][licence.target][1], _UPVALUE0_[licence.category][licence.target][2], _UPVALUE0_[licence.category][licence.target][3], 41)
  if _UPVALUE0_[licence.category][licence.target + 1] then
    e = _UPVALUE0_[licence.category][licence.target + 1]
    setMarkerTarget(licence.marker, e[1], e[2], e[3])
  end
  addEventHandler("onClientMarkerHit", licence.marker, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or _ARG_0_ ~= localPlayer then
      return
    end
    if licence.target < #_UPVALUE0_[licence.category] then
      licence.target = licence.target + 1
      endLicence(false)
      nextMarker()
    else
      exports.st_gui:showPlayerNotification("Gratulacje!\nZda\197\130e\197\155/a egzamin praktyczny na kat. " .. licence.category .. "", "success")
      endLicence(true)
    end
  end)
end
function endLicence(_ARG_0_)
  if isElement(licence.marker) then
    destroyElement(licence.marker)
  end
  if isElement(licence.blip) then
    destroyElement(licence.blip)
  end
  if _ARG_0_ == true then
    triggerServerEvent("ev", resourceRoot, "endLicence", localPlayer, licence.category)
    licence = {}
  end
end
getResourceName(getThisResource(), true, 24769596)
return
