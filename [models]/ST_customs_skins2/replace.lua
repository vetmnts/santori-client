for _FORV_5_, _FORV_6_ in ipairs({
  "Skin_79_101",
  "Skin_79_102",
  "Skin_79_103",
  "Skin_79_104",
  "Skin_79_105",
  "Skin_79_106",
  "Skin_79_107",
  "Skin_79_108",
  "Skin_79_109",
  "Skin_79_110",
  "Skin_79_111",
  "Skin_79_112",
  "Skin_79_113",
  "Skin_79_114",
  "Skin_79_115",
  "Skin_79_116",
  "Skin_79_117",
  "Skin_79_118",
  "Skin_79_119",
  "Skin_79_120",
  "Skin_79_121",
  "Skin_79_122",
  "Skin_79_123",
  "Skin_79_124",
  "Skin_79_125",
  "Skin_79_126",
  "Skin_79_127",
  "Skin_79_128",
  "Skin_79_129",
  "Skin_79_130",
  "Skin_79_131",
  "Skin_79_132",
  "Skin_79_133",
  "Skin_79_134",
  "Skin_79_135",
  "Skin_79_136",
  "Skin_79_137",
  "Skin_79_138",
  "Skin_79_139",
  "Skin_79_140",
  "Skin_79_141",
  "Skin_79_142",
  "Skin_79_143",
  "Skin_79_144"
}) do
  if engineLoadDFF(_FORV_6_ .. ".dff") and engineLoadTXD(_FORV_6_ .. ".txd") then
    exports.ST_customs_skins:replaceModel(_FORV_6_, 79, engineLoadDFF(_FORV_6_ .. ".dff"), (engineLoadTXD(_FORV_6_ .. ".txd")))
  else
  end
end
function loadCustomSkin(_ARG_0_)
  if not string.find(_ARG_0_, "^Skin_79_%d+$") or 15 < #_ARG_0_ then
    return
  end
  if not fileExists(_ARG_0_ .. ".dff") or not fileExists(_ARG_0_ .. ".txd") then
    return
  end
  if not engineLoadDFF(_ARG_0_ .. ".dff") then
    return
  end
  if not engineLoadTXD(_ARG_0_ .. ".txd") then
    return
  end
  if getResourceFromName("ST_customs_skins") then
    exports.ST_customs_skins:replaceModel(_ARG_0_, 79, engineLoadDFF(_ARG_0_ .. ".dff"), (engineLoadTXD(_ARG_0_ .. ".txd")))
  else
  end
end
getResourceName(getThisResource(), true, 458705446)
return
