k = 1
n = 5
m = 5
createBlip(118.85, 414.33, 10.52, 23, 2, 0, 0, 0, 0, 0, 275)
function render()
  dxSetRenderTarget(selfObject.rt, true)
  dxDrawRectangle(0, 0, 1000, 1000, tocolor(25, 25, 25, 255), false)
  if selfInfo then
    dxDrawText("Pojazd: " .. selfInfo.name .. "", 120, 30, 0, 0, tocolor(255, 255, 255, 255), 1, f.light45, "left", "top", false, false, false, false, false, 0, 0, 0)
    dxDrawRoundedRectangle(110, 135, 780, 420, 25, tocolor(35, 35, 35, 255))
    xY = 0
    for _FORV_3_, _FORV_4_ in ipairs(tableInfoVehicles) do
      xY = xY + 1
      dxDrawText(_FORV_4_[1], 140, 150 + 56 * (xY - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font35"), "left", "top", false, false, false, true, false)
      dxDrawText(_FORV_4_[2], 0, 150 + 56 * (xY - 1), 860, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font35"), "right", "top", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(110, 590, 780, 385, 25, tocolor(35, 35, 35, 255))
    xY = 0
    for _FORV_3_, _FORV_4_ in ipairs(tableInfoVehicles2) do
      xY = xY + 1
      if _FORV_4_[3] then
        if _FORV_4_[2] == 1 then
          v2Name = "#039118tak"
        elseif _FORV_4_[2] == 0 then
          v2Name = "#8c0000nie"
        end
      else
        v2Name = _FORV_4_[2]
      end
      dxDrawText(_FORV_4_[1], 140, 610 + 60 * (xY - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font35"), "left", "top", false, false, false, true, false)
      dxDrawText(v2Name, 0, 610 + 60 * (xY - 1), 860, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font35"), "right", "top", false, false, false, true, false)
    end
  else
    dxDrawText("Brak pojazdu na stanowisku", 120, 30, 0, 0, tocolor(255, 255, 255, 255), 1, f.light45, "left", "top", false, false, false, false, false, 0, 0, 0)
  end
  dxSetRenderTarget()
  if selfObject.shd then
    destroyElement(selfObject.shd)
    selfObject.shd = nil
  end
  selfObject.shd = dxCreateShader(":ST_devpaczka1/shader.fx", 0, 0, false, "object")
  dxSetShaderValue(selfObject.shd, "DevTexture", selfObject.rt)
  engineApplyShaderToWorldTexture(selfObject.shd, "b", selfObject.obj)
  engineApplyShaderToWorldTexture(selfObject.shd, "a", selfObject.obj)
  dxSetRenderTarget(selfObject.rt1, true)
  dxDrawRectangle(0, 0, 1000, 1000, tocolor(25, 25, 25, 255), false)
  if selfInfo then
    dxDrawRoundedRectangle(110, 15, 780, 965, 25, tocolor(35, 35, 35, 255))
    xY = 0
    for _FORV_3_, _FORV_4_ in ipairs(tableInfoVehicles1) do
      xY = xY + 1
      if _FORV_4_[3] then
        if _FORV_4_[1] == "LPG" then
          if _FORV_4_[2] == "Tak" then
            v2Name = "#039118tak"
          else
            v2Name = "#8c0000nie"
          end
        elseif _FORV_4_[2] == 1 then
          v2Name = "#039118tak"
        elseif _FORV_4_[2] == 0 then
          v2Name = "#8c0000nie"
        end
      else
        v2Name = _FORV_4_[2]
      end
      dxDrawText(_FORV_4_[1], 130, 22 + 53 * (xY - 1), 0, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font30"), "left", "top", false, false, false, true, false)
      dxDrawText(v2Name, 0, 22 + 53 * (xY - 1), 870, 0, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("font30"), "right", "top", false, false, false, true, false)
    end
  end
  dxSetRenderTarget()
  if selfObject.shd1 then
    destroyElement(selfObject.shd1)
    selfObject.shd1 = nil
  end
  selfObject.shd1 = dxCreateShader(":ST_devpaczka1/shader.fx", 0, 0, false, "object")
  dxSetShaderValue(selfObject.shd1, "DevTexture", selfObject.rt1)
  engineApplyShaderToWorldTexture(selfObject.shd1, "a", selfObject.obj1)
  engineApplyShaderToWorldTexture(selfObject.shd1, "b", selfObject.obj1)
end
f = {
  light45 = exports.ST_gui:getGUIFont("light45")
}
selfObject = {}
selfInfo = {}
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "renderInfo" then
    if _ARG_2_ then
      if selfObject.shd1 then
        destroyElement(selfObject.shd1)
        selfObject.shd1 = nil
      end
      if selfObject.shd then
        destroyElement(selfObject.shd)
        selfObject.shd = nil
      end
      if selfObject.obj1 then
        destroyElement(selfObject.obj1)
        selfObject.obj1 = nil
      end
      if selfObject.obj then
        destroyElement(selfObject.obj)
        selfObject.obj = nil
      end
      if selfObject.rt1 then
        destroyElement(selfObject.rt1)
        selfObject.rt1 = nil
      end
      if selfObject.rt then
        destroyElement(selfObject.rt)
        selfObject.rt = nil
        selfObject = {}
        selfInfo = {}
      end
      selfObject = {
        obj = createObject(8084, _ARG_1_.pos1[1], _ARG_1_.pos1[2], _ARG_1_.pos1[3], _ARG_1_.pos1[4], _ARG_1_.pos1[5], _ARG_1_.pos1[6]),
        obj1 = createObject(8084, _ARG_1_.pos2[1], _ARG_1_.pos2[2], _ARG_1_.pos2[3], _ARG_1_.pos2[4], _ARG_1_.pos2[5], _ARG_1_.pos2[6]),
        rt = dxCreateRenderTarget(1000, 1000, false),
        rt1 = dxCreateRenderTarget(1000, 1000, false)
      }
      selfInfo = _ARG_1_.infoVeh
      if selfInfo then
        for _FORV_9_, _FORV_10_ in pairs(wheelsName) do
          if _FORV_10_[1] == selfInfo.usy[11] then
            wheelsR = wheelsName[_FORV_9_][2]
          end
          if _FORV_10_[1] == selfInfo.usy[10] then
            wheelsF = wheelsName[_FORV_9_][2]
          end
        end
        if getVehicleUpgradeOnSlot(selfInfo.vehicle, 8) ~= 0 then
          nitroText = "#039118TAK  #e6e6e6( #ffbb00" .. getElementData(selfInfo.vehicle, "vehicle:nitro") .. "#e6e6e6/#ffbb00" .. getElementData(selfInfo.vehicle, "vehicle_tuning").butlaN .. "#e6e6e6L )"
        else
          nitroText = "#8c0000NIE"
        end
        if getElementData(selfInfo.vehicle, "vehicle:paintjob") then
          paintjobText = "#039118tak"
        else
          paintjobText = "#8c0000nie"
        end
        if getElementData(selfInfo.vehicle, "vehicle_tuning").licznik == 0 then
          licznikText = "#c8c8c8Fabryczny"
        else
          licznikText = "#ffbb00Customowy"
        end
        tableInfoVehicles1 = {
          {
            "ZMIENNY NAP\196\152D",
            selfInfo.usy[7],
            true
          },
          {
            "LPG",
            getElementData(selfInfo.vehicle, "vehicle_tuning").lpg_montage,
            true
          },
          {
            "TAXOMETR",
            getElementData(selfInfo.vehicle, "vehicle_tuning").taxometr,
            true
          },
          {
            "ZMIENNE ZAWIESZENIE",
            getElementData(selfInfo.vehicle, "vehicle_tuning").rh,
            true
          },
          {
            "REGULACJA TRAKCJI",
            selfInfo.usy[17],
            true
          },
          {
            "REGULACJA MOCY",
            getElementData(selfInfo.vehicle, "vehicle_tuning").regulationAcceleration,
            true
          },
          {
            "PRZYCIEMNIANE SZYBY",
            selfInfo.usy[8],
            true
          },
          {
            "PRZYCIEMNIANE LAMPY",
            selfInfo.usy[12],
            true
          },
          {
            "NEONY",
            selfInfo.usy[13],
            true
          },
          {
            "LICZNIK DRIFTU",
            selfInfo.usy[15],
            true
          },
          {"PAINTJOB", paintjobText},
          {"NITRO", nitroText},
          {
            "REGULACJA K\196\132TU SKR\196\152TU",
            selfInfo.usy[14],
            true
          },
          {
            "REGULACJA HAMULC\195\147W",
            selfInfo.usy[9],
            true
          },
          {
            "REGULACJA MASY",
            selfInfo.usy[16],
            true
          },
          {
            "TYLNE OPONY",
            wheelsR
          },
          {
            "PRZEDNIE OPONY",
            wheelsF
          },
          {"LICZNIK", licznikText}
        }
        if getElementData(selfInfo.vehicle, "vehicle_tuning").rodzaj == "Elektryczny" then
          nameFuel = {"Bateria", "KwH"}
        else
          nameFuel = {"Paliwo", "L"}
        end
        tableInfoVehicles = {
          {
            "ID",
            "#ffbb00" .. getElementData(selfInfo.vehicle, "vehicle:id") .. ""
          },
          {
            "PRZEBIEG",
            "#ffbb00" .. string.format("%00.1f", getElementData(selfInfo.vehicle, "vehicle:mileage")) .. " KM"
          },
          {
            "SILNIK",
            "" .. getElementData(selfInfo.vehicle, "vehicle_tuning").pojemnosc .. " " .. getElementData(selfInfo.vehicle, "vehicle_tuning").cylindry .. " " .. getElementData(selfInfo.vehicle, "vehicle_tuning").rodzaj .. ""
          },
          {
            nameFuel[1],
            "#ffbb00" .. math.floor(getElementData(selfInfo.vehicle, "vehicle:fuel")) .. " #e6e6e6/ #ffbb00" .. getElementData(selfInfo.vehicle, "vehicle_tuning").bak .. " #e6e6e6" .. nameFuel[2]
          },
          {
            "UID W\197\129A\197\154CICIELA",
            "#ffbb00" .. getElementData(selfInfo.vehicle, "vehicle:ownedPlayer") .. ""
          },
          {
            "STAN SILNIKA",
            "#ffbb00" .. string.format("%.1f", "" .. getElementHealth(selfInfo.vehicle) / 10) .. "#e6e6e6%"
          },
          {
            "REJESTRACJA",
            "" .. getVehiclePlateText(selfInfo.vehicle) .. ""
          }
        }
        tableInfoVehicles2 = {
          {
            "US1",
            selfInfo.usy[1],
            true
          },
          {
            "US2",
            selfInfo.usy[2],
            true
          },
          {
            "US3",
            selfInfo.usy[3],
            true
          },
          {
            "US4",
            selfInfo.usy[4],
            true
          },
          {
            "CHIP",
            selfInfo.usy[6],
            true
          },
          {
            "TURBO",
            selfInfo.usy[5],
            true
          }
        }
      end
      render()
    else
      if selfObject.shd1 then
        destroyElement(selfObject.shd1)
        selfObject.shd1 = nil
      end
      if selfObject.shd then
        destroyElement(selfObject.shd)
        selfObject.shd = nil
      end
      if selfObject.obj1 then
        destroyElement(selfObject.obj1)
        selfObject.obj1 = nil
      end
      if selfObject.obj then
        destroyElement(selfObject.obj)
        selfObject.obj = nil
      end
      if selfObject.rt1 then
        destroyElement(selfObject.rt1)
        selfObject.rt1 = nil
      end
      if selfObject.rt then
        destroyElement(selfObject.rt)
        selfObject.rt = nil
      end
      selfObject = {}
      selfInfo = {}
    end
  elseif _ARG_0_ == "openGui" then
    if _ARG_1_ then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        engine_icon = dxCreateTexture("img/engine_icon.png"),
        options_icon = dxCreateTexture("img/options_icon.png"),
        traction_icon = dxCreateTexture("img/traction_icon.png"),
        capacity_icon = dxCreateTexture("img/capacity_icon.png"),
        turbocharger_icon = dxCreateTexture("img/turbocharger_icon.png"),
        enginetype_icon = dxCreateTexture("img/enginetype_icon.png"),
        cylinders_icon = dxCreateTexture("img/cylinders_icon.png"),
        chip_icon = dxCreateTexture("img/chip_icon.png"),
        lpg_icon = dxCreateTexture("img/lpg_icon.png"),
        neon_icon = dxCreateTexture("img/neon_icon.png"),
        suspension_icon = dxCreateTexture("img/suspension_icon.png"),
        engineElectric_icon = dxCreateTexture("img/engineElectric_icon.png"),
        drift_icon = dxCreateTexture("img/drift_icon.png"),
        brake_icon = dxCreateTexture("img/brake_icon.png"),
        mass_icon = dxCreateTexture("img/mass_icon.png"),
        acceleration_icon = dxCreateTexture("img/acceleration_icon.png"),
        angle_icon = dxCreateTexture("img/angle_icon.png"),
        windows_icon = dxCreateTexture("img/windows_icon.png"),
        body_icon = dxCreateTexture("img/body_icon.png"),
        light_icon = dxCreateTexture(":ST_mechanic_business/img/light_icon.png"),
        nitro_icon = dxCreateTexture("img/nitro_icon.png"),
        taxo_icon = dxCreateTexture("img/taxo_icon.png"),
        off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
        abs_icon = dxCreateTexture(":ST_speedmeter/ST_interaction/img/abs_icon.png")
      }
      selfInfoGui = _ARG_2_.infoVeh
      table_tuning()
      selectCategoriesTuning = tuning[1]
      selectCategoriesTuning1 = 1
      windows.background = true
      windows.main = true
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      addEventHandler("onClientKey", root, key)
      showCursor(true)
      mozeZamontowac = true
      idTable = _ARG_3_
    elseif windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
      showCursor(false)
      windows.background = false
      windows.main = false
    end
  elseif _ARG_0_ == "reloadRender" then
    if selfObject.rt then
      selfInfo = _ARG_1_.infoVeh
      if selfInfo then
        for _FORV_9_, _FORV_10_ in pairs(wheelsName) do
          if _FORV_10_[1] == selfInfo.usy[11] then
            wheelsR = wheelsName[_FORV_9_][2]
          end
          if _FORV_10_[1] == selfInfo.usy[10] then
            wheelsF = wheelsName[_FORV_9_][2]
          end
        end
        if getVehicleUpgradeOnSlot(selfInfo.vehicle, 8) ~= 0 then
          nitroText = "#039118TAK  #e6e6e6( #ffbb00" .. getElementData(selfInfo.vehicle, "vehicle:nitro") .. "#e6e6e6/#ffbb00" .. getElementData(selfInfo.vehicle, "vehicle_tuning").butlaN .. "#e6e6e6L )"
        else
          nitroText = "#8c0000NIE"
        end
        if getElementData(selfInfo.vehicle, "vehicle:paintjob") then
          paintjobText = "#039118tak"
        else
          paintjobText = "#8c0000nie"
        end
        if getElementData(selfInfo.vehicle, "vehicle_tuning").licznik == 0 then
          licznikText = "#c8c8c8Fabryczny"
        else
          licznikText = "#ffbb00Customowy"
        end
        tableInfoVehicles1 = {
          {
            "ZMIENNY NAP\196\152D",
            selfInfo.usy[7],
            true
          },
          {
            "LPG",
            getElementData(selfInfo.vehicle, "vehicle_tuning").lpg_montage,
            true
          },
          {
            "TAXOMETR",
            getElementData(selfInfo.vehicle, "vehicle_tuning").taxometr,
            true
          },
          {
            "ZMIENNE ZAWIESZENIE",
            getElementData(selfInfo.vehicle, "vehicle_tuning").rh,
            true
          },
          {
            "REGULACJA TRAKCJI",
            selfInfo.usy[17],
            true
          },
          {
            "REGULACJA MOCY",
            getElementData(selfInfo.vehicle, "vehicle_tuning").regulationAcceleration,
            true
          },
          {
            "PRZYCIEMNIANE SZYBY",
            selfInfo.usy[8],
            true
          },
          {
            "PRZYCIEMNIANE LAMPY",
            selfInfo.usy[12],
            true
          },
          {
            "NEONY",
            selfInfo.usy[13],
            true
          },
          {
            "LICZNIK DRIFTU",
            selfInfo.usy[15],
            true
          },
          {"PAINTJOB", paintjobText},
          {"NITRO", nitroText},
          {
            "REGULACJA K\196\132TU SKR\196\152TU",
            selfInfo.usy[14],
            true
          },
          {
            "REGULACJA HAMULC\195\147W",
            selfInfo.usy[9],
            true
          },
          {
            "REGULACJA MASY",
            selfInfo.usy[16],
            true
          },
          {
            "TYLNE OPONY",
            wheelsR
          },
          {
            "PRZEDNIE OPONY",
            wheelsF
          },
          {"LICZNIK", licznikText}
        }
        if getElementData(selfInfo.vehicle, "vehicle_tuning").rodzaj == "Elektryczny" then
          nameFuel = {"Bateria", "KwH"}
        else
          nameFuel = {"Paliwo", "L"}
        end
        tableInfoVehicles = {
          {
            "ID",
            "#ffbb00" .. getElementData(selfInfo.vehicle, "vehicle:id") .. ""
          },
          {
            "PRZEBIEG",
            "#ffbb00" .. string.format("%00.1f", getElementData(selfInfo.vehicle, "vehicle:mileage")) .. " KM"
          },
          {
            "SILNIK",
            "" .. getElementData(selfInfo.vehicle, "vehicle_tuning").pojemnosc .. " " .. getElementData(selfInfo.vehicle, "vehicle_tuning").cylindry .. " " .. getElementData(selfInfo.vehicle, "vehicle_tuning").rodzaj .. ""
          },
          {
            nameFuel[1],
            "#ffbb00" .. math.floor(getElementData(selfInfo.vehicle, "vehicle:fuel")) .. " #e6e6e6/ #ffbb00" .. getElementData(selfInfo.vehicle, "vehicle_tuning").bak .. " #e6e6e6" .. nameFuel[2]
          },
          {
            "UID W\197\129A\197\154CICIELA",
            "#ffbb00" .. getElementData(selfInfo.vehicle, "vehicle:ownedPlayer") .. ""
          },
          {
            "STAN SILNIKA",
            "#ffbb00" .. string.format("%.1f", "" .. getElementHealth(selfInfo.vehicle) / 10) .. "#e6e6e6%"
          },
          {
            "REJESTRACJA",
            "" .. getVehiclePlateText(selfInfo.vehicle) .. ""
          }
        }
        tableInfoVehicles2 = {
          {
            "US1",
            selfInfo.usy[1],
            true
          },
          {
            "US2",
            selfInfo.usy[2],
            true
          },
          {
            "US3",
            selfInfo.usy[3],
            true
          },
          {
            "US4",
            selfInfo.usy[4],
            true
          },
          {
            "CHIP",
            selfInfo.usy[6],
            true
          },
          {
            "TURBO",
            selfInfo.usy[5],
            true
          }
        }
      end
      render()
    end
  elseif _ARG_0_ == "reloadTableTuning" then
    selfInfoGui = _ARG_1_.infoVeh
    table_tuning()
    selectCategoriesTuning = tuning[selectCategoriesTuning1]
    mozeZamontowac = true
  end
end)
wheelsName = {
  {
    0,
    "#c8c8c8Standardowe"
  },
  {
    1,
    "#ffbb00ultra-cienkie"
  },
  {
    2,
    "#ffbb00cienkie"
  },
  {
    4,
    "#ffbb00szerokie"
  },
  {
    8,
    "#ffbb00ultra-szerokie"
  }
}
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
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
getResourceName(getThisResource(), true, 994757292)
return
