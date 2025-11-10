possitions = {
  kg_rybak1 = {
    pos = {
      -353.96,
      -419.15,
      7,
      50,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH W\196\152DKARZY",
      "KG"
    }
  },
  kg_ranking_sweeper = {
    pos = {
      2227.38,
      939.54,
      10.82,
      60,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200SWEEPERY",
      "KG"
    }
  },
  exp1_smieciarki = {
    pos = {
      -361.98,
      1067.39,
      19.73,
      90,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200WYW\195\147Z ODPAD\195\147W",
      "EXP"
    }
  },
  exp1_trucki = {
    pos = {
      951.73,
      2113.02,
      12.32,
      90,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200LOGISTYKA L\196\132DOWA",
      "EXP"
    }
  },
  exp1_kurier = {
    pos = {
      1150.77,
      1276.61,
      12.32,
      0,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200KURIER",
      "EXP"
    }
  },
  exp1_drwal = {
    pos = {
      -1997.71,
      -2387.21,
      30.69,
      20,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200DRWAL",
      "EXP"
    }
  },
  exp1_konwojent = {
    pos = {
      1252.81,
      -1643.81,
      13.57,
      0,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200KONWOJENT BANKOWY",
      "EXP"
    }
  },
  exp1_tramwajarz = {
    pos = {
      -2272.23,
      535.58,
      34.72,
      90,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200TRAMWAJARZ",
      "EXP"
    }
  },
  exp1_autobusy = {
    pos = {
      2561.7,
      1178.21,
      10.93,
      90,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200KIEROWCA AUTOBUSU",
      "EXP"
    }
  },
  kg_kopalnia1 = {
    pos = {
      2587.07,
      -536.03,
      1780.05,
      -50,
      45
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200G\195\147RNIK",
      "KG"
    }
  },
  exp1_magazynier = {
    pos = {
      105.3,
      -308.48,
      1.64,
      128.3,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200MAGAZYNIER",
      "EXP"
    }
  },
  event_zakonczenie = {
    pos = {
      1707.95,
      1159.46,
      10.77,
      0,
      0
    },
    text = {
      "NAJLEPSZY CZAS W EVENCIE HALLOWEEN",
      "",
      false
    }
  },
  exp1_lawety = {
    pos = {
      1090.73,
      1941.91,
      10.81,
      0,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200LAWECIARZ",
      "EXP"
    }
  },
  exp1_kosiarki = {
    pos = {
      -342.27,
      -1044.49,
      59.2,
      80,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200KOSIARKI",
      "EXP"
    }
  },
  exp1_helikoptery = {
    pos = {
      -1458.6,
      -543.22,
      14.15,
      112,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200LOGISTYKA LOTNICZA",
      "EXP"
    }
  },
  kilometry_odsniezarki_ranking = {
    pos = {
      -1532.5,
      2614.21,
      55.84,
      319.61,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200OD\197\154NIE\197\187ARKI",
      "EXP"
    }
  },
  exp1_restauracja = {
    pos = {
      835.96,
      -2829.36,
      544.8,
      0,
      1
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200RESTAURACJA",
      "EXP"
    }
  },
  exp1_farmer = {
    pos = {
      -1196.35,
      -1030.88,
      129.22,
      90,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200FARMER",
      "EXP"
    }
  },
  exp1_budowlaniec = {
    pos = {
      2671.39,
      815,
      10.79,
      50,
      0
    },
    text = {
      "TOP 10 NAJLEPSZYCH GRACZY: #ffb200BUDOWLANIEC",
      "EXP"
    }
  }
}
for _FORV_4_, _FORV_5_ in pairs(possitions) do
  _FORV_5_.obj = createObject(3077, _FORV_5_.pos[1], _FORV_5_.pos[2], _FORV_5_.pos[3] - 1, 0, 0, _FORV_5_.pos[4])
  _FORV_5_.shape = createColSphere(_FORV_5_.pos[1], _FORV_5_.pos[2], _FORV_5_.pos[3], 25)
  setElementDimension(_FORV_5_.obj, _FORV_5_.pos[5])
  addEventHandler("onClientColShapeHit", _FORV_5_.shape, function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer then
      if _UPVALUE0_ == "event_zakonczenie" then
        triggerServerEvent("ev", resourceRoot, "renderInfo", localPlayer, _UPVALUE0_, true)
      else
        triggerServerEvent("ev", resourceRoot, "renderInfo", localPlayer, _UPVALUE0_)
      end
    end
  end)
  addEventHandler("onClientColShapeLeave", _FORV_5_.shape, function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer then
      if isElement(possitions[_UPVALUE0_].shader) then
        destroyElement(possitions[_UPVALUE0_].shader)
        possitions[_UPVALUE0_].shader = false
      end
      if isElement(possitions[_UPVALUE0_].rt) then
        destroyElement(possitions[_UPVALUE0_].rt)
        possitions[_UPVALUE0_].rt = false
      end
    end
  end)
