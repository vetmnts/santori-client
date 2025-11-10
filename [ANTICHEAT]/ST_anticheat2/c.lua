function addCheaterToTable(_ARG_0_)
end
function onPreFunction(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, ...)
  addCheaterToTable(localPlayer)
end
function debugEvent(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, ...)
  return "skip"
end
function debugFunction(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, ...)
  return "skip"
end
setTimer(function()
  if not getElementData(localPlayer, "player:level") then
    setDebugViewActive(false)
  end
  if _UPVALUE0_.createdHook ~= true then
    addCheaterToTable(localPlayer)
  end
  if _UPVALUE0_.hookEvent ~= true then
    addCheaterToTable(localPlayer)
  end
  if _UPVALUE0_.hookFunction ~= true then
    addCheaterToTable(localPlayer)
  end
end, 1000, 0)
