function setDiscordRichPresence()
  if setDiscordApplicationID("1204166574366265384") then
    updateRpc()
    setDiscordRichPresenceAsset("https://i.imgur.com/tC2JkRT.png", "SantoriRPG")
    setDiscordRichPresenceButton(1, "Do\197\130\196\133cz do gry", "mtasa://51.83.172.145:22999")
    setDiscordRichPresenceButton(2, "Forum", "https://forum.santori.xyz/")
  end
end
function updateRpc()
  setDiscordRichPresenceDetails("Nick: " .. getPlayerName(localPlayer) .. " \226\148\130 Online: " .. #getElementsByType("player") .. "/350")
  if getElementData(localPlayer, "player:job") then
    setDiscordRichPresenceState("Praca: " .. getElementData(localPlayer, "player:job"))
  else
    setDiscordRichPresenceState("Lokalizacja: San Andreas")
  end
end
setTimer(function()
  updateRpc()
end, 60000, 0)
setDiscordRichPresence()
getResourceName(getThisResource(), true, 34842794)
return
