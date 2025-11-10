function loadstringDetect(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, ...)
  triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "debug[2] **" .. (_ARG_0_ and getResourceName(_ARG_0_)) .. "** " .. _ARG_3_ .. ":" .. _ARG_4_ .. " " .. ({
    ...
  })[1] .. " - client - " .. getPlayerSerial(localPlayer), "k")
  return "skip"
end
addDebugHook("preFunction", loadstringDetect, {
  "loadstring",
  "pcall",
  "load"
})
function onPreFunction(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE0_) do
    if _ARG_5_:find(_FORV_10_) then
      triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "debug[1] - client - " .. getPlayerSerial(localPlayer), "k")
      break
    end
  end
end
function checkLoadString()
  addDebugHook("preFunction", onPreFunction, {"loadstring"})
end
addEventHandler("onClientResourceStart", resourceRoot, checkLoadString)
addEventHandler("onClientPaste", root, function(_ARG_0_)
  for _FORV_4_ = 1, #_UPVALUE0_ do
    if _ARG_0_:gsub("\n", " "):gsub("\r", " "):find(_UPVALUE0_[_FORV_4_]) then
      triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "@everyone paste: " .. _ARG_0_ .. " - " .. getPlayerSerial(localPlayer) .. " " .. getPlayerName(localPlayer))
      setTimer(function()
        triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "logBan", localPlayer)
      end, math.random(1000, 3000), 1)
      return false
    end
  end
end)
addEventHandler("onClientGUIChanged", root, function()
  for _FORV_3_ = 1, #_UPVALUE0_ do
    if guiGetText(source):gsub("\n", " "):gsub("\r", " "):find(_UPVALUE0_[_FORV_3_]) then
      triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "guichange: " .. guiGetText(source) .. " - " .. getPlayerSerial(localPlayer) .. " " .. getPlayerName(localPlayer))
      setTimer(function()
        triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "logBan", localPlayer)
      end, math.random(1000, 3000), 1)
      return false
    end
  end
end)
function stopAntiCheat(_ARG_0_)
  if localPlayer == source then
    for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE0_) do
      if getResourceName(_ARG_0_) == _FORV_6_ then
        triggerServerEvent("evEwenciks_fdshjtrs", resourceRoot, "discordLog1", "pr\195\179ba wy\197\130\196\133czenia skryptu " .. _FORV_6_ .. " - client - " .. getPlayerSerial(localPlayer), "k")
        cancelEvent()
        break
      end
    end
  end
end
addEventHandler("onClientResourceStop", resourceRoot, stopAntiCheat)
