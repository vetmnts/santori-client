function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true and trwaLadowanie == false then
      for _FORV_6_, _FORV_7_ in ipairs(table_categories) do
        if _FORV_6_ >= k2 and _FORV_6_ <= n2 and isMouseIn(windowPos.x + 32 / zoom, windowPos.y + 100 / zoom + 52 / zoom * (0 + 1 - 1), 200 / zoom, 50 / zoom) and windows.background == true then
          if selfCases.losowanie then
            return
          end
          if getTickCount() - lastTickCount > 400 then
            if windows.category == _FORV_7_.name then
              return
            end
            if isElement(ped) then
              destroyElement(ped)
              exports.ST_object_preview:destroyObjectPreview(myObject)
            end
            destroyEditBox()
            vehicles3D("destroy")
            windows.category = _FORV_7_.name
            if _FORV_7_.name == "KONTO" then
              ped = createPed(getElementModel(localPlayer), getCameraMatrix())
              myObject = exports.ST_object_preview:createObjectPreview(ped, -10, 0, 180, windowPos.x + 785 / zoom, windowPos.y + 150 / zoom, 272 / zoom, 360 / zoom, false, true)
            elseif _FORV_7_.name == "POLECANIE $" then
              table_promote = {}
              table_promote1 = {}
              trwaLadowanie = true
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tablePromoteLogs", localPlayer)
              k = 1
              n = 12
              m = 12
            elseif _FORV_7_.name == "SKRZYNIE" then
              texturesChest = {
                classicChest = dxCreateTexture("img/classicChest.png"),
                premiumChest = dxCreateTexture("img/premiumChest.png")
              }
            elseif _FORV_7_.name == "UMIEJ\196\152TNO\197\154CI" then
              windows.category = "UMIEJ\196\152TNO\197\154CI"
              for _FORV_13_ in pairs(texturesSkills) do
                break
              end
              if false then
                texturesSkills = {
                  background = dxCreateTexture(":ST_gui/img/background2.png"),
                  cross = dxCreateTexture(":ST_gui/img/cross.png"),
                  ak47_icon = dxCreateTexture(":ST_invetory/img/ak47_icon.png"),
                  deagle_icon = dxCreateTexture(":ST_invetory/img/deagle_icon.png"),
                  sniper_icon = dxCreateTexture(":ST_invetory/img/sniper_icon.png"),
                  mp5_icon = dxCreateTexture(":ST_invetory/img/mp5_icon.png"),
                  obrzyn_icon = dxCreateTexture(":ST_invetory/img/obrzyn_icon.png")
                }
              end
              weaponsSkils = {
                {
                  "Pistolety",
                  {
                    69,
                    70,
                    71
                  },
                  getPedStat(localPlayer, 69),
                  texturesSkills.deagle_icon,
                  {
                    13,
                    158,
                    13
                  },
                  {
                    22,
                    23,
                    24
                  },
                  "Deagle",
                  24
                },
                {
                  "Shotguny",
                  {
                    72,
                    73,
                    74
                  },
                  getPedStat(localPlayer, 72),
                  texturesSkills.obrzyn_icon,
                  {
                    26,
                    52,
                    173
                  },
                  {
                    25,
                    26,
                    27
                  },
                  "Strzelba bojowa, Obrzyn",
                  26
                },
                {
                  "Maszynowe",
                  {75, 76},
                  getPedStat(localPlayer, 75),
                  texturesSkills.mp5_icon,
                  {
                    242,
                    151,
                    39
                  },
                  {
                    28,
                    29,
                    32
                  },
                  "UZI, MP5, TEC9",
                  29
                }
              }
              weaponsSkils1 = {
                {
                  "Karabiny",
                  {77, 78},
                  getPedStat(localPlayer, 77),
                  texturesSkills.ak47_icon,
                  {
                    212,
                    0,
                    0
                  },
                  {30, 31},
                  "M4, AK47",
                  30
                },
                {
                  "Strzelby",
                  {79},
                  getPedStat(localPlayer, 79),
                  texturesSkills.sniper_icon,
                  {
                    126,
                    26,
                    173
                  },
                  {33, 34},
                  "Karabin snajperski",
                  33
                }
              }
            elseif _FORV_7_.name == "POJAZDY" then
              if 1 > #table_vehicles_prywatne then
                trwaLadowanie = true
                triggerServerEvent("tableVehicles_dashboard", resourceRoot, localPlayer, "Prywatne")
                categoryVehiclesSort = "Prywatne"
              end
              windows.category = "POJAZDY"
              exports.ST_gui:createCustomEditbox("searchVehicles", "Wyszukaj pojazd", windowPos.x + 875 / zoom, windowPos.y + 35 / zoom, 160 / zoom, 40 / zoom, false, false, "", 1, {
                25,
                25,
                25,
                0,
                22,
                22,
                22,
                0
              })
              k = 1
              n = 10
              m = 10
            elseif _FORV_7_.name == "NIERUCHOMO\197\154CI" then
              k = 1
              n = 7
              m = 7
              if 1 > #tabela_nieruchomosci then
                trwaLadowanie = true
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaNieruchomosci", localPlayer)
              end
            elseif _FORV_7_.name == "SKLEP" then
              categoryPremium = false
            elseif _FORV_7_.name == "LOGI" then
              k = 1
              n = 7
              m = 7
              if not categoryLogs then
                categoryLogs = "Kary"
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaKaryLogs", localPlayer)
                trwaLadowanie = true
              elseif categoryLogs == "Kary" then
                if 1 > #tabela_kary_logs then
                  triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaKaryLogs", localPlayer)
                  trwaLadowanie = true
                end
              elseif categoryLogs == "Logowania" then
                if 1 > #tabela_logowania_logs then
                  triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaLogowaniaLogs", localPlayer)
                  trwaLadowanie = true
                end
              elseif categoryLogs == "Przelewy pieni\196\153dzy" then
                if 1 > #tabela_pieniadze_logs then
                  triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaPieniadzeLogs", localPlayer)
                  trwaLadowanie = true
                end
              elseif categoryLogs == "Przelewy punkt\195\179w premium" then
                if 1 > #tabela_pp_logs then
                  triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaPPLogs", localPlayer)
                  trwaLadowanie = true
                end
              elseif categoryLogs == "Kupno / sprzeda\197\188 pojazd\195\179w w urz\196\153dzie" then
                if 1 > #tabela_pojazdyUrzad_logs then
                  triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaPojazdyUrzadLogs", localPlayer)
                  trwaLadowanie = true
                end
              elseif categoryLogs == "Kupno / sprzeda\197\188 pojazd\195\179w na gie\197\130dzie" and 1 > #tabela_pojazdyGielda_logs then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaPojazdyGieldaLogs", localPlayer)
                trwaLadowanie = true
              end
            elseif _FORV_7_.name == "PRACE" then
              k = 1
              n = 12
              m = 12
              if zaladowaneStatystykiPrac then
                return
              end
              zaladowaneStatystykiPrac = true
              trwaLadowanie = true
              triggerServerEvent("showStatisticsJobs_dashboard", resourceRoot, localPlayer, getElementData(localPlayer, "player:sid"))
            elseif _FORV_7_.name == "SANTORI MESSAGE" then
              k = 1
              n = 7
              m = 7
              for _FORV_13_ in pairs(texturesMessage) do
                break
              end
              if false then
                texturesMessage = {
                  send_icon = dxCreateTexture("img/send_icon.png"),
                  like_emoji = dxCreateTexture("img/emoji/like_emoji.png"),
                  happy_emoji = dxCreateTexture("img/emoji/happy_emoji.png"),
                  happy1_emoji = dxCreateTexture("img/emoji/happy1_emoji.png"),
                  heartface_emoji = dxCreateTexture("img/emoji/heartface_emoji.png"),
                  kissing_emoji = dxCreateTexture("img/emoji/kissing_emoji.png"),
                  lol_emoji = dxCreateTexture("img/emoji/lol_emoji.png"),
                  okay_emoji = dxCreateTexture("img/emoji/okay_emoji.png"),
                  muscle_emoji = dxCreateTexture("img/emoji/muscle_emoji.png"),
                  peace_emoji = dxCreateTexture("img/emoji/peace_emoji.png"),
                  punch_emoji = dxCreateTexture("img/emoji/punch_emoji.png"),
                  heart_emoji = dxCreateTexture("img/emoji/heart_emoji.png"),
                  removeFriends_icon = dxCreateTexture("img/removeFriends_icon.png"),
                  transfer_icon = dxCreateTexture("img/transfer_icon.png"),
                  user_icon = dxCreateTexture("img/user_icon.png"),
                  circle1 = dxCreateTexture("img/circle1.png"),
                  info_icon = dxCreateTexture("img/info_icon.png"),
                  changeNick_icon = dxCreateTexture("img/changeNick_icon.png"),
                  color_icon = dxCreateTexture("img/color_icon.png")
                }
              end
              if not refreshAvatarsFriend then
                friends_table = {}
                avatar_table = {}
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tableFriends", localPlayer, true)
              else
                friends_table = {}
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tableFriends", localPlayer)
              end
              refreshAvatarsFriend = true
              if windows.message == "KONWERSACJA" then
                loadEmoji()
                exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
              end
            elseif _FORV_7_.name == "USTAWIENIA" then
              k = 1
              n = 11
              m = 11
              for _FORV_13_ in pairs(texturesCrosshair) do
                break
              end
              if false then
                texturesCrosshair = {
                  c_0 = dxCreateTexture(":ST_crosshair/img/0.png"),
                  c_1 = dxCreateTexture(":ST_crosshair/img/1.png"),
                  c_2 = dxCreateTexture(":ST_crosshair/img/2.png"),
                  c_3 = dxCreateTexture(":ST_crosshair/img/3.png"),
                  c_4 = dxCreateTexture(":ST_crosshair/img/4.png"),
                  c_5 = dxCreateTexture(":ST_crosshair/img/5.png"),
                  c_6 = dxCreateTexture(":ST_crosshair/img/6.png"),
                  c_7 = dxCreateTexture(":ST_crosshair/img/7.png"),
                  c_8 = dxCreateTexture(":ST_crosshair/img/8.png"),
                  c_9 = dxCreateTexture(":ST_crosshair/img/9.png")
                }
              end
              trwaLadowanie = true
              categorySettings = "Rozgrywka"
              triggerServerEvent("showSettings_dashboard", resourceRoot, localPlayer, getElementData(localPlayer, "player:sid"))
            elseif _FORV_7_.name == "KALENDARZ ADWENTOWY" then
              trwaLadowanie = true
              settingsCalendary = {}
              randomPremium = {
                {
                  "premium",
                  1,
                  "premium na 1 dzie\197\132"
                },
                {
                  "premium",
                  2,
                  "premium na 2 dni"
                },
                {
                  "premium",
                  3,
                  "premium na 3 dni"
                },
                {
                  "punkty premium",
                  50,
                  "50 punkt\195\179w premium"
                },
                {
                  "got\195\179wka",
                  20000,
                  "20,000 PLN"
                },
                {
                  "got\195\179wka",
                  30000,
                  "30,000 PLN"
                },
                {
                  "got\195\179wka",
                  40000,
                  "40,000 PLN"
                },
                {
                  "got\195\179wka",
                  50000,
                  "50,000 PLN"
                },
                {
                  "got\195\179wka",
                  50000,
                  "50,000 PLN"
                },
                {
                  "got\195\179wka",
                  60000,
                  "60,000 PLN"
                },
                {
                  "got\195\179wka",
                  70000,
                  "70,000 PLN"
                },
                {
                  "got\195\179wka",
                  80000,
                  "80,000 PLN"
                },
                {
                  "got\195\179wka",
                  500000,
                  "500,000 PLN"
                },
                {
                  "Z\197\130oto",
                  2,
                  "2 sztabki z\197\130ota"
                },
                {
                  "Z\197\130oto",
                  10,
                  "10 sztabek z\197\130ota"
                },
                {
                  "exp",
                  100,
                  "100 exp do levelu postaci"
                },
                {
                  "exp",
                  200,
                  "200 exp do levelu postaci"
                },
                {
                  "exp",
                  300,
                  "300 exp do levelu postaci"
                },
                {
                  "exp",
                  400,
                  "400 exp do levelu postaci"
                },
                {
                  "Amunicja",
                  20,
                  "20 amunicji"
                },
                {
                  "Amunicja",
                  50,
                  "50 amunicji"
                },
                {
                  "Amunicja",
                  100,
                  "100 amunicji"
                },
                {
                  "Kanister",
                  25,
                  "25 l w kanistrze"
                },
                {
                  "Kanister",
                  50,
                  "50 l w kanistrze"
                },
                {
                  "Apteczka",
                  5,
                  "5 apteczek"
                },
                {
                  "Apteczka",
                  10,
                  "10 apteczek"
                },
                {
                  "klucz",
                  1,
                  "1 kluczyk do skrzyni pod F2"
                },
                {
                  "Jetpack",
                  1,
                  "Jetpack do ko\197\132ca dnia"
                }
              }
              randomGift = {
                {
                  1,
                  "pojazd",
                  {589, "1, 0"},
                  "VW Golf 1 GTI"
                },
                {
                  2,
                  "pojazd",
                  {500, "99, 99"},
                  "Jeep Wrangler III"
                },
                {
                  3,
                  "pojazd",
                  {546, "4, 3"},
                  "Skoda Octavia"
                },
                {
                  4,
                  "pojazd",
                  {585, "99,99"},
                  "Dodge Monaco"
                },
                {5, "inne"},
                {
                  6,
                  "premium",
                  4,
                  "premium na 4 dni"
                },
                {
                  7,
                  "punkty premium",
                  100,
                  "100 punkt\195\179w premium"
                },
                {
                  8,
                  "exp",
                  1000,
                  "1000 exp do levelu postaci"
                },
                {
                  9,
                  "exp",
                  500,
                  "500 exp do levelu postaci"
                },
                {
                  10,
                  "pojazd",
                  {495, "2, 2"},
                  "Sandking"
                },
                {
                  11,
                  "exp",
                  2000,
                  "2000 exp do levelu postaci"
                }
              }
              calendaryTableGrudzien = {}
              calendaryTable_C_Grudzien = {
                {
                  day = 1,
                  date = "2024-12-01",
                  color = {
                    255,
                    0,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 2,
                  date = "2024-12-02",
                  color = {
                    255,
                    0,
                    0
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 3,
                  date = "2024-12-03",
                  color = {
                    0,
                    255,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 4,
                  date = "2024-12-04",
                  color = {
                    255,
                    255,
                    0
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 5,
                  date = "2024-12-05",
                  color = {
                    100,
                    255,
                    100
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 6,
                  date = "2024-12-06",
                  color = {
                    255,
                    100,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 7,
                  date = "2024-12-07",
                  color = {
                    100,
                    255,
                    100
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 8,
                  date = "2024-12-08",
                  color = {
                    255,
                    0,
                    100
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 9,
                  date = "2024-12-09",
                  color = {
                    100,
                    255,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 10,
                  date = "2024-12-10",
                  color = {
                    255,
                    255,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 11,
                  date = "2024-12-11",
                  color = {
                    0,
                    255,
                    50
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 12,
                  date = "2024-12-12",
                  color = {
                    255,
                    150,
                    80
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 13,
                  date = "2024-12-13",
                  color = {
                    255,
                    0,
                    100
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 14,
                  date = "2024-12-14",
                  color = {
                    0,
                    100,
                    150
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 15,
                  date = "2024-12-15",
                  color = {
                    0,
                    255,
                    0
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 16,
                  date = "2024-12-16",
                  color = {
                    255,
                    0,
                    0
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 17,
                  date = "2024-12-17",
                  color = {
                    255,
                    0,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 18,
                  date = "2024-12-18",
                  color = {
                    100,
                    255,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 19,
                  date = "2024-12-19",
                  color = {
                    70,
                    205,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 20,
                  date = "2024-12-20",
                  color = {
                    0,
                    0,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 21,
                  date = "2024-12-21",
                  color = {
                    100,
                    100,
                    210
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 22,
                  date = "2024-12-22",
                  color = {
                    0,
                    255,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 23,
                  date = "2024-12-23",
                  color = {
                    255,
                    255,
                    0
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                },
                {
                  day = 24,
                  date = "2024-12-24",
                  color = {
                    255,
                    0,
                    255
                  },
                  status = false,
                  gift = "losowe",
                  block = false
                }
              }
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "showCalendaryGrudzienDate", localPlayer)
              animations = {
                alpha255 = 255,
                alpha255_ = 0,
                alpha30 = 30
              }
            elseif _FORV_7_.name == "eventf" then
              trwaLadowanie = true
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaEventFabularny", localPlayer)
            elseif _FORV_7_.name == "NAGRODY" then
              trwaLadowanie = true
              calendaryTableAll = {
                [1] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false},
                  {day = 31, odebrane = false}
                },
                [2] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false}
                },
                [3] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false},
                  {day = 31, odebrane = false}
                },
                [4] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false}
                },
                [5] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false},
                  {day = 31, odebrane = false}
                },
                [6] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false}
                },
                [7] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false},
                  {day = 31, odebrane = false}
                },
                [8] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false},
                  {day = 31, odebrane = false}
                },
                [9] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false}
                },
                [10] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false},
                  {day = 31, odebrane = false}
                },
                [11] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false}
                },
                [12] = {
                  {day = 1, odebrane = false},
                  {day = 2, odebrane = false},
                  {day = 3, odebrane = false},
                  {day = 4, odebrane = false},
                  {day = 5, odebrane = false},
                  {day = 6, odebrane = false},
                  {day = 7, odebrane = false},
                  {day = 8, odebrane = false},
                  {day = 9, odebrane = false},
                  {day = 10, odebrane = false},
                  {day = 11, odebrane = false},
                  {day = 12, odebrane = false},
                  {day = 13, odebrane = false},
                  {day = 14, odebrane = false},
                  {day = 15, odebrane = false},
                  {day = 16, odebrane = false},
                  {day = 17, odebrane = false},
                  {day = 18, odebrane = false},
                  {day = 19, odebrane = false},
                  {day = 20, odebrane = false},
                  {day = 21, odebrane = false},
                  {day = 22, odebrane = false},
                  {day = 23, odebrane = false},
                  {day = 24, odebrane = false},
                  {day = 25, odebrane = false},
                  {day = 26, odebrane = false},
                  {day = 27, odebrane = false},
                  {day = 28, odebrane = false},
                  {day = 29, odebrane = false},
                  {day = 30, odebrane = false},
                  {day = 31, odebrane = false}
                }
              }
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "showCalendaryDate", localPlayer)
            elseif _FORV_7_.name == "ZADANIA DZIENNE" then
              texturesChest = {
                taskChest = dxCreateTexture("img/taskChest.png"),
                gold_icon = dxCreateTexture(":ST_napad_jubiler/img/gold_icon.png")
              }
              trwaLadowanie = true
              tabela_zadanieDzienne = {
                [1] = {
                  name = "Kurier",
                  progress = 50,
                  description = "Oddaj #fcba0350 #ffffffpaczek jako kurier"
                },
                [2] = {
                  name = "Kurier",
                  progress = 75,
                  description = "Oddaj #fcba0375 #ffffffpaczek jako kurier"
                },
                [3] = {
                  name = "Kurier",
                  progress = 100,
                  description = "Oddaj #fcba03100 #ffffffpaczek jako kurier"
                },
                [4] = {
                  name = "Kurier",
                  progress = 150,
                  description = "Oddaj #fcba03150 #ffffffpaczek jako kurier"
                },
                [5] = {
                  name = "Drwal",
                  progress = 25,
                  description = "Zdob\196\133d\197\186 #fcba0320 #ffffffexp na pracy\ndrwala"
                },
                [6] = {
                  name = "Drwal",
                  progress = 35,
                  description = "Zdob\196\133d\197\186 #fcba0335 #ffffffexp na pracy\ndrwala"
                },
                [7] = {
                  name = "Drwal",
                  progress = 45,
                  description = "Zdob\196\133d\197\186 #fcba0345 #ffffffexp na pracy\ndrwala"
                },
                [8] = {
                  name = "Drwal",
                  progress = 60,
                  description = "Zdob\196\133d\197\186 #fcba0360 #ffffffexp na pracy\ndrwala"
                },
                [9] = {
                  name = "Magazynier",
                  progress = 40,
                  description = "Zdob\196\133d\197\186 #fcba0340 #ffffffexp w pracy\nmagazyniera"
                },
                [10] = {
                  name = "Magazynier",
                  progress = 60,
                  description = "Zdob\196\133d\197\186 #fcba0360 #ffffffexp w pracy\nmagazyniera"
                },
                [11] = {
                  name = "Magazynier",
                  progress = 80,
                  description = "Zdob\196\133d\197\186 #fcba0380 #ffffffexp w pracy\nmagazyniera"
                },
                [12] = {
                  name = "Magazynier",
                  progress = 100,
                  description = "Zdob\196\133d\197\186 #fcba03100 #ffffffexp w pracy\nmagazyniera"
                },
                [13] = {
                  name = "Magazynier",
                  progress = 150,
                  description = "Zdob\196\133d\197\186 #fcba03150 #ffffffexp w pracy\nmagazyniera"
                },
                [14] = {
                  name = "Rybak",
                  progress = 1000,
                  description = "Z\197\130\195\179w #fcba031000 #ffffffkg ryb jako rybak"
                },
                [15] = {
                  name = "Rybak",
                  progress = 1500,
                  description = "Z\197\130\195\179w #fcba031500 #ffffffkg ryb jako rybak"
                },
                [16] = {
                  name = "Rybak",
                  progress = 2000,
                  description = "Z\197\130\195\179w #fcba032000 #ffffffkg ryb jako rybak"
                },
                [17] = {
                  name = "Rybak",
                  progress = 2500,
                  description = "Z\197\130\195\179w #fcba032500 #ffffffkg ryb jako rybak"
                },
                [18] = {
                  name = "Rybak",
                  progress = 3000,
                  description = "Z\197\130\195\179w #fcba033000 #ffffffkg ryb jako rybak"
                },
                [19] = {
                  name = "Tiry",
                  progress = 20,
                  description = "Wykonaj #fcba0320 #ffffffkurs\195\179w na\nlogistyce l\196\133dowej"
                },
                [20] = {
                  name = "Tiry",
                  progress = 25,
                  description = "Wykonaj #fcba0325 #ffffffkurs\195\179w na\nlogistyce l\196\133dowej"
                },
                [21] = {
                  name = "Tiry",
                  progress = 35,
                  description = "Wykonaj #fcba0335 #ffffffkurs\195\179w na\nlogistyce l\196\133dowej"
                },
                [22] = {
                  name = "Tiry",
                  progress = 45,
                  description = "Wykonaj #fcba0345 #ffffffkurs\195\179w na\nlogistyce l\196\133dowej"
                },
                [23] = {
                  name = "Tiry",
                  progress = 55,
                  description = "Wykonaj #fcba0355 #ffffffkurs\195\179w na\nlogistyce l\196\133dowej"
                },
                [24] = {
                  name = "Sweepery",
                  progress = 100,
                  description = "Zbierz #fcba03100 #ffffffkg \197\155mieci na\nSprz\196\133taniu Ulic"
                },
                [25] = {
                  name = "Sweepery",
                  progress = 200,
                  description = "Zbierz #fcba03200 #ffffffkg \197\155mieci na\nSprz\196\133taniu Ulic"
                },
                [26] = {
                  name = "Sweepery",
                  progress = 300,
                  description = "Zbierz #fcba03300 #ffffffkg \197\155mieci na\nSprz\196\133taniu Ulic"
                },
                [27] = {
                  name = "Sweepery",
                  progress = 400,
                  description = "Zbierz #fcba03400 #ffffffkg \197\155mieci na\nSprz\196\133taniu Ulic"
                },
                [28] = {
                  name = "Taksometr",
                  progress = 25,
                  description = "Rozwie\197\186 #fcba0325 #ffffffklient\195\179w na\nTaxometrze"
                },
                [29] = {
                  name = "Taksometr",
                  progress = 35,
                  description = "Rozwie\197\186 #fcba0335 #ffffffklient\195\179w na\nTaxometrze"
                },
                [30] = {
                  name = "Taksometr",
                  progress = 40,
                  description = "Rozwie\197\186 #fcba0340 #ffffffklient\195\179w na\nTaxometrze"
                },
                [31] = {
                  name = "Taksometr",
                  progress = 50,
                  description = "Rozwie\197\186 #fcba0350 #ffffffklient\195\179w na\nTaxometrze"
                },
                [32] = {
                  name = "G\195\179rnik",
                  progress = 200,
                  description = "Zbierz #fcba03200 #ffffffkg na g\195\179rniku"
                },
                [33] = {
                  name = "G\195\179rnik",
                  progress = 300,
                  description = "Zbierz #fcba03300 #ffffffkg na g\195\179rniku"
                },
                [34] = {
                  name = "G\195\179rnik",
                  progress = 500,
                  description = "Zbierz #fcba03500 #ffffffkg na g\195\179rniku"
                },
                [35] = {
                  name = "G\195\179rnik",
                  progress = 600,
                  description = "Zbierz #fcba03600 #ffffffkg na g\195\179rniku"
                },
                [36] = {
                  name = "G\195\179rnik",
                  progress = 800,
                  description = "Zbierz #fcba03800 #ffffffkg na g\195\179rniku"
                },
                [37] = {
                  name = "G\195\179rnik",
                  progress = 1000,
                  description = "Zbierz #fcba031000 #ffffffkg na g\195\179rniku"
                },
                [38] = {
                  name = "Farmer",
                  progress = 20,
                  description = "Zbierz #fcba0320 #ffffffplon\195\179w na farmerze"
                },
                [39] = {
                  name = "Farmer",
                  progress = 30,
                  description = "Zbierz #fcba0330 #ffffffplon\195\179w na farmerze"
                },
                [40] = {
                  name = "Farmer",
                  progress = 40,
                  description = "Zbierz #fcba0340 #ffffffplon\195\179w na farmerze"
                },
                [41] = {
                  name = "Farmer",
                  progress = 50,
                  description = "Zbierz #fcba0350 #ffffffplon\195\179w na farmerze"
                },
                [42] = {
                  name = "Farmer",
                  progress = 75,
                  description = "Zbierz #fcba0375 #ffffffplon\195\179w na farmerze"
                },
                [43] = {
                  name = "Lawety",
                  progress = 10,
                  description = "Zdob\196\133d\197\186 #fcba0310 #ffffffexp na pracy\nTransport Towar\195\179w"
                },
                [44] = {
                  name = "Lawety",
                  progress = 20,
                  description = "Zdob\196\133d\197\186 #fcba0320 #ffffffexp na pracy\nTransport Towar\195\179w"
                },
                [45] = {
                  name = "Lawety",
                  progress = 35,
                  description = "Zdob\196\133d\197\186 #fcba0335 #ffffffexp na pracy\nTransport Towar\195\179w"
                },
                [46] = {
                  name = "Lawety",
                  progress = 50,
                  description = "Zdob\196\133d\197\186 #fcba0350 #ffffffexp na pracy\nTransport Towar\195\179w"
                },
                [47] = {
                  name = "Autobusy",
                  progress = 35,
                  description = "Zalicz #fcba0335 #ffffffprzystank\195\179w jako\nKierowca Autobusu"
                },
                [48] = {
                  name = "Autobusy",
                  progress = 45,
                  description = "Zalicz #fcba0345 #ffffffprzystank\195\179w jako\nKierowca Autobusu"
                },
                [49] = {
                  name = "Autobusy",
                  progress = 55,
                  description = "Zalicz #fcba0355 #ffffffprzystank\195\179w jako\nKierowca Autobusu"
                },
                [50] = {
                  name = "Autobusy",
                  progress = 75,
                  description = "Zalicz #fcba0375 #ffffffprzystank\195\179w jako\nKierowca Autobusu"
                },
                [51] = {
                  name = "Autobusy",
                  progress = 85,
                  description = "Zalicz #fcba0385 #ffffffprzystank\195\179w jako\nKierowca Autobusu"
                },
                [52] = {
                  name = "Tramwajarz",
                  progress = 35,
                  description = "Zalicz #fcba0335 #ffffffprzystank\195\179w jako\nKierowca Tramwaju"
                },
                [53] = {
                  name = "Tramwajarz",
                  progress = 45,
                  description = "Zalicz #fcba0345 #ffffffprzystank\195\179w jako\nKierowca Tramwaju"
                },
                [54] = {
                  name = "Tramwajarz",
                  progress = 55,
                  description = "Zalicz #fcba0355 #ffffffprzystank\195\179w jako\nKierowca Tramwaju"
                },
                [55] = {
                  name = "Tramwajarz",
                  progress = 75,
                  description = "Zalicz #fcba0375 #ffffffprzystank\195\179w jako\nKierowca Tramwaju"
                },
                [56] = {
                  name = "Tramwajarz",
                  progress = 85,
                  description = "Zalicz #fcba0385 #ffffffprzystank\195\179w jako\nKierowca Tramwaju"
                },
                [57] = {
                  name = "Tramwajarz",
                  progress = 100,
                  description = "Zalicz #fcba03100 #ffffffprzystank\195\179w jako\nKierowca Tramwaju"
                },
                [58] = {
                  name = "Konwojent",
                  progress = 15,
                  description = "Rozwie\197\186 #fcba0315 #ffffffwork\195\179w z pieni\196\153dzmi\nna Konwojencie Bankowym"
                },
                [59] = {
                  name = "Konwojent",
                  progress = 25,
                  description = "Rozwie\197\186 #fcba0325 #ffffffwork\195\179w z pieni\196\153dzmi\nna Konwojencie Bankowym"
                },
                [60] = {
                  name = "Konwojent",
                  progress = 30,
                  description = "Rozwie\197\186 #fcba0330 #ffffffwork\195\179w z pieni\196\153dzmi\nna Konwojencie Bankowym"
                },
                [61] = {
                  name = "Konwojent",
                  progress = 40,
                  description = "Rozwie\197\186 #fcba0340 #ffffffwork\195\179w z pieni\196\153dzmi\nna Konwojencie Bankowym"
                }
              }
              selfTasks = {punkty_wybierz = 3, klucze_wybierz = 1}
              triggerServerEvent("showDailyTasks_dashboard", resourceRoot, localPlayer, getElementData(localPlayer, "player:sid"))
            end
            lastTickCount = getTickCount()
          end
        end
      end
    end
    if windows.category == "USTAWIENIA" and trwaLadowanie == false then
      for _FORV_7_, _FORV_8_ in ipairs({
        {"Rozgrywka"},
        {"Shadery"},
        {"FPS"},
        {"Celownik"},
        {
          "PIN logowania"
        }
      }) do
        if isMouseIn(windowPos.x + 515 / zoom + 60 / zoom * (0 + 1 - 1), windowPos.y + 106.5 / zoom, 47 / zoom, 47 / zoom) then
          if _FORV_8_[1] == "Celownik" then
            table_settings_colorCrosshair = {
              {
                255,
                255,
                255
              },
              {
                255,
                0,
                0
              },
              {
                0,
                255,
                0
              },
              {
                0,
                0,
                255
              },
              {
                0,
                0,
                0
              },
              {
                0,
                229,
                255
              },
              {
                255,
                255,
                0
              },
              {
                255,
                145,
                0
              },
              {
                255,
                0,
                225
              },
              {
                0,
                132,
                255
              },
              {
                0,
                166,
                55
              },
              {
                156,
                0,
                0
              }
            }
            table_settings = {
              {
                0,
                texturesCrosshair.c_0
              },
              {
                1,
                texturesCrosshair.c_1
              },
              {
                2,
                texturesCrosshair.c_2
              },
              {
                3,
                texturesCrosshair.c_3
              },
              {
                4,
                texturesCrosshair.c_4
              },
              {
                5,
                texturesCrosshair.c_5
              },
              {
                6,
                texturesCrosshair.c_6
              },
              {
                7,
                texturesCrosshair.c_7
              },
              {
                8,
                texturesCrosshair.c_8
              },
              {
                9,
                texturesCrosshair.c_9
              }
            }
          elseif _FORV_8_[1] == "PIN logowania" then
            enteredPin = ""
            settings_pinLoggingNext = 1
            table_pinLogging = {
              0,
              0,
              0,
              0,
              0
            }
          end
          categorySettings = _FORV_8_[1]
          triggerServerEvent("showSettings_dashboard", resourceRoot, localPlayer, getElementData(localPlayer, "player:sid"))
          trwaLadowanie = true
        end
      end
    end
    if windows.category == "KALENDARZ ADWENTOWY" then
      for _FORV_7_, _FORV_8_ in ipairs(calendaryTable_C_Grudzien) do
        if 0 + 1 > 6 then
        end
        if isMouseIn(windowPos.x + 135 / zoom * (1 - 1) + 259 / zoom, windowPos.y + 120 / zoom + 135 / zoom * (1 + 1 - 1), 125 / zoom, 125 / zoom) and windows.category == "KALENDARZ ADWENTOWY" then
          if open then
            return
          end
          if _FORV_8_.status == false and string.sub(_FORV_8_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 1, 10) then
            if _FORV_8_.block == true and _FORV_8_.gift == "losowe" then
              if math.random(0, 170) == 1 then
                settingsCalendary.winID = 1
              elseif math.random(0, 170) == 2 then
                settingsCalendary.winID = 2
              elseif math.random(0, 170) == 3 then
                settingsCalendary.winID = 4
              elseif math.random(0, 170) >= 4 and math.random(0, 170) <= 6 then
                settingsCalendary.winID = 3
              elseif math.random(0, 170) >= 7 and math.random(0, 170) <= 9 then
                settingsCalendary.winID = 6
              elseif math.random(0, 170) >= 10 and math.random(0, 170) <= 12 then
                settingsCalendary.winID = 7
              elseif math.random(0, 170) >= 13 and math.random(0, 170) <= 15 then
                settingsCalendary.winID = 8
              elseif math.random(0, 170) >= 16 and math.random(0, 170) <= 18 then
                settingsCalendary.winID = 9
              elseif math.random(0, 170) >= 19 and math.random(0, 170) <= 21 then
                settingsCalendary.winID = 10
              elseif math.random(0, 170) >= 22 and math.random(0, 170) <= 25 then
                settingsCalendary.winID = 11
              else
                settingsCalendary.winID = 5
              end
              for _FORV_24_, _FORV_25_ in ipairs(randomGift) do
                if _FORV_25_[1] == settingsCalendary.winID then
                  if _FORV_25_[2] == "inne" then
                    if randomPremium[math.random(0, #randomPremium)][1] == "punkty premium" then
                      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, randomPremium[math.random(0, #randomPremium)][1], randomPremium[math.random(0, #randomPremium)][2], false, randomPremium[math.random(0, #randomPremium)][3], _FORV_8_.day)
                    elseif randomPremium[math.random(0, #randomPremium)][1] == "exp" then
                      exports.ST_levelsystem:addExp(randomPremium[math.random(0, #randomPremium)][2])
                      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, false, false, false, randomPremium[math.random(0, #randomPremium)][3], _FORV_8_.day)
                    elseif randomPremium[math.random(0, #randomPremium)][1] == "klucz" then
                      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, randomPremium[math.random(0, #randomPremium)][1], randomPremium[math.random(0, #randomPremium)][2], false, randomPremium[math.random(0, #randomPremium)][3], _FORV_8_.day)
                    elseif randomPremium[math.random(0, #randomPremium)][1] == "Apteczka" or randomPremium[math.random(0, #randomPremium)][1] == "Kanister" or randomPremium[math.random(0, #randomPremium)][1] == "Amunicja" or randomPremium[math.random(0, #randomPremium)][1] == "Jetpack" or randomPremium[math.random(0, #randomPremium)][1] == "Z\197\130oto" then
                      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, randomPremium[math.random(0, #randomPremium)][1], randomPremium[math.random(0, #randomPremium)][2], "invetory", randomPremium[math.random(0, #randomPremium)][3], _FORV_8_.day)
                    else
                      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, randomPremium[math.random(0, #randomPremium)][1], randomPremium[math.random(0, #randomPremium)][2], false, randomPremium[math.random(0, #randomPremium)][3], _FORV_8_.day)
                    end
                    exports.st_gui:showPlayerNotification("Otrzymujesz " .. randomPremium[math.random(0, #randomPremium)][3] .. "", "success")
                  elseif _FORV_25_[2] == "pojazd" then
                    triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, _FORV_25_[3], _FORV_25_[2], "car", _FORV_25_[4], _FORV_8_.day)
                    exports.st_gui:showPlayerNotification("Otrzymujesz " .. _FORV_25_[4] .. "", "success")
                  elseif _FORV_25_[2] == "punkty premium" then
                    triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, _FORV_25_[2], _FORV_25_[3], false, _FORV_25_[4], _FORV_8_.day)
                    exports.st_gui:showPlayerNotification("Otrzymujesz " .. _FORV_25_[4] .. "", "success")
                  elseif _FORV_25_[2] == "exp" then
                    exports.ST_levelsystem:addExp(_FORV_25_[3])
                    triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, false, false, false, _FORV_25_[4], _FORV_8_.day)
                    exports.st_gui:showPlayerNotification("Otrzymujesz " .. _FORV_25_[4] .. "", "success")
                  elseif _FORV_25_[2] == "premium" then
                    triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "giftCalendary", localPlayer, _FORV_25_[2], _FORV_25_[3], false, _FORV_25_[4], _FORV_8_.day)
                    exports.st_gui:showPlayerNotification("Otrzymujesz " .. _FORV_25_[4] .. "", "success")
                  end
                end
              end
            end
            open = true
            createAnimation(255, 0, "Linear", 500, function(_ARG_0_)
              animations.alpha255 = _ARG_0_
            end)
            createAnimation(30, 0, "Linear", 500, function(_ARG_0_)
              animations.alpha30 = _ARG_0_
            end)
            createAnimation(0, 255, "Linear", 500, function(_ARG_0_)
              animations.alpha255_ = _ARG_0_
            end)
          end
        end
      end
    end
    if windows.category == "NAGRODY" and trwaLadowanie == false then
      for _FORV_15_, _FORV_16_ in ipairs(calendaryTable) do
        if 0 + 1 > 7 then
        end
        if not isMouseIn(windowPos.x + 116 / zoom * (1 - 1) + 260 / zoom, windowPos.y + 105 / zoom + 113 / zoom * (1 + 1 - 1), 107 / zoom, 107 / zoom) or _FORV_16_.odebrane == true then
        elseif _FORV_16_.day == tonumber(string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTimeAntyBug.year + 1900, getRealTimeAntyBug.month + 1, getRealTimeAntyBug.monthday, getRealTimeAntyBug.hour, getRealTimeAntyBug.minute, getRealTimeAntyBug.second), 9, 10)) then
          if tonumber((getElementData(localPlayer, "player:sesja"))) < 30 then
            exports.st_gui:showPlayerNotification("Aby otworzy\196\135 musisz by\196\135 co najmniej 30 minut online na serwerze", "error")
            return
          end
          if open then
            return
          end
          open = true
          calendaryTable[_FORV_15_].odebrane = true
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "zaliczLogowanie", localPlayer, false, false, false, false, liczbaDniPodRzadKalendarz, _FORV_16_.day)
        end
      end
    end
    if windows.message == "USTAWIENIA MENU" then
      for _FORV_6_, _FORV_7_ in ipairs(table_settings_message) do
        if isMouseIn(windowPos.x + 540 / zoom, windowPos.y + 180 / zoom + 55 / zoom * (0 + 1 - 1), 500 / zoom, 50 / zoom) then
          if _FORV_7_.name == "Zmie\197\132 kolor czatu" then
            table_settings_color = {
              {
                101,
                0,
                148
              },
              {
                0,
                153,
                138
              },
              {
                199,
                126,
                0
              },
              {
                32,
                206,
                245
              },
              {
                140,
                235,
                50
              },
              {
                187,
                0,
                255
              },
              {
                0,
                64,
                255
              },
              {
                255,
                255,
                0
              },
              {
                0,
                255,
                255
              },
              {
                255,
                0,
                150
              },
              {
                255,
                0,
                0
              },
              {
                130,
                0,
                0
              },
              {
                208,
                245,
                174
              },
              {
                0,
                0,
                0
              },
              {
                165,
                42,
                42
              },
              {
                128,
                0,
                0
              },
              {
                169,
                169,
                169
              },
              {
                119,
                136,
                153
              },
              {
                47,
                79,
                79
              },
              {
                220,
                20,
                60
              },
              {
                178,
                34,
                34
              },
              {
                205,
                92,
                92
              },
              {
                255,
                105,
                180
              },
              {
                219,
                112,
                147
              },
              {
                255,
                165,
                0
              },
              {
                255,
                69,
                0
              },
              {
                250,
                250,
                210
              },
              {
                216,
                191,
                216
              },
              {
                147,
                112,
                219
              },
              {
                221,
                160,
                221
              },
              {
                98,
                122,
                240
              },
              {
                0,
                184,
                64
              },
              {
                255,
                111,
                0
              },
              {
                126,
                198,
                222
              },
              {
                0,
                140,
                255
              }
            }
            windows.message = _FORV_7_.name
          elseif _FORV_7_.name == "Edytuj nick" then
            if messageUser.nick == messageUser.nickOrginal then
              exports.ST_gui:createCustomEditbox("transfer", "Wpisz nick...", windowPos.x + 690 / zoom, windowPos.y + 270 / zoom, 200 / zoom, 35 / zoom, false, "", "", 1)
            else
              exports.ST_gui:createCustomEditbox("transfer", "Wpisz nick...", windowPos.x + 690 / zoom, windowPos.y + 270 / zoom, 200 / zoom, 35 / zoom, false, messageUser.nick, "", 1)
            end
            windows.message = _FORV_7_.name
          elseif _FORV_7_.name == "Zmie\197\132 ikon\196\153 emoji" then
            table_settings_emoji = {
              {
                texturesMessage.like_emoji,
                ":like:",
                messageUserSettings.color[1],
                messageUserSettings.color[2],
                messageUserSettings.color[3],
                1
              },
              {
                texturesMessage.happy1_emoji,
                ":happy1:",
                255,
                255,
                255,
                5
              },
              {
                texturesMessage.happy_emoji,
                ":happy:",
                255,
                255,
                255,
                3
              },
              {
                texturesMessage.heartface_emoji,
                ":heartface:",
                255,
                255,
                255,
                6
              },
              {
                texturesMessage.kissing_emoji,
                ":kissing:",
                255,
                255,
                255,
                7
              },
              {
                texturesMessage.lol_emoji,
                ":lol:",
                255,
                255,
                255,
                8
              },
              {
                texturesMessage.okay_emoji,
                ":okay:",
                255,
                255,
                255,
                9
              },
              {
                texturesMessage.muscle_emoji,
                ":muscle:",
                255,
                255,
                255,
                10
              },
              {
                texturesMessage.peace_emoji,
                ":peace:",
                255,
                255,
                255,
                11
              },
              {
                texturesMessage.punch_emoji,
                ":punch:",
                255,
                255,
                255,
                12
              },
              {
                textures.message_icon,
                ":santorimessage:",
                255,
                255,
                255,
                4
              },
              {
                texturesMessage.heart_emoji,
                ":heart:",
                255,
                255,
                255,
                2
              }
            }
            setTimer(function()
              windows.message = _UPVALUE0_.name
            end, 10, 1)
          elseif _FORV_7_.name == "Wy\197\155lij przelew" then
            destroyEditBox()
            windows.transfer = true
            setTimer(function()
              exports.ST_gui:createCustomEditbox("transfer", "Wpisz kwot\196\153...", windowPos.x + 590 / zoom, windowPos.y + 370 / zoom, 400 / zoom, 50 / zoom, false, "", "", 1)
            end, 50, 1)
            triggerServerEvent("showInfoUsers_dashboard", resourceRoot, localPlayer, getElementData(localPlayer, "player:sid"))
            windows.message = _FORV_7_.name
          elseif _FORV_7_.name == "Usu\197\132 znajomego" then
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "removeFriends", localPlayer, messageUser.uid)
            exports.st_gui:showPlayerNotification("Pomy\197\155lnie usuni\196\153to znajomego", "success")
            friends_table = {}
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tableFriends", localPlayer)
            windows.message = _FORV_7_.name
          end
        end
      end
    end
    if windows.message == "Zmie\197\132 kolor czatu" then
      for _FORV_7_, _FORV_8_ in ipairs(table_settings_color) do
        if 0 + 1 > 7 then
        end
        if isMouseIn(windowPos.x + 540 / zoom + 72.5 / zoom * (1 - 1), windowPos.y + 310 / zoom + 72.5 / zoom * (0 + 1 - 1), 65 / zoom, 65 / zoom) then
          if getElementData(localPlayer, "player:moneyMNn") <= 7499 then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
            return
          end
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeColorMessage", localPlayer, getElementData(localPlayer, "player:sid"), messageUser.uid, messageUser.nickOrginal, "" .. tonumber(_FORV_8_[1]) .. ", " .. tonumber(_FORV_8_[2]) .. ", " .. tonumber(_FORV_8_[3]) .. ", " .. messageUserSettings.emoji .. "", "" .. _FORV_8_[1] .. ", " .. _FORV_8_[2] .. ", " .. _FORV_8_[3] .. "")
          destroyEditBox()
          messageUserSettings.color = {
            _FORV_8_[1],
            _FORV_8_[2],
            _FORV_8_[3]
          }
          windows.message = "KONWERSACJA"
          setTimer(function()
            exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
          end, 50, 1)
        end
      end
    end
    if windows.message == "Zmie\197\132 ikon\196\153 emoji" then
      for _FORV_7_, _FORV_8_ in ipairs(table_settings_emoji) do
        if 0 + 1 > 6 then
        end
        if isMouseIn(windowPos.x + 560 / zoom + 80 / zoom * (1 - 1), windowPos.y + 305 / zoom + 70 / zoom * (0 + 1 - 1), 50 / zoom, 50 / zoom) then
          if getElementData(localPlayer, "player:moneyMNn") <= 7499 then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
            return
          end
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeCEmojiMessage", localPlayer, getElementData(localPlayer, "player:sid"), messageUser.uid, messageUser.nickOrginal, "" .. tonumber(messageUserSettings.color[1]) .. ", " .. tonumber(messageUserSettings.color[2]) .. ", " .. tonumber(messageUserSettings.color[3]) .. ", " .. _FORV_8_[6] .. "", _FORV_8_[2])
          messageUserSettings.emoji = _FORV_8_[6]
          messageUserSettings.emoji1 = _FORV_8_[2]
          loadEmoji()
          windows.message = "KONWERSACJA"
          setTimer(function()
            exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
          end, 50, 1)
        end
      end
    end
    if windows.category == "USTAWIENIA" then
      if categorySettings == "Celownik" then
        for _FORV_7_, _FORV_8_ in ipairs(table_settings) do
          if 0 + 1 > 5 then
          end
          if isMouseIn(windowPos.x + 341 / zoom + 140 / zoom * (1 - 1), windowPos.y + 300 / zoom + 88 / zoom * (0 + 1 - 1), 80 / zoom, 80 / zoom) and getTickCount() - lastTickCount > 1000 then
            if _FORV_8_[1] == settings_crosshair_id then
              return
            end
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "setCrosshairID", localPlayer, _FORV_8_[1], settings_crosshair_color)
          end
        end
        for _FORV_9_, _FORV_10_ in ipairs(table_settings_colorCrosshair) do
          if 0 + 1 > 6 then
          end
          if isMouseIn(windowPos.x + 295 / zoom + 130 / zoom * (1 - 1), windowPos.y + 575 / zoom + 88 / zoom * (0 + 1 - 1), 80 / zoom, 70 / zoom) and getTickCount() - lastTickCount > 2000 then
            if _FORV_10_[1] == settings_crosshair_color then
              return
            end
            if settings_crosshair_id == 0 then
              return
            end
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "setCrosshairID", localPlayer, settings_crosshair_id, _FORV_9_)
          end
        end
      elseif categorySettings == "PIN logowania" then
        if isMouseIn(windowPos.x + 550 / zoom, windowPos.y + 425 / zoom, 218 / zoom, 55 / zoom) then
          for _FORV_5_, _FORV_6_ in ipairs(table_users_settings) do
            if tonumber(_FORV_6_.pin) == 0 and #enteredPin >= 5 then
              trwaLadowanie = true
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "setPin", localPlayer, enteredPin)
            end
          end
        end
      else
        for _FORV_6_, _FORV_7_ in ipairs(table_settings) do
          if not (_FORV_6_ >= k and _FORV_6_ <= n and isMouseIn(windowPos.x + 285 / zoom, windowPos.y + 172 / zoom + 44.5 / zoom * (0 + 1 - 1), 740 / zoom, 35 / zoom)) or _FORV_7_[2] == true then
          elseif _FORV_7_[1] == "Czat premium" then
            if getElementData(localPlayer, "player:pchatoff") then
              setElementData(localPlayer, "player:pchatoff", false)
            else
              setElementData(localPlayer, "player:pchatoff", true)
            end
            tableUsers()
          elseif _FORV_7_[1] == "Ustaw godzin\196\153 lokalnie" then
            if ustawionaGodzina == 0 then
              ustawionaGodzina = 1
            elseif ustawionaGodzina == 1 then
              ustawionaGodzina = 2
            elseif ustawionaGodzina == 2 then
              ustawionaGodzina = 3
            elseif ustawionaGodzina == 3 then
              ustawionaGodzina = 4
            elseif ustawionaGodzina == 4 then
              ustawionaGodzina = 5
            elseif ustawionaGodzina == 5 then
              ustawionaGodzina = 6
            elseif ustawionaGodzina == 6 then
              ustawionaGodzina = 7
            elseif ustawionaGodzina == 7 then
              ustawionaGodzina = 8
            elseif ustawionaGodzina == 8 then
              ustawionaGodzina = 9
            elseif ustawionaGodzina == 9 then
              ustawionaGodzina = 10
            elseif ustawionaGodzina == 10 then
              ustawionaGodzina = 11
            elseif ustawionaGodzina == 11 then
              ustawionaGodzina = 12
            elseif ustawionaGodzina == 12 then
              ustawionaGodzina = 13
            elseif ustawionaGodzina == 13 then
              ustawionaGodzina = 14
            elseif ustawionaGodzina == 14 then
              ustawionaGodzina = 15
            elseif ustawionaGodzina == 15 then
              ustawionaGodzina = 16
            elseif ustawionaGodzina == 16 then
              ustawionaGodzina = 17
            elseif ustawionaGodzina == 17 then
              ustawionaGodzina = 18
            elseif ustawionaGodzina == 18 then
              ustawionaGodzina = 19
            elseif ustawionaGodzina == 19 then
              ustawionaGodzina = 20
            elseif ustawionaGodzina == 20 then
              ustawionaGodzina = 21
            elseif ustawionaGodzina == 21 then
              ustawionaGodzina = 22
            elseif ustawionaGodzina == 22 then
              ustawionaGodzina = 23
            elseif ustawionaGodzina == 23 then
              ustawionaGodzina = "Realna godzina"
              setMinuteDuration(60000)
              setTime(getRealTime().hour, getRealTime().minute)
            elseif ustawionaGodzina == "Realna godzina" then
              ustawionaGodzina = 0
            end
            if ustawionaGodzina == "Realna godzina" then
            else
              setTime(ustawionaGodzina, 0)
            end
          elseif _FORV_7_[1] == "Limit FPS" then
            if _FORV_7_[3] + 5 >= 105 then
            end
            if getTickCount() - lastTickCount > 500 then
              lastTickCount = getTickCount()
              setFPSLimit(25)
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 25)
            end
          elseif _FORV_7_[1] == "G\197\130o\197\155no\197\155\196\135 czatu g\197\130osowego" then
            if _FORV_7_[3] + 5 >= 105 then
            end
            if getTickCount() - lastTickCount > 500 then
              lastTickCount = getTickCount()
              triggerEvent("voiceSetVolume", localPlayer, localPlayer, 0)
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 0)
            end
          elseif _FORV_7_[1] == "Radio w miejscach publicznych" then
            if getTickCount() - lastTickCount > 1000 then
              lastTickCount = getTickCount()
              if _FORV_7_[3] == 1 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 2)
              elseif _FORV_7_[3] == 2 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 3)
              elseif _FORV_7_[3] == 3 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 4)
              elseif _FORV_7_[3] == 4 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 0)
              elseif _FORV_7_[3] == 0 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 1)
              end
            end
          elseif _FORV_7_[1] == "FXAA" then
            if getTickCount() - lastTickCount > 1000 then
              lastTickCount = getTickCount()
              if _FORV_7_[3] == 1 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 2)
              elseif _FORV_7_[3] == 2 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 3)
              elseif _FORV_7_[3] == 3 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 4)
              elseif _FORV_7_[3] == 4 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 0)
              elseif _FORV_7_[3] == 0 then
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 1)
              end
            end
          elseif getTickCount() - lastTickCount > 1000 then
            lastTickCount = getTickCount()
            if _FORV_7_[3] == 1 then
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 0)
            elseif _FORV_7_[3] == 0 then
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeShader", localPlayer, _FORV_7_[1], 1)
            end
          end
        end
      end
    end
    if windows.category == "POJAZDY" and trwaLadowanie == false then
      for _FORV_6_, _FORV_7_ in ipairs(table_vehicles1) do
        if _FORV_6_ >= k and _FORV_6_ <= n and isMouseIn(windowPos.x + 260 / zoom, windowPos.y + 150 / zoom + 51.5 / zoom * (0 + 1 - 1), 785 / zoom, 45 / zoom) and _FORV_7_.id then
          destroyEditBox()
          table_selectCar = {}
          trwaLadowanie = true
          if _FORV_7_.custom_model ~= 0 then
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "selectCar", localPlayer, _FORV_7_.id, _FORV_7_.model, _FORV_7_.custom_model)
          else
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "selectCar", localPlayer, _FORV_7_.id, _FORV_7_.model)
          end
          windows.category = "WYBRANY POJAZD"
          for _FORV_13_ in pairs(texturesMap) do
            break
          end
          if false then
            texturesMap = {
              map = dxCreateTexture(":ST_radar/images/map/map.png")
            }
          end
          dxSetTextureEdge(texturesMap.map, "border", tocolor(110, 158, 204, 255))
        end
      end
    end
    if windows.category == "PRACE" and trwaLadowanie == false then
      for _FORV_6_, _FORV_7_ in ipairs(table_jobs) do
        if _FORV_6_ >= k and _FORV_6_ <= n and isMouseIn(windowPos.x + 275 / zoom, windowPos.y + 125 / zoom + 43.5 / zoom * (0 + 1 - 1), 355 / zoom, 34 / zoom) then
          windows.selectJobs = true
          selectJobs = _FORV_7_
          if _FORV_7_.pos then
            selectJobs.pos = {
              _FORV_7_.pos[1],
              _FORV_7_.pos[2],
              _FORV_7_.pos[3]
            }
            playerX, playerY = _FORV_7_.pos[1], _FORV_7_.pos[2]
          else
            selectJobs.pos = false
          end
          for _FORV_13_ in pairs(texturesMap) do
            break
          end
          if false then
            texturesMap = {
              map = dxCreateTexture(":ST_radar/images/map/map.png")
            }
          end
          dxSetTextureEdge(texturesMap.map, "border", tocolor(110, 158, 204, 255))
        end
      end
    end
    if windows.category == "SANTORI MESSAGE" and windows.addFriends == false then
      for _FORV_6_, _FORV_7_ in ipairs(friends_table) do
        if _FORV_6_ >= k and _FORV_6_ <= n and isMouseIn(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 65 / zoom * (0 + 1 - 1), 240 / zoom, 60 / zoom) then
          destroyEditBox()
          messageUser = {}
          messageUserSettings = {}
          messageUser.nick = _FORV_7_[2]
          messageUser.avatar = _FORV_7_[4]
          messageUser.uid = _FORV_7_[1]
          messageUser.lastOnline = _FORV_7_[5]
          messageUser.active = _FORV_7_[3]
          messageUser.nickOrginal = _FORV_7_[6]
          messageUserSettings.color = _FORV_7_[7]
          messageUserSettings.emoji = _FORV_7_[8]
          loadEmoji()
          windows.message = "KONWERSACJA"
          k7 = 1
          n7 = 9
          m7 = 9
          if _FORV_7_[3] == 2 then
            friends_table = {}
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "activeMessage", localPlayer, _FORV_7_[1], (getElementData(localPlayer, "player:sid")))
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tableFriends", localPlayer)
          end
          exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "showMessage", localPlayer, _FORV_7_[1])
        end
      end
    end
    if windows.addFriends == true then
      for _FORV_10_, _FORV_11_ in ipairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
        if _FORV_10_ >= 1 and _FORV_10_ <= 11 and _FORV_11_ ~= localPlayer and not getElementData(_FORV_11_, "spec:pos") and isMouseIn(windowPos.x + 270 / zoom, windowPos.y + 160 / zoom + 41.3 / zoom * (0 + 1 - 1), 245 / zoom, 35 / zoom) and windows.category == "SANTORI MESSAGE" and windows.addFriends == true then
          if getElementData(localPlayer, "player_inviteFriends") then
            exports.st_gui:showPlayerNotification("Masz aktywne zaproszenie do znajomych", "error")
            return
          end
          if getElementData(_FORV_11_, "player_inviteFriends") then
            exports.st_gui:showPlayerNotification("Ten gracz w\197\130a\197\155nie otrzyma\197\130 zaproszenie do znajomych", "error")
            return
          end
          for _FORV_20_, _FORV_21_ in ipairs(friends_table) do
            if _FORV_21_[1] == getElementData(_FORV_11_, "player:sid") then
              exports.st_gui:showPlayerNotification("Posiadasz tego gracza w znajomych", "error")
              return
            end
          end
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "addFriends", localPlayer, _FORV_11_)
          exports.st_gui:showPlayerNotification("Wys\197\130ano zaproszenie do znajomych do gracza " .. getPlayerName(_FORV_11_) .. "", "info")
          windows.category = false
          windows.addFriends = false
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          removeEventHandler("onClientKey", root, key)
          destroyEditBox()
          showCursor(false)
          for _FORV_20_, _FORV_21_ in pairs(textures) do
            if isElement(_FORV_21_) then
              destroyElement(_FORV_21_)
            end
          end
          textures = {}
        end
      end
    end
    if windows.category == "LOGI" and trwaLadowanie == false then
      for _FORV_7_, _FORV_8_ in ipairs({
        {"Kary"},
        {"Logowania"},
        {
          "Przelewy pieni\196\153dzy"
        },
        {
          "Przelewy punkt\195\179w premium"
        },
        {
          "Kupno / sprzeda\197\188 pojazd\195\179w w urz\196\153dzie"
        },
        {
          "Kupno / sprzeda\197\188 pojazd\195\179w na gie\197\130dzie"
        }
      }) do
        if isMouseIn(windowPos.x + 485 / zoom + 60 / zoom * (0 + 1 - 1), windowPos.y + 107.5 / zoom, 45 / zoom, 45 / zoom) then
          categoryLogs = _FORV_8_[1]
          k = 1
          n = 7
          m = 7
          if categoryLogs == "Kary" then
            if #tabela_kary_logs < 1 then
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaKaryLogs", localPlayer)
              trwaLadowanie = true
            end
          elseif categoryLogs == "Logowania" then
            if #tabela_logowania_logs < 1 then
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaLogowaniaLogs", localPlayer)
              trwaLadowanie = true
            end
          elseif categoryLogs == "Przelewy pieni\196\153dzy" then
            if #tabela_pieniadze_logs < 1 then
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaPieniadzeLogs", localPlayer)
              trwaLadowanie = true
            end
          elseif categoryLogs == "Przelewy punkt\195\179w premium" then
            if #tabela_pp_logs < 1 then
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaPPLogs", localPlayer)
              trwaLadowanie = true
            end
          elseif categoryLogs == "Kupno / sprzeda\197\188 pojazd\195\179w w urz\196\153dzie" then
            if #tabela_pojazdyUrzad_logs < 1 then
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaPojazdyUrzadLogs", localPlayer)
              trwaLadowanie = true
            end
          elseif categoryLogs == "Kupno / sprzeda\197\188 pojazd\195\179w na gie\197\130dzie" and #tabela_pojazdyGielda_logs < 1 then
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaPojazdyGieldaLogs", localPlayer)
            trwaLadowanie = true
          end
        end
      end
    end
    if windows.category == "NIERUCHOMO\197\154CI" and trwaLadowanie == false then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(tabela_nieruchomosci) do
        if _FORV_5_ >= k and _FORV_5_ <= n then
          xY = xY + 1
          if isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 114 / zoom + 71 / zoom * (xY - 1), 782 / zoom, 65 / zoom) then
            trwaLadowanie = true
            windows.category = "WYBRANA NIERUCHOMO\197\154\196\134"
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tabelaWybranaNieruchomosc", localPlayer, _FORV_6_.id)
          end
        end
      end
    end
    if windows.category == "eventf" and trwaLadowanie == false then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(tabela_eventfabularny) do
        if _FORV_5_ >= k and _FORV_5_ <= n then
          xY = xY + 1
          if isMouseIn(windowPos.x + 880 / zoom, windowPos.y + 132 / zoom + 100 / zoom * (xY - 1), 160 / zoom, 52 / zoom) then
            trwaLadowanie = true
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "rozpocznijEtapEventu", localPlayer, _FORV_6_.id)
          end
        end
      end
    end
    if isMouseIn(windowPos.x + 343 / zoom, windowPos.y + 370 / zoom, 227 / zoom, 50 / zoom) and windows.category == "SKRZYNIE" then
      for _FORV_5_, _FORV_6_ in ipairs(table_users) do
        if tonumber(_FORV_6_.klucze) > 0 then
          windows.category = "SKRZYNIA"
          trwaLadowanie = true
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "openCase", localPlayer, "CLASSIC")
        end
      end
    elseif isMouseIn(windowPos.x + 748 / zoom, windowPos.y + 370 / zoom, 227 / zoom, 50 / zoom) and windows.category == "SKRZYNIE" then
      for _FORV_5_, _FORV_6_ in ipairs(table_users) do
        if tonumber(_FORV_6_.klucze_premium) > 0 then
          windows.category = "SKRZYNIA"
          trwaLadowanie = true
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "openCase", localPlayer, "PREMIUM")
        end
      end
    elseif isMouseIn(windowPos.x + 372 / zoom, windowPos.y + 469 / zoom, 169 / zoom, 47 / zoom) and windows.category == "SKRZYNIE" then
      if getElementData(localPlayer, "player:pp") < 100 then
        exports.st_gui:showPlayerNotification("Nie posiadasz wystarczaj\196\133cej ilo\197\155ci punkt\195\179w premium", "error")
        return
      end
      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "buyKey", localPlayer, "CLASSIC", 100)
    elseif isMouseIn(windowPos.x + 778 / zoom, windowPos.y + 470 / zoom, 167 / zoom, 45 / zoom) and windows.category == "SKRZYNIE" then
      if getElementData(localPlayer, "player:pp") < 400 then
        exports.st_gui:showPlayerNotification("Nie posiadasz wystarczaj\196\133cej ilo\197\155ci punkt\195\179w premium", "error")
        return
      end
      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "buyKey", localPlayer, "PREMIUM", 400)
    elseif isMouseIn(windowPos.x + 1020 / zoom, windowPos.y + 37 / zoom, 35 / zoom, 35 / zoom) and windows.category == "SKRZYNIA" and selfCases.wylosowano then
      extendedItems = nil
      if selfCases.typeCase == "ZADA\197\131" then
        windows.category = "ZADANIA DZIENNE"
      else
        windows.category = "SKRZYNIE"
      end
      selfCases = {}
    elseif isMouseIn(windowPos.x + 365 / zoom, windowPos.y + 360 / zoom, 245 / zoom, 46 / zoom) and windows.category == "POLECANIE $" then
      editBoxPromoteUID = exports.ST_gui:getCustomEditboxText("promoteUID")
      if string.sub(editBoxPromoteUID, 1, 8) == "SANTORI#" then
        if tonumber(string.sub(editBoxPromoteUID, 9, 55)) == getElementData(localPlayer, "player:sid") then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz u\197\188y\196\135 swojego kodu", "error")
          return
        end
        if tonumber(string.sub(editBoxPromoteUID, 9, 55)) then
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "promote_confirm", localPlayer, string.sub(editBoxPromoteUID, 9, 55))
          windows.background = false
          windows.category = false
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          removeEventHandler("onClientKey", root, key)
          for _FORV_5_, _FORV_6_ in pairs(textures) do
            if isElement(_FORV_6_) then
              destroyElement(_FORV_6_)
            end
          end
          textures = {}
          destroyEditBox()
          showCursor(false)
        else
          exports.st_gui:showPlayerNotification("Nie znaleziono takiego kodu", "error")
        end
      else
        exports.st_gui:showPlayerNotification("Nie znaleziono takiego kodu", "error")
      end
    elseif isMouseIn(windowPos.x + 370 / zoom, windowPos.y + 545 / zoom, 250 / zoom, 60 / zoom) and windows.category == "POLECANIE $" then
      setClipboard("SANTORI#" .. getElementData(localPlayer, "player:sid"))
      exports.st_gui:showPlayerNotification("Skopiowano kod - SANTORI#" .. getElementData(localPlayer, "player:sid") .. "", "info")
    elseif isMouseIn(windowPos.x + 295 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == false then
      categoryPremium = "PREMIUM"
    elseif isMouseIn(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "PREMIUM" then
      if getElementData(localPlayer, "player:pp") < 200 then
        exports.st_gui:showPlayerNotification("Aby zakupi\196\135 premium na 7 dni potrzebujesz 200 PP", "error")
        return
      end
      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "givePremium", localPlayer, 7, 200)
    elseif isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "PREMIUM" then
      if getElementData(localPlayer, "player:pp") < 400 then
        exports.st_gui:showPlayerNotification("Aby zakupi\196\135 premium na 14 dni potrzebujesz 400 PP", "error")
        return
      end
      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "givePremium", localPlayer, 14, 400)
    elseif isMouseIn(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "PREMIUM" then
      if getElementData(localPlayer, "player:pp") < 800 then
        exports.st_gui:showPlayerNotification("Aby zakupi\196\135 premium na 30 dni potrzebujesz 800 PP", "error")
        return
      end
      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "givePremium", localPlayer, 30, 800)
    elseif isMouseIn(windowPos.x + 419 / zoom, windowPos.y + 524 / zoom, 482 / zoom, 72 / zoom) and windows.category == "SKLEP" and categoryPremium == false then
      categoryPremium = "KUPNO PUNKT\195\147W PREMIUM"
      windows.enterCodePP = false
    elseif isMouseIn(windowPos.x + 390 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "KUPNO PUNKT\195\147W PREMIUM" then
      windows.enterCodePP = false
      exports.ST_gui:destroyCustomEditbox("code_pp")
      exports.ST_gui:createCustomEditbox("code_pp", "Wprowad\197\186 kod", windowPos.x + 580 / zoom, windowPos.y + 527 / zoom, 160 / zoom, 45 / zoom, false, "", "", 1)
      windows.enterCodePP = 75550
    elseif isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "KUPNO PUNKT\195\147W PREMIUM" then
      windows.enterCodePP = false
      exports.ST_gui:destroyCustomEditbox("code_pp")
      exports.ST_gui:createCustomEditbox("code_pp", "Wprowad\197\186 kod", windowPos.x + 580 / zoom, windowPos.y + 527 / zoom, 160 / zoom, 45 / zoom, false, "", "", 1)
      windows.enterCodePP = 79550
    elseif isMouseIn(windowPos.x + 770 / zoom, windowPos.y + 220 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "KUPNO PUNKT\195\147W PREMIUM" then
      windows.enterCodePP = false
      exports.ST_gui:destroyCustomEditbox("code_pp")
      exports.ST_gui:createCustomEditbox("code_pp", "Wprowad\197\186 kod", windowPos.x + 580 / zoom, windowPos.y + 527 / zoom, 160 / zoom, 45 / zoom, false, "", "", 1)
      windows.enterCodePP = 92505
    elseif isMouseIn(windowPos.x + 822 / zoom, windowPos.y + 510 / zoom, 70 / zoom, 30 / zoom) and windows.category == "SKLEP" and categoryPremium == "KUPNO PUNKT\195\147W PREMIUM" then
      setClipboard("santorisklep.pl")
      exports.st_gui:showPlayerNotification("Skopiowano link do sklepu", "info")
    elseif isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 600 / zoom, 160 / zoom, 52 / zoom) and windows.category == "SKLEP" and categoryPremium == "KUPNO PUNKT\195\147W PREMIUM" and windows.enterCodePP then
      if not lastTickCountKupowaniePremki then
        lastTickCountKupowaniePremki = 120000
      end
      if getTickCount() - lastTickCountKupowaniePremki > 1000 then
        lastTickCountKupowaniePremki = getTickCount()
        if exports.ST_gui:getCustomEditboxText("code_pp"):len() < 1 then
          exports.st_gui:showPlayerNotification("Wprowad\197\186 kod!", "error")
          return
        end
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "buyPP", localPlayer, windows.enterCodePP, (exports.ST_gui:getCustomEditboxText("code_pp")))
        exports.ST_gui:destroyCustomEditbox("code_pp")
        categoryPremium = false
        windows.category = "SKLEP"
        windows.enterCodePP = false
      else
        exports.st_gui:showPlayerNotification([[
Odczekaj 2 min przed kolejnym
wprowadzeniem kodu]], "error")
      end
    elseif isMouseIn(windowPos.x + 485 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == false then
      categoryPremium = "ZAKUP KOLOROWEGO NICKU"
      exports.ST_gui:createCustomEditbox("colorR", "R", windowPos.x + 580 / zoom, windowPos.y + 490 / zoom, 55 / zoom, 40 / zoom, false, "", "", 1)
      exports.ST_gui:createCustomEditbox("colorG", "G", windowPos.x + 640 / zoom, windowPos.y + 490 / zoom, 55 / zoom, 40 / zoom, false, "", "", 1)
      exports.ST_gui:createCustomEditbox("colorB", "B", windowPos.x + 700 / zoom, windowPos.y + 490 / zoom, 55 / zoom, 40 / zoom, false, "", "", 1)
    elseif isMouseIn(windowPos.x + 390 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "ZAKUP KOLOROWEGO NICKU" then
      if editBoxColorR:len() > 0 and editBoxColorG:len() > 0 and editBoxColorB:len() > 0 and tonumber(editBoxColorR) <= 255 and tonumber(editBoxColorG) <= 255 and tonumber(editBoxColorB) <= 255 and tonumber(editBoxColorR) >= 0 and tonumber(editBoxColorG) >= 0 and tonumber(editBoxColorB) >= 0 then
        if getElementData(localPlayer, "player:pp") < 100 then
          exports.st_gui:showPlayerNotification("Aby zakupi\196\135 kolor na 7 dni potrzebujesz 100 PP", "error")
          return
        end
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeColorNickName", localPlayer, string.format("#%02X%02X%02X", editBoxColorR, editBoxColorG, editBoxColorB), 7, 100)
      end
    elseif isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "ZAKUP KOLOROWEGO NICKU" then
      if editBoxColorR:len() > 0 and editBoxColorG:len() > 0 and editBoxColorB:len() > 0 and tonumber(editBoxColorR) <= 255 and tonumber(editBoxColorG) <= 255 and tonumber(editBoxColorB) <= 255 and tonumber(editBoxColorR) >= 0 and tonumber(editBoxColorG) >= 0 and tonumber(editBoxColorB) >= 0 then
        if getElementData(localPlayer, "player:pp") < 200 then
          exports.st_gui:showPlayerNotification("Aby zakupi\196\135 kolor na 14 dni potrzebujesz 200 PP", "error")
          return
        end
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeColorNickName", localPlayer, string.format("#%02X%02X%02X", editBoxColorR, editBoxColorG, editBoxColorB), 14, 200)
      end
    elseif isMouseIn(windowPos.x + 770 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == "ZAKUP KOLOROWEGO NICKU" then
      if editBoxColorR:len() > 0 and editBoxColorG:len() > 0 and editBoxColorB:len() > 0 and tonumber(editBoxColorR) <= 255 and tonumber(editBoxColorG) <= 255 and tonumber(editBoxColorB) <= 255 and tonumber(editBoxColorR) >= 0 and tonumber(editBoxColorG) >= 0 and tonumber(editBoxColorB) >= 0 then
        if getElementData(localPlayer, "player:pp") < 400 then
          exports.st_gui:showPlayerNotification("Aby zakupi\196\135 kolor na 30 dni potrzebujesz 400 PP", "error")
          return
        end
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeColorNickName", localPlayer, string.format("#%02X%02X%02X", editBoxColorR, editBoxColorG, editBoxColorB), 30, 400)
      end
    elseif isMouseIn(windowPos.x + 675 / zoom, windowPos.y + 250 / zoom, 160 / zoom, 200 / zoom) and windows.category == "SKLEP" and categoryPremium == false then
      categoryPremium = "ZAKUP CUSTOMOWEGO SKINA"
    elseif isMouseIn(windowPos.x + 1010 / zoom, windowPos.y + 610 / zoom, 30 / zoom, 30 / zoom) and windows.message == "KONWERSACJA" then
      if not loadingTimeMessage then
        sendMessage()
      end
    elseif isMouseIn(windowPos.x + 265 / zoom, windowPos.y + 615 / zoom, 250 / zoom, 40 / zoom) and windows.category == "SANTORI MESSAGE" then
      if windows.addFriends then
        windows.addFriends = false
      else
        if #friends_table >= 15 then
          exports.st_gui:showPlayerNotification("Posiadasz maksymaln\196\133 ilo\197\155\196\135 znajomych", "error")
          return
        end
        windows.addFriends = true
      end
    elseif isMouseIn(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom) and windows.category == "SANTORI MESSAGE" and windows.message ~= "USTAWIENIA MENU" then
      destroyEditBox()
      table_settings_message = {
        {
          name = "Zmie\197\132 kolor czatu",
          img = texturesMessage.color_icon,
          colorImg = {
            255,
            255,
            255
          }
        },
        {
          name = "Edytuj nick",
          img = texturesMessage.changeNick_icon,
          colorImg = {
            0,
            0,
            0
          }
        },
        {
          name = "Zmie\197\132 ikon\196\153 emoji",
          img = messageUserSettings.emojiTextures[1],
          colorImg = {
            messageUserSettings.emojiTextures[2],
            messageUserSettings.emojiTextures[3],
            messageUserSettings.emojiTextures[4]
          }
        },
        {
          name = "Wy\197\155lij przelew",
          img = texturesMessage.transfer_icon,
          colorImg = {
            0,
            102,
            17
          }
        },
        {
          name = "Usu\197\132 znajomego",
          img = texturesMessage.removeFriends_icon,
          colorImg = {
            130,
            0,
            0
          }
        }
      }
      windows.message = "USTAWIENIA MENU"
    elseif isMouseIn(windowPos.x + 705 / zoom, windowPos.y + 440 / zoom, 170 / zoom, 50 / zoom) and windows.category == "SANTORI MESSAGE" and windows.message == "Wy\197\155lij przelew" then
      if tonumber((exports.ST_gui:getCustomEditboxText("transfer"))) and tonumber((exports.ST_gui:getCustomEditboxText("transfer"))) > 1 then
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "sendTransfer", localPlayer, getElementData(localPlayer, "player:sid"), exports.ST_gui:getCustomEditboxText("transfer"), messageUser.uid, messageUser.nickOrginal)
        destroyEditBox()
        windows.message = "KONWERSACJA"
        setTimer(function()
          exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
        end, 50, 1)
      else
        exports.st_gui:showPlayerNotification("Kwota musi by\196\135 liczb\196\133", "error")
      end
    elseif isMouseIn(windowPos.x + 1000 / zoom, windowPos.y + 125 / zoom, 35 / zoom, 35 / zoom) and windows.category == "SANTORI MESSAGE" and windows.message == "USTAWIENIA MENU" then
      windows.message = "KONWERSACJA"
      destroyEditBox()
      setTimer(function()
        exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
      end, 50, 1)
    elseif isMouseIn(windowPos.x + 705 / zoom, windowPos.y + 335 / zoom, 170 / zoom, 45 / zoom) and windows.category == "SANTORI MESSAGE" and windows.message == "Edytuj nick" then
      if getElementData(localPlayer, "player:moneyMNn") <= 14999 then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy.", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("transfer"):len() >= 3 and exports.ST_gui:getCustomEditboxText("transfer"):len() <= 15 then
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeNickMessage", localPlayer, getElementData(localPlayer, "player:sid"), messageUser.uid, messageUser.nickOrginal, (exports.ST_gui:getCustomEditboxText("transfer")))
        destroyEditBox()
        windows.message = "KONWERSACJA"
        setTimer(function()
          exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
        end, 50, 1)
        messageUser.nick = exports.ST_gui:getCustomEditboxText("transfer")
      else
        exports.st_gui:showPlayerNotification("Nick powinien zawiera\196\135 od 3 do 15 znak\195\179w", "error")
      end
    elseif isMouseIn(windowPos.x + 705 / zoom, windowPos.y + 395 / zoom, 170 / zoom, 45 / zoom) and windows.category == "SANTORI MESSAGE" and windows.message == "Edytuj nick" then
      if messageUser.nick ~= messageUser.nickOrginal then
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "removeNick", localPlayer, getElementData(localPlayer, "player:sid"), messageUser.uid, messageUser.nickOrginal)
        destroyEditBox()
        windows.message = "KONWERSACJA"
        setTimer(function()
          exports.ST_gui:createCustomEditbox("message", "Napisz wiadomo\197\155\196\135...", windowPos.x + 540 / zoom, windowPos.y + 605 / zoom, 460 / zoom, 40 / zoom, false, "", "", 1)
        end, 50, 1)
        messageUser.nick = messageUser.nickOrginal
      end
    elseif isMouseIn(windowPos.x + 785 / zoom, windowPos.y + 595 / zoom, 150 / zoom, 35 / zoom) and windows.selectJobs == true and windows.category == "PRACE" then
      if getPedOccupiedVehicle(localPlayer) then
        exports.st_gui:showPlayerNotification("Najpierw wyjdz z pojazdu")
        return
      end
      if getElementData(localPlayer, "player:strzelnica") then
        exports.st_gui:showPlayerNotification("Wyjd\197\186 ze strzelnicy", "error")
        return
      end
      if getElementData(localPlayer, "player:lvl") > 10 then
        exports.st_gui:showPlayerNotification("Tej opcji mog\196\133 u\197\188y\196\135 tylko gracze do 10 lvl'u", "error")
        return
      end
      if selectJobs.pos then
        windows.category = false
        showCursor(false)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        removeEventHandler("onClientKey", root, key)
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
        destroyEditBox()
        fadeCamera(false)
        setTimer(function()
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tpVehicle", localPlayer, selectJobs.pos[1], selectJobs.pos[2], selectJobs.pos[3], false)
        end, 1500, 1)
        setTimer(function()
          fadeCamera(true)
        end, 3000, 1)
      end
    elseif isMouseIn(windowPos.x + 860 / zoom, windowPos.y + 121 / zoom, 180 / zoom, 25 / zoom) and windows.category == "WYBRANY POJAZD" then
      if getElementData(localPlayer, "player:strzelnica") then
        exports.st_gui:showPlayerNotification("Wyjd\197\186 ze strzelnicy", "error")
        return
      end
      if table_selectCar.jestNaMapie then
        if getPedOccupiedVehicle(localPlayer) then
          exports.st_gui:showPlayerNotification("Najpierw wyjdz z pojazdu")
          return
        end
        for _FORV_6_, _FORV_7_ in ipairs(table_selectCar) do
          for _FORV_11_, _FORV_12_ in ipairs(getElementsByType("vehicle")) do
            if getElementData(_FORV_12_, "vehicle:id") and getElementData(_FORV_12_, "vehicle:id") == _FORV_7_.id then
              if getElementData(localPlayer, "player:moneyMNn") < 50000 then
                exports.st_gui:showPlayerNotification("Nie posiadasz 50,000 PLN!", "error")
                return
              end
              windows.background = false
              windows.category = false
              showCursor(false)
              removeEventHandler("onClientRender", root, window)
              removeEventHandler("onClientClick", root, click)
              removeEventHandler("onClientKey", root, key)
              for _FORV_17_, _FORV_18_ in pairs(textures) do
                if isElement(_FORV_18_) then
                  destroyElement(_FORV_18_)
                end
              end
              textures = {}
              destroyEditBox()
              fadeCamera(false)
              setTimer(function()
                triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "tpVehicle", localPlayer, _UPVALUE0_, _UPVALUE1_, _UPVALUE2_, true)
              end, 1500, 1)
              setTimer(function()
                fadeCamera(true)
              end, 3000, 1)
            end
          end
        end
      end
    elseif isMouseIn(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom) and windows.category == "POJAZDY" then
      if getTickCount() - lastTickCount > 2000 then
        if categoryVehiclesSort == "Prywatne" then
          if getElementData(localPlayer, "player:organization") then
            categoryVehiclesSort = "Organizacyjne"
            if #table_vehicles_organizacyjne <= 1 then
              trwaLadowanie = true
              triggerServerEvent("tableVehicles_dashboard", resourceRoot, localPlayer, categoryVehiclesSort)
            else
              table_vehicles = table_vehicles_organizacyjne
            end
          else
            categoryVehiclesSort = "Z dost\196\153pem do kluczy"
            if #table_vehicles_klucze <= 1 then
              trwaLadowanie = true
              triggerServerEvent("tableVehicles_dashboard", resourceRoot, localPlayer, categoryVehiclesSort)
            else
              table_vehicles = table_vehicles_klucze
            end
          end
        elseif categoryVehiclesSort == "Organizacyjne" then
          categoryVehiclesSort = "Z dost\196\153pem do kluczy"
          if #table_vehicles_klucze <= 1 then
            trwaLadowanie = true
            triggerServerEvent("tableVehicles_dashboard", resourceRoot, localPlayer, categoryVehiclesSort)
          else
            table_vehicles = table_vehicles_klucze
          end
        elseif categoryVehiclesSort == "Z dost\196\153pem do kluczy" then
          categoryVehiclesSort = "Prywatne"
          if #table_vehicles_prywatne <= 1 then
            trwaLadowanie = true
            triggerServerEvent("tableVehicles_dashboard", resourceRoot, localPlayer, categoryVehiclesSort)
          else
            table_vehicles = table_vehicles_prywatne
          end
        end
        k = 1
        n = 10
        m = 10
        lastTickCount = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj 2 sekundy przed kolejnym wybraniem kategorii", "info")
      end
    elseif isMouseIn(windowPos.x + 835 / zoom, windowPos.y + 40 / zoom, 30 / zoom, 30 / zoom) and windows.category == "WYBRANY POJAZD" then
      if #tableInfoVehicles > 1 then
        for _FORV_5_, _FORV_6_ in ipairs(table_selectCar) do
          if tableInfoVehicles[10][2] == "Nie udost\196\153pniono" then
          else
            for _FORV_12_, _FORV_13_ in ipairs(getElementsByType("vehicle")) do
              if getElementData(_FORV_13_, "vehicle:id") and getElementData(_FORV_13_, "vehicle:id") == _FORV_6_.id then
              end
            end
            if tonumber((getElementData(_FORV_13_, "vehicle:ownedPlayer"))) ~= getElementData(localPlayer, "player:sid") then
              exports.st_gui:showPlayerNotification("To nie jest tw\195\179j pojazd!", "error")
              return
            end
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "shareKeyVehicle", localPlayer, _FORV_6_.id, _FORV_13_, "take", exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_6_.model), _FORV_6_.custom_model), (string.sub(tableInfoVehicles[10][2], 8, 100)))
          end
        end
      end
    elseif isMouseIn(windowPos.x + 1010 / zoom, windowPos.y + 35 / zoom, 40 / zoom, 40 / zoom) and windows.category == "WYBRANY POJAZD" then
      if #tableInfoVehicles > 1 then
        for _FORV_5_, _FORV_6_ in ipairs(table_selectCar) do
          if tableInfoVehicles[10][2] == "Nie udost\196\153pniono" then
            for _FORV_12_, _FORV_13_ in ipairs(getElementsByType("vehicle")) do
              if getElementData(_FORV_13_, "vehicle:id") and getElementData(_FORV_13_, "vehicle:id") == _FORV_6_.id then
              end
            end
            if exports.ST_gui:getCustomEditboxText("keyVehicle"):len() > 0 then
              if tonumber((getElementData(_FORV_13_, "vehicle:ownedPlayer"))) ~= getElementData(localPlayer, "player:sid") then
                exports.st_gui:showPlayerNotification("To nie jest tw\195\179j pojazd!", "error")
                return
              end
              triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "shareKeyVehicle", localPlayer, _FORV_6_.id, _FORV_13_, "share", exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_6_.model), _FORV_6_.custom_model), (exports.ST_gui:getCustomEditboxText("keyVehicle")))
            end
          end
        end
      end
    elseif isMouseIn(windowPos.x + 790 / zoom, windowPos.y + 600 / zoom, 245 / zoom, 50 / zoom) and windows.category == "WYBRANY POJAZD" then
      if trwaLadowanie == false then
        for _FORV_5_, _FORV_6_ in ipairs(tableInfoVehicles2) do
          if _FORV_6_[1] == "US1" and _FORV_6_[2] then
            return
          end
        end
        for _FORV_5_, _FORV_6_ in ipairs(table_selectCar) do
          if _FORV_6_.custom_model ~= 0 then
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "infoVehicles", localPlayer, _FORV_6_.id, _FORV_6_.model, _FORV_6_.custom_model)
          else
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "infoVehicles", localPlayer, _FORV_6_.id, _FORV_6_.model)
          end
        end
      end
    elseif isMouseIn(windowPos.x + 580 / zoom, windowPos.y + 570 / zoom, 180 / zoom, 62 / zoom) and windows.category == "WYBRANA NIERUCHOMO\197\154\196\134" then
      if not lastTickCountPrzeladowanieDomkow then
        lastTickCountPrzeladowanieDomkow = 60000
      end
      if getTickCount() - lastTickCountPrzeladowanieDomkow > 60000 then
        lastTickCountPrzeladowanieDomkow = getTickCount()
        for _FORV_5_, _FORV_6_ in ipairs(tabela_wbranaNieruchomosc) do
          if tonumber(_FORV_6_.owner) == getElementData(localPlayer, "player:sid") then
            triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "przeladowanieDomku", localPlayer, _FORV_6_.id)
          end
        end
      else
        exports.st_gui:showPlayerNotification("Nast\196\153pny raz mo\197\188esz prze\197\130adowa\196\135 za 1 minut\196\153", "error")
      end
    elseif isMouseIn(windowPos.x + 305 / zoom, windowPos.y + 150 / zoom, 70 / zoom, 40 / zoom) and windows.category == "KONTO" then
      if isElement(ped) then
        destroyElement(ped)
        setTimer(function()
          exports.ST_object_preview:destroyObjectPreview(myObject)
        end, 100, 1)
      end
      windows.category = "ZMIANA NICKU"
      exports.ST_gui:createCustomEditbox("changeNick", "Nowy nick", windowPos.x + 500 / zoom, windowPos.y + 310 / zoom, 318 / zoom, 60 / zoom, false, "", "", 1)
    elseif isMouseIn(windowPos.x + 550 / zoom, windowPos.y + 430 / zoom, 218 / zoom, 55 / zoom) and windows.category == "ZMIANA NICKU" then
      if exports.ST_gui:getCustomEditboxText("changeNick"):len() < 3 or exports.ST_gui:getCustomEditboxText("changeNick"):len() > 14 then
        exports.st_gui:showPlayerNotification("Nick powinien zawiera\196\135 od 3 do 14 znak\195\179w!", "error")
        return
      end
      if isStringNormal((exports.ST_gui:getCustomEditboxText("changeNick"))) ~= true then
        return exports.st_gui:showPlayerNotification("Nick zawiera niedozwolone znaki", "error")
      end
      triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "changeNick", localPlayer, (exports.ST_gui:getCustomEditboxText("changeNick")))
    elseif isMouseIn(windowPos.x + 705 / zoom, windowPos.y + 193 / zoom, 50 / zoom, 20 / zoom) and windows.category == "KONTO" then
      if settingsInfoAcount.email == "#838383Ukryte [#ffaa00poka\197\188#838383]" then
        for _FORV_5_, _FORV_6_ in ipairs(table_users) do
          settingsInfoAcount.email = "" .. _FORV_6_.email .. " [#ffaa00ukryj#f0f0f0]"
        end
      else
        settingsInfoAcount.email = "#838383Ukryte [#ffaa00poka\197\188#838383]"
      end
    elseif isMouseIn(windowPos.x + 705 / zoom, windowPos.y + 219 / zoom, 50 / zoom, 20 / zoom) and windows.category == "KONTO" then
      if settingsInfoAcount.serial == "#838383Ukryte [#ffaa00poka\197\188#838383]" then
        settingsInfoAcount.serial = "" .. getPlayerSerial(localPlayer) .. " [#ffaa00ukryj#f0f0f0]"
      else
        settingsInfoAcount.serial = "#838383Ukryte [#ffaa00poka\197\188#838383]"
      end
    elseif isMouseIn(windowPos.x + 705 / zoom, windowPos.y + 247 / zoom, 50 / zoom, 20 / zoom) and windows.category == "KONTO" then
      if settingsInfoAcount.ip == "#838383Ukryte [#ffaa00poka\197\188#838383]" then
        settingsInfoAcount.ip = "" .. table_users.ip .. " [#ffaa00ukryj#f0f0f0]"
      else
        settingsInfoAcount.ip = "#838383Ukryte [#ffaa00poka\197\188#838383]"
      end
    elseif isMouseIn(windowPos.x + 460 / zoom, windowPos.y + 527 / zoom, 150 / zoom, 22 / zoom) and windows.category == "KONTO" then
      for _FORV_5_, _FORV_6_ in ipairs(table_users) do
        if _FORV_6_.buyPP > 0 then
          trwaLadowanie = true
          table_users.buyPP = 0
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "buyPpNew", localPlayer, _FORV_6_.buyPP, pokazInfoCzatPP)
        end
      end
    elseif isMouseIn(windowPos.x + 617 / zoom, windowPos.y + 527 / zoom, 22 / zoom, 22 / zoom) and windows.category == "KONTO" then
      for _FORV_5_, _FORV_6_ in ipairs(table_users) do
        if _FORV_6_.buyPP > 0 then
          if pokazInfoCzatPP then
            pokazInfoCzatPP = false
          else
            pokazInfoCzatPP = true
          end
        end
      end
    elseif isMouseIn(windowPos.x + 915 / zoom, windowPos.y + 122 / zoom, 115 / zoom, 35 / zoom) and windows.category == "PRACE" and windows.selectJobs == true then
      if trwaLadowanie == false then
        trwaLadowanie = true
        windows.category = "RANKING PRACY"
        k = 1
        n = 9
        m = 9
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "showRankingJob", localPlayer, selectJobs.table[1][3])
      end
    elseif isMouseIn(windowPos.x + 1020 / zoom, windowPos.y + 37 / zoom, 35 / zoom, 35 / zoom) and windows.category == "RANKING PRACY" then
      k = 1
      n = 12
      m = 12
      windows.category = "PRACE"
    elseif isMouseIn(windowPos.x + 550 / zoom, windowPos.y + 330 / zoom, 218 / zoom, 65 / zoom) and windows.category == "ZADANIA DZIENNE" then
      for _FORV_5_, _FORV_6_ in ipairs(dailyTasks_table) do
        if _FORV_6_.odebrana_nagroda == 1 then
          return
        end
        if _FORV_6_.postep_zadania >= tabela_zadanieDzienne[_FORV_6_.id_zadania].progress then
          if trwaLadowanie then
            return
          end
          trwaLadowanie = true
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "nagrodaZadania", localPlayer)
        elseif not getElementData(localPlayer, "player:zadanieDzienne") then
          setElementData(localPlayer, "player:zadanieDzienne", tabela_zadanieDzienne[_FORV_6_.id_zadania].name)
          exports.st_gui:showPlayerNotification("Rozpocz\196\153to zadanie dzienne!", "success")
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "rozpocznijZadanie", localPlayer)
        end
      end
    elseif isMouseIn(windowPos.x + 280 / zoom, windowPos.y + 585 / zoom, 190 / zoom, 50 / zoom) and windows.category == "ZADANIA DZIENNE" then
      if trwaLadowanie then
        return
      end
      trwaLadowanie = true
      for _FORV_5_, _FORV_6_ in ipairs(dailyTasks_table) do
        if tonumber(_FORV_6_.klucze) > 0 then
          windows.category = "SKRZYNIA"
          triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "openCaseTask", localPlayer, "ZADA\197\131")
        end
      end
    elseif isMouseIn(windowPos.x + 885 / zoom, windowPos.y + 537 / zoom, 25 / zoom, 25 / zoom) and windows.category == "ZADANIA DZIENNE" then
      if selfTasks.klucze_wybierz <= 0 then
        return
      end
      selfTasks.punkty_wybierz = selfTasks.punkty_wybierz - 3
      selfTasks.klucze_wybierz = selfTasks.klucze_wybierz - 1
    elseif isMouseIn(windowPos.x + 835 / zoom + 220 / zoom - 30 / zoom - 50 / zoom, windowPos.y + 537 / zoom, 25 / zoom, 25 / zoom) and windows.category == "ZADANIA DZIENNE" then
      selfTasks.punkty_wybierz = selfTasks.punkty_wybierz + 3
      selfTasks.klucze_wybierz = selfTasks.klucze_wybierz + 1
    elseif isMouseIn(windowPos.x + 875 / zoom, windowPos.y + 602 / zoom, 140 / zoom, 35 / zoom) and windows.category == "ZADANIA DZIENNE" then
      for _FORV_5_, _FORV_6_ in ipairs(dailyTasks_table) do
        if selfTasks.punkty_wybierz == 0 then
          return
        end
        if selfTasks.punkty_wybierz > _FORV_6_.punkty then
          exports.st_gui:showPlayerNotification("Nie posiadasz tyle punkt\195\179w", "error")
          return
        end
        trwaLadowanie = true
        triggerServerEvent("evEwenciks_532hfgds", resourceRoot, "wymienPunkty", localPlayer, selfTasks.punkty_wybierz, selfTasks.klucze_wybierz)
      end
    end
  end