end
function render(_ARG_0_, _ARG_1_)
  if not _ARG_1_ then
    return
  end
  if not possitions[_ARG_0_] then
    return
  end
  if not possitions[_ARG_0_].shader then
    possitions[_ARG_0_].shader = dxCreateShader("img/shader.fx")
  end
  if not possitions[_ARG_0_].rt then
    possitions[_ARG_0_].rt = dxCreateRenderTarget(750, 450, true)
  end
  possitions[_ARG_0_].result = _ARG_1_
  dxSetRenderTarget(possitions[_ARG_0_].rt, true)
  dxDrawRectangle(0, 0, 750, 450, tocolor(25, 25, 25, 255))
  dxDrawRectangle(40, 28, 680, 2, tocolor(255, 178, 0, 255))
  dxDrawText(possitions[_ARG_0_].text[1], 700, 0, 50, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font17"), "center", "top", false, false, false, true, false)
  if _ARG_1_ then
    for _FORV_6_, _FORV_7_ in pairs(_ARG_1_) do
      if _FORV_6_ <= 10 then
        takY = _FORV_7_[2]
        if 1 <= takY then
          takY = _FORV_7_[2]
        else
          takY = 1
        end
        dxDrawRoundedRectangle(60, 50 + 40 * (_FORV_6_ - 1), 665, 18, 5, tocolor(45, 45, 45, 255), 2)
        if _FORV_6_ == 1 then
          r, g, b = 255, 178, 0
          rt, gt, bt = 255, 178, 0
        elseif _FORV_6_ == 2 then
          r, g, b = 169, 166, 172
          rt, gt, bt = 169, 166, 172
        elseif _FORV_6_ == 3 then
          r, g, b = 185, 139, 95
          rt, gt, bt = 185, 139, 95
        else
          r, g, b = 70, 70, 70
          rt, gt, bt = 150, 150, 150
        end
        lastY = takY / _FORV_7_[4] * 630 + 15
        dxDrawRoundedRectangle(60, 50 + 40 * (_FORV_6_ - 1), 20 + lastY, 18, 5, tocolor(r, g, b, 255), 2)
        dxDrawText(_FORV_6_, 25, 46 + 40 * (_FORV_6_ - 1), 50, 2, tocolor(rt, gt, bt), 1, exports.ST_gui:getGUIFont("font18"), "right", "top", false, false, false, true, false)
        dxDrawText(_FORV_7_[1], 65, 27 + 40 * (_FORV_6_ - 1), 125, 2, tocolor(rt, gt, bt), 1, exports.ST_gui:getGUIFont("normal14"), "left", "top", false, false, false, true, false)
        dxDrawText(_FORV_7_[2] .. " " .. possitions[_ARG_0_].text[2], 50, 50 + 40 * (_FORV_6_ - 1), 720, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font13"), "right", "top", false, false, false, true, false)
      end
    end
  end
  if possitions[_ARG_0_].text[3] == nil then
    dxDrawText("TOP #ffb2003 #ffffffnajlepszych graczy otrzyma #ffb200premi\196\153 zarobk\195\179w #ffffffna nast\196\153pny tydzie\197\132 w danej pracy", 700, 431, 50, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font10"), "center", "top", false, false, false, true, false)
  end
  dxSetRenderTarget()
  dxSetShaderValue(possitions[_ARG_0_].shader, "gTexture", possitions[_ARG_0_].rt)
  if possitions[_ARG_0_].obj and isElement(possitions[_ARG_0_].obj) then
    engineApplyShaderToWorldTexture(possitions[_ARG_0_].shader, "nf_blackbrd", possitions[_ARG_0_].obj)
  end
end
function rendernew(_ARG_0_, _ARG_1_)
  if not _ARG_1_ then
    return
  end
  if not possitions[_ARG_0_] then
    return
  end
  if not possitions[_ARG_0_].shader then
    possitions[_ARG_0_].shader = dxCreateShader("img/shader.fx")
  end
  if not possitions[_ARG_0_].rt then
    possitions[_ARG_0_].rt = dxCreateRenderTarget(750, 450, true)
  end
  possitions[_ARG_0_].result = _ARG_1_
  dxSetRenderTarget(possitions[_ARG_0_].rt, true)
  dxDrawRectangle(0, 0, 750, 450, tocolor(25, 25, 25, 255))
  dxDrawRectangle(40, 28, 680, 2, tocolor(255, 178, 0, 255))
  dxDrawText(possitions[_ARG_0_].text[1], 700, 0, 50, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font17"), "center", "top", false, false, false, true, false)
  if _ARG_1_ then
    for _FORV_6_, _FORV_7_ in pairs(_ARG_1_) do
      if _FORV_6_ <= 15 then
        if _FORV_7_[2] == "0000-00-00 00:00:00" then
          yD = 100 / _FORV_7_[4] * 630
        else
          yD = 100 / _FORV_7_[4] * 630
        end
        dxDrawRoundedRectangle(60, 36 + 27.5 * (_FORV_6_ - 1), 665, 21, 5, tocolor(45, 45, 45, 255), 2)
        if _FORV_6_ == 1 then
          r, g, b = 255, 178, 0
          rt, gt, bt = 255, 178, 0
        elseif _FORV_6_ == 2 then
          r, g, b = 169, 166, 172
          rt, gt, bt = 169, 166, 172
        elseif _FORV_6_ == 3 then
          r, g, b = 185, 139, 95
          rt, gt, bt = 185, 139, 95
        else
          r, g, b = 70, 70, 70
          rt, gt, bt = 150, 150, 150
        end
        lastY = yD + 15
        dxDrawRoundedRectangle(60, 36 + 27.5 * (_FORV_6_ - 1), 20 + lastY, 21, 5, tocolor(r, g, b, 255), 2)
        dxDrawText(_FORV_6_, 25, 35 + 27.5 * (_FORV_6_ - 1), 50, 2, tocolor(rt, gt, bt), 1, exports.ST_gui:getGUIFont("font14"), "right", "top", false, false, false, true, false)
        dxDrawText(_FORV_7_[1], 65, 36 + 27.5 * (_FORV_6_ - 1), 125, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("normal12"), "left", "top", false, false, false, true, false)
        dxDrawText(_FORV_7_[2] .. " " .. possitions[_ARG_0_].text[2], 50, 36 + 27.5 * (_FORV_6_ - 1), 720, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font12"), "right", "top", false, false, false, true, false)
      end
    end
  end
  if possitions[_ARG_0_].text[3] == nil then
    dxDrawText("TOP #ffb2003 #ffffffnajlepszych graczy otrzyma #ffb200premi\196\153 zarobk\195\179w #ffffffna nast\196\153pny tydzie\197\132 w danej pracy", 700, 431, 50, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font10"), "center", "top", false, false, false, true, false)
  end
  dxSetRenderTarget()
  dxSetShaderValue(possitions[_ARG_0_].shader, "gTexture", possitions[_ARG_0_].rt)
  if possitions[_ARG_0_].obj and isElement(possitions[_ARG_0_].obj) then
    engineApplyShaderToWorldTexture(possitions[_ARG_0_].shader, "nf_blackbrd", possitions[_ARG_0_].obj)
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "renderInfoClient" then
    if _ARG_3_ then
      totalmoney = 0
      maxEarn = 0
      minEarn = 99999999
      for _FORV_8_, _FORV_9_ in pairs(_ARG_1_) do
        _FORV_9_[3] = 0
        _FORV_9_[4] = 100
      end
      rendernew(_ARG_2_, _ARG_1_)
    else
      totalmoney = 0
      maxEarn = 0
      minEarn = 99999999
      for _FORV_8_, _FORV_9_ in pairs(_ARG_1_) do
        totalmoney = totalmoney + tonumber(_FORV_9_[2])
        if maxEarn < tonumber(_FORV_9_[2]) then
          maxEarn = tonumber(_FORV_9_[2])
        elseif minEarn > tonumber(_FORV_9_[2]) then
          minEarn = tonumber(_FORV_9_[2])
        end
        _FORV_9_[3] = totalmoney
        _FORV_9_[4] = maxEarn
      end
      render(_ARG_2_, _ARG_1_)
    end
  elseif _ARG_0_ == "renderInfoCasinoClient" then
    totalmoney = 0
    maxEarn = 0
    minEarn = 99999999
    for _FORV_8_, _FORV_9_ in pairs(_ARG_1_) do
      totalmoney = totalmoney + tonumber(_FORV_9_[2])
      if maxEarn < tonumber(_FORV_9_[2]) then
        maxEarn = tonumber(_FORV_9_[2])
      elseif minEarn > tonumber(_FORV_9_[2]) then
        minEarn = tonumber(_FORV_9_[2])
      end
      _FORV_9_[3] = totalmoney
      _FORV_9_[4] = maxEarn
    end
    renderCasino(_ARG_2_, _ARG_1_)
  end
end)
possitionsCasino = {
  profit_casino = {
    pos = {
      2848,
      -1425.8,
      10.9,
      0,
      0
    },
    text = {
      "TOP 10 WYGRANYCH GRACZY NA KASYNIE",
      "PLN"
    }
  },
  minus_casino = {
    pos = {
      2857.03,
      -1425.8,
      10.9,
      0,
      0
    },
    text = {
      "TOP 10 PRZEGRANYCH GRACZY NA KASYNIE",
      "PLN"
    }
  }
}
for _FORV_4_, _FORV_5_ in pairs(possitionsCasino) do
  _FORV_5_.obj = createObject(3077, _FORV_5_.pos[1], _FORV_5_.pos[2], _FORV_5_.pos[3] - 1, 0, 0, _FORV_5_.pos[4])
  _FORV_5_.shape = createColSphere(_FORV_5_.pos[1], _FORV_5_.pos[2], _FORV_5_.pos[3], 15)
  setElementDimension(_FORV_5_.obj, _FORV_5_.pos[5])
  addEventHandler("onClientColShapeHit", _FORV_5_.shape, function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer then
      triggerServerEvent("ev", resourceRoot, "renderInfoCasino", localPlayer, _UPVALUE0_)
    end
  end)
  addEventHandler("onClientColShapeLeave", _FORV_5_.shape, function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer then
      if isElement(possitionsCasino[_UPVALUE0_].shader) then
        destroyElement(possitionsCasino[_UPVALUE0_].shader)
        possitionsCasino[_UPVALUE0_].shader = false
      end
      if isElement(possitionsCasino[_UPVALUE0_].rt) then
        destroyElement(possitionsCasino[_UPVALUE0_].rt)
        possitionsCasino[_UPVALUE0_].rt = false
      end
    end
  end)
end
function renderCasino(_ARG_0_, _ARG_1_)
  if not _ARG_1_ then
    return
  end
  if not possitionsCasino[_ARG_0_] then
    return
  end
  if not possitionsCasino[_ARG_0_].shader then
    possitionsCasino[_ARG_0_].shader = dxCreateShader("img/shader.fx")
  end
  if not possitionsCasino[_ARG_0_].rt then
    possitionsCasino[_ARG_0_].rt = dxCreateRenderTarget(750, 450, true)
  end
  possitionsCasino[_ARG_0_].result = _ARG_1_
  dxSetRenderTarget(possitionsCasino[_ARG_0_].rt, true)
  dxDrawRectangle(0, 0, 750, 450, tocolor(25, 25, 25, 255))
  dxDrawRectangle(40, 28, 680, 2, tocolor(255, 178, 0, 255))
  dxDrawText(possitionsCasino[_ARG_0_].text[1], 700, 0, 50, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font17"), "center", "top", false, false, false, true, false)
  if _ARG_1_ then
    for _FORV_6_, _FORV_7_ in pairs(_ARG_1_) do
      if _FORV_6_ <= 10 then
        takY = _FORV_7_[2]
        if 1 <= takY then
          takY = _FORV_7_[2]
        else
          takY = 1
        end
        dxDrawRoundedRectangle(60, 50 + 40 * (_FORV_6_ - 1), 665, 18, 5, tocolor(45, 45, 45, 255), 2)
        if _FORV_6_ == 1 then
          r, g, b = 255, 178, 0
          rt, gt, bt = 255, 178, 0
        elseif _FORV_6_ == 2 then
          r, g, b = 169, 166, 172
          rt, gt, bt = 169, 166, 172
        elseif _FORV_6_ == 3 then
          r, g, b = 185, 139, 95
          rt, gt, bt = 185, 139, 95
        else
          r, g, b = 70, 70, 70
          rt, gt, bt = 150, 150, 150
        end
        lastY = takY / _FORV_7_[4] * 630 + 15
        dxDrawRoundedRectangle(60, 50 + 40 * (_FORV_6_ - 1), 20 + lastY, 18, 5, tocolor(r, g, b, 255), 2)
        dxDrawText(_FORV_6_, 25, 46 + 40 * (_FORV_6_ - 1), 50, 2, tocolor(rt, gt, bt), 1, exports.ST_gui:getGUIFont("font18"), "right", "top", false, false, false, true, false)
        dxDrawText(_FORV_7_[1], 65, 27 + 40 * (_FORV_6_ - 1), 125, 2, tocolor(rt, gt, bt), 1, exports.ST_gui:getGUIFont("normal14"), "left", "top", false, false, false, true, false)
        if _ARG_0_ == "minus_casino" then
          dxDrawText("-" .. przecinek(_FORV_7_[2]) .. " " .. possitionsCasino[_ARG_0_].text[2], 50, 50 + 40 * (_FORV_6_ - 1), 720, 2, tocolor(255, 230, 230), 1, exports.ST_gui:getGUIFont("font13"), "right", "top", false, false, false, true, false)
        else
          dxDrawText("+" .. przecinek(_FORV_7_[2]) .. " " .. possitionsCasino[_ARG_0_].text[2], 50, 50 + 40 * (_FORV_6_ - 1), 720, 2, tocolor(200, 255, 200), 1, exports.ST_gui:getGUIFont("font13"), "right", "top", false, false, false, true, false)
        end
      end
    end
  end
  dxSetRenderTarget()
  dxSetShaderValue(possitionsCasino[_ARG_0_].shader, "gTexture", possitionsCasino[_ARG_0_].rt)
  if possitionsCasino[_ARG_0_].obj and isElement(possitionsCasino[_ARG_0_].obj) then
    engineApplyShaderToWorldTexture(possitionsCasino[_ARG_0_].shader, "nf_blackbrd", possitionsCasino[_ARG_0_].obj)
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
getResourceName(getThisResource(), true, 374337922)
return
