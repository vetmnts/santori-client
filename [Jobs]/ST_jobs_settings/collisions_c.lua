addEvent("wylaczKolizje", true)
addEventHandler("wylaczKolizje", localPlayer, function(_ARG_0_)
  for _FORV_4_, _FORV_5_ in pairs(getElementsByType("vehicle")) do
    setElementCollidableWith(_ARG_0_, _FORV_5_, false)
    setElementCollidableWith(_FORV_5_, _ARG_0_, false)
  end
end)
getResourceName(getThisResource(), true, 43436292)
return
