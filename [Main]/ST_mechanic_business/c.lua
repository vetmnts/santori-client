number = {}
orders = {}
posTrailer = {
  {
    701.77,
    -446.21,
    16.34,
    0,
    0,
    180
  },
  {
    367.2,
    -1332.75,
    14.58,
    0,
    0,
    210
  },
  {
    -116.61,
    -327.2,
    1.43,
    0,
    0,
    180
  },
  {
    -1734.16,
    188.81,
    3.55,
    0,
    0,
    180
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
      triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "destroyTrailer", localPlayer, parts_order, id_business)
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie dostarczono cz\196\153\197\155ci do celu", "success")
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_, _ARG_10_, _ARG_11_)
  if _ARG_0_ == "showGui" then
    if _ARG_1_ then
      if isElement(rafineriaMarker) then
        exports.st_gui:showPlayerNotification("Najpierw jed\197\186 po cz\196\153\197\155ci", "info")
        return
      end
      if _ARG_4_.owner == "brak" then
        textures = {
          strzalka = dxCreateTexture(":ST_selling_drugs/img/strzalka.png")
        }
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        addEventHandler("onClientKey", root, key)
        dataInfo = _ARG_4_
        charges_table = {}
        charges_table.numberDay = 7
        charges_table.paymentMethod = "GOT\195\147WKA"
        windows.buyBusiness = true
        id_business = _ARG_8_
        showCursor(true, false)
      else
        table_statistic = {}
        textures = {
          background = dxCreateTexture(":ST_gui/img/background2.png"),
          info_icon = dxCreateTexture("img/info_icon.png"),
          truck_icon = dxCreateTexture("img/truck_icon.png"),
          create_icon = dxCreateTexture("img/create_icon.png"),
          organization_icon = dxCreateTexture("img/organization_icon.png"),
          lider_icon = dxCreateTexture("img/lider_icon.png"),
          money_icon = dxCreateTexture("img/money_icon.png"),
          charges_icon = dxCreateTexture("img/charges_icon.png"),
          funds_icon = dxCreateTexture("img/funds_icon.png"),
          upgrades_icon = dxCreateTexture("img/upgrades_icon.png"),
          exemption_icon = dxCreateTexture("img/exemption_icon.png"),
          strzalka = dxCreateTexture(":ST_selling_drugs/img/strzalka.png"),
          improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
          dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
          cross = dxCreateTexture(":ST_gui/img/cross.png"),
          engine_icon = dxCreateTexture(":ST_tuning_mech/img/engine_icon.png"),
          door_icon = dxCreateTexture("img/door_icon.png"),
          trunk_icon = dxCreateTexture("img/trunk_icon.png"),
          hood_icon = dxCreateTexture("img/hood_icon.png"),
          light_icon = dxCreateTexture("img/light_icon.png"),
          glass_icon = dxCreateTexture("img/glass_icon.png"),
          bumber_icon = dxCreateTexture("img/bumber_icon.png"),
          workers_icon = dxCreateTexture("img/workers_icon.png"),
          user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
          spray_icon = dxCreateTexture("img/spray_icon.png"),
          repair_icon = dxCreateTexture("img/repair_icon.png"),
          stockroom_icon = dxCreateTexture("img/stockroom_icon.png"),
          clients_icon = dxCreateTexture("img/clients_icon.png"),
          repairkit_icon = dxCreateTexture("img/repairkit_icon.png")
        }
        lastTickCount = getTickCount()
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        addEventHandler("onClientKey", root, key)
        windows.main = true
        windows.background = true
        windows.orders = false
        windows.orders_select_truck = false
        windows.charges = false
        windows.improvement = false
        windows.statistics = false
        windows.partsPrices = false
        windows.funds = false
        showCursor(true)
        category = {
          {
            text = "INFORMACJE",
            img = textures.info_icon
          },
          {
            text = "PRACOWNICY",
            img = textures.workers_icon
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
            text = "CENY CZ\196\152\197\154CI",
            img = textures.dolar_icon
          },
          {
            text = "FUNDUSZE",
            img = textures.funds_icon
          }
        }
        table_info = _ARG_2_
        table_atm_business = {}
        for _FORV_17_, _FORV_18_ in ipairs(_ARG_2_) do
          if _FORV_18_.ulepszenie_magazyn == 1 then
            maxNumberParts = 1000
          else
            maxNumberParts = 500
          end
          upgrades = {
            {
              name = "Rozbudowa pojemno\197\155ci magazynu",
              description = "Potrzebujesz wi\196\153kszej ilo\197\155ci cz\196\153\197\155ci w magazynie?\nDzi\196\153ki temu ulepszeniu zyskasz miejsce na dodatkowe 1000 cz\196\153\197\155ci",
              price = 1500000,
              icon = textures.stockroom_icon,
              status = _FORV_18_.ulepszenie_magazyn,
              nameDatabase = "ulepszenie_magazyn"
            },
            {
              name = "Premie dla pracownik\195\179w",
              description = "Dzi\196\153ki temu ulepszeniu twoi pracownicy otrzymuj\196\133 darmow\196\133 premi\196\153 10% przy wyp\197\130acie",
              price = 3000000,
              icon = textures.dolar_icon,
              status = _FORV_18_.ulepszenie_premia,
              nameDatabase = "ulepszenie_premia"
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
          for _FORV_17_, _FORV_18_ in pairs(_ARG_3_) do
            table.insert(earnData, {
              totalmoney = tonumber(_FORV_18_.totalmoney),
              day = string.format("%s.%s", split(_FORV_18_.day, "-")[3], split(_FORV_18_.day, "-")[2])
            })
            earnDiagram.totalmoney = earnDiagram.totalmoney + tonumber(_FORV_18_.totalmoney)
            if earnDiagram.maxEarn < tonumber(_FORV_18_.totalmoney) then
              earnDiagram.maxEarn = tonumber(_FORV_18_.totalmoney)
            elseif earnDiagram.minEarn > tonumber(_FORV_18_.totalmoney) then
              earnDiagram.minEarn = tonumber(_FORV_18_.totalmoney)
            end
          end
        end
        dataInfo = _ARG_4_
        partsPriceBuy = _ARG_5_
        posCenterStaion = _ARG_6_
        posZakonczenie = _ARG_7_
        id_business = _ARG_8_
        table_statistic = _ARG_9_
        numberWorkers = _ARG_10_
      end
    elseif windows.background == true then
      exports.ST_gui:destroyCustomEditbox("funds:business")
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      windows.main = false
      windows.background = false
      windows.orders = false
      windows.charges = false
      windows.orders_select_truck = false
      windows.improvement = false
      windows.statistics = false
      windows.partsPrices = false
      windows.funds = false
      showCursor(false)
      for _FORV_15_, _FORV_16_ in pairs(textures) do
        if isElement(_FORV_16_) then
          destroyElement(_FORV_16_)
        end
      end
      textures = {}
      if isElement(maska) then
        destroyElement(maska)
      end
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
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
  elseif _ARG_0_ == "startMarkerCzesci" then
    rafineriaMarker = createMarker(posTrailer[randomPosTrailer][1], posTrailer[randomPosTrailer][2], posTrailer[randomPosTrailer][3] - 15.9, "cylinder", 10, 246, 255, 0, 255)
    blipTrailer = createBlip(posTrailer[randomPosTrailer][1], posTrailer[randomPosTrailer][2], posTrailer[randomPosTrailer][3], 41, 0, 0, 0, 255)
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    removeEventHandler("onClientKey", root, key)
    windows.main = false
    windows.background = false
    windows.orders = false
    windows.orders_select_truck = false
    showCursor(false)
    for _FORV_15_, _FORV_16_ in pairs(textures) do
      if isElement(_FORV_16_) then
        destroyElement(_FORV_16_)
      end
    end
    textures = {}
    if isElement(maska) then
      destroyElement(maska)
    end
    if isElement(hudMaskShader) then
      destroyElement(hudMaskShader)
    end
    exports.st_gui:showPlayerNotification("Udaj si\196\153 do wybranej ci\196\153\197\188ar\195\179wki i jed\197\186 po cz\196\153\197\155ci", "info")
  elseif _ARG_0_ == "showStatisticsBusinessClient" then
    for _FORV_17_, _FORV_18_ in ipairs(_ARG_1_) do
      if _FORV_18_.ulepszenie_magazyn == 1 then
        maxNumberParts = 1000
      else
        maxNumberParts = 500
      end
      upgrades = {
        {
          name = "Rozbudowa pojemno\197\155ci magazynu",
          description = "Potrzebujesz wi\196\153kszej ilo\197\155ci cz\196\153\197\155ci w magazynie?\nDzi\196\153ki temu ulepszeniu zyskasz miejsce na dodatkowe 1000 cz\196\153\197\155ci",
          price = 1500000,
          icon = textures.stockroom_icon,
          status = _FORV_18_.ulepszenie_magazyn,
          nameDatabase = "ulepszenie_magazyn"
        },
        {
          name = "Premie dla pracownik\195\179w",
          description = "Dzi\196\153ki temu ulepszeniu twoi pracownicy otrzymuj\196\133 darmow\196\133 premi\196\153 10% przy wyp\197\130acie",
          price = 3000000,
          icon = textures.dolar_icon,
          status = _FORV_18_.ulepszenie_premia,
          nameDatabase = "ulepszenie_premia"
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
      for _FORV_15_, _FORV_16_ in pairs(_ARG_1_) do
        table.insert(earnDataStatistic, {
          moneyAll = {
            tonumber(split(_FORV_16_.totalmoney, ",")[1]),
            tonumber(split(_FORV_16_.totalmoney, ",")[2]),
            tonumber(split(_FORV_16_.totalmoney, ",")[3]),
            tonumber(split(_FORV_16_.totalmoney, ",")[4]),
            tonumber(split(_FORV_16_.totalmoney, ",")[5])
          },
          totalmoney = tonumber(split(_FORV_16_.totalmoney, ",")[1]),
          day = string.format("%s.%s", split(_FORV_16_.day, "-")[3], split(_FORV_16_.day, "-")[2]),
          color = {
            {
              0,
              255,
              136
            },
            {
              207,
              3,
              252
            },
            {
              0,
              225,
              255
            }
          }
        })
        moneyAllDate = {
          tonumber(split(_FORV_16_.totalmoney, ",")[1]),
          tonumber(split(_FORV_16_.totalmoney, ",")[2]),
          tonumber(split(_FORV_16_.totalmoney, ",")[3]),
          tonumber(split(_FORV_16_.totalmoney, ",")[4]),
          tonumber(split(_FORV_16_.totalmoney, ",")[5])
        }
        for _FORV_22_ = 1, #moneyAllDate do
          if not highest_value or moneyAllDate[_FORV_22_] > highest_value then
            highest_value = moneyAllDate[_FORV_22_]
          end
        end
        for _FORV_22_ = 1, 5 do
          if earnDiagramStatistic.maxEarn[_FORV_22_] < tonumber(highest_value) then
            earnDiagramStatistic.maxEarn[_FORV_22_] = tonumber(highest_value)
          elseif earnDiagramStatistic.minEarn[_FORV_22_] > tonumber(highest_value) then
            earnDiagramStatistic.minEarn[_FORV_22_] = tonumber(highest_value)
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
  elseif _ARG_0_ == "downloadAvatarWorkers" then
    for _FORV_15_, _FORV_16_ in ipairs(workers_table) do
      if workers_table[_FORV_15_][1] == _ARG_2_ then
        shader = dxCreateShader(":ST_avatars/masked.fx")
        avatars = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
        dxSetShaderValue(shader, "sMaskTexture", maska)
        dxSetShaderValue(shader, "sPicTexture", avatars)
        workers_table[_FORV_15_][3] = shader
        table.insert(avatar_table, {_ARG_2_, shader})
      end
    end
  elseif _ARG_0_ == "showWorkersClient" then
    for _FORV_15_, _FORV_16_ in pairs(_ARG_1_) do
      table.insert(workers_table, {
        _ARG_3_,
        _FORV_16_.login,
        false,
        false,
        false
      })
      for _FORV_20_, _FORV_21_ in pairs(_ARG_2_) do
        if _FORV_21_.uid == _ARG_3_ then
          if string.sub(_FORV_21_.active, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
            last_online = "Dzi\197\155 o " .. string.sub(_FORV_21_.active, 12, 16) .. ""
          elseif string.sub(_FORV_21_.active, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_21_.active, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            last_online = "Wczoraj o " .. string.sub(_FORV_21_.active, 12, 16) .. ""
          elseif string.sub(_FORV_21_.active, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_21_.active, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            last_online = "2 dni temu o " .. string.sub(_FORV_21_.active, 12, 16) .. ""
          elseif string.sub(_FORV_21_.active, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_21_.active, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            last_online = "3 dni temu o " .. string.sub(_FORV_21_.active, 12, 16) .. ""
          else
            last_online = "" .. string.sub(_FORV_21_.active, 1, 10) .. ""
          end
          workers_table[_FORV_20_][5] = last_online
        end
      end
      for _FORV_20_, _FORV_21_ in pairs(_ARG_2_) do
        for _FORV_25_, _FORV_26_ in ipairs(workers_table) do
          if _FORV_21_.uid == _FORV_26_[1] then
            workers_table[_FORV_25_][4] = _FORV_21_.paycheck
            workers_table[_FORV_25_][6] = _FORV_21_.time_week
            workers_table[_FORV_25_][7] = _FORV_21_.car_week
            workers_table[_FORV_25_][8] = _FORV_21_.car_today
          end
        end
      end
      if avatar_table then
        for _FORV_20_, _FORV_21_ in pairs(avatar_table) do
          for _FORV_25_, _FORV_26_ in ipairs(workers_table) do
            if _FORV_21_[1] == _FORV_26_[1] then
              workers_table[_FORV_25_][3] = _FORV_21_[2]
            end
          end
        end
      end
    end
  end
end)
getResourceName(getThisResource(), true, 976662077)
return
