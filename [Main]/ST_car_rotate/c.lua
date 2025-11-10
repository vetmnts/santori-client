addCommandHandler("op", function()
  if getTickCount() - _UPVALUE0_ > 5000 then
    if getElementData(localPlayer, "player:job") then
      if not getPedOccupiedVehicle(localPlayer) then
        return
      end
      triggerServerEvent("ev", resourceRoot, "rotate", localPlayer, (getPedOccupiedVehicle(localPlayer)))
    else
      if getPedOccupiedVehicle(localPlayer) then
        return
      end
      triggerServerEvent("ev", resourceRoot, "rotate", localPlayer, false, true)
    end
    _UPVALUE0_ = getTickCount()
  else
    exports.st_gui:showPlayerNotification("Pojazd mo\197\188esz obr\195\179ci\196\135 raz na 5 sekund", "info")
  end
end)
getResourceName(getThisResource(), true, 293319860)
return
