SW, SH = guiGetScreenSize()
zoom = 1
if 1920 > SW then
  zoom = math.min(2, 1920 / SW)
end
function getInterfaceZoom()
  return zoom
end
SW2, SH2 = guiGetScreenSize()
zoom2 = 1
if 1680 > SW2 then
  zoom2 = math.min(2, 1680 / SW2)
end
function getInterfaceZoom2()
  return zoom2
end
addEventHandler("onClientResourceStart", resourceRoot, function()
  loadGUIFonts()
end)
getResourceName(getThisResource(), true, 138306677)
return