end
function createAnimation(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if #_UPVALUE0_ == 0 and not _UPVALUE1_ then
    addEventHandler("onClientRender", root, _UPVALUE2_)
    _UPVALUE1_ = true
  end
  assert(type(_ARG_0_) == "number", "Bad argument @ 'createAnimation' [expected number at argument 1, got " .. type(_ARG_0_) .. "]")
  assert(type(_ARG_1_) == "number", "Bad argument @ 'createAnimation' [expected number at argument 2, got " .. type(_ARG_1_) .. "]")
  assert(type(_ARG_2_) == "string", "Bad argument @ 'createAnimation' [Invalid easing at argument 3]")
  assert(type(_ARG_3_) == "number", "Bad argument @ 'createAnimation' [expected number at argument 4, got " .. type(_ARG_3_) .. "]")
  assert(type(_ARG_4_) == "function", "Bad argument @ 'createAnimation' [expected function at argument 5, got " .. type(_ARG_4_) .. "]")
  _UPVALUE3_ = _UPVALUE3_ + 1
  table.insert(_UPVALUE0_, {
    id = _UPVALUE3_,
    from = _ARG_0_,
    to = _ARG_1_,
    easing = _ARG_2_,
    duration = _ARG_3_,
    start = getTickCount(),
    onChange = _ARG_4_,
    onEnd = _ARG_5_
  })
  return _UPVALUE3_
end
function finishAnimation(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
    if _FORV_5_.id == _ARG_0_ then
      _FORV_5_.onChange(_FORV_5_.to)
      if _FORV_5_.onEnd then
        _FORV_5_.onEnd()
      end
      _FORV_5_.start = 0
      return true
    end
  end
end
function deleteAnimation(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
    if _FORV_5_.id == _ARG_0_ then
      table.remove(_UPVALUE0_, _FORV_4_)
      break
    end
  end
end
function RGBToHex(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ < 0 or 255 < _ARG_0_ or _ARG_1_ < 0 or 255 < _ARG_1_ or _ARG_2_ < 0 or 255 < _ARG_2_ or _ARG_3_ and (_ARG_3_ < 0 or 255 < _ARG_3_) then
    return nil
  end
  if _ARG_3_ then
    return string.format("#%.2X%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  else
    return string.format("#%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_)
  end
end
function vehicles3D(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "destroy" then
    if isElement(myObjectVeh) then
      exports.ST_object_preview:destroyObjectPreview(myObjectVeh)
    end
    if isElement(vehicle3D) then
      destroyElement(vehicle3D)
    end
  else
    if isElement(myObjectVeh) then
      exports.ST_object_preview:destroyObjectPreview(myObjectVeh)
    end
    if isElement(vehicle3D) then
      destroyElement(vehicle3D)
    end
    vehicle3D = createVehicle(_ARG_0_, 0, 0, 50)
    if _ARG_4_ ~= 0 and exports.ST_custom_cars:isCustomModID(_ARG_4_) then
      setElementData(vehicle3D, "vehicle:customID", _ARG_4_)
    end
    setElementCollisionsEnabled(vehicle3D, false)
    myObjectVeh = exports.ST_object_preview:createObjectPreview(vehicle3D, -5, 0, 140, windowPos.x + 685 / zoom, windowPos.y + 150 / zoom, 360 / zoom, 285 / zoom, false, true)
    setVehicleColor(vehicle3D, split(_ARG_2_, ",")[1], split(_ARG_2_, ",")[2], split(_ARG_2_, ",")[3], split(_ARG_2_, ",")[4], split(_ARG_2_, ",")[5], split(_ARG_2_, ",")[6], split(_ARG_2_, ",")[7], split(_ARG_2_, ",")[8], split(_ARG_2_, ",")[9], split(_ARG_2_, ",")[10], split(_ARG_2_, ",")[11], split(_ARG_2_, ",")[12])
    for _FORV_9_, _FORV_10_ in ipairs(split(_ARG_3_, ",")) do
      addVehicleUpgrade(vehicle3D, _FORV_10_)
    end
    setVehicleVariant(vehicle3D, split(_ARG_1_, ",")[1], split(_ARG_1_, ",")[2])
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
function destroyEditBox()
  exports.ST_gui:destroyCustomEditbox("keyVehicle")
  exports.ST_gui:destroyCustomEditbox("transfer")
  exports.ST_gui:destroyCustomEditbox("colorR")
  exports.ST_gui:destroyCustomEditbox("colorG")
  exports.ST_gui:destroyCustomEditbox("colorB")
  exports.ST_gui:destroyCustomEditbox("code_pp")
  exports.ST_gui:destroyCustomEditbox("changeNick")
  exports.ST_gui:destroyCustomEditbox("promoteUID")
  exports.ST_gui:destroyCustomEditbox("message")
  exports.ST_gui:destroyCustomEditbox("searchVehicles")
end
function dxDrawLinedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  _ARG_5_ = _ARG_5_ or 1
  dxDrawLine(_ARG_0_, _ARG_1_, _ARG_0_ + _ARG_2_, _ARG_1_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawLine(_ARG_0_, _ARG_1_, _ARG_0_, _ARG_1_ + _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawLine(_ARG_0_, _ARG_1_ + _ARG_3_, _ARG_0_ + _ARG_2_, _ARG_1_ + _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  return dxDrawLine(_ARG_0_ + _ARG_2_, _ARG_1_, _ARG_0_ + _ARG_2_, _ARG_1_ + _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
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
function calculateTimeToNextDay()
  return math.floor((os.time({
    year = getRealTime().year + 1900,
    month = getRealTime().month + 1,
    day = getRealTime().monthday,
    hour = getRealTime().hour,
    minute = getRealTime().minute,
    second = getRealTime().second
  }) + 86400 - (getRealTime().hour * 3600 + getRealTime().minute * 60 + getRealTime().second) - os.time({
    year = getRealTime().year + 1900,
    month = getRealTime().month + 1,
    day = getRealTime().monthday,
    hour = getRealTime().hour,
    minute = getRealTime().minute,
    second = getRealTime().second
  })) / 3600), math.floor((os.time({
    year = getRealTime().year + 1900,
    month = getRealTime().month + 1,
    day = getRealTime().monthday,
    hour = getRealTime().hour,
    minute = getRealTime().minute,
    second = getRealTime().second
  }) + 86400 - (getRealTime().hour * 3600 + getRealTime().minute * 60 + getRealTime().second) - os.time({
    year = getRealTime().year + 1900,
    month = getRealTime().month + 1,
    day = getRealTime().monthday,
    hour = getRealTime().hour,
    minute = getRealTime().minute,
    second = getRealTime().second
  })) / 60 % 60), (math.floor((os.time({
    year = getRealTime().year + 1900,
    month = getRealTime().month + 1,
    day = getRealTime().monthday,
    hour = getRealTime().hour,
    minute = getRealTime().minute,
    second = getRealTime().second
  }) + 86400 - (getRealTime().hour * 3600 + getRealTime().minute * 60 + getRealTime().second) - os.time({
    year = getRealTime().year + 1900,
    month = getRealTime().month + 1,
    day = getRealTime().monthday,
    hour = getRealTime().hour,
    minute = getRealTime().minute,
    second = getRealTime().second
  })) % 60))
end
function calculateTimeToSpecificDay(_ARG_0_)
  return math.floor((os.time({
    year = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    month = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    day = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    hour = 0,
    minute = 0,
    second = 0
  }) - os.time()) / 86400), math.floor((os.time({
    year = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    month = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    day = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    hour = 0,
    minute = 0,
    second = 0
  }) - os.time()) % 86400 / 3600), math.floor((os.time({
    year = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    month = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    day = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    hour = 0,
    minute = 0,
    second = 0
  }) - os.time()) % 3600 / 60), (math.floor((os.time({
    year = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    month = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    day = tonumber(string.match(_ARG_0_, "(%d+)-(%d+)-(%d+)")),
    hour = 0,
    minute = 0,
    second = 0
  }) - os.time()) % 60))
end
function shuffleTable(_ARG_0_)
  for _FORV_5_ = #_ARG_0_, 2, -1 do
    _ARG_0_[_FORV_5_], _ARG_0_[math.random(1, _FORV_5_)] = _ARG_0_[math.random(1, _FORV_5_)], _ARG_0_[_FORV_5_]
  end
end
function losujPrzedmiotZProcentem(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
  end
  for _FORV_7_, _FORV_8_ in ipairs(_ARG_0_) do
    if math.random() * (0 + (_FORV_6_.procent or 0)) <= 0 + (_FORV_8_.procent or 0) then
      return _FORV_8_
    end
  end
  return _ARG_0_[#_ARG_0_]
end
getResourceName(getThisResource(), true, 76512117)
return
