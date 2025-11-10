engineImportTXD(engineLoadTXD("f/file.txd"), 16101)
engineReplaceModel(engineLoadDFF("f/file.dff"), 16101)
engineReplaceCOL(engineLoadCOL("f/file.col"), 16101)
for _FORV_13_, _FORV_14_ in pairs({
  {
    object = {
      1361.57,
      824.87,
      6.94,
      -110
    },
    speed = 150,
    size = 50
  },
  {
    object = {
      1818.42,
      864.7,
      10.8,
      80
    },
    speed = 150,
    size = 50
  },
  {
    object = {
      1572.91,
      993.66,
      10.82,
      -15
    },
    speed = 150,
    size = 40
  },
  {
    object = {
      1334.99,
      -1415.2,
      13.55,
      160
    },
    speed = 180,
    size = 50
  },
  {
    object = {
      1397.02,
      -4.52,
      33.18,
      140
    },
    speed = 180,
    size = 50
  }
}) do
  addEventHandler("onClientColShapeHit", createColSphere(_FORV_14_.object[1], _FORV_14_.object[2], _FORV_14_.object[3], _FORV_14_.size), function(_ARG_0_, _ARG_1_)
    if not (_ARG_0_ == localPlayer and _ARG_1_) or not isPedInVehicle(_ARG_0_) then
      return
    end
    veh = getPedOccupiedVehicle(_ARG_0_)
    if getVehicleController(veh) ~= _ARG_0_ or getElementData(_ARG_0_, "player:faction") or getElementData(_ARG_0_, "player:job") then
    else
      if wlaczylFoto then
        return
      end
      if getElementData(localPlayer, "player:lvl") > 5 then
        speedLimit = math.ceil((getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2) ^ 0.5 * 161) - _UPVALUE0_.speed
        if math.ceil((getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2) ^ 0.5 * 161) > _UPVALUE0_.speed then
          money = (math.ceil((getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2) ^ 0.5 * 161) - _UPVALUE0_.speed) * 125
          if money >= 30000 then
            money = 30000
          else
            money = money
          end
          if getElementData(localPlayer, "player:moneyMNn") >= money then
            triggerServerEvent("ev", resourceRoot, "takeMoney", localPlayer, money)
            outputChatBox(" ", 255, 175, 0, true)
            outputChatBox("#ffffffOtrzymano mandat w wysoko\197\155ci: #F89700" .. money .. "#ffffff PLN. Przekroczona pr\196\153dko\197\155\196\135: #F89700" .. math.floor(math.ceil((getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2) ^ 0.5 * 161) - _UPVALUE0_.speed) .. " #ffffffkm/h", 255, 175, 0, true)
            outputChatBox(" ", 255, 175, 0, true)
          else
            money = getElementData(localPlayer, "player:moneyMNn")
            triggerServerEvent("ev", resourceRoot, "takeMoney", localPlayer, money)
            outputChatBox(" ", 255, 175, 0, true)
            outputChatBox("#ffffffOtrzymano mandat w wysoko\197\155ci: #F89700" .. money .. "#ffffff PLN. Przekroczona pr\196\153dko\197\155\196\135: #F89700" .. math.floor(math.ceil((getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2 + getElementVelocity(veh) ^ 2) ^ 0.5 * 161) - _UPVALUE0_.speed) .. " #ffffffkm/h", 255, 175, 0, true)
            outputChatBox(" ", 255, 175, 0, true)
          end
          wlaczylFoto = true
          fadeCamera(false, 1.5, 255, 255, 255)
          setTimer(fadeCameraDelayed, 500, 1)
          normal14 = exports.ST_gui:getGUIFont("normal14")
          model = getVehicleNameFromModel(getElementModel(veh))
          addEventHandler("onClientRender", root, render)
          dxUpdateScreenSource(_UPVALUE1_)
          playSound("f/radar.mp3")
          setTimer(function()
            removeEventHandler("onClientRender", root, render)
            wlaczylFoto = false
          end, 5000, 1)
        end
      end
    end
  end)
end
function fadeCameraDelayed()
  fadeCamera(true, 0.5)
end
function render()
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y - 130 / _UPVALUE1_, 450 / _UPVALUE1_, 250 / _UPVALUE1_, _UPVALUE2_, 0, 0, 0, tocolor(255, 255, 255, 222), false)
  dxDrawText("Pojazd: #f27900" .. exports.ST_core:changeNameClient(model, getElementData(veh, "vehicle:customID")) .. "\n#ffffffPrzekroczona pr\196\153dko\197\155\196\135: #f27900" .. speedLimit .. [[
 #ffffffkm/h
#ffffffKara: #f27900]] .. money .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y - 50 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 80 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, normal14, "right", "center", false, false, false, true, false)
end
getResourceName(getThisResource(), true, 558781276)
return
