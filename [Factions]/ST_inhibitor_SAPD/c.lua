engineImportTXD(engineLoadTXD("taser.txd"), 347)
engineReplaceModel(engineLoadDFF("taser.dff", 347), 347)
function strzal(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_)
  if _ARG_0_ == 23 then
    strzal(_ARG_3_, _ARG_4_, _ARG_5_, _ARG_7_, _ARG_8_, _ARG_9_)
    if source == localPlayer then
      strzal()
    end
  end
end
addEventHandler("onClientPlayerWeaponFire", getRootElement(), strzal)
getResourceName(getThisResource(), true, 592074338)
return
