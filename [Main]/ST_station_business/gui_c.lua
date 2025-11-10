screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = screenW / 2 - 1300 / zoom / 2,
  y = screenH / 2 - 815 / zoom / 2,
  w = 1300 / zoom,
  h = 815 / zoom
}
windows = {
  main = false,
  background = false,
  orders = false,
  orders_select_truck = false,
  charges = false,
  improvement = false,
  statistics = false,
  fuelPrices = false,
  funds = false,
  buyBusiness = false
}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(windowPos.x - 1 / zoom, windowPos.y - 1 / zoom, windowPos.w + 2 / zoom, windowPos.h + 2 / zoom, 20 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, windowPos.w, windowPos.h, 25 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, 215 / zoom, windowPos.h, 25 / zoom, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, 7 / zoom, windowPos.h, 2 / zoom, tocolor(55, 55, 55, 255), false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(category) do
      xY = xY + 1
      if isMouseIn(windowPos.x, windowPos.y + 70 / zoom * (xY - 1), 210 / zoom, 70 / zoom) then
        dxDrawRoundedRectangle(windowPos.x, windowPos.y + 70 / zoom * (xY - 1), 210 / zoom, 70 / zoom, 25 / zoom, tocolor(25, 25, 25, 150), false)
        dxDrawImage(windowPos.x + 10 / zoom, windowPos.y + 10 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        dxDrawText(_FORV_8_.text, windowPos.x + 80 / zoom, windowPos.y - 130 / zoom + 140 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
      else
        dxDrawImage(windowPos.x + 10 / zoom, windowPos.y + 10 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_.text, windowPos.x + 80 / zoom, windowPos.y - 130 / zoom + 140 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(windowPos.x + 10 / zoom, windowPos.y + 770 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(windowPos.x + 9 / zoom, windowPos.y + 769 / zoom, 32 / zoom, 32 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(windowPos.x + 10 / zoom, windowPos.y + 770 / zoom, 30 / zoom, 30 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.main == true then
    dxDrawText("CENY ORAZ ZAPAS PALIWA NA STACJI", windowPos.x + 1650 / zoom, windowPos.y - 70 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 800 / zoom, windowPos.y + 85 / zoom, 400 / zoom, 2 / zoom, 2 / zoom, tocolor(100, 100, 100, 255), false)
    dxDrawText("DZIA\197\129ALNO\197\154\196\134", windowPos.x + 340 / zoom, windowPos.y + 880 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(windowPos.x + 250 / zoom, windowPos.y + 520 / zoom, 80 / zoom, 80 / zoom, textures.organization_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(dataInfo.name, windowPos.x + 340 / zoom, windowPos.y + 960 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    dxDrawText("SALDO", windowPos.x + 340 / zoom, windowPos.y + 1180 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(windowPos.x + 250 / zoom, windowPos.y + 670 / zoom, 80 / zoom, 80 / zoom, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      dxDrawText(przecinek(_FORV_8_.money), windowPos.x + 340 / zoom, windowPos.y + 1250 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    end
    dxDrawText("W\197\129A\197\154CICIEL", windowPos.x + 920 / zoom, windowPos.y + 880 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(windowPos.x + 820 / zoom, windowPos.y + 520 / zoom, 80 / zoom, 80 / zoom, textures.lider_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(dataInfo.owner, windowPos.x + 920 / zoom, windowPos.y + 960 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    dxDrawText("UMOWA WA\197\187NA DO", windowPos.x + 920 / zoom, windowPos.y + 1170 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(windowPos.x + 830 / zoom, windowPos.y + 670 / zoom, 80 / zoom, 80 / zoom, textures.create_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      dxDrawText(_FORV_8_.dateRent, windowPos.x + 920 / zoom, windowPos.y + 1250 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
      fuel = {
        {
          "ON",
          textures.on_icon,
          _FORV_8_.on_cost,
          litres_magazyn[1]
        },
        {
          "95pb",
          textures.p95_icon,
          _FORV_8_.p95_cost,
          litres_magazyn[2]
        },
        {
          "LPG",
          textures.lpg_icon,
          _FORV_8_.lpg_cost,
          litres_magazyn[3]
        },
        {
          "ELECTRIC",
          textures.electric_icon,
          _FORV_8_.electric_cost,
          "`"
        },
        {
          "NITRO",
          textures.nitro_icon,
          _FORV_8_.nitro_cost,
          litres_magazyn[4]
        }
      }
    end
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(fuel) do
      xY = xY + 1
      dxDrawImage(windowPos.x + 800 / zoom, windowPos.y + 100 / zoom + 80 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_9_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if _FORV_9_[4] ~= "`" then
        dxDrawText(_FORV_9_[3] .. " PLN / L", windowPos.x + 870 / zoom, windowPos.y + 25 / zoom + 160 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_9_[4] .. " L - " .. _FORV_9_[4] / 50 .. " %", windowPos.x + 870 / zoom, windowPos.y + 92 / zoom + 160 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      else
        dxDrawText(_FORV_9_[3] .. " PLN / \197\129ADOWANIE", windowPos.x + 870 / zoom, windowPos.y + 62 / zoom + 160 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      end
    end
    if 0 < #earnData then
      for _FORV_12_, _FORV_13_ in pairs(earnData) do
        dxDrawLine(({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).x + 63 / zoom, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).y + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).h - 15 / zoom, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).x + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).w - 71 / zoom, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).y + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).h - 15 / zoom, tocolor(100, 100, 100, 255), 1)
        dxDrawLine(({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).x + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).w / (#earnData + 1) * _FORV_12_, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).y + 15 / zoom, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).x + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).w / (#earnData + 1) * _FORV_12_, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).y + 25 / zoom + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).h, tocolor(100, 100, 100, 255), 1)
      end
      for _FORV_12_, _FORV_13_ in pairs(earnData) do
        if _FORV_12_ == 1 then
        else
          dxDrawLine(({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).x + ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).w / (#earnData + 1) * (_FORV_12_ - 1), ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).y + ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).h - 15 / zoom, ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).x + ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).w / (#earnData + 1) * _FORV_12_, ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).y + ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
            x = windowPos.x + 240 / zoom,
            y = windowPos.y + 60 / zoom,
            w = windowPos.w - 750 / zoom,
            h = windowPos.h - 450 / zoom
          }).h - 15 / zoom, tocolor(255, 166, 0, 255), 2)
        end
        if not ({
          [_FORV_13_.totalmoney] = {
            y = ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).y + ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).h - 15 / zoom
          }
        })[_FORV_13_.totalmoney] then
          for _FORV_19_, _FORV_20_ in pairs({
            [_FORV_13_.totalmoney] = {
              y = ({
                x = windowPos.x + 240 / zoom,
                y = windowPos.y + 60 / zoom,
                w = windowPos.w - 750 / zoom,
                h = windowPos.h - 450 / zoom
              }).y + ({
                x = windowPos.x + 240 / zoom,
                y = windowPos.y + 60 / zoom,
                w = windowPos.w - 750 / zoom,
                h = windowPos.h - 450 / zoom
              }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
                x = windowPos.x + 240 / zoom,
                y = windowPos.y + 60 / zoom,
                w = windowPos.w - 750 / zoom,
                h = windowPos.h - 450 / zoom
              }).h - 15 / zoom
            }
          }) do
            if 25 >= math.abs(_FORV_20_.y - (({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).y + ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).h)) then
              break
            end
          end
          if false then
            dxDrawText(przecinek(_FORV_13_.totalmoney), ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).x, ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).y + ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).h - 10 / zoom, ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).x + 50 / zoom, ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).y + ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).h + 30 / zoom - _FORV_13_.totalmoney / earnDiagram.maxEarn * ({
              x = windowPos.x + 240 / zoom,
              y = windowPos.y + 60 / zoom,
              w = windowPos.w - 750 / zoom,
              h = windowPos.h - 450 / zoom
            }).h - 15 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "right", "center", false, false, false)
          end
        end
        dxDrawText(_FORV_13_.day, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).x + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).w / (#earnData + 1) * _FORV_12_, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).y + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).h + 35 / zoom, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).x + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).w / (#earnData + 1) * _FORV_12_, ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).y + ({
          x = windowPos.x + 240 / zoom,
          y = windowPos.y + 60 / zoom,
          w = windowPos.w - 750 / zoom,
          h = windowPos.h - 450 / zoom
        }).h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "top", false, false, false)
      end
      dxDrawText("Przych\195\179d biznesu w przeci\196\133gu 7 ostatnich dni wyni\195\179s\197\130 " .. przecinek(0 + _FORV_13_.totalmoney) .. " PLN", ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).x + ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).w / 2, ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).y + ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).h - 400 / zoom, ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).x + ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).w / 2, ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).y + ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "top", false, false, false)
    else
      dxDrawText("Tw\195\179j biznes nie ma podgl\196\133du do wykresu zarobk\195\179w", ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).x + ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).w / 2 - 90 / zoom, ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).y, ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).x + ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).w / 2, ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).y + ({
        x = windowPos.x + 240 / zoom,
        y = windowPos.y + 60 / zoom,
        w = windowPos.w - 750 / zoom,
        h = windowPos.h - 450 / zoom
      }).h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false)
    end
  end
  if windows.orders == true then
    dxDrawText("WYBIERZ CO CHCESZ ZAM\195\147WI\196\134", windowPos.x + 1150 / zoom, windowPos.y - 50 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
    dxDrawText("( ABY Z\197\129O\197\187Y\196\134 ZAM\195\147WIENIE WYMAGANA JEST CI\196\152\197\187AR\195\147WKA NA TERENIE DZIA\197\129ANO\197\154CI)", windowPos.x + 1150 / zoom, windowPos.y + 100 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      fuel = {
        {
          textures.on_icon,
          tonumber(wholesalePrice[3] / 10),
          tonumber(maxLiters - litres_magazyn[1]),
          number.on,
          number.on * tonumber(wholesalePrice[3] / 10)
        },
        {
          textures.p95_icon,
          tonumber(wholesalePrice[2] / 10),
          tonumber(maxLiters - litres_magazyn[2]),
          number.p95,
          number.p95 * tonumber(wholesalePrice[2] / 10)
        },
        {
          textures.lpg_icon,
          tonumber(wholesalePrice[1] / 10),
          tonumber(maxLiters - litres_magazyn[3]),
          number.lpg,
          number.lpg * tonumber(wholesalePrice[1] / 10)
        },
        {
          textures.nitro_icon,
          tonumber(wholesalePrice[4] / 10),
          tonumber(maxLiters - litres_magazyn[4]),
          number.nitro,
          number.nitro * tonumber(wholesalePrice[4] / 10)
        },
        {
          textures.canister_icon,
          tonumber(wholesalePrice[5]),
          tonumber(maxLiters - litres_magazyn[5]),
          number.kanistry,
          number.kanistry * tonumber(wholesalePrice[5] / 50)
        }
      }
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(fuel) do
      xY = xY + 1
      dxDrawImage(windowPos.x + 300 / zoom + 205 / zoom * (xY - 1), windowPos.y + 250 / zoom, 100 / zoom, 100 / zoom, _FORV_8_[1], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if _FORV_7_ == 5 then
        dxDrawText(_FORV_8_[2] .. " PLN / 50L", windowPos.x + 340 / zoom + 410 / zoom * (xY - 1), windowPos.y + 550 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
      else
        dxDrawText(_FORV_8_[2] .. " PLN / L", windowPos.x + 340 / zoom + 410 / zoom * (xY - 1), windowPos.y + 550 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("Mo\197\188esz zam\195\179wi\196\135\n" .. _FORV_8_[3] .. " litr\195\179w", windowPos.x + 340 / zoom + 410 / zoom * (xY - 1), windowPos.y + 710 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, false, false)
      if _FORV_8_[5] ~= 0 then
        for _FORV_14_, _FORV_15_ in ipairs(table_info) do
          if _FORV_15_.ulepszenie_tanszePaliwo == 1 then
            dxDrawText("KOSZT: " .. przecinek(math.floor(_FORV_8_[5] / 1.15)) .. " PLN (#00a310-15%#e6e6e6)", windowPos.x + 340 / zoom + 410 / zoom * (xY - 1), windowPos.y + 800 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
          else
            dxDrawText("KOSZT: " .. przecinek(math.floor(_FORV_8_[5])) .. " PLN", windowPos.x + 340 / zoom + 410 / zoom * (xY - 1), windowPos.y + 800 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
          end
        end
        exports.ST_buttons:dxCreateButton("ZAM\195\147W", windowPos.x + 270 / zoom + 205 / zoom * (xY - 1), windowPos.y + 525 / zoom, 160 / zoom, 45 / zoom, 255, 1)
      end
      dxDrawImage(windowPos.x + 275 / zoom + 205 / zoom * (xY - 1), windowPos.y + 400 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_8_[4], windowPos.x + 340 / zoom + 410 / zoom * (xY - 1), windowPos.y + 630 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("cyfry20"), "center", "center", false, false, false, false, false)
      dxDrawImage(windowPos.x + 400 / zoom + 205 / zoom * (xY - 1), windowPos.y + 400 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  elseif windows.orders_select_truck == true then
    dxDrawText("WYBIERZ CI\196\152\197\187AR\195\147WK\196\152, KT\195\147R\196\132 B\196\152DZIESZ TRANSPORTOWA\196\134 ZASOBY", windowPos.x + 1150 / zoom, windowPos.y - 50 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
    dxDrawText("( CI\196\152\197\187AR\195\147WKA MUSI ZNAJDOWA\196\134 SI\196\152 NA TERENIE DZIA\197\129ANO\197\154CI )", windowPos.x + 1150 / zoom, windowPos.y + 100 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    for _FORV_8_ = 1, 10 do
      dxDrawRoundedRectangle(windowPos.x + 405 / zoom, windowPos.y + 120 / zoom + 55 / zoom * (1 + 1 - 1), 700 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 45, 45, 50))
    end
    vehicle = {}
    for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("vehicle")) do
      if getDistanceBetweenPoints3D(posCenterStaion[1], posCenterStaion[2], posCenterStaion[3], getElementPosition(_FORV_9_)) < posCenterStaion[4] then
        table.insert(vehicle, {
          _FORV_9_,
          (getDistanceBetweenPoints3D(posCenterStaion[1], posCenterStaion[2], posCenterStaion[3], getElementPosition(_FORV_9_)))
        })
      end
    end
    for _FORV_9_, _FORV_10_ in ipairs(vehicle) do
      if getElementModel(_FORV_10_[1]) == 514 or getElementModel(_FORV_10_[1]) == 515 or getElementModel(_FORV_10_[1]) == 403 then
        if isMouseIn(windowPos.x + 405 / zoom, windowPos.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 405 / zoom, windowPos.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 65, 45, 200))
        else
          dxDrawRoundedRectangle(windowPos.x + 405 / zoom, windowPos.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 60, 45, 150))
        end
      else
        dxDrawRoundedRectangle(windowPos.x + 405 / zoom, windowPos.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
      end
      dxDrawText(exports.ST_core:changeNameClient((getVehicleName(_FORV_10_[1]))), windowPos.x + 420 / zoom, windowPos.y + 200 / zoom + 110 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText(getElementData(_FORV_10_[1], "vehicle:id"), windowPos.x, windowPos.y + 200 / zoom + 110 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 730 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    end
  end
  if windows.charges == true then
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, windowPos.w - 210 / zoom, 80 / zoom, 25 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(windowPos.x + 225 / zoom, windowPos.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.charges_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("OP\197\129ATY", windowPos.x + 310 / zoom, windowPos.y - 117 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    if isMouseIn(windowPos.x + 1220 / zoom, windowPos.y + 5 / zoom, 70 / zoom, 70 / zoom) then
      dxDrawImage(windowPos.x + 1220 / zoom, windowPos.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.exemption_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
      if isCursorShowing() then
        dxDrawText("Zwolnij biznes\n(spowoduje to usuni\196\153cie ulepsze\197\132 oraz salda biznesu)", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
        dxDrawText("Zwolnij biznes\n#c7c7c7(spowoduje to usuni\196\153cie ulepsze\197\132 oraz salda biznesu)", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, true, false)
      end
    else
      dxDrawImage(windowPos.x + 1220 / zoom, windowPos.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.exemption_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
    end
    dxDrawRoundedRectangle(windowPos.x + 500 / zoom, windowPos.y + 95 / zoom, 500 / zoom, 680 / zoom, 20 / zoom, tocolor(35, 35, 35, 100), false)
    dxDrawText("WYBIERZ ILO\197\154\196\134 DNI NA WYNAJEM BIZNESU", windowPos.x + 1150 / zoom, windowPos.y + 240 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 550 / zoom, windowPos.y + 245 / zoom, 410 / zoom, 2 / zoom, 1 / zoom, tocolor(60, 60, 60, 250), false)
    dxDrawRoundedRectangle(windowPos.x + 684 / zoom, windowPos.y + 264 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(windowPos.x + 690 / zoom, windowPos.y + 270 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(charges_table.numberDay, windowPos.x + 1150 / zoom, windowPos.y + 365 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 792 / zoom, windowPos.y + 264 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(windowPos.x + 798 / zoom, windowPos.y + 270 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("WYBIERZ FORM\196\152 P\197\129ATNO\197\154CI", windowPos.x + 1150 / zoom, windowPos.y + 500 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 620 / zoom, windowPos.y + 370 / zoom, 270 / zoom, 2 / zoom, 1 / zoom, tocolor(60, 60, 60, 250), false)
    dxDrawRoundedRectangle(windowPos.x + 634 / zoom, windowPos.y + 389 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(windowPos.x + 640 / zoom, windowPos.y + 395 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(charges_table.paymentMethod, windowPos.x + 1150 / zoom, windowPos.y + 615 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 842 / zoom, windowPos.y + 389 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(windowPos.x + 848 / zoom, windowPos.y + 395 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if charges_table.numberDay ~= 0 then
      if charges_table.paymentMethod == "PUNKTY PREMIUM" then
        charges_table.metod = {200, "PP"}
      else
        charges_table.metod = {1, "PLN"}
      end
      dxDrawText("OP\197\129ATA ZA WYNAJEM BIZNESU:", windowPos.x + 1150 / zoom, windowPos.y + 740 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
      dxDrawText("" .. przecinek(math.floor(charges_table.numberDay * 20000 / charges_table.metod[1])) .. "", windowPos.x + 1150 / zoom, windowPos.y + 810 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_info) do
        charges_table.electricity = _FORV_8_.electricity
        if _FORV_8_.ulepszenie_tanszyPrad == 1 then
          charges_table.electricity = charges_table.electricity / 1.1
          dxDrawText("" .. przecinek(math.floor(charges_table.electricity * 5 / charges_table.metod[1])) .. " (#00a310-15%#e6e6e6)", windowPos.x + 1150 / zoom, windowPos.y + 950 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        else
          charges_table.electricity = charges_table.electricity
          dxDrawText("" .. przecinek(math.floor(charges_table.electricity * 5 / charges_table.metod[1])) .. "", windowPos.x + 1150 / zoom, windowPos.y + 950 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
        end
        dxDrawText("OP\197\129ATA ZA PR\196\132D \197\129ADOWAREK:", windowPos.x + 1150 / zoom, windowPos.y + 880 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawText("#009420" .. przecinek(math.floor((charges_table.numberDay * 20000 + charges_table.electricity * 5) / charges_table.metod[1])) .. " " .. charges_table.metod[2], windowPos.x + 1150 / zoom, windowPos.y + 1130 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      end
      dxDrawText("\197\129\196\132CZNIE", windowPos.x + 1150 / zoom, windowPos.y + 1060 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      exports.ST_buttons:dxCreateButton("PRZED\197\129U\197\187", windowPos.x + 655 / zoom, windowPos.y + 700 / zoom, 200 / zoom, 50 / zoom, 255, 1)
    end
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      dxDrawText("BIZNES OP\197\129ACONY DO\n#8c8c8c" .. _FORV_8_.dateRent, windowPos.x + 1150 / zoom, windowPos.y + 100 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, true, false)
    end
  end
  if windows.improvement == true then
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, windowPos.w - 210 / zoom, 80 / zoom, 25 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(windowPos.x + 225 / zoom, windowPos.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.upgrades_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ULEPSZENIA", windowPos.x + 310 / zoom, windowPos.y - 117 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      dxDrawText("SALDO DZIA\197\129ANO\197\154CI: " .. przecinek(_FORV_8_.money) .. " PLN", windowPos.x, windowPos.y - 117 / zoom, windowPos.x + 362 / zoom + 920 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "right", "center", false, false, false, false, false)
    end
    for _FORV_8_ = 1, 7 do
      dxDrawRoundedRectangle(windowPos.x + 230 / zoom, windowPos.y + 94 / zoom + 103 / zoom * (0 + 1 - 1), 1050 / zoom, 97 / zoom, 20 / zoom, tocolor(45, 45, 45, 50))
    end
    for _FORV_9_, _FORV_10_ in ipairs(upgrades) do
      if isMouseIn(windowPos.x + 230 / zoom, windowPos.y + 94 / zoom + 103 / zoom * (0 + 1 - 1), 1050 / zoom, 97 / zoom, 20 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 230 / zoom, windowPos.y + 94 / zoom + 103 / zoom * (0 + 1 - 1), 1050 / zoom, 97 / zoom, 20 / zoom, tocolor(45, 45, 45, 200))
      else
        dxDrawRoundedRectangle(windowPos.x + 230 / zoom, windowPos.y + 94 / zoom + 103 / zoom * (0 + 1 - 1), 1050 / zoom, 97 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
      end
      dxDrawRoundedRectangle(windowPos.x + 245 / zoom, windowPos.y + 101 / zoom + 103 / zoom * (0 + 1 - 1), 82 / zoom, 82 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
      dxDrawImage(windowPos.x + 256 / zoom, windowPos.y + 111 / zoom + 103 / zoom * (0 + 1 - 1), 60 / zoom, 60 / zoom, _FORV_10_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_10_.name .. " - " .. przecinek(_FORV_10_.price) .. " PLN", windowPos.x + 340 / zoom, windowPos.y + 35 / zoom + 206 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_10_.description, windowPos.x + 340 / zoom, windowPos.y + 134 / zoom + 103 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "top", false, false, false, false, false)
      if _FORV_10_.status == 0 then
        exports.ST_buttons:dxCreateButton("ZAKUP", windowPos.x + 1100 / zoom, windowPos.y + 117 / zoom + 103 / zoom * (0 + 1 - 1), 160 / zoom, 50 / zoom, 255, 1)
      else
        dxDrawText("ZAKUPIONO #00ff00\226\156\148", windowPos.x + 2000 / zoom, windowPos.y + 86 / zoom + 206 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.fuelPrices == true then
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      fuel = {
        {
          "DIESEL",
          textures.on_icon,
          _FORV_8_.on_cost,
          "cyfry15",
          costChangeFuel.on,
          "on_cost"
        },
        {
          "BENZYNA",
          textures.p95_icon,
          _FORV_8_.p95_cost,
          "cyfry15",
          costChangeFuel.p95,
          "p95_cost"
        },
        {
          "LPG",
          textures.lpg_icon,
          _FORV_8_.lpg_cost,
          "cyfry15",
          costChangeFuel.lpg,
          "lpg_cost"
        },
        {
          "\197\129ADOWARKI",
          textures.electric_icon,
          _FORV_8_.electric_cost,
          "cyfry15",
          costChangeFuel.electric,
          "electric_cost"
        },
        {
          "NITRO",
          textures.nitro_icon,
          _FORV_8_.nitro_cost,
          "cyfry15",
          costChangeFuel.nitro,
          "nitro_cost"
        },
        {
          "KANISTRY",
          textures.canister_icon,
          _FORV_8_.canister_price,
          "cyfry15",
          costChangeFuel.kanistry,
          "canister_price"
        }
      }
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(fuel) do
      xY = xY + 1
      dxDrawRoundedRectangle(windowPos.x + 230 / zoom, windowPos.y + 100 / zoom + 119 / zoom * (xY - 1), 1055 / zoom, 100 / zoom, 15 / zoom, tocolor(45, 45, 45, 150))
      dxDrawText(_FORV_8_[1], windowPos.x + 335 / zoom, windowPos.y + 60 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      dxDrawImage(windowPos.x + 245 / zoom, windowPos.y + 115 / zoom + 119 / zoom * (xY - 1), 70 / zoom, 70 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawRectangle(windowPos.x + 323 / zoom, windowPos.y + 125 / zoom + 119 / zoom * (xY - 1), 2 / zoom, 45 / zoom, tocolor(100, 100, 100, 255))
      dxDrawRectangle(windowPos.x + 323 / zoom, windowPos.y + 170 / zoom + 119 / zoom * (xY - 1), 20 / zoom, 2 / zoom, tocolor(100, 100, 100, 255))
      dxDrawText("#009419" .. _FORV_8_[3] .. " #d2d2d2PLN", windowPos.x + 350 / zoom, windowPos.y + 140 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 595 / zoom, windowPos.y + 125 / zoom + 119 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_8_[3] + _FORV_8_[5], windowPos.x + 958 / zoom, windowPos.y + 45 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont(_FORV_8_[4]), "center", "center", false, false, false, false, false)
      dxDrawText("PLN", windowPos.x + 958 / zoom, windowPos.y + 110 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("cyfry20"), "center", "center", false, false, false, false, false)
      dxDrawImage(windowPos.x + 700 / zoom, windowPos.y + 125 / zoom + 119 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if _FORV_8_[1] == "NITRO" then
        dxDrawText("Za 10l klient zap\197\130aci:", windowPos.x + 1400 / zoom, windowPos.y + 60 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. przecinek((_FORV_8_[3] + _FORV_8_[5]) * 10) .. " PLN", windowPos.x + 1400 / zoom, windowPos.y + 140 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("cyfry20"), "center", "center", false, false, false, false, false)
      elseif _FORV_8_[1] == "\197\129ADOWARKI" then
        dxDrawText("Za 100kwh klient zap\197\130aci:", windowPos.x + 1400 / zoom, windowPos.y + 60 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. przecinek(_FORV_8_[3] + _FORV_8_[5]) .. " PLN", windowPos.x + 1400 / zoom, windowPos.y + 140 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("cyfry20"), "center", "center", false, false, false, false, false)
      elseif _FORV_8_[1] == "KANISTRY" then
        dxDrawText("Za 50L klient zap\197\130aci:", windowPos.x + 1400 / zoom, windowPos.y + 60 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. przecinek(_FORV_8_[3] + _FORV_8_[5]) .. " PLN", windowPos.x + 1400 / zoom, windowPos.y + 140 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("cyfry20"), "center", "center", false, false, false, false, false)
      else
        dxDrawText("Za 100l klient zap\197\130aci:", windowPos.x + 1400 / zoom, windowPos.y + 60 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. przecinek((_FORV_8_[3] + _FORV_8_[5]) * 100) .. " PLN", windowPos.x + 1400 / zoom, windowPos.y + 140 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("cyfry20"), "center", "center", false, false, false, false, false)
      end
      if _FORV_8_[5] ~= 0 then
        exports.ST_buttons:dxCreateButton("ZATWIER\197\185", windowPos.x + 1110 / zoom, windowPos.y + 120 / zoom + 119 / zoom * (xY - 1), 160 / zoom, 60 / zoom, 255, 1)
      end
      if _FORV_8_[5] > 0 then
        dxDrawText("cena wzrosnie o #fc0303" .. ("%.1f"):format((_FORV_8_[3] + _FORV_8_[5]) / _FORV_8_[3] * 100 - 100) .. "#e6e6e6%", windowPos.x + 958 / zoom, windowPos.y + 170 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      elseif _FORV_8_[5] < 0 then
        dxDrawText("cena obni\197\188ona o #00a82a" .. ("%.1f"):format((_FORV_8_[3] + _FORV_8_[5]) / _FORV_8_[3] * 100 - 100) .. "#e6e6e6%", windowPos.x + 958 / zoom, windowPos.y + 170 / zoom + 238 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
      end
    end
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, windowPos.w - 210 / zoom, 80 / zoom, 25 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(windowPos.x + 225 / zoom, windowPos.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("USTAWIANIE CEN", windowPos.x + 310 / zoom, windowPos.y - 117 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
  end
  if windows.funds == true then
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, windowPos.w - 210 / zoom, 80 / zoom, 25 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(windowPos.x + 225 / zoom, windowPos.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.funds_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      dxDrawText("FUNDUSZE: " .. przecinek(_FORV_8_.money) .. " PLN", windowPos.x + 310 / zoom, windowPos.y - 117 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    end
    exports.ST_buttons:dxCreateButton("WP\197\129A\196\134", windowPos.x + 1100 / zoom, windowPos.y + 18 / zoom, 180 / zoom, 50 / zoom, 255, 1)
    exports.ST_buttons:dxCreateButton("WYP\197\129A\196\134", windowPos.x + 690 / zoom, windowPos.y + 18 / zoom, 180 / zoom, 50 / zoom, 255, 1)
    for _FORV_8_ = 1, 10 do
      dxDrawRoundedRectangle(windowPos.x + 230 / zoom, windowPos.y + 94 / zoom + 71 / zoom * (0 + 1 - 1), 1050 / zoom, 67 / zoom, 20 / zoom, tocolor(45, 45, 45, 50))
    end
    for _FORV_9_, _FORV_10_ in ipairs(table_atm_business) do
      if _FORV_10_.typ == "Wp\197\130yw" then
        colorDolar = {
          0,
          140,
          33
        }
      elseif _FORV_10_.typ == "Wp\197\130ata" then
        colorDolar = {
          0,
          140,
          33
        }
      elseif _FORV_10_.typ == "Wyp\197\130ata" then
        colorDolar = {
          189,
          0,
          0
        }
      elseif _FORV_10_.typ == "Zam\195\179wienie" then
        colorDolar = {
          189,
          0,
          0
        }
      elseif _FORV_10_.typ == "Op\197\130ata biznesu" then
        colorDolar = {
          189,
          0,
          0
        }
      elseif _FORV_10_.typ == "Ulepszenie biznesu" then
        colorDolar = {
          189,
          0,
          0
        }
      end
      dxDrawRoundedRectangle(windowPos.x + 230 / zoom, windowPos.y + 94 / zoom + 71 / zoom * (0 + 1 - 1), 1050 / zoom, 67 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
      dxDrawRoundedRectangle(windowPos.x + 245 / zoom, windowPos.y + 102 / zoom + 71 / zoom * (0 + 1 - 1), 50 / zoom, 50 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
      dxDrawImage(windowPos.x + 250 / zoom, windowPos.y + 107 / zoom + 71 / zoom * (0 + 1 - 1), 40 / zoom, 40 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(colorDolar[1], colorDolar[2], colorDolar[3], 255), false)
      dxDrawText(_FORV_10_.data, windowPos.x + 310 / zoom, windowPos.y + 90 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      if _FORV_10_.typ == "Wp\197\130yw" then
        dxDrawText("WP\197\129YW NA KONTO", windowPos.x + 310 / zoom, windowPos.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 480 / zoom, windowPos.y + 112.5 / zoom + 71 / zoom * (0 + 1 - 1), 30 / zoom, 30 / zoom, textures.on_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("DIESEL:\n" .. przecinek(split(_FORV_10_.serial, ",")[1]) .. " PLN", windowPos.x + 515 / zoom, windowPos.y + 55 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 592 / zoom, windowPos.y + 112.5 / zoom + 71 / zoom * (0 + 1 - 1), 30 / zoom, 30 / zoom, textures.p95_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("BENZYNA:\n" .. przecinek(split(_FORV_10_.serial, ",")[2]) .. " PLN", windowPos.x + 626 / zoom, windowPos.y + 55 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 704 / zoom, windowPos.y + 112.5 / zoom + 71 / zoom * (0 + 1 - 1), 30 / zoom, 30 / zoom, textures.lpg_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("LPG:\n" .. przecinek(split(_FORV_10_.serial, ",")[4]) .. " PLN", windowPos.x + 738 / zoom, windowPos.y + 55 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 816 / zoom, windowPos.y + 112.5 / zoom + 71 / zoom * (0 + 1 - 1), 30 / zoom, 30 / zoom, textures.electric_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("\197\129ADOWARKI:\n" .. przecinek(split(_FORV_10_.serial, ",")[3]) .. " PLN", windowPos.x + 850 / zoom, windowPos.y + 55 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 928 / zoom, windowPos.y + 112.5 / zoom + 71 / zoom * (0 + 1 - 1), 30 / zoom, 30 / zoom, textures.nitro_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("NITRO:\n" .. przecinek(split(_FORV_10_.serial, ",")[5]) .. " PLN", windowPos.x + 962 / zoom, windowPos.y + 55 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 1040 / zoom, windowPos.y + 112.5 / zoom + 71 / zoom * (0 + 1 - 1), 30 / zoom, 30 / zoom, textures.canister_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("KANISTRY:\n" .. przecinek(split(_FORV_10_.serial, ",")[6]) .. " PLN", windowPos.x + 1075 / zoom, windowPos.y + 55 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
        dxDrawText("+" .. przecinek(_FORV_10_.ile) .. " PLN", windowPos.x, windowPos.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 900 / zoom, windowPos.y + 204 / zoom, tocolor(0, 140, 33, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, false, false)
      elseif _FORV_10_.typ == "Wp\197\130ata" then
        dxDrawText("+" .. przecinek(_FORV_10_.ile) .. " PLN", windowPos.x, windowPos.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 900 / zoom, windowPos.y + 204 / zoom, tocolor(0, 140, 33, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
        dxDrawText("Wp\197\130ata na konto przez " .. _FORV_10_.nick, windowPos.x + 310 / zoom, windowPos.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      elseif _FORV_10_.typ == "Wyp\197\130ata" then
        dxDrawText("-" .. przecinek(_FORV_10_.ile) .. " PLN", windowPos.x, windowPos.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 900 / zoom, windowPos.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
        dxDrawText("Wyp\197\130ata z konta przez " .. _FORV_10_.nick, windowPos.x + 310 / zoom, windowPos.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      elseif _FORV_10_.typ == "Zam\195\179wienie" then
        dxDrawText("Zam\195\179wienie sk\197\130adane przez " .. _FORV_10_.nick, windowPos.x + 310 / zoom, windowPos.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawText("-" .. przecinek(_FORV_10_.ile) .. " PLN", windowPos.x, windowPos.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 900 / zoom, windowPos.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      elseif _FORV_10_.typ == "Op\197\130ata biznesu" then
        dxDrawText("Op\197\130ata biznesu zrealizowana przez " .. _FORV_10_.nick, windowPos.x + 310 / zoom, windowPos.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawText("-" .. przecinek(_FORV_10_.ile) .. " PLN", windowPos.x, windowPos.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 900 / zoom, windowPos.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      elseif _FORV_10_.typ == "Ulepszenie biznesu" then
        dxDrawText("Ulepszenie biznesu zrealizowane przez " .. _FORV_10_.nick, windowPos.x + 310 / zoom, windowPos.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawText("-" .. przecinek(_FORV_10_.ile) .. " PLN", windowPos.x, windowPos.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 900 / zoom, windowPos.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      end
    end
  end
  if windows.statistics == true then
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, windowPos.w - 210 / zoom, 60 / zoom, 25 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(windowPos.x + 210 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(windowPos.x + 225 / zoom, windowPos.y + 5 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("STATYSTYKI", windowPos.x + 290 / zoom, windowPos.y - 135 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText("WYKRES ILO\197\154CI SPRZEDANYCH ZASOB\195\147W", windowPos.x + 1020 / zoom, windowPos.y - 10 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawText("TYGODNIOWA SPRZEDA\197\187", windowPos.x + 1070 / zoom, windowPos.y - 20 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    dxDrawText("DZISIEJSZA SPRZEDA\197\187", windowPos.x + 1070 / zoom, windowPos.y + 720 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    for _FORV_13_, _FORV_14_ in ipairs(table_statistic) do
    end
    fuel = {
      {
        "DIESEL",
        textures.on_icon,
        "cyfry25",
        0 + split(_FORV_14_.totalmoney, ",")[1]
      },
      {
        "BENZYNA",
        textures.p95_icon,
        "cyfry25",
        0 + split(_FORV_14_.totalmoney, ",")[2]
      },
      {
        "LPG",
        textures.lpg_icon,
        "cyfry25",
        0 + split(_FORV_14_.totalmoney, ",")[3]
      },
      {
        "\197\129ADOWARKI",
        textures.electric_icon,
        "cyfry20",
        0 + split(_FORV_14_.totalmoney, ",")[4]
      },
      {
        "NITRO",
        textures.nitro_icon,
        "cyfry20",
        0 + split(_FORV_14_.totalmoney, ",")[5]
      },
      {
        "KANISTRY",
        textures.canister_icon,
        "cyfry20",
        0 + split(_FORV_14_.totalmoney, ",")[6]
      }
    }
    xY = 0
    for _FORV_13_, _FORV_14_ in ipairs(fuel) do
      xY = xY + 1
      dxDrawImage(windowPos.x + 1070 / zoom, windowPos.y + 110 / zoom + 55 / zoom * (xY - 1), 45 / zoom, 45 / zoom, _FORV_14_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_14_[1], windowPos.x + 1120 / zoom, windowPos.y + 42 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      if _FORV_13_ == 4 then
        dxDrawText(_FORV_14_[4] .. " kWh", windowPos.x + 1120 / zoom, windowPos.y + 94 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      else
        dxDrawText(_FORV_14_[4] .. " L", windowPos.x + 1120 / zoom, windowPos.y + 94 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      end
    end
    for _FORV_13_, _FORV_14_ in ipairs(table_statistic) do
      fuel = {
        {
          "DIESEL",
          textures.on_icon,
          "cyfry25",
          split(_FORV_14_.totalmoney, ",")[1]
        },
        {
          "BENZYNA",
          textures.p95_icon,
          "cyfry25",
          split(_FORV_14_.totalmoney, ",")[2]
        },
        {
          "LPG",
          textures.lpg_icon,
          "cyfry25",
          split(_FORV_14_.totalmoney, ",")[3]
        },
        {
          "\197\129ADOWARKI",
          textures.electric_icon,
          "cyfry20",
          split(_FORV_14_.totalmoney, ",")[4]
        },
        {
          "NITRO",
          textures.nitro_icon,
          "cyfry20",
          split(_FORV_14_.totalmoney, ",")[5]
        },
        {
          "KANISTRY",
          textures.canister_icon,
          "cyfry20",
          split(_FORV_14_.totalmoney, ",")[6]
        }
      }
    end
    xY = 0
    for _FORV_13_, _FORV_14_ in ipairs(fuel) do
      xY = xY + 1
      dxDrawImage(windowPos.x + 1070 / zoom, windowPos.y + 480 / zoom + 55 / zoom * (xY - 1), 45 / zoom, 45 / zoom, _FORV_14_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_14_[1], windowPos.x + 1120 / zoom, windowPos.y + 780 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      if _FORV_13_ == 4 then
        dxDrawText(_FORV_14_[4] .. " kWh", windowPos.x + 1120 / zoom, windowPos.y + 830 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      else
        dxDrawText(_FORV_14_[4] .. " L", windowPos.x + 1120 / zoom, windowPos.y + 830 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      end
    end
    if #earnDataStatistic > 0 then
      for _FORV_22_ = 0, #earnDataStatistic do
        for _FORV_26_ = 0, 11 do
          dxDrawLine(({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1), ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + 13 / zoom + _FORV_26_ * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / 17.55 / zoom, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w - ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1), ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + 13 / zoom + _FORV_26_ * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / 17.55 / zoom, tocolor(100, 100, 100, 255), 1)
        end
      end
      dxDrawText(przecinek(highest_value), ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + 20 / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + 122 / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + 20 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true)
      for _FORV_22_ = 0, 10 do
        dxDrawText(przecinek(("%.0f"):format(_FORV_22_ / 11 * highest_value)), ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).x, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).y + 640 / zoom - 56.7 * _FORV_22_ / zoom, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).x + 120 / zoom, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).y + 640 / zoom - 56.7 * _FORV_22_ / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true)
      end
      for _FORV_22_, _FORV_23_ in pairs(earnDataStatistic) do
        dxDrawLine(({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).x + ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).y + 15 / zoom, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).x + ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).y + 25 / zoom + ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).h, tocolor(100, 100, 100, 255), 1)
      end
      for _FORV_22_, _FORV_23_ in pairs(earnDataStatistic) do
        if _FORV_22_ == 1 then
        else
          dxDrawLine(({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_22_ - 1), ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[1] / earnDiagramStatistic.maxEarn[1] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[1] / earnDiagramStatistic.maxEarn[1] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_23_.color[1][1], _FORV_23_.color[1][2], _FORV_23_.color[1][3], 255), 3)
          dxDrawLine(({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_22_ - 1), ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[2] / earnDiagramStatistic.maxEarn[2] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[2] / earnDiagramStatistic.maxEarn[2] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_23_.color[2][1], _FORV_23_.color[2][2], _FORV_23_.color[2][3], 255), 3)
          dxDrawLine(({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_22_ - 1), ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[3] / earnDiagramStatistic.maxEarn[3] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[3] / earnDiagramStatistic.maxEarn[3] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_23_.color[3][1], _FORV_23_.color[3][2], _FORV_23_.color[3][3], 255), 3)
          dxDrawLine(({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_22_ - 1), ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[4] / earnDiagramStatistic.maxEarn[4] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[4] / earnDiagramStatistic.maxEarn[4] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_23_.color[4][1], _FORV_23_.color[4][2], _FORV_23_.color[4][3], 255), 3)
          dxDrawLine(({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_22_ - 1), ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[5] / earnDiagramStatistic.maxEarn[5] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[5] / earnDiagramStatistic.maxEarn[5] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_23_.color[5][1], _FORV_23_.color[5][2], _FORV_23_.color[5][3], 255), 3)
          dxDrawLine(({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_22_ - 1), ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[6] / earnDiagramStatistic.maxEarn[6] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).x + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).y + ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h + 30 / zoom - _FORV_23_.moneyAll[6] / earnDiagramStatistic.maxEarn[6] * ({
            x = windowPos.x + 165 / zoom,
            y = windowPos.y + 120 / zoom,
            w = windowPos.w - 300 / zoom,
            h = windowPos.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_23_.color[6][1], _FORV_23_.color[6][2], _FORV_23_.color[6][3], 255), 3)
        end
        dxDrawText(_FORV_23_.day, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).x + ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).y + ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).h + 35 / zoom, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).x + ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).w / (#earnDataStatistic + 1) * _FORV_22_, ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).y + ({
          x = windowPos.x + 165 / zoom,
          y = windowPos.y + 120 / zoom,
          w = windowPos.w - 300 / zoom,
          h = windowPos.h - 200 / zoom
        }).h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "top", false, false, false)
      end
      dxDrawLine(({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + 13 / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w - ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + 13 / zoom, tocolor(40, 40, 40, 255), 3)
      dxDrawLine(({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + 12 / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + 25 / zoom + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).h, tocolor(40, 40, 40, 255), 3)
      dxDrawLine(({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / (#earnDataStatistic + 1) - 1 / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).h + 25 / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w - ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).h + 25 / zoom, tocolor(40, 40, 40, 255), 3)
      dxDrawLine(({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w - ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + 12 / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w - ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / (#earnDataStatistic + 1) / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + 25 / zoom + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).h, tocolor(40, 40, 40, 255), 3)
    else
      dxDrawText("Tw\195\179j biznes nie ma podgl\196\133du do wykresu statystyk", ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / 2 - 90 / zoom, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).x + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).w / 2, ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).y + ({
        x = windowPos.x + 165 / zoom,
        y = windowPos.y + 120 / zoom,
        w = windowPos.w - 300 / zoom,
        h = windowPos.h - 200 / zoom
      }).h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false)
    end
  end
  if windows.buyBusiness == true then
    if charges_table.paymentMethod == "PUNKTY PREMIUM" then
      charges_table.metod = {200, "PP"}
    else
      charges_table.metod = {1, "PLN"}
    end
    dxDrawRoundedRectangle(windowPos.x + 260 / zoom, windowPos.y + 155 / zoom, 785 / zoom, 500 / zoom, 25 / zoom, tocolor(35, 35, 35, 240))
    dxDrawRoundedRectangle(windowPos.x + 280 / zoom, windowPos.y + 205 / zoom, 745 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText(dataInfo.name, windowPos.x + 280 / zoom, windowPos.y + 162 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawText("WYBIERZ ILO\197\154\196\134 DNI NA WYNAJEM BIZNESU", windowPos.x + 940 / zoom, windowPos.y + 280 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 445 / zoom, windowPos.y + 257 / zoom, 410 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawRoundedRectangle(windowPos.x + 584 / zoom, windowPos.y + 268 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(windowPos.x + 590 / zoom, windowPos.y + 274 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(charges_table.numberDay, windowPos.x + 940 / zoom, windowPos.y + 373 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 682 / zoom, windowPos.y + 268 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(windowPos.x + 688 / zoom, windowPos.y + 274 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("WYBIERZ FORM\196\152 P\197\129ATNO\197\154CI", windowPos.x + 940 / zoom, windowPos.y + 540 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 510 / zoom, windowPos.y + 388 / zoom, 285 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawRoundedRectangle(windowPos.x + 538 / zoom, windowPos.y + 399 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(windowPos.x + 544 / zoom, windowPos.y + 405 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(charges_table.paymentMethod, windowPos.x + 940 / zoom, windowPos.y + 635 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 727 / zoom, windowPos.y + 399 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(windowPos.x + 733 / zoom, windowPos.y + 405 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("DO ZAP\197\129ATY", windowPos.x + 940 / zoom, windowPos.y + 780 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
    dxDrawText("#009420" .. przecinek(math.floor(charges_table.numberDay * 20000 / charges_table.metod[1])) .. " PLN", windowPos.x + 940 / zoom, windowPos.y + 850 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ZAM\195\147W", windowPos.x + 570 / zoom, windowPos.y + 560 / zoom, 160 / zoom, 60 / zoom, 255, 1)
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true then
      for _FORV_6_, _FORV_7_ in ipairs(category) do
        if isMouseIn(windowPos.x, windowPos.y + 70 / zoom * (0 + 1 - 1), 210 / zoom, 70 / zoom) and windows.background == true then
          windows.main = false
          windows.orders = false
          windows.orders_select_truck = false
          windows.charges = false
          windows.improvement = false
          windows.statistics = false
          windows.fuelPrices = false
          windows.funds = false
          exports.ST_gui:destroyCustomEditbox("funds:business")
          if _FORV_7_.text == "INFORMACJE" then
            windows.main = true
          elseif _FORV_7_.text == "ZAM\195\147WIENIA" then
            windows.orders = true
          elseif _FORV_7_.text == "OP\197\129ATY" then
            windows.charges = true
            charges_table = {}
            charges_table.numberDay = 7
            charges_table.paymentMethod = "SALDO BIZNESU"
          elseif _FORV_7_.text == "ULEPSZENIA" then
            windows.improvement = true
          elseif _FORV_7_.text == "STATYSTYKI" then
            table_statistic = {}
            earnDiagramStatistic = {
              moneyAll = {
                0,
                0,
                0,
                0,
                0,
                0
              },
              maxEarn = {
                0,
                0,
                0,
                0,
                0,
                0
              },
              minEarn = {
                99999999999,
                99999999999,
                99999999999,
                99999999999,
                99999999999,
                99999999999
              },
              totalmoney = 0,
              color = {
                {
                  0,
                  0,
                  0
                },
                {
                  0,
                  255,
                  0
                },
                {
                  255,
                  0,
                  0
                },
                {
                  255,
                  255,
                  0
                },
                {
                  2,
                  192,
                  235
                },
                {
                  211,
                  255,
                  154
                }
              }
            }
            earnDataStatistic = {}
            windows.statistics = true
            triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "table_statistic_business", localPlayer, id_business)
          elseif _FORV_7_.text == "CENY PALIW" then
            windows.fuelPrices = true
            costChangeFuel = {}
            costChangeFuel.on = 0
            costChangeFuel.p95 = 0
            costChangeFuel.lpg = 0
            costChangeFuel.electric = 0
            costChangeFuel.nitro = 0
            costChangeFuel.kanistry = 0
          elseif _FORV_7_.text == "FUNDUSZE" then
            exports.ST_gui:createCustomEditbox("funds:business", "Wpisz kwot\196\153", windowPos.x + 885 / zoom, windowPos.y + 18 / zoom, 200 / zoom, 50 / zoom, false, "", "", 1)
            windows.funds = true
            triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "table_atm_business", localPlayer, id_business)
          end
        end
      end
      if isMouseIn(windowPos.x + 10 / zoom, windowPos.y + 770 / zoom, 30 / zoom, 30 / zoom) and windows.background == true then
        exports.ST_gui:destroyCustomEditbox("funds:business")
        removeEventHandler("onClientRender", root, window)
        windows.main = false
        windows.background = false
        windows.orders = false
        windows.charges = false
        windows.orders_select_truck = false
        windows.improvement = false
        windows.statistics = false
        windows.fuelPrices = false
        windows.funds = false
        showCursor(false)
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
      end
    end
    if windows.charges == true then
      if isMouseIn(windowPos.x + 792 / zoom, windowPos.y + 264 / zoom, 37 / zoom, 37 / zoom) and windows.charges == true then
        if charges_table.paymentMethod == "PUNKTY PREMIUM" then
          if charges_table.numberDay + 1 > 14 then
            charges_table.numberDay = 14
            return
          end
        elseif charges_table.numberDay + 1 > 7 then
          charges_table.numberDay = 7
          return
        end
        charges_table.numberDay = charges_table.numberDay + 1
      elseif isMouseIn(windowPos.x + 684 / zoom, windowPos.y + 264 / zoom, 37 / zoom, 37 / zoom) and windows.charges == true then
        if 1 > charges_table.numberDay - 1 then
          charges_table.numberDay = 0
          return
        end
        charges_table.numberDay = charges_table.numberDay - 1
      elseif isMouseIn(windowPos.x + 842 / zoom, windowPos.y + 389 / zoom, 37 / zoom, 37 / zoom) and windows.charges == true then
        if charges_table.paymentMethod == "SALDO BIZNESU" then
          charges_table.paymentMethod = "PUNKTY PREMIUM"
          charges_table.numberDay = 14
        elseif charges_table.paymentMethod == "PUNKTY PREMIUM" then
          charges_table.paymentMethod = "SALDO BIZNESU"
          charges_table.numberDay = 7
        end
      elseif isMouseIn(windowPos.x + 634 / zoom, windowPos.y + 389 / zoom, 37 / zoom, 37 / zoom) and windows.charges == true then
        if charges_table.paymentMethod == "SALDO BIZNESU" then
          charges_table.paymentMethod = "PUNKTY PREMIUM"
          charges_table.numberDay = 14
        elseif charges_table.paymentMethod == "PUNKTY PREMIUM" then
          charges_table.paymentMethod = "SALDO BIZNESU"
          charges_table.numberDay = 7
        end
      elseif isMouseIn(windowPos.x + 655 / zoom, windowPos.y + 700 / zoom, 200 / zoom, 50 / zoom) and windows.charges == true then
        if charges_table.numberDay ~= 0 then
          if charges_table.paymentMethod == "PUNKTY PREMIUM" then
            if getElementData(localPlayer, "player:pp") < math.floor((charges_table.numberDay * 20000 + charges_table.electricity * 5) / charges_table.metod[1]) then
              exports.st_gui:showPlayerNotification("Nie posiadasz tyle punkt\195\179w premium!", "error")
              return
            end
            setElementData(localPlayer, "player:pp", getElementData(localPlayer, "player:pp") - math.floor((charges_table.numberDay * 20000 + charges_table.electricity * 5) / charges_table.metod[1]))
          end
          triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "extension", localPlayer, charges_table.numberDay, charges_table.paymentMethod, id_business, math.floor((charges_table.numberDay * 20000 + charges_table.electricity * 5) / charges_table.metod[1]))
        end
      elseif isMouseIn(windowPos.x + 1220 / zoom, windowPos.y + 5 / zoom, 70 / zoom, 70 / zoom) and windows.charges == true then
        triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "exemptionBusiness", localPlayer, id_business)
        removeEventHandler("onClientRender", root, window)
        windows.charges = false
        showCursor(false)
        for _FORV_5_, _FORV_6_ in pairs(textures) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        textures = {}
      end
    end
    if windows.buyBusiness == true then
      if isMouseIn(windowPos.x + 682 / zoom, windowPos.y + 268 / zoom, 37 / zoom, 37 / zoom) and windows.buyBusiness == true then
        if charges_table.paymentMethod == "PUNKTY PREMIUM" then
          if charges_table.numberDay + 1 > 14 then
            charges_table.numberDay = 14
            return
          end
        elseif charges_table.numberDay + 1 > 7 then
          charges_table.numberDay = 7
          return
        end
      elseif isMouseIn(windowPos.x + 584 / zoom, windowPos.y + 268 / zoom, 37 / zoom, 37 / zoom) and windows.buyBusiness == true then
        if 1 > charges_table.numberDay - 1 then
          charges_table.numberDay = 1
          return
        end
        charges_table.numberDay = charges_table.numberDay - 1
      elseif isMouseIn(windowPos.x + 727 / zoom, windowPos.y + 399 / zoom, 37 / zoom, 37 / zoom) and windows.buyBusiness == true then
        if charges_table.paymentMethod == "GOT\195\147WKA" then
          charges_table.paymentMethod = "PUNKTY PREMIUM"
          charges_table.numberDay = 14
        elseif charges_table.paymentMethod == "PUNKTY PREMIUM" then
          charges_table.paymentMethod = "GOT\195\147WKA"
          charges_table.numberDay = 7
        end
      elseif isMouseIn(windowPos.x + 538 / zoom, windowPos.y + 399 / zoom, 37 / zoom, 37 / zoom) and windows.buyBusiness == true then
        if charges_table.paymentMethod == "GOT\195\147WKA" then
          charges_table.paymentMethod = "PUNKTY PREMIUM"
          charges_table.numberDay = 14
        elseif charges_table.paymentMethod == "PUNKTY PREMIUM" then
          charges_table.paymentMethod = "GOT\195\147WKA"
          charges_table.numberDay = 7
        end
      elseif isMouseIn(windowPos.x + 570 / zoom, windowPos.y + 560 / zoom, 160 / zoom, 60 / zoom) and windows.buyBusiness == true and charges_table.numberDay ~= 0 then
        if charges_table.paymentMethod == "PUNKTY PREMIUM" then
          if getElementData(localPlayer, "player:pp") < math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]) then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle punkt\195\179w premium!", "error")
            return
          end
          setElementData(localPlayer, "player:pp", getElementData(localPlayer, "player:pp") - math.floor((charges_table.numberDay * 20000 + charges_table.electricity * 5) / charges_table.metod[1]))
        end
        if math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]) > getElementData(localPlayer, "player:moneyMNn") then
          exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
          return
        end
        triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "buyBusiness", localPlayer, charges_table.numberDay, charges_table.paymentMethod, id_business, math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]))
        exports.st_gui:showPlayerNotification("Pomy\197\155lnie wynaj\196\153to biznes na " .. charges_table.numberDay .. " dni", "success")
        removeEventHandler("onClientRender", root, window)
        windows.buyBusiness = false
        showCursor(false)
      end
    end
    if windows.improvement == true then
      for _FORV_6_, _FORV_7_ in ipairs(upgrades) do
        if isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 117 / zoom + 103 / zoom * (0 + 1 - 1), 160 / zoom, 50 / zoom) and windows.improvement == true and _FORV_7_.status == 0 then
          triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "upgradesBusiness", localPlayer, _FORV_7_.nameDatabase, _FORV_7_.price, id_business)
        end
      end
    end
    if windows.funds == true then
      if isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 18 / zoom, 180 / zoom, 50 / zoom) and windows.funds == true then
        if getTickCount() - lastTickCount > 5000 then
          if 1 > exports.ST_gui:getCustomEditboxText("funds:business"):len() then
            exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153!!", "error")
            return
          end
          if not exports.ST_gui:getCustomEditboxText("funds:business") then
            return
          end
          if not math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))) or 1 > math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))) then
            return
          end
          if math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))) > getElementData(localPlayer, "player:moneyMNn") then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "fundsOperation", localPlayer, math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))), id_business)
          lastTickCount = getTickCount()
        else
          return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
        end
      elseif isMouseIn(windowPos.x + 690 / zoom, windowPos.y + 18 / zoom, 180 / zoom, 50 / zoom) and windows.funds == true then
        if getTickCount() - lastTickCount > 5000 then
          if 1 > exports.ST_gui:getCustomEditboxText("funds:business"):len() then
            exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153!!", "error")
            return
          end
          if not exports.ST_gui:getCustomEditboxText("funds:business") then
            return
          end
          if getElementData(localPlayer, "player:moneyMNn") + math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))) > 99999999 then
            return
          end
          triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "fundsOperation", localPlayer, -math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))), id_business)
          lastTickCount = getTickCount()
        else
          return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
        end
      end
    end
    if windows.fuelPrices == true then
      for _FORV_6_, _FORV_7_ in ipairs(fuel) do
        if isMouseIn(windowPos.x + 1110 / zoom, windowPos.y + 120 / zoom + 119 / zoom * (0 + 1 - 1), 160 / zoom, 60 / zoom) and windows.fuelPrices == true and _FORV_7_[5] ~= 0 then
          if _FORV_7_[1] == "DIESEL" then
            costChangeFuel.on = 0
          elseif _FORV_7_[1] == "BENZYNA" then
            costChangeFuel.p95 = 0
          elseif _FORV_7_[1] == "LPG" then
            costChangeFuel.lpg = 0
          elseif _FORV_7_[1] == "\197\129ADOWARKI" then
            costChangeFuel.electric = 0
          elseif _FORV_7_[1] == "NITRO" then
            costChangeFuel.nitro = 0
          elseif _FORV_7_[1] == "KANISTRY" then
            costChangeFuel.kanistry = 0
          end
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie zmieniono cen\196\153", "success")
          triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "setPriceFuel", localPlayer, tonumber(_FORV_7_[3] + _FORV_7_[5]), id_business, _FORV_7_[6])
        end
      end
      for _FORV_7_, _FORV_8_ in ipairs(fuel) do
        if isMouseIn(windowPos.x + 595 / zoom, windowPos.y + 125 / zoom + 119 / zoom * (0 + 1 - 1), 25 / zoom, 25 / zoom) and windows.fuelPrices == true then
          if _FORV_8_[1] == "DIESEL" then
            if _FORV_8_[3] + costChangeFuel.on - 1 < 3 then
              return
            end
            costChangeFuel.on = costChangeFuel.on - 1
          elseif _FORV_8_[1] == "BENZYNA" then
            if _FORV_8_[3] + costChangeFuel.p95 - 1 < 3 then
              return
            end
            costChangeFuel.p95 = costChangeFuel.p95 - 1
          elseif _FORV_8_[1] == "LPG" then
            if _FORV_8_[3] + costChangeFuel.lpg - 1 < 3 then
              return
            end
            costChangeFuel.lpg = costChangeFuel.lpg - 1
          elseif _FORV_8_[1] == "\197\129ADOWARKI" then
            if _FORV_8_[3] + costChangeFuel.electric - 100 < 1500 then
              return
            end
            costChangeFuel.electric = costChangeFuel.electric - 100
          elseif _FORV_8_[1] == "NITRO" then
            if _FORV_8_[3] + costChangeFuel.nitro - 100 < 1000 then
              return
            end
            costChangeFuel.nitro = costChangeFuel.nitro - 100
          elseif _FORV_8_[1] == "KANISTRY" then
            if 20000 > _FORV_8_[3] + costChangeFuel.kanistry - 1000 then
              return
            end
            costChangeFuel.kanistry = costChangeFuel.kanistry - 1000
          end
        elseif isMouseIn(windowPos.x + 700 / zoom, windowPos.y + 125 / zoom + 119 / zoom * (0 + 1 - 1), 25 / zoom, 25 / zoom) and windows.fuelPrices == true then
          if _FORV_8_[1] == "DIESEL" then
            if _FORV_8_[3] + costChangeFuel.on + 1 > 250 then
              return
            end
            costChangeFuel.on = costChangeFuel.on + 1
          elseif _FORV_8_[1] == "BENZYNA" then
            if _FORV_8_[3] + costChangeFuel.p95 + 1 > 250 then
              return
            end
            costChangeFuel.p95 = costChangeFuel.p95 + 1
          elseif _FORV_8_[1] == "LPG" then
            if 200 < _FORV_8_[3] + costChangeFuel.lpg + 1 then
              return
            end
            costChangeFuel.lpg = costChangeFuel.lpg + 1
          elseif _FORV_8_[1] == "\197\129ADOWARKI" then
            if _FORV_8_[3] + costChangeFuel.electric + 100 > 15000 then
              return
            end
            costChangeFuel.electric = costChangeFuel.electric + 100
          elseif _FORV_8_[1] == "NITRO" then
            if 5000 < _FORV_8_[3] + costChangeFuel.nitro + 100 then
              return
            end
            costChangeFuel.nitro = costChangeFuel.nitro + 100
          elseif _FORV_8_[1] == "KANISTRY" then
            if _FORV_8_[3] + costChangeFuel.kanistry + 1000 > 30000 then
              return
            end
            costChangeFuel.kanistry = costChangeFuel.kanistry + 1000
          end
        end
      end
    end
    if windows.orders_select_truck == true then
      for _FORV_6_, _FORV_7_ in ipairs(vehicle) do
        if isMouseIn(windowPos.x + 405 / zoom, windowPos.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom) and windows.orders_select_truck == true and (getElementModel(_FORV_7_[1]) == 514 or getElementModel(_FORV_7_[1]) == 515 or getElementModel(_FORV_7_[1]) == 403) then
          randomPosTrailer = math.random(1, #posTrailer)
          triggerServerEvent("evEwenciks_ajs5ghfkj", resourceRoot, "createTrailer", localPlayer, {
            posTrailer[randomPosTrailer][1],
            posTrailer[randomPosTrailer][2],
            posTrailer[randomPosTrailer][3],
            posTrailer[randomPosTrailer][4],
            posTrailer[randomPosTrailer][5],
            posTrailer[randomPosTrailer][6]
          }, orders.cost, id_business)
        end
      end
    end
    if windows.orders == true then
      for _FORV_6_, _FORV_7_ in ipairs(fuel) do
        if isMouseIn(windowPos.x + 275 / zoom + 205 / zoom * (0 + 1 - 1), windowPos.y + 400 / zoom, 25 / zoom, 25 / zoom) and windows.orders == true then
          if _FORV_6_ == 1 then
            if 0 > number.on - 500 then
              number.on = 0
              return
            end
            number.on = number.on - 500
          elseif _FORV_6_ == 2 then
            if 0 > number.p95 - 500 then
              number.p95 = 0
              return
            end
            number.p95 = number.p95 - 500
          elseif _FORV_6_ == 3 then
            if 0 > number.lpg - 500 then
              number.lpg = 0
              return
            end
            number.lpg = number.lpg - 500
          elseif _FORV_6_ == 4 then
            if 0 > number.nitro - 500 then
              number.nitro = 0
              return
            end
            number.nitro = number.nitro - 500
          elseif _FORV_6_ == 5 then
            if 0 > number.kanistry - 500 then
              number.kanistry = 0
              return
            end
            number.kanistry = number.kanistry - 500
          end
        elseif isMouseIn(windowPos.x + 400 / zoom + 205 / zoom * (0 + 1 - 1), windowPos.y + 400 / zoom, 25 / zoom, 25 / zoom) and windows.orders == true then
          if _FORV_6_ == 1 then
            if number.on + 500 > _FORV_7_[3] then
              if number.on + 100 > _FORV_7_[3] then
                return
              end
              number.on = number.on + 100
              return
            end
            number.on = number.on + 500
          elseif _FORV_6_ == 2 then
            if number.p95 + 500 > _FORV_7_[3] then
              if number.p95 + 100 > _FORV_7_[3] then
                return
              end
              number.p95 = number.p95 + 100
              return
            end
            number.p95 = number.p95 + 500
          elseif _FORV_6_ == 3 then
            if number.lpg + 500 > _FORV_7_[3] then
              if number.lpg + 100 > _FORV_7_[3] then
                return
              end
              number.lpg = number.lpg + 100
              return
            end
            number.lpg = number.lpg + 500
          elseif _FORV_6_ == 4 then
            if number.nitro + 500 > _FORV_7_[3] then
              if number.nitro + 100 > _FORV_7_[3] then
                return
              end
              number.nitro = number.nitro + 100
              return
            end
            number.nitro = number.nitro + 500
          elseif _FORV_6_ == 5 then
            if number.kanistry + 50 > _FORV_7_[3] then
              if number.kanistry + 50 > _FORV_7_[3] then
                return
              end
              number.kanistry = number.kanistry + 50
              return
            end
            number.kanistry = number.kanistry + 50
          end
        elseif isMouseIn(windowPos.x + 270 / zoom + 205 / zoom * (0 + 1 - 1), windowPos.y + 525 / zoom, 160 / zoom, 45 / zoom) and windows.orders == true and _FORV_7_[5] ~= 0 then
          windows.orders = false
          windows.orders_select_truck = true
          for _FORV_12_, _FORV_13_ in ipairs(table_info) do
            if _FORV_13_.ulepszenie_tanszePaliwo == 1 then
              orders.cost = math.floor(_FORV_7_[5] / 1.15)
            else
              orders.cost = math.floor(_FORV_7_[5])
            end
          end
          orders.litres = _FORV_7_[4]
          if _FORV_6_ == 1 then
            orders.type = "on_litres"
          elseif _FORV_6_ == 2 then
            orders.type = "p95_litres"
          elseif _FORV_6_ == 3 then
            orders.type = "lpg_litres"
          elseif _FORV_6_ == 4 then
            orders.type = "nitro_litres"
          elseif _FORV_6_ == 5 then
            orders.type = "canister_litres"
          end
        end
      end
    end
  end
end)
function resulted(_ARG_0_)
  return math.floor(_ARG_0_ / 60) .. " minut " .. _ARG_0_ - math.floor(_ARG_0_ / 60) * 60 .. " sekund"
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
end
function isMouseIn(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not isCursorShowing() then
    return false
  end
  if _ARG_0_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_0_ + _ARG_2_ and _ARG_1_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_1_ + _ARG_3_ then
    return true
  else
    return false
  end
end
getResourceName(getThisResource(), true, 744080137)
return
