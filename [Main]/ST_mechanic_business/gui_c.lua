screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windows = {
  main = false,
  background = false,
  orders = false,
  orders_select_truck = false,
  charges = false,
  improvement = false,
  statistics = false,
  partsPrices = false,
  funds = false,
  buyBusiness = false,
  workers = false
}
avatar_table = {}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 1 / zoom, _UPVALUE0_.y - 1 / zoom, _UPVALUE0_.w + 2 / zoom, _UPVALUE0_.h + 2 / zoom, 20 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 20 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, 215 / zoom, _UPVALUE0_.h, 20 / zoom, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 2 / zoom, tocolor(55, 55, 55, 255), false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(category) do
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom * (xY - 1), 210 / zoom, 70 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom * (xY - 1), 210 / zoom, 70 / zoom, 20 / zoom, tocolor(25, 25, 25, 150), false)
        dxDrawImage(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 10 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y - 130 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
      else
        dxDrawImage(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 10 / zoom + 70 / zoom * (xY - 1), 50 / zoom, 50 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y - 130 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 770 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 769 / zoom, 32 / zoom, 32 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 770 / zoom, 30 / zoom, 30 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.main == true then
    dxDrawText("KLIENCI W TYGODNIU", _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y - 30 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 70 / zoom, 80 / zoom, 80 / zoom, textures.clients_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("PRZYCH\195\147D W TYGODNIU", _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 280 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 220 / zoom, 80 / zoom, 80 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("PRACOWNICY", _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 580 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 370 / zoom, 80 / zoom, 80 / zoom, textures.workers_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(numberWorkers, _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 660 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    dxDrawText("DZIA\197\129ALNO\197\154\196\134", _UPVALUE0_.x + 340 / zoom, _UPVALUE0_.y + 880 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 520 / zoom, 80 / zoom, 80 / zoom, textures.organization_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(dataInfo.name, _UPVALUE0_.x + 340 / zoom, _UPVALUE0_.y + 960 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    dxDrawText("SALDO", _UPVALUE0_.x + 340 / zoom, _UPVALUE0_.y + 1180 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 670 / zoom, 80 / zoom, 80 / zoom, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_8_, _FORV_9_ in ipairs(table_info) do
      dxDrawText(przecinek(_FORV_9_.money), _UPVALUE0_.x + 340 / zoom, _UPVALUE0_.y + 1250 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    end
    dxDrawText("W\197\129A\197\154CICIEL", _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 880 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 520 / zoom, 80 / zoom, 80 / zoom, textures.lider_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(dataInfo.owner, _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 960 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    dxDrawText("UMOWA WA\197\187NA DO", _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 1170 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + 830 / zoom, _UPVALUE0_.y + 670 / zoom, 80 / zoom, 80 / zoom, textures.create_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_8_, _FORV_9_ in ipairs(table_info) do
      dxDrawText(_FORV_9_.dateRent, _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 1250 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    end
    for _FORV_10_, _FORV_11_ in ipairs(table_statistic) do
    end
    dxDrawText(tonumber(0 + split(_FORV_11_.totalmoney, ",")[2] + (0 + split(_FORV_11_.totalmoney, ",")[1])), _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 45 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    if 0 < #earnData then
      for _FORV_14_, _FORV_15_ in pairs(earnData) do
        dxDrawLine(({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).x + 63 / zoom, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).y + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).h - 15 / zoom, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).w - 75 / zoom, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).y + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).h - 15 / zoom, tocolor(100, 100, 100, 255), 1)
        dxDrawLine(({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).w / (#earnData + 1) * _FORV_14_, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).y + 15 / zoom, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).w / (#earnData + 1) * _FORV_14_, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).y + 25 / zoom + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).h, tocolor(100, 100, 100, 255), 1)
      end
      for _FORV_14_, _FORV_15_ in pairs(earnData) do
        if _FORV_14_ == 1 then
        else
          dxDrawLine(({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).w / (#earnData + 1) * (_FORV_14_ - 1), ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).y + ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).h - 15 / zoom, ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).w / (#earnData + 1) * _FORV_14_, ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).y + ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
            x = _UPVALUE0_.x + 240 / zoom,
            y = _UPVALUE0_.y + 60 / zoom,
            w = _UPVALUE0_.w - 700 / zoom,
            h = _UPVALUE0_.h - 450 / zoom
          }).h - 15 / zoom, tocolor(255, 166, 0, 255), 2)
        end
        if not ({
          [_FORV_15_.totalmoney] = {
            y = ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).y + ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).h - 15 / zoom
          }
        })[_FORV_15_.totalmoney] then
          for _FORV_21_, _FORV_22_ in pairs({
            [_FORV_15_.totalmoney] = {
              y = ({
                x = _UPVALUE0_.x + 240 / zoom,
                y = _UPVALUE0_.y + 60 / zoom,
                w = _UPVALUE0_.w - 700 / zoom,
                h = _UPVALUE0_.h - 450 / zoom
              }).y + ({
                x = _UPVALUE0_.x + 240 / zoom,
                y = _UPVALUE0_.y + 60 / zoom,
                w = _UPVALUE0_.w - 700 / zoom,
                h = _UPVALUE0_.h - 450 / zoom
              }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
                x = _UPVALUE0_.x + 240 / zoom,
                y = _UPVALUE0_.y + 60 / zoom,
                w = _UPVALUE0_.w - 700 / zoom,
                h = _UPVALUE0_.h - 450 / zoom
              }).h - 15 / zoom
            }
          }) do
            if 25 >= math.abs(_FORV_22_.y - (({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).y + ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).h)) then
              break
            end
          end
          if false then
            dxDrawText(przecinek(_FORV_15_.totalmoney), ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).x, ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).y + ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).h - 10 / zoom, ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).x + 50 / zoom, ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).y + ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).h + 30 / zoom - _FORV_15_.totalmoney / earnDiagram.maxEarn * ({
              x = _UPVALUE0_.x + 240 / zoom,
              y = _UPVALUE0_.y + 60 / zoom,
              w = _UPVALUE0_.w - 700 / zoom,
              h = _UPVALUE0_.h - 450 / zoom
            }).h - 15 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "right", "center", false, false, false)
          end
        end
        dxDrawText(_FORV_15_.day, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).w / (#earnData + 1) * _FORV_14_, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).y + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).h + 35 / zoom, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).w / (#earnData + 1) * _FORV_14_, ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).y + ({
          x = _UPVALUE0_.x + 240 / zoom,
          y = _UPVALUE0_.y + 60 / zoom,
          w = _UPVALUE0_.w - 700 / zoom,
          h = _UPVALUE0_.h - 450 / zoom
        }).h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "top", false, false, false)
      end
      dxDrawText("WYKRES PRZYCHOD\195\147W BIZNESU", ({
        x = _UPVALUE0_.x + 240 / zoom,
        y = _UPVALUE0_.y + 60 / zoom,
        w = _UPVALUE0_.w - 700 / zoom,
        h = _UPVALUE0_.h - 450 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 240 / zoom,
        y = _UPVALUE0_.y + 60 / zoom,
        w = _UPVALUE0_.w - 700 / zoom,
        h = _UPVALUE0_.h - 450 / zoom
      }).w / 2, ({
        x = _UPVALUE0_.x + 240 / zoom,
        y = _UPVALUE0_.y + 60 / zoom,
        w = _UPVALUE0_.w - 700 / zoom,
        h = _UPVALUE0_.h - 450 / zoom
      }).y + ({
        x = _UPVALUE0_.x + 240 / zoom,
        y = _UPVALUE0_.y + 60 / zoom,
        w = _UPVALUE0_.w - 700 / zoom,
        h = _UPVALUE0_.h - 450 / zoom
      }).h - 400 / zoom, ({
        x = _UPVALUE0_.x + 240 / zoom,
        y = _UPVALUE0_.y + 60 / zoom,
        w = _UPVALUE0_.w - 700 / zoom,
        h = _UPVALUE0_.h - 450 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 240 / zoom,
        y = _UPVALUE0_.y + 60 / zoom,
        w = _UPVALUE0_.w - 700 / zoom,
        h = _UPVALUE0_.h - 450 / zoom
      }).w / 2, ({
        x = _UPVALUE0_.x + 240 / zoom,
        y = _UPVALUE0_.y + 60 / zoom,
        w = _UPVALUE0_.w - 700 / zoom,
        h = _UPVALUE0_.h - 450 / zoom
      }).y + ({
        x = _UPVALUE0_.x + 240 / zoom,
        y = _UPVALUE0_.y + 60 / zoom,
        w = _UPVALUE0_.w - 700 / zoom,
        h = _UPVALUE0_.h - 450 / zoom
      }).h, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "top", false, false, false)
      dxDrawText(przecinek(0 + _FORV_15_.totalmoney or 5), _UPVALUE0_.x + 920 / zoom, _UPVALUE0_.y + 360 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
    else
    end
  end
  if windows.workers == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 80 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 750 / zoom, _UPVALUE0_.w - 210 / zoom, 65 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.workers_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("PRACOWNICY", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(workers_table) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 90 / zoom + 110 / zoom * (xY - 1), 1060 / zoom, 100 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
      dxDrawText(_FORV_8_[2], _UPVALUE0_.x + 320 / zoom, _UPVALUE0_.y + 20 / zoom + 220 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("Aktywny/a: " .. (_FORV_8_[5] or "brak") .. "", _UPVALUE0_.x + 320 / zoom, _UPVALUE0_.y + 80 / zoom + 220 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText("Aktywno\197\155\196\135 w tygodniu: " .. secondsToClock(60 * _FORV_8_[6]) .. "", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 135 / zoom + 220 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText("Obs\197\130u\197\188eni klienci", _UPVALUE0_.x + 730 / zoom, _UPVALUE0_.y + 25 / zoom + 220 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawText("W tygodniu: #ffbb00" .. _FORV_8_[7] .. "", _UPVALUE0_.x + 730 / zoom, _UPVALUE0_.y + 83 / zoom + 220 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      dxDrawText("Dzi\197\155: #ffbb00" .. _FORV_8_[8] .. "", _UPVALUE0_.x + 730 / zoom, _UPVALUE0_.y + 135 / zoom + 220 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      if _FORV_8_[3] then
        dxDrawImage(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 102 / zoom + 110 / zoom * (xY - 1), 75 / zoom, 75 / zoom, _FORV_8_[3], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 102 / zoom + 110 / zoom * (xY - 1), 75 / zoom, 75 / zoom, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(_UPVALUE0_.x + 223.5 / zoom, _UPVALUE0_.y + 88.5 / zoom + 110 / zoom * (xY - 1), 18 / zoom, 18 / zoom) then
        dxDrawImage(_UPVALUE0_.x + 223.5 / zoom, _UPVALUE0_.y + 88.5 / zoom + 110 / zoom * (xY - 1), 18 / zoom, 18 / zoom, textures.cross, 0, 0, 0, tocolor(255, 0, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 90 / zoom + 110 / zoom * (xY - 1), 15 / zoom, 15 / zoom, textures.cross, 0, 0, 0, tocolor(255, 0, 0, 255), false)
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1050 / zoom, _UPVALUE0_.y + 122 / zoom + 110 / zoom * (xY - 1), 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
      dxDrawImage(_UPVALUE0_.x + 1055 / zoom, _UPVALUE0_.y + 128 / zoom + 110 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("#009419" .. przecinek(_FORV_8_[4]) .. "#ffffff / 1h", _UPVALUE0_.x + 1950 / zoom, _UPVALUE0_.y + 80 / zoom + 220 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1230 / zoom, _UPVALUE0_.y + 122 / zoom + 110 / zoom * (xY - 1), 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
      dxDrawImage(_UPVALUE0_.x + 1237 / zoom, _UPVALUE0_.y + 128 / zoom + 110 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 985 / zoom, _UPVALUE0_.y + 759 / zoom, 300 / zoom, 46 / zoom, 15 / zoom, tocolor(22, 22, 22, 255))
    if 0 < exports.ST_gui:getCustomEditboxText("addWorkers"):len() then
      if isMouseIn(_UPVALUE0_.x + 1239 / zoom, _UPVALUE0_.y + 759 / zoom, 46 / zoom, 46 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1239 / zoom, _UPVALUE0_.y + 759 / zoom, 46 / zoom, 46 / zoom, 15 / zoom, tocolor(15, 15, 15, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 1245 / zoom, _UPVALUE0_.y + 1362 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 200, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1239 / zoom, _UPVALUE0_.y + 759 / zoom, 46 / zoom, 46 / zoom, 15 / zoom, tocolor(19, 19, 19, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 1245 / zoom, _UPVALUE0_.y + 1362 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      end
    end
  elseif windows.orders == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 80 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 750 / zoom, _UPVALUE0_.w - 210 / zoom, 65 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.truck_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ZAM\195\147WIENIA", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    for _FORV_8_ = 1, 7 do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 90 / zoom + 94 / zoom * (0 + 1 - 1), 1050 / zoom, 85 / zoom, 20 / zoom, tocolor(45, 45, 45, 50))
    end
    numberAddPartsOrder = 0
    costPartsOrder = 0
    for _FORV_8_, _FORV_9_ in ipairs(parts_order) do
      if _FORV_8_ >= k3 and _FORV_8_ <= n3 then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 85 / zoom + 83 / zoom * (0 + 1 - 1), 1050 / zoom, 80 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 90 / zoom + 83 / zoom * (0 + 1 - 1), 70 / zoom, 70 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        dxDrawImage(_UPVALUE0_.x + 242 / zoom, _UPVALUE0_.y + 97.5 / zoom + 83 / zoom * (0 + 1 - 1), 55 / zoom, 55 / zoom, _FORV_9_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_9_[1], _UPVALUE0_.x + 315 / zoom, _UPVALUE0_.y + 10 / zoom + 166 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
        dxDrawText("#009419" .. _FORV_9_[3] .. " #ffffffPLN / #ffbb00SZT#ffffff.", _UPVALUE0_.x + 315 / zoom, _UPVALUE0_.y + 90 / zoom + 166 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText("MAGAZYN: #ffbb00" .. _FORV_9_[5] .. " #b4b4b4/ #ffbb00" .. maxNumberParts .. "", _UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 55 / zoom + 166 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1100 / zoom, _UPVALUE0_.y + 107 / zoom + 83 / zoom * (0 + 1 - 1), 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
        dxDrawImage(_UPVALUE0_.x + 1105 / zoom, _UPVALUE0_.y + 113 / zoom + 83 / zoom * (0 + 1 - 1), 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("#ffbb00" .. _FORV_9_[4], _UPVALUE0_.x + 2000 / zoom, _UPVALUE0_.y + 55 / zoom + 166 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        dxDrawText("#009419" .. przecinek(_FORV_9_[3] * _FORV_9_[4]) .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y + 55 / zoom + 166 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 720 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1230 / zoom, _UPVALUE0_.y + 107 / zoom + 83 / zoom * (0 + 1 - 1), 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
        dxDrawImage(_UPVALUE0_.x + 1237 / zoom, _UPVALUE0_.y + 113 / zoom + 83 / zoom * (0 + 1 - 1), 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        numberAddPartsOrder = numberAddPartsOrder + _FORV_9_[4]
        costPartsOrder = costPartsOrder + _FORV_9_[3] * _FORV_9_[4]
      end
    end
    dxDrawText("Ilo\197\155\196\135 cz\196\153\197\155ci: #ffbb00" .. numberAddPartsOrder .. "", _UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 1365 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText("Koszt zam\195\179wienia: #009419" .. przecinek(costPartsOrder) .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y + 1365 / zoom, _UPVALUE0_.x + 362 / zoom + 700 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("POTWIERD\197\185", _UPVALUE0_.x + 1080 / zoom, _UPVALUE0_.y + 759 / zoom, 200 / zoom, 45 / zoom, 255, 1)
  elseif windows.orders_select_truck == true then
    dxDrawText("WYBIERZ CI\196\152\197\187AR\195\147WK\196\152, KT\195\147R\196\132 B\196\152DZIESZ TRANSPORTOWA\196\134 CZ\196\152\197\154CI", _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y - 50 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
    dxDrawText("( CI\196\152\197\187AR\195\147WKA MUSI ZNAJDOWA\196\134 SI\196\152 NA TERENIE DZIA\197\129ANO\197\154CI )", _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 100 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    for _FORV_8_ = 1, 10 do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 120 / zoom + 55 / zoom * (1 + 1 - 1), 700 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 45, 45, 50))
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
        if isMouseIn(_UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 65, 45, 200))
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 60, 45, 150))
        end
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
      end
      dxDrawText(exports.ST_core:changeNameClient((getVehicleName(_FORV_10_[1]))), _UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y + 200 / zoom + 110 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText(getElementData(_FORV_10_[1], "vehicle:id"), _UPVALUE0_.x, _UPVALUE0_.y + 200 / zoom + 110 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 730 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    end
  end
  if windows.charges == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 80 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.charges_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("OP\197\129ATY", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 1220 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 1220 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.exemption_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
      if isCursorShowing() then
        dxDrawText("Zwolnij biznes\n(spowoduje to usuni\196\153cie ulepsze\197\132 oraz salda biznesu)", screenW * getCursorPosition() + 14 / zoom, screenH * getCursorPosition() + 34 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
        dxDrawText("Zwolnij biznes\n#c7c7c7(spowoduje to usuni\196\153cie ulepsze\197\132 oraz salda biznesu)", screenW * getCursorPosition() + 13 / zoom, screenH * getCursorPosition() + 33 / zoom, screenW * getCursorPosition(), screenH * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
      end
    else
      dxDrawImage(_UPVALUE0_.x + 1220 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.exemption_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 500 / zoom, _UPVALUE0_.y + 95 / zoom, 500 / zoom, 680 / zoom, 20 / zoom, tocolor(35, 35, 35, 100), false)
    dxDrawText("WYBIERZ ILO\197\154\196\134 DNI NA WYNAJEM BIZNESU", _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 240 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 245 / zoom, 410 / zoom, 2 / zoom, 1 / zoom, tocolor(60, 60, 60, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 684 / zoom, _UPVALUE0_.y + 264 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 270 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(charges_table.numberDay, _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 365 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 792 / zoom, _UPVALUE0_.y + 264 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(_UPVALUE0_.x + 798 / zoom, _UPVALUE0_.y + 270 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("WYBIERZ FORM\196\152 P\197\129ATNO\197\154CI", _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 500 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 620 / zoom, _UPVALUE0_.y + 370 / zoom, 270 / zoom, 2 / zoom, 1 / zoom, tocolor(60, 60, 60, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 634 / zoom, _UPVALUE0_.y + 389 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(_UPVALUE0_.x + 640 / zoom, _UPVALUE0_.y + 395 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(charges_table.paymentMethod, _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 615 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 842 / zoom, _UPVALUE0_.y + 389 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(_UPVALUE0_.x + 848 / zoom, _UPVALUE0_.y + 395 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if charges_table.numberDay ~= 0 then
      if charges_table.paymentMethod == "PUNKTY PREMIUM" then
        charges_table.metod = {200, "PP"}
      else
        charges_table.metod = {1, "PLN"}
      end
      dxDrawText("OP\197\129ATA ZA WYNAJEM BIZNESU:", _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 740 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
      dxDrawText("" .. przecinek(math.floor(charges_table.numberDay * 20000 / charges_table.metod[1])) .. "", _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
      dxDrawText("\197\129\196\132CZNIE", _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 1060 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      dxDrawText("#009420" .. przecinek(math.floor(charges_table.numberDay * 20000 / charges_table.metod[1])) .. " " .. charges_table.metod[2], _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 1130 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("PRZED\197\129U\197\187", _UPVALUE0_.x + 655 / zoom, _UPVALUE0_.y + 700 / zoom, 200 / zoom, 50 / zoom, 255, 1)
    end
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      dxDrawText("BIZNES OP\197\129ACONY DO\n#8c8c8c" .. _FORV_8_.dateRent, _UPVALUE0_.x + 1150 / zoom, _UPVALUE0_.y + 100 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, true, false)
    end
  end
  if windows.improvement == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 80 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.upgrades_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ULEPSZENIA", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      dxDrawText("SALDO DZIA\197\129ANO\197\154CI: #009419" .. przecinek(_FORV_8_.money) .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom + 920 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "right", "center", false, false, false, true, false)
    end
    for _FORV_8_ = 1, 7 do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 94 / zoom + 103 / zoom * (0 + 1 - 1), 1050 / zoom, 97 / zoom, 20 / zoom, tocolor(45, 45, 45, 50))
    end
    for _FORV_9_, _FORV_10_ in ipairs(upgrades) do
      if isMouseIn(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 94 / zoom + 103 / zoom * (0 + 1 - 1), 1050 / zoom, 97 / zoom, 20 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 94 / zoom + 103 / zoom * (0 + 1 - 1), 1050 / zoom, 97 / zoom, 20 / zoom, tocolor(45, 45, 45, 200))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 94 / zoom + 103 / zoom * (0 + 1 - 1), 1050 / zoom, 97 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 245 / zoom, _UPVALUE0_.y + 101 / zoom + 103 / zoom * (0 + 1 - 1), 82 / zoom, 82 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
      dxDrawImage(_UPVALUE0_.x + 256 / zoom, _UPVALUE0_.y + 111 / zoom + 103 / zoom * (0 + 1 - 1), 60 / zoom, 60 / zoom, _FORV_10_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_10_.name .. " - #009419" .. przecinek(_FORV_10_.price) .. " #ffffffPLN", _UPVALUE0_.x + 340 / zoom, _UPVALUE0_.y + 35 / zoom + 206 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      dxDrawText(_FORV_10_.description, _UPVALUE0_.x + 340 / zoom, _UPVALUE0_.y + 134 / zoom + 103 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "top", false, false, false, false, false)
      if _FORV_10_.status == 0 then
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 1100 / zoom, _UPVALUE0_.y + 117 / zoom + 103 / zoom * (0 + 1 - 1), 160 / zoom, 50 / zoom, 255, 1)
      else
        dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 2000 / zoom, _UPVALUE0_.y + 86 / zoom + 206 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.partsPrices == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 80 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 750 / zoom, _UPVALUE0_.w - 210 / zoom, 65 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("CENY CZ\196\152\197\154CI", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    xY = 0
    kosztCalejNaprawy = 0
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(parts_price) do
      if _FORV_7_ >= k3 and _FORV_7_ <= n3 then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 85 / zoom + 74 / zoom * (xY - 1), 1050 / zoom, 70 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 90 / zoom + 74 / zoom * (xY - 1), 60 / zoom, 60 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        dxDrawImage(_UPVALUE0_.x + 241.5 / zoom, _UPVALUE0_.y + 97.5 / zoom + 74 / zoom * (xY - 1), 45 / zoom, 45 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 305 / zoom, _UPVALUE0_.y + 5 / zoom + 148 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
        if _FORV_8_[4] then
          dxDrawText("W magazynie: #ffbb00" .. _FORV_8_[4] .. " #b4b4b4/ #ffbb00" .. maxNumberParts .. "", _UPVALUE0_.x + 305 / zoom, _UPVALUE0_.y + 75 / zoom + 148 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1090 / zoom, _UPVALUE0_.y + 102 / zoom + 74 / zoom * (xY - 1), 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
        dxDrawImage(_UPVALUE0_.x + 1095 / zoom, _UPVALUE0_.y + 108 / zoom + 74 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("#009419" .. przecinek(_FORV_8_[3]) .. "#ffffff PLN", _UPVALUE0_.x + 1990 / zoom, _UPVALUE0_.y + 45 / zoom + 148 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1230 / zoom, _UPVALUE0_.y + 102 / zoom + 74 / zoom * (xY - 1), 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
        dxDrawImage(_UPVALUE0_.x + 1237 / zoom, _UPVALUE0_.y + 108 / zoom + 74 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if _FORV_8_[1] == "Drzwi" then
        kosztCalejNaprawy = kosztCalejNaprawy + _FORV_8_[3] * 4
      elseif _FORV_8_[1] == "Lampy" then
        kosztCalejNaprawy = kosztCalejNaprawy + _FORV_8_[3] * 2
      elseif _FORV_8_[1] == "Zderzaki" then
        kosztCalejNaprawy = kosztCalejNaprawy + _FORV_8_[3] * 2
      elseif _FORV_8_[1] == "Lakiernia" then
      elseif _FORV_8_[1] == "Zestaw naprawczy" then
      elseif _FORV_8_[1] == "Akumulator" then
      else
        kosztCalejNaprawy = kosztCalejNaprawy + _FORV_8_[3]
      end
    end
    dxDrawText("Za pe\197\130n\196\133 napraw\196\153 klient zap\197\130aci:", _UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 1330 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
    dxDrawText("#009419" .. przecinek(kosztCalejNaprawy) .. " #ffffffPLN", _UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 1390 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
  end
  if windows.funds == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 80 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom, textures.funds_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(table_info) do
      dxDrawText("FUNDUSZE: #009419" .. przecinek(_FORV_8_.money) .. " #ffffffPLN", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("WP\197\129A\196\134", _UPVALUE0_.x + 1100 / zoom, _UPVALUE0_.y + 18 / zoom, 180 / zoom, 50 / zoom, 255, 1)
    exports.ST_buttons:dxCreateButton("WYP\197\129A\196\134", _UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 18 / zoom, 180 / zoom, 50 / zoom, 255, 1)
    for _FORV_8_ = 1, 10 do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 94 / zoom + 71 / zoom * (0 + 1 - 1), 1050 / zoom, 67 / zoom, 20 / zoom, tocolor(45, 45, 45, 50))
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
      elseif _FORV_10_.typ == "Wyp\197\130ata pracownika" then
        colorDolar = {
          189,
          0,
          0
        }
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / zoom, _UPVALUE0_.y + 94 / zoom + 71 / zoom * (0 + 1 - 1), 1050 / zoom, 67 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 245 / zoom, _UPVALUE0_.y + 102 / zoom + 71 / zoom * (0 + 1 - 1), 50 / zoom, 50 / zoom, 10 / zoom, tocolor(25, 25, 25, 150))
      dxDrawImage(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 107 / zoom + 71 / zoom * (0 + 1 - 1), 40 / zoom, 40 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(colorDolar[1], colorDolar[2], colorDolar[3], 255), false)
      dxDrawText(_FORV_10_.data, _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 90 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      if _FORV_10_.typ == "Wp\197\130yw" then
        dxDrawText("WP\197\129YW NA KONTO", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 102.5 / zoom + 71 / zoom * (0 + 1 - 1), 50 / zoom, 50 / zoom, 12 / zoom, tocolor(0, 255, 136, 150), false)
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 107.5 / zoom + 71 / zoom * (0 + 1 - 1), 40 / zoom, 40 / zoom, textures.repair_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("NAPRAWY", _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 30 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText("#009419" .. przecinek(split(_FORV_10_.serial, ",")[1]) .. " #ffffffPLN", _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 80 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 700 / zoom, _UPVALUE0_.y + 102.5 / zoom + 71 / zoom * (0 + 1 - 1), 50 / zoom, 50 / zoom, 12 / zoom, tocolor(207, 3, 252, 150), false)
        dxDrawImage(_UPVALUE0_.x + 705 / zoom, _UPVALUE0_.y + 107.5 / zoom + 71 / zoom * (0 + 1 - 1), 40 / zoom, 40 / zoom, textures.spray_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("MALOWANIA", _UPVALUE0_.x + 755 / zoom, _UPVALUE0_.y + 30 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText("#009419" .. przecinek(split(_FORV_10_.serial, ",")[2]) .. " #ffffffPLN", _UPVALUE0_.x + 755 / zoom, _UPVALUE0_.y + 80 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 880 / zoom, _UPVALUE0_.y + 102.5 / zoom + 71 / zoom * (0 + 1 - 1), 50 / zoom, 50 / zoom, 12 / zoom, tocolor(0, 225, 255, 150), false)
        dxDrawImage(_UPVALUE0_.x + 885 / zoom, _UPVALUE0_.y + 107.5 / zoom + 71 / zoom * (0 + 1 - 1), 40 / zoom, 40 / zoom, textures.repairkit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ZESTAWY NAPRAWCZE / AKU", _UPVALUE0_.x + 935 / zoom, _UPVALUE0_.y + 30 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        dxDrawText("#009419" .. przecinek(split(_FORV_10_.serial, ",")[3]) .. " #ffffffPLN", _UPVALUE0_.x + 935 / zoom, _UPVALUE0_.y + 80 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        dxDrawText("+" .. przecinek(_FORV_10_.ile) .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 140, 33, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      elseif _FORV_10_.typ == "Wp\197\130ata" then
        dxDrawText("+" .. przecinek(_FORV_10_.ile) .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 140, 33, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
        dxDrawText("Wp\197\130ata na konto przez #ffbb00" .. _FORV_10_.nick, _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      elseif _FORV_10_.typ == "Wyp\197\130ata" then
        dxDrawText("-" .. przecinek(_FORV_10_.ile) .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
        dxDrawText("Wyp\197\130ata z konta przez #ffbb00" .. _FORV_10_.nick, _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      elseif _FORV_10_.typ == "Zam\195\179wienie" then
        dxDrawText("Zam\195\179wienie sk\197\130adane przez #ffbb00" .. _FORV_10_.nick, _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
        dxDrawText("-" .. przecinek(_FORV_10_.ile) .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      elseif _FORV_10_.typ == "Op\197\130ata biznesu" then
        dxDrawText("Op\197\130ata biznesu zrealizowana przez #ffbb00" .. _FORV_10_.nick, _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
        dxDrawText("-" .. przecinek(_FORV_10_.ile) .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      elseif _FORV_10_.typ == "Wyp\197\130ata pracownika" then
        dxDrawText("Wyp\197\130ata dla pracownika #ffbb00" .. _FORV_10_.nick .. " #e6e6e6za " .. secondsToClock(tonumber(60 * _FORV_10_.serial)) .. "", _UPVALUE0_.x + 310 / zoom, _UPVALUE0_.y + 32 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
        dxDrawText("-" .. przecinek(_FORV_10_.ile) .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + 60 / zoom + 142 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 900 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(189, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      end
    end
  end
  if windows.statistics == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, _UPVALUE0_.w - 210 / zoom, 60 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y, 7 / zoom, _UPVALUE0_.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 225 / zoom, _UPVALUE0_.y + 5 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("STATYSTYKI", _UPVALUE0_.x + 290 / zoom, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText("WYKRES ILO\197\154CI KLIENT\195\147W", _UPVALUE0_.x + 1020 / zoom, _UPVALUE0_.y - 10 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 1050 / zoom, _UPVALUE0_.y + 135 / zoom, 240 / zoom, 265 / zoom, 10 / zoom, tocolor(30, 30, 30, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 1060 / zoom, _UPVALUE0_.y + 170 / zoom, 220 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawText("KLIENCI W TYGODNIU", _UPVALUE0_.x + 1060 / zoom, _UPVALUE0_.y + 110 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    for _FORV_10_, _FORV_11_ in ipairs(table_statistic) do
    end
    fuel = {
      {
        "NAPRAWY",
        textures.repair_icon,
        0 + split(_FORV_11_.totalmoney, ",")[1],
        {
          0,
          255,
          136
        }
      },
      {
        "LAKIEROWANIE",
        textures.spray_icon,
        0 + split(_FORV_11_.totalmoney, ",")[2],
        {
          207,
          3,
          252
        }
      },
      {
        "ZESTAWY NAPRAWCZE",
        textures.repairkit_icon,
        0 + split(_FORV_11_.totalmoney, ",")[3],
        {
          0,
          225,
          255
        }
      }
    }
    xY = 0
    for _FORV_10_, _FORV_11_ in ipairs(fuel) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1060 / zoom, _UPVALUE0_.y + 185 / zoom + 75 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 12 / zoom, tocolor(_FORV_11_[4][1], _FORV_11_[4][2], _FORV_11_[4][3], 150), false)
      dxDrawImage(_UPVALUE0_.x + 1065 / zoom, _UPVALUE0_.y + 190 / zoom + 75 / zoom * (xY - 1), 45 / zoom, 45 / zoom, _FORV_11_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_11_[1], _UPVALUE0_.x + 1122 / zoom, _UPVALUE0_.y + 190 / zoom + 150 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_11_[3], _UPVALUE0_.x + 1122 / zoom, _UPVALUE0_.y + 250 / zoom + 150 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 1050 / zoom, _UPVALUE0_.y + 500 / zoom, 240 / zoom, 265 / zoom, 10 / zoom, tocolor(30, 30, 30, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 1060 / zoom, _UPVALUE0_.y + 535 / zoom, 220 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawText("KLIENCI DZI\197\154", _UPVALUE0_.x + 1060 / zoom, _UPVALUE0_.y + 840 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    for _FORV_10_, _FORV_11_ in ipairs(table_statistic) do
      fuel = {
        {
          "NAPRAWY",
          textures.repair_icon,
          split(_FORV_11_.totalmoney, ",")[1],
          {
            0,
            255,
            136
          }
        },
        {
          "LAKIEROWANIE",
          textures.spray_icon,
          split(_FORV_11_.totalmoney, ",")[2],
          {
            207,
            3,
            252
          }
        },
        {
          "ZESTAWY NAPRAWCZE",
          textures.repairkit_icon,
          split(_FORV_11_.totalmoney, ",")[3],
          {
            0,
            225,
            255
          }
        }
      }
    end
    xY = 0
    for _FORV_10_, _FORV_11_ in ipairs(fuel) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1060 / zoom, _UPVALUE0_.y + 550 / zoom + 75 / zoom * (xY - 1), 55 / zoom, 55 / zoom, 12 / zoom, tocolor(_FORV_11_[4][1], _FORV_11_[4][2], _FORV_11_[4][3], 150), false)
      dxDrawImage(_UPVALUE0_.x + 1065 / zoom, _UPVALUE0_.y + 555 / zoom + 75 / zoom * (xY - 1), 45 / zoom, 45 / zoom, _FORV_11_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_11_[1], _UPVALUE0_.x + 1122 / zoom, _UPVALUE0_.y + 920 / zoom + 150 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_11_[3], _UPVALUE0_.x + 1122 / zoom, _UPVALUE0_.y + 980 / zoom + 150 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    end
    if #earnDataStatistic > 0 then
      for _FORV_16_ = 0, #earnDataStatistic do
        for _FORV_20_ = 0, 11 do
          dxDrawLine(({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / (#earnDataStatistic + 1), ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).y + 13 / zoom + _FORV_20_ * ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / 17.55 / zoom, ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w - ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / (#earnDataStatistic + 1), ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).y + 13 / zoom + _FORV_20_ * ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / 17.55 / zoom, tocolor(100, 100, 100, 255), 1)
        end
      end
      dxDrawText(przecinek(highest_value), ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + 20 / zoom, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + 118 / zoom, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + 20 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true)
      for _FORV_16_ = 0, 10 do
        dxDrawText(przecinek(("%.0f"):format(_FORV_16_ / 11 * highest_value)), ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).x, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).y + 640 / zoom - 56.7 * _FORV_16_ / zoom, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).x + 118 / zoom, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).y + 640 / zoom - 56.7 * _FORV_16_ / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true)
      end
      for _FORV_16_, _FORV_17_ in pairs(earnDataStatistic) do
        dxDrawLine(({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).w / (#earnDataStatistic + 1) * _FORV_16_, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).y + 15 / zoom, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).w / (#earnDataStatistic + 1) * _FORV_16_, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).y + 25 / zoom + ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).h, tocolor(100, 100, 100, 255), 1)
      end
      for _FORV_16_, _FORV_17_ in pairs(earnDataStatistic) do
        if _FORV_16_ == 1 then
        else
          dxDrawLine(({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_16_ - 1), ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).y + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h + 30 / zoom - _FORV_17_.moneyAll[1] / earnDiagramStatistic.maxEarn[1] * ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_16_, ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).y + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h + 30 / zoom - _FORV_17_.moneyAll[1] / earnDiagramStatistic.maxEarn[1] * ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_17_.color[1][1], _FORV_17_.color[1][2], _FORV_17_.color[1][3], 255), 3)
          dxDrawLine(({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_16_ - 1), ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).y + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h + 30 / zoom - _FORV_17_.moneyAll[2] / earnDiagramStatistic.maxEarn[2] * ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_16_, ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).y + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h + 30 / zoom - _FORV_17_.moneyAll[2] / earnDiagramStatistic.maxEarn[2] * ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_17_.color[2][1], _FORV_17_.color[2][2], _FORV_17_.color[2][3], 255), 3)
          dxDrawLine(({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * (_FORV_16_ - 1), ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).y + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h + 30 / zoom - _FORV_17_.moneyAll[3] / earnDiagramStatistic.maxEarn[3] * ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h - 15 / zoom, ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).x + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).w / (#earnDataStatistic + 1) * _FORV_16_, ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).y + ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h + 30 / zoom - _FORV_17_.moneyAll[3] / earnDiagramStatistic.maxEarn[3] * ({
            x = _UPVALUE0_.x + 165 / zoom,
            y = _UPVALUE0_.y + 120 / zoom,
            w = _UPVALUE0_.w - 300 / zoom,
            h = _UPVALUE0_.h - 200 / zoom
          }).h - 15 / zoom, tocolor(_FORV_17_.color[3][1], _FORV_17_.color[3][2], _FORV_17_.color[3][3], 255), 3)
        end
        dxDrawText(_FORV_17_.day, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).w / (#earnDataStatistic + 1) * _FORV_16_, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).y + ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).h + 35 / zoom, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).x + ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).w / (#earnDataStatistic + 1) * _FORV_16_, ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).y + ({
          x = _UPVALUE0_.x + 165 / zoom,
          y = _UPVALUE0_.y + 120 / zoom,
          w = _UPVALUE0_.w - 300 / zoom,
          h = _UPVALUE0_.h - 200 / zoom
        }).h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "top", false, false, false)
      end
      dxDrawLine(({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + 13 / zoom, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w - ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + 13 / zoom, tocolor(40, 40, 40, 255), 3)
      dxDrawLine(({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + 12 / zoom, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + 25 / zoom + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).h, tocolor(40, 40, 40, 255), 3)
      dxDrawLine(({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w / (#earnDataStatistic + 1) - 1 / zoom, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).h + 25 / zoom, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w - ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).h + 25 / zoom, tocolor(40, 40, 40, 255), 3)
      dxDrawLine(({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w - ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w / (#earnDataStatistic + 1), ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + 12 / zoom, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).x + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w - ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).w / (#earnDataStatistic + 1) / zoom, ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).y + 25 / zoom + ({
        x = _UPVALUE0_.x + 165 / zoom,
        y = _UPVALUE0_.y + 120 / zoom,
        w = _UPVALUE0_.w - 300 / zoom,
        h = _UPVALUE0_.h - 200 / zoom
      }).h, tocolor(40, 40, 40, 255), 3)
    else
    end
  end
  if windows.buyBusiness == true then
    if charges_table.paymentMethod == "PUNKTY PREMIUM" then
      charges_table.metod = {200, "PP"}
    else
      charges_table.metod = {1, "PLN"}
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 260 / zoom, _UPVALUE0_.y + 155 / zoom, 785 / zoom, 500 / zoom, 20 / zoom, tocolor(35, 35, 35, 240))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 280 / zoom, _UPVALUE0_.y + 205 / zoom, 745 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText(dataInfo.name, _UPVALUE0_.x + 280 / zoom, _UPVALUE0_.y + 162 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawText("WYBIERZ ILO\197\154\196\134 DNI NA WYNAJEM BIZNESU", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 280 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 445 / zoom, _UPVALUE0_.y + 257 / zoom, 410 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 584 / zoom, _UPVALUE0_.y + 268 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(_UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 274 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(charges_table.numberDay, _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 373 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 682 / zoom, _UPVALUE0_.y + 268 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(_UPVALUE0_.x + 688 / zoom, _UPVALUE0_.y + 274 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("WYBIERZ FORM\196\152 P\197\129ATNO\197\154CI", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 540 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 388 / zoom, 285 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 538 / zoom, _UPVALUE0_.y + 399 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(_UPVALUE0_.x + 544 / zoom, _UPVALUE0_.y + 405 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(charges_table.paymentMethod, _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 635 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 727 / zoom, _UPVALUE0_.y + 399 / zoom, 37 / zoom, 37 / zoom, 5 / zoom, tocolor(50, 50, 50, 250), false)
    dxDrawImage(_UPVALUE0_.x + 733 / zoom, _UPVALUE0_.y + 405 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("DO ZAP\197\129ATY", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 780 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
    dxDrawText("#009420" .. przecinek(math.floor(charges_table.numberDay * 20000 / charges_table.metod[1])) .. " PLN", _UPVALUE0_.x + 940 / zoom, _UPVALUE0_.y + 850 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 570 / zoom, _UPVALUE0_.y + 560 / zoom, 160 / zoom, 60 / zoom, 255, 1)
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true then
      for _FORV_6_, _FORV_7_ in ipairs(category) do
        if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom * (0 + 1 - 1), 210 / zoom, 70 / zoom) and windows.background == true then
          windows.main = false
          windows.orders = false
          windows.orders_select_truck = false
          windows.charges = false
          windows.improvement = false
          windows.statistics = false
          windows.partsPrices = false
          windows.funds = false
          windows.workers = false
          exports.ST_gui:destroyCustomEditbox("addWorkers")
          exports.ST_gui:destroyCustomEditbox("funds:business")
          if _FORV_7_.text == "INFORMACJE" then
            windows.main = true
          elseif _FORV_7_.text == "PRACOWNICY" then
            workers_table = {}
            hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
            maska = dxCreateTexture(":ST_avatars/kolo.png")
            dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
            windows.workers = true
            if not refreshAvatarsFriend then
              for _FORV_12_, _FORV_13_ in pairs(avatar_table) do
                if isElement(_FORV_13_[2]) then
                  destroyElement(_FORV_13_[2])
                end
              end
              avatar_table = {}
              triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "showWorkers", localPlayer, id_business, true)
            else
              triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "showWorkers", localPlayer, id_business)
            end
            refreshAvatarsFriend = true
            exports.ST_gui:createCustomEditbox("addWorkers", "Wpisz UID gracza", _UPVALUE0_.x + 985 / zoom, _UPVALUE0_.y + 759 / zoom, 250 / zoom, 46 / zoom, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
          elseif _FORV_7_.text == "ZAM\195\147WIENIA" then
            k3 = 1
            n3 = 8
            m3 = 8
            parts_order = {
              {
                "Silniki",
                textures.engine_icon,
                partsPriceBuy[1],
                0,
                dataInfo.parts.engine
              },
              {
                "Drzwi",
                textures.door_icon,
                partsPriceBuy[2],
                0,
                dataInfo.parts.door
              },
              {
                "Baga\197\188niki",
                textures.trunk_icon,
                partsPriceBuy[3],
                0,
                dataInfo.parts.trunk
              },
              {
                "Maski",
                textures.hood_icon,
                partsPriceBuy[4],
                0,
                dataInfo.parts.hood
              },
              {
                "Lampy",
                textures.light_icon,
                partsPriceBuy[5],
                0,
                dataInfo.parts.light
              },
              {
                "Szyby",
                textures.glass_icon,
                partsPriceBuy[6],
                0,
                dataInfo.parts.glass
              },
              {
                "Zderzaki",
                textures.bumber_icon,
                partsPriceBuy[7],
                0,
                dataInfo.parts.bumper
              },
              {
                "Zestawy naprawcze",
                textures.repairkit_icon,
                partsPriceBuy[8],
                0,
                dataInfo.parts.repairKit
              },
              {
                "Akumulator",
                textures.repairkit_icon,
                partsPriceBuy[9],
                0,
                dataInfo.parts.aku
              }
            }
            windows.orders = true
          elseif _FORV_7_.text == "OP\197\129ATY" then
            if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
              exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
              return
            end
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
                0
              },
              maxEarn = {
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
                }
              }
            }
            earnDataStatistic = {}
            windows.statistics = true
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "table_statistic_business", localPlayer, id_business)
          elseif _FORV_7_.text == "CENY CZ\196\152\197\154CI" then
            k3 = 1
            n3 = 9
            m3 = 9
            parts_price = {}
            for _FORV_12_, _FORV_13_ in ipairs(table_info) do
              parts_price = {
                {
                  "Silniki",
                  textures.engine_icon,
                  dataInfo.parts_price.engine,
                  dataInfo.parts.engine
                },
                {
                  "Drzwi",
                  textures.door_icon,
                  dataInfo.parts_price.door,
                  dataInfo.parts.door
                },
                {
                  "Baga\197\188niki",
                  textures.trunk_icon,
                  dataInfo.parts_price.trunk,
                  dataInfo.parts.trunk
                },
                {
                  "Maski",
                  textures.hood_icon,
                  dataInfo.parts_price.hood,
                  dataInfo.parts.hood
                },
                {
                  "Lampy",
                  textures.light_icon,
                  dataInfo.parts_price.light,
                  dataInfo.parts.light
                },
                {
                  "Szyby",
                  textures.glass_icon,
                  dataInfo.parts_price.glass,
                  dataInfo.parts.glass
                },
                {
                  "Zderzaki",
                  textures.bumber_icon,
                  dataInfo.parts_price.bumper,
                  dataInfo.parts.bumper
                },
                {
                  "Lakiernia",
                  textures.spray_icon,
                  dataInfo.parts_price.paint,
                  false
                },
                {
                  "Zestaw naprawczy",
                  textures.repairkit_icon,
                  dataInfo.parts_price.repairKit,
                  dataInfo.parts.repairKit
                },
                {
                  "Akumulator",
                  textures.repairkit_icon,
                  dataInfo.parts_price.aku,
                  dataInfo.parts.aku
                }
              }
            end
            windows.partsPrices = true
          elseif _FORV_7_.text == "FUNDUSZE" then
            exports.ST_gui:createCustomEditbox("funds:business", "Wpisz kwot\196\153", _UPVALUE0_.x + 885 / zoom, _UPVALUE0_.y + 18 / zoom, 200 / zoom, 50 / zoom, false, "", "", 1)
            windows.funds = true
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "table_atm_business", localPlayer, id_business)
          end
        end
      end
      if isMouseIn(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 770 / zoom, 30 / zoom, 30 / zoom) and windows.background == true then
        exports.ST_gui:destroyCustomEditbox("funds:business")
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        removeEventHandler("onClientKey", root, key)
        windows.main = false
        windows.background = false
        windows.orders = false
        windows.charges = false
        windows.orders_select_truck = false
        windows.improvement = false
        windows.statistics = false
        windows.partsPrices = false
        windows.funds = false
        windows.workers = false
        showCursor(false)
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
        if isElement(maska) then
          destroyElement(maska)
        end
        if isElement(hudMaskShader) then
          destroyElement(hudMaskShader)
        end
        exports.ST_gui:destroyCustomEditbox("addWorkers")
      end
    end
    if windows.charges == true then
      if isMouseIn(_UPVALUE0_.x + 792 / zoom, _UPVALUE0_.y + 264 / zoom, 37 / zoom, 37 / zoom) and windows.charges == true then
        if charges_table.paymentMethod == "PUNKTY PREMIUM" then
          if charges_table.numberDay + 1 > 14 then
            charges_table.numberDay = 14
            return
          end
        elseif 7 < charges_table.numberDay + 1 then
          charges_table.numberDay = 7
          return
        end
        charges_table.numberDay = charges_table.numberDay + 1
      elseif isMouseIn(_UPVALUE0_.x + 684 / zoom, _UPVALUE0_.y + 264 / zoom, 37 / zoom, 37 / zoom) and windows.charges == true then
        if 1 > charges_table.numberDay - 1 then
          charges_table.numberDay = 0
          return
        end
        charges_table.numberDay = charges_table.numberDay - 1
      elseif isMouseIn(_UPVALUE0_.x + 842 / zoom, _UPVALUE0_.y + 389 / zoom, 37 / zoom, 37 / zoom) and windows.charges == true then
        if charges_table.paymentMethod == "SALDO BIZNESU" then
          charges_table.paymentMethod = "PUNKTY PREMIUM"
          charges_table.numberDay = 14
        elseif charges_table.paymentMethod == "PUNKTY PREMIUM" then
          charges_table.paymentMethod = "SALDO BIZNESU"
          charges_table.numberDay = 7
        end
      elseif isMouseIn(_UPVALUE0_.x + 634 / zoom, _UPVALUE0_.y + 389 / zoom, 37 / zoom, 37 / zoom) and windows.charges == true then
        if charges_table.paymentMethod == "SALDO BIZNESU" then
          charges_table.paymentMethod = "PUNKTY PREMIUM"
          charges_table.numberDay = 14
        elseif charges_table.paymentMethod == "PUNKTY PREMIUM" then
          charges_table.paymentMethod = "SALDO BIZNESU"
          charges_table.numberDay = 7
        end
      elseif isMouseIn(_UPVALUE0_.x + 655 / zoom, _UPVALUE0_.y + 700 / zoom, 200 / zoom, 50 / zoom) and windows.charges == true then
        if charges_table.numberDay ~= 0 then
          if charges_table.paymentMethod == "PUNKTY PREMIUM" then
            if getElementData(localPlayer, "player:pp") < math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]) then
              exports.st_gui:showPlayerNotification("Nie posiadasz tyle punkt\195\179w premium!", "error")
              return
            end
            setElementData(localPlayer, "player:pp", getElementData(localPlayer, "player:pp") - math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]))
          end
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "extension", localPlayer, charges_table.numberDay, charges_table.paymentMethod, id_business, math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]))
        end
      elseif isMouseIn(_UPVALUE0_.x + 1220 / zoom, _UPVALUE0_.y + 5 / zoom, 70 / zoom, 70 / zoom) and windows.charges == true then
        triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "exemptionBusiness", localPlayer, id_business)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        removeEventHandler("onClientKey", root, key)
        windows.charges = false
        showCursor(false)
        for _FORV_5_, _FORV_6_ in pairs(textures) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        textures = {}
        if isElement(maska) then
          destroyElement(maska)
        end
        if isElement(hudMaskShader) then
          destroyElement(hudMaskShader)
        end
        exports.ST_gui:destroyCustomEditbox("addWorkers")
      end
    end
    if windows.buyBusiness == true then
      if isMouseIn(_UPVALUE0_.x + 682 / zoom, _UPVALUE0_.y + 268 / zoom, 37 / zoom, 37 / zoom) and windows.buyBusiness == true then
        if charges_table.paymentMethod == "PUNKTY PREMIUM" then
          if charges_table.numberDay + 1 > 14 then
            charges_table.numberDay = 14
            return
          end
        elseif 7 < charges_table.numberDay + 1 then
          charges_table.numberDay = 7
          return
        end
      elseif isMouseIn(_UPVALUE0_.x + 584 / zoom, _UPVALUE0_.y + 268 / zoom, 37 / zoom, 37 / zoom) and windows.buyBusiness == true then
        if 1 > charges_table.numberDay - 1 then
          charges_table.numberDay = 1
          return
        end
        charges_table.numberDay = charges_table.numberDay - 1
      elseif isMouseIn(_UPVALUE0_.x + 727 / zoom, _UPVALUE0_.y + 399 / zoom, 37 / zoom, 37 / zoom) and windows.buyBusiness == true then
        if charges_table.paymentMethod == "GOT\195\147WKA" then
          charges_table.paymentMethod = "PUNKTY PREMIUM"
          charges_table.numberDay = 14
        elseif charges_table.paymentMethod == "PUNKTY PREMIUM" then
          charges_table.paymentMethod = "GOT\195\147WKA"
          charges_table.numberDay = 7
        end
      elseif isMouseIn(_UPVALUE0_.x + 538 / zoom, _UPVALUE0_.y + 399 / zoom, 37 / zoom, 37 / zoom) and windows.buyBusiness == true then
        if charges_table.paymentMethod == "GOT\195\147WKA" then
          charges_table.paymentMethod = "PUNKTY PREMIUM"
          charges_table.numberDay = 14
        elseif charges_table.paymentMethod == "PUNKTY PREMIUM" then
          charges_table.paymentMethod = "GOT\195\147WKA"
          charges_table.numberDay = 7
        end
      elseif isMouseIn(_UPVALUE0_.x + 570 / zoom, _UPVALUE0_.y + 560 / zoom, 160 / zoom, 60 / zoom) and windows.buyBusiness == true and charges_table.numberDay ~= 0 then
        if charges_table.paymentMethod == "PUNKTY PREMIUM" then
          if getElementData(localPlayer, "player:pp") < math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]) then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle punkt\195\179w premium!", "error")
            return
          end
          setElementData(localPlayer, "player:pp", getElementData(localPlayer, "player:pp") - math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]))
        end
        if math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]) > getElementData(localPlayer, "player:moneyMNn") then
          exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
          return
        end
        triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "buyBusiness", localPlayer, charges_table.numberDay, charges_table.paymentMethod, id_business, math.floor(charges_table.numberDay * 20000 / charges_table.metod[1]))
        exports.st_gui:showPlayerNotification("Pomy\197\155lnie wynaj\196\153to biznes na " .. charges_table.numberDay .. " dni", "success")
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        removeEventHandler("onClientKey", root, key)
        windows.buyBusiness = false
        showCursor(false)
        if isElement(maska) then
          destroyElement(maska)
        end
        if isElement(hudMaskShader) then
          destroyElement(hudMaskShader)
        end
        exports.ST_gui:destroyCustomEditbox("addWorkers")
      end
    end
    if windows.improvement == true then
      for _FORV_6_, _FORV_7_ in ipairs(upgrades) do
        if isMouseIn(_UPVALUE0_.x + 1100 / zoom, _UPVALUE0_.y + 117 / zoom + 103 / zoom * (0 + 1 - 1), 160 / zoom, 50 / zoom) and windows.improvement == true and _FORV_7_.status == 0 then
          if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
            exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
            return
          end
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "upgradesBusiness", localPlayer, _FORV_7_.nameDatabase, _FORV_7_.price, id_business)
        end
      end
    end
    if windows.funds == true then
      if isMouseIn(_UPVALUE0_.x + 1100 / zoom, _UPVALUE0_.y + 18 / zoom, 180 / zoom, 50 / zoom) and windows.funds == true then
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
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "fundsOperation_4536", localPlayer, math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))), id_business)
          lastTickCount = getTickCount()
        else
          return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
        end
      elseif isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 18 / zoom, 180 / zoom, 50 / zoom) and windows.funds == true then
        if getTickCount() - lastTickCount > 5000 then
          if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
            exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
            return
          end
          if 1 > exports.ST_gui:getCustomEditboxText("funds:business"):len() then
            exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153!!", "error")
            return
          end
          if not exports.ST_gui:getCustomEditboxText("funds:business") then
            return
          end
          if getElementData(localPlayer, "player:moneyMNn") + math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))) > 999999999 then
            return
          end
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "fundsOperation_4536", localPlayer, -math.floor((exports.ST_gui:getCustomEditboxText("funds:business"))), id_business)
          lastTickCount = getTickCount()
        else
          return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
        end
      end
    end
    if windows.partsPrices == true then
      for _FORV_6_, _FORV_7_ in ipairs(parts_price) do
        if _FORV_6_ >= k3 and _FORV_6_ <= n3 then
          if isMouseIn(_UPVALUE0_.x + 1090 / zoom, _UPVALUE0_.y + 102 / zoom + 74 / zoom * (0 + 1 - 1), 37 / zoom, 37 / zoom) and windows.partsPrices == true then
            if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
              exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
              return
            end
            if parts_price[_FORV_6_][3] - 100 < 100 then
              parts_price[_FORV_6_][3] = 100
              triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPriceParts", localPlayer, parts_price, id_business)
              return
            end
            parts_price[_FORV_6_][3] = parts_price[_FORV_6_][3] - 100
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPriceParts", localPlayer, parts_price, id_business)
          elseif isMouseIn(_UPVALUE0_.x + 1230 / zoom, _UPVALUE0_.y + 102 / zoom + 74 / zoom * (0 + 1 - 1), 37 / zoom, 37 / zoom) and windows.partsPrices == true then
            if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
              exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
              return
            end
            if parts_price[_FORV_6_][1] == "Lakiernia" then
              if 20000 < parts_price[_FORV_6_][3] + 100 then
                parts_price[_FORV_6_][3] = 20000
                triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPriceParts", localPlayer, parts_price, id_business)
                return
              end
            elseif parts_price[_FORV_6_][1] == "Zestaw naprawczy" then
              if parts_price[_FORV_6_][3] + 100 > 40000 then
                parts_price[_FORV_6_][3] = 40000
                triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPriceParts", localPlayer, parts_price, id_business)
                return
              end
            elseif parts_price[_FORV_6_][1] == "Akumulator" then
              if parts_price[_FORV_6_][3] + 100 > 50000 then
                parts_price[_FORV_6_][3] = 50000
                triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPriceParts", localPlayer, parts_price, id_business)
                return
              end
            elseif parts_price[_FORV_6_][3] + 100 > 1500 then
              parts_price[_FORV_6_][3] = 1500
              triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPriceParts", localPlayer, parts_price, id_business)
              return
            end
            parts_price[_FORV_6_][3] = parts_price[_FORV_6_][3] + 100
            triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPriceParts", localPlayer, parts_price, id_business)
          end
        end
      end
    end
    if windows.orders == true then
      for _FORV_6_, _FORV_7_ in ipairs(parts_order) do
        if _FORV_6_ >= k3 and _FORV_6_ <= n3 then
          if isMouseIn(_UPVALUE0_.x + 1100 / zoom, _UPVALUE0_.y + 107 / zoom + 83 / zoom * (0 + 1 - 1), 37 / zoom, 37 / zoom) and windows.orders == true then
            if 0 > parts_order[_FORV_6_][4] - 10 then
              parts_order[_FORV_6_][4] = 0
              return
            end
            parts_order[_FORV_6_][4] = parts_order[_FORV_6_][4] - 10
          elseif isMouseIn(_UPVALUE0_.x + 1230 / zoom, _UPVALUE0_.y + 107 / zoom + 83 / zoom * (0 + 1 - 1), 37 / zoom, 37 / zoom) and windows.orders == true then
            if numberAddPartsOrder >= 500 then
              exports.st_gui:showPlayerNotification("Mo\197\188esz zam\195\179wi\196\135 maksymalnie 500 cz\196\153\197\155ci na raz", "error")
              return
            end
            if parts_order[_FORV_6_][5] + parts_order[_FORV_6_][4] + 10 >= maxNumberParts then
              exports.st_gui:showPlayerNotification("Przekroczono limit danej cz\196\153\197\155ci w magazynie", "error")
              parts_order[_FORV_6_][4] = maxNumberParts - parts_order[_FORV_6_][5]
              return
            end
            parts_order[_FORV_6_][4] = parts_order[_FORV_6_][4] + 10
          elseif isMouseIn(_UPVALUE0_.x + 1080 / zoom, _UPVALUE0_.y + 759 / zoom, 200 / zoom, 45 / zoom) and windows.orders == true and numberAddPartsOrder ~= 0 then
            vehicle = {}
            windows.orders = false
            windows.orders_select_truck = true
            costPartsOrder = costPartsOrder
          end
        end
      end
    end
    if windows.orders_select_truck == true then
      for _FORV_6_, _FORV_7_ in ipairs(vehicle) do
        if isMouseIn(_UPVALUE0_.x + 405 / zoom, _UPVALUE0_.y + 175 / zoom + 55 / zoom * (0 + 1 - 1), 700 / zoom, 50 / zoom) and windows.orders_select_truck == true and (getElementModel(_FORV_7_[1]) == 514 or getElementModel(_FORV_7_[1]) == 515 or getElementModel(_FORV_7_[1]) == 403) then
          if getElementData(localPlayer, "player:transportMechanic") then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz tego zrobi\196\135", "error")
            return
          end
          players = {}
          print(dataInfo.id)
          for _FORV_12_, _FORV_13_ in ipairs(getElementsByType("player")) do
            if getElementData(_FORV_13_, "player:transportMechanic") and getElementData(_FORV_13_, "player:transportMechanic") == dataInfo.id then
              table.insert(players, _FORV_12_)
            end
          end
          if 1 <= #players then
            exports.st_gui:showPlayerNotification("Kto\197\155 ju\197\188 transportuje cz\196\153\197\155ci do tego biznesu", "info")
            return
          end
          setElementData(localPlayer, "player:transportMechanic", dataInfo.id)
          randomPosTrailer = math.random(1, #posTrailer)
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "createTrailer", localPlayer, {
            posTrailer[randomPosTrailer][1],
            posTrailer[randomPosTrailer][2],
            posTrailer[randomPosTrailer][3],
            posTrailer[randomPosTrailer][4],
            posTrailer[randomPosTrailer][5],
            posTrailer[randomPosTrailer][6]
          }, costPartsOrder, id_business)
        end
      end
    end
    if windows.workers == true then
      for _FORV_6_, _FORV_7_ in ipairs(workers_table) do
        if isMouseIn(_UPVALUE0_.x + 1050 / zoom, _UPVALUE0_.y + 122 / zoom + 110 / zoom * (0 + 1 - 1), 37 / zoom, 37 / zoom) and windows.workers == true then
          if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
            exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
            return
          end
          if workers_table[_FORV_6_][4] - 10000 < 20000 then
            workers_table[_FORV_6_][4] = 20000
            return
          end
          workers_table[_FORV_6_][4] = workers_table[_FORV_6_][4] - 10000
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPayCheckWorkers", localPlayer, workers_table[_FORV_6_][1], workers_table[_FORV_6_][4])
        elseif isMouseIn(_UPVALUE0_.x + 1230 / zoom, _UPVALUE0_.y + 122 / zoom + 110 / zoom * (0 + 1 - 1), 37 / zoom, 37 / zoom) and windows.workers == true then
          if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
            exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
            return
          end
          if workers_table[_FORV_6_][4] + 10000 > 500000 then
            workers_table[_FORV_6_][4] = 500000
            return
          end
          workers_table[_FORV_6_][4] = workers_table[_FORV_6_][4] + 10000
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "setPayCheckWorkers", localPlayer, workers_table[_FORV_6_][1], workers_table[_FORV_6_][4])
        elseif isMouseIn(_UPVALUE0_.x + 223.5 / zoom, _UPVALUE0_.y + 88.5 / zoom + 110 / zoom * (0 + 1 - 1), 18 / zoom, 18 / zoom) then
          if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
            exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
            return
          end
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "removeWorker", localPlayer, _FORV_7_[1], id_business)
          table.remove(workers_table, _FORV_6_)
          for _FORV_12_, _FORV_13_ in pairs(avatar_table) do
            if _FORV_13_[1] == _FORV_7_[1] and isElement(_FORV_13_[2]) then
              destroyElement(_FORV_13_[2])
            end
          end
          exports.st_gui:showPlayerNotification("Usuni\196\153to pracownika o nicku " .. _FORV_7_[2] .. "", "info")
        end
      end
      if isMouseIn(_UPVALUE0_.x + 1239 / zoom, _UPVALUE0_.y + 759 / zoom, 46 / zoom, 46 / zoom) then
        if dataInfo.ownerUID ~= getElementData(localPlayer, "player:sid") then
          exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
          return
        end
        if exports.ST_gui:getCustomEditboxText("addWorkers"):len() <= 0 or exports.ST_gui:getCustomEditboxText("addWorkers"):len() > 14 then
          exports.st_gui:showPlayerNotification("UID powinien zawiera\196\135 od 0 do 14 znak\195\179w!", "error")
          return
        end
        if tonumber((exports.ST_gui:getCustomEditboxText("addWorkers"))) == tonumber(getElementData(localPlayer, "player:sid")) then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz doda\196\135 siebie", "error")
          return
        end
        if #workers_table > 5 then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz doda\196\135 wi\196\153cej pracownik\195\179w", "error")
          return
        end
        for _FORV_7_, _FORV_8_ in ipairs(workers_table) do
          if _FORV_8_[1] == tonumber((exports.ST_gui:getCustomEditboxText("addWorkers"))) then
            exports.st_gui:showPlayerNotification("Ju\197\188 dodano tego pracownika", "error")
            return
          end
        end
        if tonumber((exports.ST_gui:getCustomEditboxText("addWorkers"))) then
          triggerServerEvent("evEwenciks_4dfhgdrtj", resourceRoot, "addWorkers", localPlayer, tonumber((exports.ST_gui:getCustomEditboxText("addWorkers"))), id_business)
        end
      end
    end
  end
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.orders == true or windows.partsPrices == true then
      if n3 == m3 then
        return
      end
      k3 = k3 - 1
      n3 = n3 - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and (windows.orders == true or windows.partsPrices == true) then
    if n3 >= 10 then
      return
    end
    k3 = k3 + 1
    n3 = n3 + 1
  end
end
function resulted(_ARG_0_)
  return math.floor(_ARG_0_ / 60) .. " minut " .. _ARG_0_ - math.floor(_ARG_0_ / 60) * 60 .. " sekund"
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, _ARG_6_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1, _ARG_6_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1, _ARG_6_)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1, _ARG_6_)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1, _ARG_6_)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, _ARG_6_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, _ARG_6_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, _ARG_6_)
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
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00h 00m"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffbb00" .. hours .. "#ffffffh #ffbb00" .. mins .. "#ffffffm"
  end
end
getResourceName(getThisResource(), true, 491671180)
return
