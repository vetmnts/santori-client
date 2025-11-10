function dodajExp(_ARG_0_)
  if getElementData(localPlayer, "player:exp") + _ARG_0_ >= getElementData(localPlayer, "player:maxExpLvl") then
    triggerServerEvent("ev_level", resourceRoot, "gjfsdkgjddsa", localPlayer, true, getElementData(localPlayer, "player:exp") + _ARG_0_ - getElementData(localPlayer, "player:maxExpLvl"))
  else
    triggerServerEvent("ev_level", resourceRoot, "gjfsdkgjddsa", localPlayer, false, getElementData(localPlayer, "player:exp") + _ARG_0_)
  end
end
function addExp(_ARG_0_)
  dodajExp(_ARG_0_)
end
function setLevel(_ARG_0_)
end
function setExp(_ARG_0_)
end
function getLevel()
  return getElementData(localPlayer, "player:lvl")
end
function getExp()
  return getElementData(localPlayer, "player:exp")
end
addEvent("addExpCFDJUDF", true)
addEventHandler("addExpCFDJUDF", localPlayer, function(_ARG_0_)
  dodajExp(_ARG_0_)
end)
getResourceName(getThisResource(), true, 709147042)
return
