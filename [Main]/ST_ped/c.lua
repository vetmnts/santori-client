function ustawPeda(_ARG_0_)
  _ARG_0_.ped = createPed(_ARG_0_.skin, _ARG_0_.poz[1], _ARG_0_.poz[2], _ARG_0_.poz[3], _ARG_0_.rotz)
  setElementInterior(_ARG_0_.ped, _ARG_0_.int)
  setElementDimension(_ARG_0_.ped, _ARG_0_.dim)
  setTimer(setElementFrozen, 100, 1, _ARG_0_.ped, true)
  _ARG_0_.textPed = createElement("text")
  setElementData(_ARG_0_.textPed, "name", _ARG_0_.napis_nad_glowa)
  if _ARG_0_.textPos == false then
    setElementPosition(_ARG_0_.textPed, _ARG_0_.poz[1], _ARG_0_.poz[2], _ARG_0_.poz[3] + 1)
  else
    setElementPosition(_ARG_0_.textPed, _ARG_0_.textPos[1], _ARG_0_.textPos[2], _ARG_0_.textPos[3])
  end
  if _ARG_0_.kategoria_animacji and _ARG_0_.animacja then
    setTimer(setPedAnimation, 200, 1, _ARG_0_.ped, _ARG_0_.kategoria_animacji, _ARG_0_.animacja, -1, _ARG_0_.loop, false, false, true)
  end
end
function dodajPeda(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_)
  table.insert(_UPVALUE0_, {
    skin = _ARG_0_,
    poz = _ARG_1_,
    rotz = _ARG_2_,
    int = _ARG_3_,
    dim = _ARG_4_,
    napis_nad_glowa = _ARG_5_,
    kategoria_animacji = _ARG_6_,
    animacja = _ARG_7_,
    loop = _ARG_8_
  })
  ustawPeda(_UPVALUE0_[#_UPVALUE0_])
end
for _FORV_5_, _FORV_6_ in ipairs({
  {
    skin = 203,
    poz = {
      1481.2,
      -1804.07,
      18.35
    },
    rotz = 0,
    int = 0,
    dim = 0,
    napis_nad_glowa = "#ffffff[#0077ff215#ffffff] #ffffffGunTVYT",
    kategoria_animacji = "int_office",
    animacja = "OFF_SIT_Type_Loop",
    loop = true,
    textPos = false
  },
  {
    skin = 205,
    poz = {
      1474.71,
      -1807.32,
      18.73
    },
    rotz = 0,
    int = 0,
    dim = 0,
    napis_nad_glowa = "#ffffff[#f13f3f116#ffffff] #ffffffKebsiaa",
    kategoria_animacji = "int_office",
    animacja = "OFF_SIT_Type_Loop",
    loop = true,
    textPos = false
  },
  {
    skin = 124,
    poz = {
      1487.88,
      -1807.23,
      18.73
    },
    rotz = 0,
    int = 0,
    dim = 0,
    napis_nad_glowa = "#ffffff[#8426b83#ffffff] #ffffffRivivaMixerPL",
    kategoria_animacji = "COP_AMBIENT",
    animacja = "Coplook_loop",
    loop = true,
    textPos = false
  },
  {
    skin = 204,
    poz = {
      1494.01,
      -1807.49,
      18.73
    },
    rotz = 0,
    int = 0,
    dim = 0,
    napis_nad_glowa = "#ffffff[#8426b82#ffffff] #ffffffNexciq",
    kategoria_animacji = "GANGS",
    animacja = "prtial_gngtlkC",
    loop = true,
    textPos = false
  },
  {
    skin = 169,
    poz = {
      1468.69,
      -1807.49,
      18.73
    },
    rotz = 0,
    int = 0,
    dim = 0,
    napis_nad_glowa = "#ffffff[#8426b810#ffffff] #ffffffFrostDean",
    kategoria_animacji = "COP_AMBIENT",
    animacja = "Coplook_loop",
    loop = true,
    textPos = false
  },
  {
    skin = 62,
    poz = {
      1470.18,
      -1788.71,
      19.44
    },
    rotz = 90,
    int = 0,
    dim = 0,
    napis_nad_glowa = "#ffffff[#8426b85#ffffff] #ffffffR3mix",
    kategoria_animacji = "BEACH",
    animacja = "Lay_Bac_Loop",
    loop = true,
    textPos = {
      1470.84,
      -1788.63,
      19
    }
  },
  {
    skin = 55,
    poz = {
      1467.76,
      -1790.62,
      19.44
    },
    rotz = -10,
    int = 0,
    dim = 0,
    napis_nad_glowa = "#ffffff[#8426b86#ffffff] #ffffffGrevarien",
    kategoria_animacji = "BEACH",
    animacja = "Lay_Bac_Loop",
    loop = true,
    textPos = {
      1467.76,
      -1791.12,
      19
    }
  },
  {
    skin = 260,
    poz = {
      2584.88,
      -532.2,
      1780.05
    },
    rotz = 130,
    int = 0,
    dim = 45,
    napis_nad_glowa = "#ffffffKowal",
    kategoria_animacji = "GANGS",
    animacja = "prtial_gngtlkC",
    loop = true,
    textPos = {
      2584.88,
      -532.2,
      1781.05
    }
  }
}) do
  ustawPeda(_FORV_6_)
end
setTimer(function()
  for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE0_) do
    if isElementStreamedIn(_FORV_7_.ped) and getDistanceBetweenPoints3D(getElementPosition(localPlayer)) <= 310 and getElementDimension(localPlayer) == _FORV_7_.dim and getElementInterior(localPlayer) == _FORV_7_.int and getPedAnimation(_FORV_7_.ped) ~= _FORV_7_.kategoria_animacji and getPedAnimation(_FORV_7_.ped) ~= _FORV_7_.animacja then
      setPedAnimation(_FORV_7_.ped, _FORV_7_.kategoria_animacji, _FORV_7_.animacja, -1, _FORV_7_.loop, false, false, true)
    end
  end
end, 10000, 0)
addEventHandler("onClientPedDamage", resourceRoot, function()
  cancelEvent()
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_)
  if _ARG_0_ == "dodajPeda" then
    dodajPeda(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_)
  elseif _ARG_0_ == "g" then
    triggerServerEvent("ev", resourceRoot, "g", "xd")
  end
end)
getResourceName(getThisResource(), true, 919811293)
return
