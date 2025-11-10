number = {}
orders = {}
posTrailer = {
  {
    283.19,
    1343.31,
    11.74,
    0.9,
    0,
    0
  },
  {
    283.32,
    1477.89,
    11.74,
    0.9,
    0,
    180
  },
  {
    248.03,
    1396.08,
    11.74,
    0.9,
    0,
    270.2
  },
  {
    246.58,
    1420.7,
    11.72,
    0.8,
    0.6,
    270.4
  },
  {
    246.05,
    1347.98,
    11.74,
    0.9,
    360,
    270.8
  },
  {
    250.75,
    1480.58,
    11.74,
    0.9,
    0,
    269.9
  }
}
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == rafineriaMarker then
      if isElement(rafineriaMarker) then
        destroyElement(rafineriaMarker)
      end
      exports.st_gui:showPlayerNotification("Pod\197\130\196\133cz naczep\196\153", "info")
    elseif source == zakonczenieTransport then
      if isElement(blip) then
        destroyElement(blip)
      end
      if isElement(zakonczenieTransport) then
        destroyElement(zakonczenieTransport)
      end
      triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "destroyTrailer", localPlayer, orders.litres, orders.type, id_business)
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie dostarczono zasoby do celu", "success")
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_)
  if _ARG_0_ == "showGui" then
    if _ARG_1_ then
      if isElement(rafineriaMarker) then
        exports.st_gui:showPlayerNotification("Najpierw jed\197\186 do rafinerii odebra\196\135 zasoby", "info")
        return
      end
      if _ARG_4_.owner == "brak" then
        textures = {
          strzalka = dxCreateTexture(":ST_selling_drugs/img/strzalka.png")
        }
        addEventHandler("onClientRender", root, window)
        dataInfo = _ARG_4_
        charges_table = {}
        charges_table.numberDay = 7
        charges_table.paymentMethod = "GOT\195\147WKA"
        windows.buyBusiness = true
        id_business = _ARG_8_
        showCursor(true, false)
      else
        textures = {
          background = dxCreateTexture(":ST_gui/img/background2.png"),
          info_icon = dxCreateTexture("img/info_icon.png"),
          truck_icon = dxCreateTexture("img/truck_icon.png"),
          lpg_icon = dxCreateTexture("img/lpg_icon.png"),
          on_icon = dxCreateTexture("img/on_icon.png"),
          p95_icon = dxCreateTexture("img/95_icon.png"),
          nitro_icon = dxCreateTexture("img/nitro_icon.png"),
          create_icon = dxCreateTexture("img/create_icon.png"),
          organization_icon = dxCreateTexture("img/organization_icon.png"),
          lider_icon = dxCreateTexture("img/lider_icon.png"),
          money_icon = dxCreateTexture("img/money_icon.png"),
          electric_icon = dxCreateTexture("img/electric_icon.png"),
          charges_icon = dxCreateTexture("img/charges_icon.png"),
          funds_icon = dxCreateTexture("img/funds_icon.png"),
          upgrades_icon = dxCreateTexture("img/upgrades_icon.png"),
          exemption_icon = dxCreateTexture("img/exemption_icon.png"),
          cistern_icon = dxCreateTexture("img/cistern_icon.png"),
          strzalka = dxCreateTexture(":ST_selling_drugs/img/strzalka.png"),
          improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
          dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
          cross = dxCreateTexture(":ST_gui/img/cross.png"),
          canister_icon = dxCreateTexture("img/canister_icon.png")
        }
        lastTickCount = getTickCount()
        addEventHandler("onClientRender", root, window)
        windows.main = true
        windows.background = true
        windows.orders = false
        windows.orders_select_truck = false
        windows.charges = false
        windows.improvement = false
        windows.statistics = false
        windows.fuelPrices = false
        windows.funds = false
        showCursor(true)
        category = {
          {
            text = "INFORMACJE",
            img = textures.info_icon
          },
          {
            text = "ZAM\195\147WIENIA",
            img = textures.truck_icon
          },
          {
            text = "OP\197\129ATY",
            img = textures.charges_icon
          },
          {
            text = "ULEPSZENIA",
            img = textures.upgrades_icon
          },
          {
            text = "STATYSTYKI",
            img = textures.improvement_icon
          },
          {
            text = "CENY PALIW",
            img = textures.dolar_icon
          },
          {
            text = "FUNDUSZE",
            img = textures.funds_icon
          }
        }
        table_info = _ARG_2_
        table_atm_business = {}
        for _FORV_16_, _FORV_17_ in ipairs(_ARG_2_) do
          if _FORV_17_.ulepszenie_magazyn == 1 then
            maxLiters = 7500
          else
            maxLiters = 5000
          end
          upgrades = {
            {
              name = "Ta\197\132sze paliwo",
              description = "Rafineria daje zni\197\188ki za kupowanie paliwa w hurtowej ilo\197\155ci,\ndzi\196\153ki czemu mo\197\188emy zaoszcz\196\153dzi\196\135 15% przy ka\197\188dym zam\195\179wieniu.",
              price = 1500000,
              icon = textures.money_icon,
              status = _FORV_17_.ulepszenie_tanszePaliwo,
              nameDatabase = "ulepszenie_tanszePaliwo"
            },
            {
              name = "Zmiana dostawcy pr\196\133du",
              description = "Zmieniasz aktualnego dostawc\196\153 pr\196\133du, dzi\196\153ki temu twoje\nrachunki za pr\196\133d zmalej\196\133 o 10%.",
              price = 2500000,
              icon = textures.electric_icon,
              status = _FORV_17_.ulepszenie_tanszyPrad,
              nameDatabase = "ulepszenie_tanszyPrad"
            },
            {
              name = "Rozbudowa magazynu paliw",
              description = "Potrzebujesz wi\196\153kszej ilo\197\155ci zasob\195\179w paliwa w magazynie?\nDzi\196\153ki temu ulepszeniu zyskasz dodatkowe 2500 litr\195\179w miejsca.",
              price = 1000000,
              icon = textures.cistern_icon,
              status = _FORV_17_.ulepszenie_magazyn,
              nameDatabase = "ulepszenie_magazyn"
            }
          }
        end
        if _ARG_3_ then
          earnDiagram = {
            maxEarn = 0,
            minEarn = 99999999999,
            totalmoney = 0
          }
          earnData = {}
          for _FORV_16_, _FORV_17_ in pairs(_ARG_3_) do
            table.insert(earnData, {
              totalmoney = tonumber(_FORV_17_.totalmoney),
              day = string.format("%s.%s", split(_FORV_17_.day, "-")[3], split(_FORV_17_.day, "-")[2])
            })
            earnDiagram.totalmoney = earnDiagram.totalmoney + tonumber(_FORV_17_.totalmoney)
            if earnDiagram.maxEarn < tonumber(_FORV_17_.totalmoney) then
              earnDiagram.maxEarn = tonumber(_FORV_17_.totalmoney)
            elseif earnDiagram.minEarn > tonumber(_FORV_17_.totalmoney) then
              earnDiagram.minEarn = tonumber(_FORV_17_.totalmoney)
            end
          end
        end
        dataInfo = _ARG_4_
        wholesalePrice = _ARG_5_
        posCenterStaion = _ARG_6_
        posZakonczenie = _ARG_7_
        id_business = _ARG_8_
        litres_magazyn = _ARG_9_
        number.on = 0
        number.p95 = 0
        number.lpg = 0
        number.nitro = 0
        number.kanistry = 0
      end
    elseif windows.background == true then
      exports.ST_gui:destroyCustomEditbox("funds:business")
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.background = false
      windows.orders = false
      windows.charges = false
      windows.orders_select_truck = false
      windows.improvement = false
      windows.statistics = false
      windows.fuelPrices = false
      windows.funds = false
      showCursor(false)
      for _FORV_13_, _FORV_14_ in pairs(textures) do
        if isElement(_FORV_14_) then
          destroyElement(_FORV_14_)
        end
      end
      textures = {}
    end
  elseif _ARG_0_ == "startPokazPunkt" then
    if isElement(blipTrailer) then
      destroyElement(blipTrailer)
    end
    zakonczenieTransport = createMarker(posZakonczenie[1], posZakonczenie[2], posZakonczenie[3] - 0.9, "cylinder", 3, 246, 255, 0, 255)
    blip = createBlipAttachedTo(zakonczenieTransport, 41)
  elseif _ARG_0_ == "schowajPunkty" then
    if isElement(blip) then
      destroyElement(blip)
    end
    if isElement(zakonczenieTransport) then
      destroyElement(zakonczenieTransport)
    end
  elseif _ARG_0_ == "startMarkerRafineria" then
    rafineriaMarker = createMarker(288.15, 1411.95, -7.430000000000001, "cylinder", 10, 246, 255, 0, 255)
    blipTrailer = createBlip(posTrailer[randomPosTrailer][1], posTrailer[randomPosTrailer][2], posTrailer[randomPosTrailer][3], 41, 0, 0, 0, 255)
    removeEventHandler("onClientRender", root, window)
    windows.main = false
    windows.background = false
    windows.orders = false
    windows.orders_select_truck = false
    showCursor(false)
    for _FORV_13_, _FORV_14_ in pairs(textures) do
      if isElement(_FORV_14_) then
        destroyElement(_FORV_14_)
      end
    end
    textures = {}
    exports.st_gui:showPlayerNotification("Udaj si\196\153 do wybranej ci\196\153\197\188ar\195\179wki i jed\197\186 do rafinerii", "info")
  elseif _ARG_0_ == "showStatisticsBusinessClient" then
    for _FORV_16_, _FORV_17_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Ta\197\132sze paliwo",
          description = "Rafineria daje zni\197\188ki za kupowanie paliwa w hurtowej ilo\197\155ci,\ndzi\196\153ki czemu mo\197\188emy zaoszcz\196\153dzi\196\135 15% przy ka\197\188dym zam\195\179wieniu.",
          price = 1500000,
          icon = textures.money_icon,
          status = _FORV_17_.ulepszenie_tanszePaliwo,
          nameDatabase = "ulepszenie_tanszePaliwo"
        },
        {
          name = "Zmiana dostawcy pr\196\133du",
          description = "Zmieniasz aktualnego dostawc\196\153 pr\196\133du, dzi\196\153ki temu twoje\nrachunki za pr\196\133d zmalej\196\133 o 10%.",
          price = 2500000,
          icon = textures.electric_icon,
          status = _FORV_17_.ulepszenie_tanszyPrad,
          nameDatabase = "ulepszenie_tanszyPrad"
        },
        {
          name = "Rozbudowa magazynu paliw",
          description = "Potrzebujesz wi\196\153kszej ilo\197\155ci zasob\195\179w paliwa w magazynie?\nDzi\196\153ki temu ulepszeniu zyskasz dodatkowe 2500 litr\195\179w miejsca.",
          price = 1000000,
          icon = textures.cistern_icon,
          status = _FORV_17_.ulepszenie_magazyn,
          nameDatabase = "ulepszenie_magazyn"
        }
      }
    end
  elseif _ARG_0_ == "table_atm_businessClient" then
    table_atm_business = _ARG_1_
    if _ARG_2_ then
      table_info = _ARG_2_
    end
  elseif _ARG_0_ == "table_statistic_businessClient" then
    table_statistic = _ARG_1_
    if _ARG_1_ then
      for _FORV_13_, _FORV_14_ in pairs(_ARG_1_) do
        table.insert(earnDataStatistic, {
          moneyAll = {
            tonumber(split(_FORV_14_.totalmoney, ",")[1]),
            tonumber(split(_FORV_14_.totalmoney, ",")[2]),
            tonumber(split(_FORV_14_.totalmoney, ",")[3]),
            tonumber(split(_FORV_14_.totalmoney, ",")[4]),
            tonumber(split(_FORV_14_.totalmoney, ",")[5]),
            tonumber(split(_FORV_14_.totalmoney, ",")[6])
          },
          totalmoney = tonumber(split(_FORV_14_.totalmoney, ",")[1]),
          day = string.format("%s.%s", split(_FORV_14_.day, "-")[3], split(_FORV_14_.day, "-")[2]),
          color = {
            {
              0,
              0,
              0
            },
            {
              0,
              115,
              12
            },
            {
              0,
              255,
              238
            },
            {
              0,
              255,
              26
            },
            {
              0,
              124,
              219
            },
            {
              211,
              255,
              154
            }
          }
        })
        moneyAllDate = {
          tonumber(split(_FORV_14_.totalmoney, ",")[1]),
          tonumber(split(_FORV_14_.totalmoney, ",")[2]),
          tonumber(split(_FORV_14_.totalmoney, ",")[3]),
          tonumber(split(_FORV_14_.totalmoney, ",")[4]),
          tonumber(split(_FORV_14_.totalmoney, ",")[5]),
          tonumber(split(_FORV_14_.totalmoney, ",")[6])
        }
        for _FORV_20_ = 1, #moneyAllDate do
          if not highest_value or moneyAllDate[_FORV_20_] > highest_value then
            highest_value = moneyAllDate[_FORV_20_]
          end
        end
        for _FORV_20_ = 1, 6 do
          if earnDiagramStatistic.maxEarn[_FORV_20_] < tonumber(highest_value) then
            earnDiagramStatistic.maxEarn[_FORV_20_] = tonumber(highest_value)
          elseif earnDiagramStatistic.minEarn[_FORV_20_] > tonumber(highest_value) then
            earnDiagramStatistic.minEarn[_FORV_20_] = tonumber(highest_value)
          end
        end
      end
    end
  elseif _ARG_0_ == "extensionClient" then
    table_info = _ARG_1_
    windows.main = true
    windows.charges = false
  elseif _ARG_0_ == "setPriceFuelClient" then
    table_info = _ARG_1_
  end
end)
getResourceName(getThisResource(), true, 716371866)
return
