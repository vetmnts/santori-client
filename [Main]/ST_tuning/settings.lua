function table_tuning(_ARG_0_)
  if _ARG_0_ then
    if _ARG_0_[2] == "R" then
      wheelsRearMontage = _ARG_0_[1]
    else
      wheelsFrontMontage = _ARG_0_[1]
    end
  else
    for _FORV_4_, _FORV_5_ in ipairs(table_vehicles) do
      wheelsRearMontage = _FORV_5_.wheelsRear
      wheelsFrontMontage = _FORV_5_.wheelsFront
    end
  end
  tuning = {
    [1] = {
      {
        name = "Szeroko\197\155\196\135 tylnych opon",
        img = textures.tires_icon,
        cost = 2000000,
        disassembly = 0,
        montage = wheelsRearMontage
      },
      {
        name = "Szeroko\197\155\196\135 przednich opon",
        img = textures.tires_icon,
        cost = 2000000,
        disassembly = 0,
        montage = wheelsFrontMontage
      }
    },
    [2] = {
      [477] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 13",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 14",
          id = 18,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 15",
          id = 19,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 16",
          id = 20,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 21,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 17",
          id = 22,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 18",
          id = 23,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 19",
          id = 24,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 20",
          id = 25,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 21",
          id = 26,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 22",
          id = 27,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 24",
          id = 28,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 25",
          id = 29,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 26",
          id = 30,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 27",
          id = 31,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 28",
          id = 32,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 29",
          id = 33,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [400] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [550] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [587] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [421] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [505] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 17,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [558] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [540] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob \197\155wi\196\133teczny",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          img = textures.spray_icon,
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          img = textures.spray_icon,
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          img = textures.spray_icon,
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [405] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [467] = {
        {
          name = "PaintJob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [602] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [482] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [401] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2 (czarny)",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2 (bia\197\130y)",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 17,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [506] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [529] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [503] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [549] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [526] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [419] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 15",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 16",
          id = 17,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 17",
          id = 18,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 18",
          img = textures.spray_icon,
          id = 19,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [559] = {
        {
          name = "PaintJob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [403] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 13",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [600] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 13",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 14",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [516] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [579] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [555] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [562] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [494] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [490] = {
        {
          name = "Paintjob 1",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [459] = {
        {
          name = "PaintJob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [527] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [404] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [565] = {
        {
          name = "PaintJob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 15",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 16",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 17",
          id = 17,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [491] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [589] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [507] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [20001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [30001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [40001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [470] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [50001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 5000000,
          disassembly = 2000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 5000000,
          disassembly = 2000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 5000000,
          disassembly = 2000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 5000000,
          disassembly = 2000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 5000000,
          disassembly = 2000000,
          montage = ""
        }
      },
      [402] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [410] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [411] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [541] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [434] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [543] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [438] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [60003] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 15",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 16",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [60002] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 15",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [60001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 15",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 16",
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [445] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [542] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [439] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [546] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [474] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [70001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [80001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [597] = {
        {
          name = "Paintjob 1",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [429] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [517] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [585] = {
        {
          name = "Paintjob 1",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [422] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [566] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [551] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [560] = {
        {
          name = "Paintjob 1",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [536] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [575] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [534] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [567] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [535] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [561] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [576] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [90001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [436] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [90004] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [90002] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [90003] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [502] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [480] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [479] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [23001] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [458] = {
        {
          name = "PaintJob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [580] = {
        {
          name = "PaintJob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [409] = {
        {
          name = "PaintJob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [547] = {
        {
          name = "PaintJob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [60004] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          img = textures.spray_icon,
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          img = textures.spray_icon,
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [60005] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          img = textures.spray_icon,
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 15",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [60006] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          img = textures.spray_icon,
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          img = textures.spray_icon,
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [99002] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 8",
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 15",
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [50000] = {
        {
          name = "Paintjob 1",
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 2",
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 3",
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 4",
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 5",
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 6",
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob 7",
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [554] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [596] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [70000] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [60007] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          img = textures.spray_icon,
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "Paintjob \197\155wi\196\133teczny",
          id = 14,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 14",
          img = textures.spray_icon,
          id = 15,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 15",
          img = textures.spray_icon,
          id = 16,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [40002] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 13",
          id = 13,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [533] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          img = textures.spray_icon,
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [98001] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 10",
          img = textures.spray_icon,
          id = 10,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 11",
          img = textures.spray_icon,
          id = 11,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 12",
          img = textures.spray_icon,
          id = 12,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [489] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [90005] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 9",
          img = textures.spray_icon,
          id = 9,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [514] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [515] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 8",
          img = textures.spray_icon,
          id = 8,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      },
      [415] = {
        {
          name = "PaintJob 1",
          img = textures.spray_icon,
          id = 1,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 2",
          img = textures.spray_icon,
          id = 2,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 3",
          img = textures.spray_icon,
          id = 3,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 4",
          img = textures.spray_icon,
          id = 4,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 5",
          img = textures.spray_icon,
          id = 5,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 6",
          img = textures.spray_icon,
          id = 6,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        },
        {
          name = "PaintJob 7",
          img = textures.spray_icon,
          id = 7,
          cost = 12500000,
          disassembly = 7000000,
          montage = ""
        }
      }
    },
    [3] = {
      [491] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Back To The Future",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 5000000,
          montage = ""
        }
      },
      [560] = {
        {
          name = "Sedan",
          img = textures.sedan_icon,
          id = {0, 4},
          cost = 500000,
          montage = ""
        },
        {
          name = "Sedan bodykit",
          img = textures.sport_icon,
          id = {0, 3},
          cost = 2500000,
          montage = ""
        },
        {
          name = "Kombi",
          img = textures.combi_icon,
          id = {1, 1},
          cost = 1500000,
          montage = ""
        },
        {
          name = "Kombi bodykit",
          img = textures.combi_icon,
          id = {1, 3},
          cost = 2500000,
          montage = ""
        }
      },
      [477] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Bodykit + CS",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 3500000,
          montage = ""
        },
        {
          name = "ADRO",
          img = textures.sport_icon,
          id = {3, 3},
          cost = 6000000,
          montage = ""
        },
        {
          name = "ADRO + CS",
          img = textures.sport_icon,
          id = {2, 3},
          cost = 6500000,
          montage = ""
        }
      },
      [516] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {0, 5},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Dok\197\130adka na zderzak",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 3000000,
          montage = ""
        },
        {
          name = "CS power + bodykit",
          img = textures.sport_icon,
          id = {0, 3},
          cost = 11000000,
          montage = ""
        },
        {
          name = "CS power + dokladka na zderzak",
          img = textures.sport_icon,
          id = {1, 3},
          cost = 6000000,
          montage = ""
        }
      },
      [467] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {99, 99},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {1, 0},
          cost = 6000000,
          montage = ""
        }
      },
      [550] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Baga\197\188nik na dachu",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Bodykit + Baga\197\188nik na dachu",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 8000000,
          montage = ""
        }
      },
      [506] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 5000000,
          montage = ""
        }
      },
      [600] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {5, 5},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Klatka bezpiecze\197\132stwa",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 3000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 6000000,
          montage = ""
        },
        {
          name = "BodyKit + Klatka",
          img = textures.sedan_icon,
          id = {1, 0},
          cost = 8000000,
          montage = ""
        },
        {
          name = "CS power",
          img = textures.sedan_icon,
          id = {3, 3},
          cost = 8000000,
          montage = ""
        },
        {
          name = "CS power + Klatka",
          img = textures.sedan_icon,
          id = {3, 0},
          cost = 8000000,
          montage = ""
        },
        {
          name = "CS power + bodykit + klatka",
          img = textures.sedan_icon,
          id = {4, 1},
          cost = 8000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Dodatki + Bodykit",
          img = textures.sedan_icon,
          id = {2, 1},
          cost = 6000000,
          montage = ""
        },
        {
          name = "CS + Dodatki",
          img = textures.sedan_icon,
          id = {2, 3},
          cost = 8000000,
          montage = ""
        },
        {
          name = "CS + Dodatki + Klatka",
          img = textures.sedan_icon,
          id = {4, 2},
          cost = 8000000,
          montage = ""
        }
      },
      [400] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {3, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Brabus",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 10000000,
          montage = ""
        },
        {
          name = "Klatka",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 3000000,
          montage = ""
        }
      },
      [558] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 10000000,
          montage = ""
        },
        {
          name = "Cabrio",
          img = textures.cabrio_icon,
          id = {0, 3},
          cost = 15000000,
          montage = ""
        },
        {
          name = "Cabrio + bodykit",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 20000000,
          montage = ""
        }
      },
      [587] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 4000000,
          montage = ""
        }
      },
      [505] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki + Bodykit",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 5000000,
          montage = ""
        }
      },
      [421] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {3, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Halogeny",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 1500000,
          montage = ""
        },
        {
          name = "Klatka",
          img = textures.sedan_icon,
          id = {1, 3},
          cost = 1500000,
          montage = ""
        },
        {
          name = "Klatka oraz halogeny",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 3500000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {2, 2},
          cost = 5500000,
          montage = ""
        },
        {
          name = "BodyKit z klatk\196\133",
          img = textures.sport_icon,
          id = {2, 1},
          cost = 6000000,
          montage = ""
        },
        {
          name = "BodyKit z halogenami",
          img = textures.sport_icon,
          id = {2, 0},
          cost = 6000000,
          montage = ""
        }
      },
      [410] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 3},
          cost = 5000,
          montage = ""
        },
        {
          name = "Cabrio",
          img = textures.cabrio_icon,
          id = {3, 3},
          cost = 50000,
          montage = ""
        },
        {
          name = "Hatchback",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Sedan + Bodykit",
          img = textures.sport_icon,
          id = {0, 4},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Cabrio + Bodykit",
          img = textures.sport_icon,
          id = {4, 4},
          cost = 3000000,
          montage = ""
        }
      },
      [404] = {
        {
          name = "Sedan",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 5000,
          montage = ""
        },
        {
          name = "Kombi",
          img = textures.combi_icon,
          id = {1, 1},
          cost = 50000,
          montage = ""
        },
        {
          name = "Sedan + Bodykit",
          img = textures.sport_icon,
          id = {0, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Kombi + Bodykit",
          img = textures.combi_icon,
          id = {1, 3},
          cost = 1000000,
          montage = ""
        }
      },
      [526] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sport_icon,
          id = {3, 0},
          cost = 5000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 10000000,
          montage = ""
        }
      },
      [542] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Blower engine",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 1500000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "BodyKit + blower engine + klatka",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 3500000,
          montage = ""
        }
      },
      [527] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {3, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Klatka",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {2, 2},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Bodykit + Klatka",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 5000000,
          montage = ""
        },
        {
          name = "CS power",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 6000000,
          montage = ""
        },
        {
          name = "CS power + klatka",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 8000000,
          montage = ""
        },
        {
          name = "CS power + bodykit",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 10000000,
          montage = ""
        }
      },
      [403] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.combi_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.combi_icon,
          id = {0, 1},
          cost = 5000000,
          montage = ""
        }
      },
      [411] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Cabrio",
          img = textures.sedan_icon,
          id = {4, 3},
          cost = 2500000,
          montage = ""
        },
        {
          name = "Infernus sport",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 8000000,
          montage = ""
        }
      },
      [559] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Targa",
          img = textures.cabrio_icon,
          id = {2, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.cabrio_icon,
          id = {0, 1},
          cost = 2500000,
          montage = ""
        },
        {
          name = "Bodykit + Targa",
          img = textures.cabrio_icon,
          id = {1, 2},
          cost = 3500000,
          montage = ""
        }
      },
      [405] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Brabus",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 5000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {2, 1},
          cost = 5000000,
          montage = ""
        },
        {
          name = "Brabus + Bodykit",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 10000000,
          montage = ""
        }
      },
      [554] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Zabudowana paka",
          img = textures.combi_icon,
          id = {0, 2},
          cost = 4000000,
          montage = ""
        },
        {
          name = "Klatka",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 3000000,
          montage = ""
        }
      },
      [602] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Rocket Bunny [1]",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 5000000,
          montage = ""
        },
        {
          name = "Rocket Bunny [2]",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 5000000,
          montage = ""
        }
      },
      [565] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki [1]",
          img = textures.sport_icon,
          id = {1, 3},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki [2]",
          img = textures.sport_icon,
          id = {2, 2},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki [1] + Bodykit",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Dodatki [2] + Bodykit",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 6000000,
          montage = ""
        }
      },
      [589] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 3000000,
          montage = ""
        }
      },
      [555] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Mansory",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 10000000,
          montage = ""
        }
      },
      [507] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dok\197\130adki",
          img = textures.sport_icon,
          id = {1, 0},
          cost = 2000000,
          montage = ""
        }
      },
      [439] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Blower engine",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 1500000,
          montage = ""
        },
        {
          name = "Wlot powietrza na masce",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 1500000,
          montage = ""
        }
      },
      [419] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki + Bodykit",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 6000000,
          montage = ""
        }
      },
      [20001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Brabus",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 5000000,
          montage = ""
        }
      },
      [40001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Brabus",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 5000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Brabus + Bodykit",
          img = textures.sport_icon,
          id = {1, 0},
          cost = 8000000,
          montage = ""
        }
      },
      [470] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Zapasowe ko\197\130o",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Halogeny",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Odkryta paka",
          img = textures.sedan_icon,
          id = {3, 5},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Halogeny + Odkryta paka",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 2500000,
          montage = ""
        },
        {
          name = "Odkryta paka + Zapasowe ko\197\130o",
          img = textures.sedan_icon,
          id = {0, 3},
          cost = 2750000,
          montage = ""
        },
        {
          name = "Halogeny + Zapasowe ko\197\130o + Odkryta paka",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 3250000,
          montage = ""
        }
      },
      [543] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Halogeny",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Klatka",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Halogeny + Klatka",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 3000000,
          montage = ""
        }
      },
      [60001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 3000000,
          montage = ""
        }
      },
      [60002] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 3000000,
          montage = ""
        }
      },
      [60003] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 3500000,
          montage = ""
        },
        {
          name = "Rocket Bunny",
          img = textures.sport_icon,
          id = {3, 3},
          cost = 6500000,
          montage = ""
        }
      },
      [401] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Liberty Walk",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 6000000,
          montage = ""
        }
      },
      [494] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Liberty Walk",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 6000000,
          montage = ""
        }
      },
      [503] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Targa",
          img = textures.sport_icon,
          id = {2, 2},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Targa + Dodatki",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 6000000,
          montage = ""
        }
      },
      [546] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {4, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Relingi",
          img = textures.sport_icon,
          id = {0, 3},
          cost = 1500000,
          montage = ""
        },
        {
          name = "Box Dachowy",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "RS",
          img = textures.sport_icon,
          id = {3, 1},
          cost = 3500000,
          montage = ""
        },
        {
          name = "RS + Box Dachowy",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 4000000,
          montage = ""
        },
        {
          name = "RS + Relingi",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 4000000,
          montage = ""
        }
      },
      [402] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit (1)",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "BodyKit (2)",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 3000000,
          montage = ""
        }
      },
      [529] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Grill bez loga",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1500000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Bodykit + Grill bez loga",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 3000000,
          montage = ""
        }
      },
      [70001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {4, 4},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Halogeny",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 2500000,
          montage = ""
        },
        {
          name = "Zamkni\196\153ta paka",
          img = textures.sedan_icon,
          id = {0, 4},
          cost = 2500000,
          montage = ""
        },
        {
          name = "Klatka",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 2500000,
          montage = ""
        },
        {
          name = "Zamkni\196\153ta paka + Halogeny",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Klatka + Halogeny",
          img = textures.sedan_icon,
          id = {2, 1},
          cost = 4000000,
          montage = ""
        }
      },
      [597] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {4, 5},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sedan_icon,
          id = {3, 2},
          cost = 3000000,
          montage = ""
        }
      },
      [445] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Brabus",
          img = textures.sedan_icon,
          id = {0, 3},
          cost = 3000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sedan_icon,
          id = {3, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Brabus + BodyKit",
          img = textures.sedan_icon,
          id = {1, 0},
          cost = 5000000,
          montage = ""
        }
      },
      [551] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {3, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sport_icon,
          id = {1, 4},
          cost = 3000000,
          montage = ""
        }
      },
      [566] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit",
          img = textures.sedan_icon,
          id = {1, 0},
          cost = 3000000,
          montage = ""
        }
      },
      [422] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {4, 4},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Halogeny",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Klatka",
          img = textures.sedan_icon,
          id = {3, 3},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Klatka + Halogeny",
          img = textures.sedan_icon,
          id = {2, 3},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Klatka + Bodykit",
          img = textures.sedan_icon,
          id = {3, 1},
          cost = 4000000,
          montage = ""
        }
      },
      [30001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Brabus",
          img = textures.sedan_icon,
          id = {1, 0},
          cost = 4000000,
          montage = ""
        }
      },
      [534] = {},
      [495] = {
        {
          name = "Bez Spoilera",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Spoiler",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Zestaw off-roadowy",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Spoiler + Zestaw off-roadowy",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 3000000,
          montage = ""
        }
      },
      [418] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 100,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sedan_icon,
          id = {1, 0},
          cost = 1200000,
          montage = ""
        }
      },
      [533] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 500000,
          montage = ""
        },
        {
          name = "Bodykit (1)",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Bodykit (2)",
          img = textures.sport_icon,
          id = {1, 3},
          cost = 2000000,
          montage = ""
        }
      },
      [561] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 10000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sedan_icon,
          id = {3, 2},
          cost = 2000000,
          montage = ""
        }
      },
      [562] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 10000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 2000000,
          montage = ""
        }
      },
      [549] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Brabus",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Bodykit + Brabus",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 5000000,
          montage = ""
        }
      },
      [90004] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 4000000,
          montage = ""
        }
      },
      [90002] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Liberty Walk [1]",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 4000000,
          montage = ""
        },
        {
          name = "Liberty Walk [2]",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 4000000,
          montage = ""
        }
      },
      [90003] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 4000000,
          montage = ""
        }
      },
      [480] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sedan_icon,
          id = {0, 1},
          cost = 4000000,
          montage = ""
        },
        {
          name = "Targa",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 4000000,
          montage = ""
        },
        {
          name = "Targa + Bodykit",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 6000000,
          montage = ""
        }
      },
      [502] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 4000000,
          montage = ""
        }
      },
      [479] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Baga\197\188nik na dachu",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 2000000,
          montage = ""
        },
        {
          name = "Dodatki + Bagaznik na dachu",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 4000000,
          montage = ""
        },
        {
          name = "RS Power",
          img = textures.sport_icon,
          id = {0, 3},
          cost = 9000000,
          montage = ""
        },
        {
          name = "Dodatki + RS Power",
          img = textures.sport_icon,
          id = {1, 3},
          cost = 9000000,
          montage = ""
        }
      },
      [99001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Alpina",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Alpina + Dodatki",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 7000000,
          montage = ""
        }
      },
      [579] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Baga\197\188nik dachowy",
          img = textures.sedan_icon,
          id = {3, 3},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Alpina",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 8000000,
          montage = ""
        },
        {
          name = "Alpina + Baga\197\188nik dachowy",
          img = textures.sedan_icon,
          id = {2, 3},
          cost = 10000000,
          montage = ""
        }
      },
      [23001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bez dachu",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 2000000,
          montage = ""
        }
      },
      [517] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "BodyKit (1)",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 5000000,
          montage = ""
        },
        {
          name = "BodyKit (2)",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 5000000,
          montage = ""
        }
      },
      [90001] = {
        {
          name = "Trueno",
          img = textures.sedan_icon,
          id = {4, 0},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Levin",
          img = textures.sedan_icon,
          id = {3, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Bodykit + Trueno",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Bodykit + Levin",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 6000000,
          montage = ""
        }
      },
      [541] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {2, 2},
          cost = 3000000,
          montage = ""
        }
      },
      [547] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sport_icon,
          id = {2, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Kombi",
          img = textures.combi_icon,
          id = {1, 0},
          cost = 3000000,
          montage = ""
        }
      },
      [60004] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki + Bodykit",
          img = textures.sport_icon,
          id = {2, 1},
          cost = 6000000,
          montage = ""
        }
      },
      [60005] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 5},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki + Bodykit",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Dodatki [2]",
          img = textures.sport_icon,
          id = {3, 3},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki + Bodykit [2]",
          img = textures.sport_icon,
          id = {3, 4},
          cost = 6000000,
          montage = ""
        }
      },
      [60006] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {4, 0},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki [1]",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki [2]",
          img = textures.sport_icon,
          id = {2, 2},
          cost = 3000000,
          montage = ""
        },
        {
          name = "Dodatki [1] + Bodykit",
          img = textures.sport_icon,
          id = {1, 3},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Dodatki [2] + Bodykit",
          img = textures.sport_icon,
          id = {2, 3},
          cost = 6000000,
          montage = ""
        }
      },
      [490] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.combi_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.combi_icon,
          id = {1, 2},
          cost = 5000000,
          montage = ""
        }
      },
      [436] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.combi_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.combi_icon,
          id = {0, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Cabrio",
          img = textures.combi_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        }
      },
      [80001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 3000000,
          montage = ""
        }
      },
      [415] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {2, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 2500000,
          montage = ""
        }
      },
      [99002] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.combi_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.combi_icon,
          id = {0, 0},
          cost = 3000000,
          montage = ""
        },
        {
          name = "CS Power",
          img = textures.combi_icon,
          id = {1, 1},
          cost = 6000000,
          montage = ""
        },
        {
          name = "CS Power + Dodatki",
          img = textures.combi_icon,
          id = {0, 1},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Baga\197\188nik Dachowy",
          img = textures.combi_icon,
          id = {2, 2},
          cost = 4000000,
          montage = ""
        },
        {
          name = "Baga\197\188nik Dachowy + CS Power",
          img = textures.combi_icon,
          id = {1, 2},
          cost = 6000000,
          montage = ""
        },
        {
          name = "Baga\197\188nik Dachowy + Dodatki",
          img = textures.combi_icon,
          id = {2, 0},
          cost = 4000000,
          montage = ""
        }
      },
      [50000] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 3000000,
          montage = ""
        }
      },
      [496] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 2000000,
          montage = ""
        }
      },
      [482] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 2000000,
          montage = ""
        }
      },
      [70000] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.combi_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.combi_icon,
          id = {2, 2},
          cost = 5000000,
          montage = ""
        }
      },
      [429] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.combi_icon,
          id = {255, 255},
          cost = 500000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.combi_icon,
          id = {0, 0},
          cost = 2000000,
          montage = ""
        }
      },
      [60007] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Targa",
          img = textures.sport_icon,
          id = {255, 255},
          cost = 4000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 5000000,
          montage = ""
        },
        {
          name = "Dodatki + Targa",
          img = textures.sport_icon,
          id = {0, 4},
          cost = 6500000,
          montage = ""
        }
      },
      [40002] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 4000000,
          montage = ""
        }
      },
      [451] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.combi_icon,
          id = {1, 1},
          cost = 500000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.combi_icon,
          id = {0, 0},
          cost = 2000000,
          montage = ""
        }
      },
      [540] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.sport_icon,
          id = {2, 1},
          cost = 5000000,
          montage = ""
        }
      },
      [580] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Mansory",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 5000000,
          montage = ""
        }
      },
      [98001] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sport_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Roadster",
          img = textures.cabrio_icon,
          id = {1, 2},
          cost = 5000000,
          montage = ""
        }
      },
      [489] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Mansory",
          img = textures.sport_icon,
          id = {1, 2},
          cost = 10000000,
          montage = ""
        }
      },
      [596] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {1, 1},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {2, 2},
          cost = 2000000,
          montage = ""
        }
      },
      [90005] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {0, 0},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Bodykit",
          img = textures.sport_icon,
          id = {1, 1},
          cost = 2500000,
          montage = ""
        }
      },
      [90006] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.sedan_icon,
          id = {3, 3},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Brabus",
          img = textures.sport_icon,
          id = {0, 1},
          cost = 10000000,
          montage = ""
        },
        {
          name = "Klatka",
          img = textures.sport_icon,
          id = {0, 0},
          cost = 3000000,
          montage = ""
        }
      },
      [514] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.truck_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Dodatki",
          img = textures.truck_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        }
      },
      [515] = {
        {
          name = "Zwyk\197\130y wariant",
          img = textures.truck_icon,
          id = {255, 255},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Orurowanie",
          img = textures.truck_icon,
          id = {0, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Obrys\195\179wki",
          img = textures.truck_icon,
          id = {1, 2},
          cost = 1000000,
          montage = ""
        },
        {
          name = "Obrys\195\179wki + Orurowanie",
          img = textures.truck_icon,
          id = {0, 1},
          cost = 1000000,
          montage = ""
        }
      }
    },
    [4] = {
      {
        name = "LICZNIK 1",
        img = textures.speedometer_icon,
        id = 0,
        cost = 100000,
        montage = ""
      },
      {
        name = "LICZNIK 2",
        img = textures.speedometer_icon,
        id = 1,
        cost = 500000,
        montage = ""
      },
      {
        name = "LICZNIK 3",
        img = textures.speedometer_icon,
        id = 2,
        cost = 400000,
        montage = ""
      },
      {
        name = "LICZNIK 4",
        img = textures.speedometer_icon,
        id = 3,
        cost = 1000000,
        montage = ""
      },
      {
        name = "LICZNIK 5",
        img = textures.speedometer_icon,
        id = 4,
        cost = 1000000,
        montage = ""
      }
    }
  }
end
function calculateMouse()
  if selfColorLamp.mouseSelected == "hue" then
    selfColorLamp.colorSlide = math.max(math.min(getCursorPosition() * screenW - (windowPos1.x + 110 / zoom), 510 / zoom), 0)
    selfColorLamp.colorCurrent = {
      hsv2rgb((510 / zoom - selfColorLamp.colorSlide) / (510 / zoom), 1, 1)
    }
  elseif selfColorLamp.mouseSelected == "color" then
    selfColorLamp.colorPicker = Vector2(math.max(math.min(getCursorPosition() * screenW - (windowPos1.x + 110 / zoom), 510 / zoom), 0), math.max(math.min(getCursorPosition() * screenH - (windowPos1.y - 340 / zoom), 250 / zoom), 0))
  end
end
function hsv2rgb(_ARG_0_, _ARG_1_, _ARG_2_)
  if math.floor(_ARG_0_ * 6) % 6 == 0 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 1 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 2 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 3 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 4 then
  elseif math.floor(_ARG_0_ * 6) % 6 == 5 then
  end
  return math.floor(_ARG_2_ * 255), math.floor(_ARG_2_ * (1 - _ARG_1_) * 255), math.floor(_ARG_2_ * (1 - (_ARG_0_ * 6 - math.floor(_ARG_0_ * 6)) * _ARG_1_) * 255)
end
function hex2rgb(_ARG_0_)
  _ARG_0_ = _ARG_0_:gsub("#", "")
  return tonumber("0x" .. _ARG_0_:sub(1, 2)), tonumber("0x" .. _ARG_0_:sub(3, 4)), tonumber("0x" .. _ARG_0_:sub(5, 6))
end
function rgbToHsv(_ARG_0_, _ARG_1_, _ARG_2_)
  _ARG_0_, _ARG_1_, _ARG_2_ = _ARG_0_ / 255, _ARG_1_ / 255, _ARG_2_ / 255
  if math.max(_ARG_0_, _ARG_1_, _ARG_2_) == 0 then
  else
  end
  if math.max(_ARG_0_, _ARG_1_, _ARG_2_) == math.min(_ARG_0_, _ARG_1_, _ARG_2_) then
  elseif math.max(_ARG_0_, _ARG_1_, _ARG_2_) == _ARG_0_ then
    if _ARG_1_ < _ARG_2_ then
    end
  elseif math.max(_ARG_0_, _ARG_1_, _ARG_2_) == _ARG_1_ then
  elseif math.max(_ARG_0_, _ARG_1_, _ARG_2_) == _ARG_2_ then
  end
  return ((_ARG_0_ - _ARG_1_) / (math.max(_ARG_0_, _ARG_1_, _ARG_2_) - math.min(_ARG_0_, _ARG_1_, _ARG_2_)) + 4) / 6, (math.max(_ARG_0_, _ARG_1_, _ARG_2_) - math.min(_ARG_0_, _ARG_1_, _ARG_2_)) / math.max(_ARG_0_, _ARG_1_, _ARG_2_), (math.max(_ARG_0_, _ARG_1_, _ARG_2_))
end
function RGBToHex(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ < 0 or 255 < _ARG_0_ or _ARG_1_ < 0 or 255 < _ARG_1_ or _ARG_2_ < 0 or 255 < _ARG_2_ or alpha and (0 > alpha or 255 < alpha) then
    return nil
  end
  return string.format("#%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_)
end
screenW, screenH = guiGetScreenSize()
tick = getTickCount()
texturesSpeedometer = {}
function renderSpeedMeter3()
  if getPedOccupiedVehicle(localPlayer) then
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesSpeedometer.background_light_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesSpeedometer.background_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, texturesSpeedometer.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, texturesSpeedometer.numbers, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if infoVehicles.rodzaj == "Elektryczny" then
        dxDrawRectangle(_UPVALUE0_.x + 138 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, 100 / infoVehicles.bak * getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x + 7 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE2_.x + 165 / _UPVALUE1_, _UPVALUE2_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, texturesSpeedometer.battery_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      else
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x + 7 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE0_.x + 7 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE2_.x + 170 / _UPVALUE1_, _UPVALUE2_.y + 280 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.fuel_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        dxDrawRectangle(_UPVALUE0_.x + 138 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, 100 / infoVehicles.bak * getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      end
      dxDrawText("000", _UPVALUE0_.x, _UPVALUE0_.y - 15 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 140 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry30"), "right", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE0_.x, _UPVALUE0_.y - 15 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 140 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry30"), "right", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124) .. "", _UPVALUE0_.x + 7 / _UPVALUE1_, _UPVALUE0_.y + 338 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE0_.x + 90 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, interpolateColor(_UPVALUE3_.oil, 1000, 350, _UPVALUE4_), false)
      dxDrawImage(_UPVALUE0_.x + 251 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, interpolateColor(_UPVALUE3_.battery, 1000, 350, _UPVALUE4_), false)
    else
      dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesSpeedometer.background_light_speedometer2, 0, 0, 0, tocolor(140, 140, 140, 255), false)
      dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesSpeedometer.background_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, texturesSpeedometer.lines, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, texturesSpeedometer.numbers, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      if infoVehicles.rodzaj == "Elektryczny" then
        dxDrawRectangle(_UPVALUE0_.x + 138 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, 100 / infoVehicles.bak * getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(150, 150, 150, 255), false)
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x + 7 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE2_.x + 170 / _UPVALUE1_, _UPVALUE2_.y + 280 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.battery_icon_speedometer2, 0, 0, 0, tocolor(190, 190, 190, 255), false)
      else
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x + 7 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE0_.x + 7 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE2_.x + 170 / _UPVALUE1_, _UPVALUE2_.y + 283 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.fuel_icon_speedometer2, 0, 0, 0, tocolor(190, 190, 190, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 138 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, 100 / infoVehicles.bak * getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(150, 150, 150, 255), false)
      end
      dxDrawText("000", _UPVALUE0_.x, _UPVALUE0_.y - 15 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 140 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry30"), "right", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE0_.x, _UPVALUE0_.y - 15 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 140 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry30"), "right", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124) .. "", _UPVALUE0_.x + 7 / _UPVALUE1_, _UPVALUE0_.y + 338 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE0_.x + 90 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE0_.x + 251 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    dxDrawText("" .. string.format("%02.1f", _UPVALUE3_.oil / 10) .. "%", _UPVALUE0_.x - 150 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. string.format("%02.1f", _UPVALUE3_.battery / 10) .. "%", _UPVALUE0_.x + 166 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    dxDrawRectangle(_UPVALUE0_.x + 138 / _UPVALUE1_, _UPVALUE0_.y + 318 / _UPVALUE1_, 100 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 191, 0, 255), false)
    dxDrawRectangle(_UPVALUE0_.x + 136 / _UPVALUE1_, _UPVALUE0_.y + 318 / _UPVALUE1_, 2 / _UPVALUE1_, 19 / _UPVALUE1_, tocolor(255, 191, 0, 255), false)
    dxDrawRectangle(_UPVALUE0_.x + 138 / _UPVALUE1_, _UPVALUE0_.y + 335 / _UPVALUE1_, 100 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 191, 0, 255), false)
    dxDrawRectangle(_UPVALUE0_.x + 238 / _UPVALUE1_, _UPVALUE0_.y + 318 / _UPVALUE1_, 2 / _UPVALUE1_, 19 / _UPVALUE1_, tocolor(255, 191, 0, 255), false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if infoVehicles.nitro == true then
      exports.shader_circle:dxDrawCircle(_UPVALUE2_.x + 180 / _UPVALUE1_, _UPVALUE2_.y + 180 / _UPVALUE1_, _UPVALUE2_.w - 40 / _UPVALUE1_, _UPVALUE2_.h - 40 / _UPVALUE1_, tocolor(35, 35, 35, 200), 205, 35, 8)
      exports.shader_circle:dxDrawCircle(_UPVALUE2_.x + 180 / _UPVALUE1_, _UPVALUE2_.y + 180 / _UPVALUE1_, _UPVALUE2_.w - 40 / _UPVALUE1_, _UPVALUE2_.h - 40 / _UPVALUE1_, tocolor(52, 192, 235, 200), 205, 35 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 8)
      dxDrawImage(_UPVALUE2_.x + 63 / _UPVALUE1_, _UPVALUE2_.y + 248 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.nitro_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(string.format("%02.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) .. "L", _UPVALUE0_.x - 155 / _UPVALUE1_, _UPVALUE0_.y + 380 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    end
    dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, texturesSpeedometer.indicator_speedometer2, 7.5 + (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 107, 0, 0, tocolor(255, 255, 255, 255), false)
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE2_.x + 40 / _UPVALUE1_, _UPVALUE2_.y + 375 / _UPVALUE1_, 285 / _UPVALUE1_, 32 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(40, 40, 40, 255), false)
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) > 5 then
        dxDrawRoundedRectangle(_UPVALUE2_.x + 43 / _UPVALUE1_, _UPVALUE2_.y + 378 / _UPVALUE1_, 2.79 * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) / _UPVALUE1_, 26 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 245), false)
      end
      dxDrawText("LPG", _UPVALUE0_.x, _UPVALUE0_.y + 593 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
    end
  end
end
function renderSpeedMeter1()
  if getPedOccupiedVehicle(localPlayer) then
    if math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) > 320 then
    end
    dxDrawImage(_UPVALUE0_.x + 13 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, _UPVALUE0_.w - 26 / _UPVALUE1_, _UPVALUE0_.h - 26 / _UPVALUE1_, texturesSpeedometer.background, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
    dxDrawImage(_UPVALUE0_.x + 15 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, _UPVALUE0_.w - 30 / _UPVALUE1_, _UPVALUE0_.h - 30 / _UPVALUE1_, texturesSpeedometer.background, 0, 0, 0, tocolor(35, 35, 35, 248), false)
    exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.w - 50 / _UPVALUE1_, _UPVALUE0_.h - 50 / _UPVALUE1_, tocolor(65, 65, 65, 255), 125, 53, 5)
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawImage(_UPVALUE2_.x + 22 / _UPVALUE1_, _UPVALUE2_.y + 22 / _UPVALUE1_, _UPVALUE2_.w - 44 / _UPVALUE1_, _UPVALUE2_.h - 44 / _UPVALUE1_, texturesSpeedometer.indicator, 243 - 10, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE2_.x + 82.5 / _UPVALUE1_, _UPVALUE2_.y + 82.5 / _UPVALUE1_, _UPVALUE2_.w - 165 / _UPVALUE1_, _UPVALUE2_.h - 165 / _UPVALUE1_, texturesSpeedometer.background, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE2_.x + 85 / _UPVALUE1_, _UPVALUE2_.y + 85 / _UPVALUE1_, _UPVALUE2_.w - 170 / _UPVALUE1_, _UPVALUE2_.h - 170 / _UPVALUE1_, texturesSpeedometer.background, 0, 0, 0, tocolor(25, 25, 25, 245), false)
      dxDrawImage(_UPVALUE0_.x + 120 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE0_.x - 5 / _UPVALUE1_, _UPVALUE0_.y - 5 / _UPVALUE1_, _UPVALUE0_.w + 10 / _UPVALUE1_, _UPVALUE0_.h + 10 / _UPVALUE1_, texturesSpeedometer.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if infoVehicles.rodzaj == "Elektryczny" then
        dxDrawImage(_UPVALUE2_.x + 227 / _UPVALUE1_, _UPVALUE2_.y + 265 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.battery_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      else
        dxDrawImage(_UPVALUE2_.x + 230 / _UPVALUE1_, _UPVALUE2_.y + 265 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.fuel_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      end
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) < 10 then
        exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.w - 50 / _UPVALUE1_, _UPVALUE0_.h - 50 / _UPVALUE1_, tocolor(interpolateBetween(60, 60, 60, 255, 0, 0, (getTickCount() - tick) / 800, "SineCurve")), 125, 53 / infoVehicles.bak * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100), 5)
        dxDrawText(("%.1f"):format(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) .. "", _UPVALUE0_.x + 132 / _UPVALUE1_, _UPVALUE0_.y + 415 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(interpolateBetween(60, 60, 60, 255, 0, 0, (getTickCount() - tick) / 800, "SineCurve")), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      else
        exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.w - 50 / _UPVALUE1_, _UPVALUE0_.h - 50 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 125, 53 / infoVehicles.bak * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100), 5)
        dxDrawText(("%.1f"):format(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) .. "", _UPVALUE0_.x + 132 / _UPVALUE1_, _UPVALUE0_.y + 415 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("" .. math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 38 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
      dxDrawText("km/h", _UPVALUE0_.x, _UPVALUE0_.y + 105 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124) .. "", _UPVALUE0_.x + 5 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      if infoVehicles.rodzaj == "Elektryczny" then
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      else
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x, _UPVALUE0_.y + 168 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE0_.x, _UPVALUE0_.y + 210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 105 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, interpolateColor(_UPVALUE3_.oil, 1000, 350, _UPVALUE4_), false)
      dxDrawImage(_UPVALUE0_.x + 236 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, interpolateColor(_UPVALUE3_.battery, 1000, 350, _UPVALUE4_), false)
    else
      dxDrawImage(_UPVALUE2_.x + 22 / _UPVALUE1_, _UPVALUE2_.y + 22 / _UPVALUE1_, _UPVALUE2_.w - 44 / _UPVALUE1_, _UPVALUE2_.h - 44 / _UPVALUE1_, texturesSpeedometer.indicator, 243 - 10, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE2_.x + 82.5 / _UPVALUE1_, _UPVALUE2_.y + 82.5 / _UPVALUE1_, _UPVALUE2_.w - 165 / _UPVALUE1_, _UPVALUE2_.h - 165 / _UPVALUE1_, texturesSpeedometer.background, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE2_.x + 85 / _UPVALUE1_, _UPVALUE2_.y + 85 / _UPVALUE1_, _UPVALUE2_.w - 170 / _UPVALUE1_, _UPVALUE2_.h - 170 / _UPVALUE1_, texturesSpeedometer.background, 0, 0, 0, tocolor(25, 25, 25, 245), false)
      dxDrawImage(_UPVALUE0_.x + 120 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE0_.x - 5 / _UPVALUE1_, _UPVALUE0_.y - 5 / _UPVALUE1_, _UPVALUE0_.w + 10 / _UPVALUE1_, _UPVALUE0_.h + 10 / _UPVALUE1_, texturesSpeedometer.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if infoVehicles.rodzaj == "Elektryczny" then
        dxDrawImage(_UPVALUE2_.x + 227 / _UPVALUE1_, _UPVALUE2_.y + 265 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.battery_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE2_.x + 230 / _UPVALUE1_, _UPVALUE2_.y + 265 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.fuel_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      end
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) < 10 then
        exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.w - 50 / _UPVALUE1_, _UPVALUE0_.h - 50 / _UPVALUE1_, tocolor(interpolateBetween(60, 60, 60, 255, 0, 0, (getTickCount() - tick) / 800, "SineCurve")), 125, 53 / infoVehicles.bak * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100), 5)
        dxDrawText(("%.1f"):format(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) .. "", _UPVALUE0_.x + 132 / _UPVALUE1_, _UPVALUE0_.y + 415 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(interpolateBetween(60, 60, 60, 255, 0, 0, (getTickCount() - tick) / 800, "SineCurve")), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      else
        exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.w - 50 / _UPVALUE1_, _UPVALUE0_.h - 50 / _UPVALUE1_, tocolor(120, 120, 120, 255), 125, 53 / infoVehicles.bak * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100), 5)
        dxDrawText(("%.1f"):format(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) .. "", _UPVALUE0_.x + 132 / _UPVALUE1_, _UPVALUE0_.y + 415 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      end
      if infoVehicles.rodzaj == "Elektryczny" then
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      else
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x, _UPVALUE0_.y + 168 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE0_.x, _UPVALUE0_.y + 210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("" .. math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 38 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
      dxDrawText("km/h", _UPVALUE0_.x, _UPVALUE0_.y + 105 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124) .. "", _UPVALUE0_.x + 5 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE0_.x + 236 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    dxDrawText("" .. string.format("%02.1f", _UPVALUE3_.oil / 10) .. "%", _UPVALUE0_.x - 121 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. string.format("%02.1f", _UPVALUE3_.battery / 10) .. "%", _UPVALUE0_.x + 137 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 225 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 225 / _UPVALUE1_, _UPVALUE0_.y + 218 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if getElementHealth((getPedOccupiedVehicle(localPlayer))) < 500 then
      alpcha = 255
    elseif getElementHealth((getPedOccupiedVehicle(localPlayer))) > 500 and getElementHealth((getPedOccupiedVehicle(localPlayer))) < 600 then
      alpcha = 150
    elseif getElementHealth((getPedOccupiedVehicle(localPlayer))) > 600 and getElementHealth((getPedOccupiedVehicle(localPlayer))) < 700 then
      alpcha = 100
    elseif getElementHealth((getPedOccupiedVehicle(localPlayer))) > 700 and 800 > getElementHealth((getPedOccupiedVehicle(localPlayer))) then
      alpcha = 70
    elseif 800 < getElementHealth((getPedOccupiedVehicle(localPlayer))) and 1000 > getElementHealth((getPedOccupiedVehicle(localPlayer))) then
      alpcha = 30
    else
      alpcha = 0
    end
    if infoVehicles.nitro == true then
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.w - 50 / _UPVALUE1_, _UPVALUE0_.h - 50 / _UPVALUE1_, tocolor(65, 65, 65, 255), 180, 53, 5)
      if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
        exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.w - 50 / _UPVALUE1_, _UPVALUE0_.h - 50 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 180, 53 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 5)
      else
        exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 185 / _UPVALUE1_, _UPVALUE0_.w - 50 / _UPVALUE1_, _UPVALUE0_.h - 50 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 180, 53 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 5)
      end
      dxDrawImage(_UPVALUE2_.x + 95 / _UPVALUE1_, _UPVALUE2_.y + 260 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.nitro_icon, 0, 0, 0, tocolor(52, 192, 235, 255), false)
      dxDrawText(string.format("%02.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) .. "L", _UPVALUE0_.x - 125 / _UPVALUE1_, _UPVALUE0_.y + 413 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(52, 192, 235, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
    end
    dxDrawImage(_UPVALUE0_.x + 15 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, _UPVALUE0_.w - 30 / _UPVALUE1_, _UPVALUE0_.h - 30 / _UPVALUE1_, texturesSpeedometer.broken_texture, 0, 0, 0, tocolor(255, 255, 255, alpcha), false)
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE2_.x + 40 / _UPVALUE1_, _UPVALUE2_.y + 375 / _UPVALUE1_, 285 / _UPVALUE1_, 32 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(40, 40, 40, 255), false)
      if 5 < (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) then
        dxDrawRoundedRectangle(_UPVALUE2_.x + 43 / _UPVALUE1_, _UPVALUE2_.y + 378 / _UPVALUE1_, 2.79 * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) / _UPVALUE1_, 26 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 245), false)
      end
      dxDrawText("LPG", _UPVALUE0_.x, _UPVALUE0_.y + 593 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, false, false)
    end
  end
end
function renderSpeedMeter2()
  if getPedOccupiedVehicle(localPlayer) then
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawRoundedRectangle(_UPVALUE0_.x - 202 / _UPVALUE1_, _UPVALUE0_.y + 258 / _UPVALUE1_, 569 / _UPVALUE1_, 174 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x - 200 / _UPVALUE1_, _UPVALUE0_.y + 260 / _UPVALUE1_, 565 / _UPVALUE1_, 170 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
      dxDrawText("000", _UPVALUE0_.x, _UPVALUE0_.y + 450 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry40"), "right", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE0_.x, _UPVALUE0_.y + math.floor(450 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_ - math.floor(50 / _UPVALUE1_), _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry40"), "right", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124) .. "", _UPVALUE0_.x + math.floor(170 / _UPVALUE1_), _UPVALUE0_.y + math.floor(550 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawText(string.format("%.1f", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"))) .. "L", _UPVALUE0_.x - math.floor(515 / _UPVALUE1_), _UPVALUE0_.y + math.floor(510 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x - math.floor(170 / _UPVALUE1_), _UPVALUE0_.y + math.floor(270 / _UPVALUE1_), math.floor(190 / _UPVALUE1_), math.floor(190 / _UPVALUE1_), texturesSpeedometer.fuel_spedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        dxDrawImage(_UPVALUE0_.x - math.floor(170 / _UPVALUE1_), _UPVALUE0_.y + math.floor(300 / _UPVALUE1_), math.floor(190 / _UPVALUE1_), math.floor(190 / _UPVALUE1_), texturesSpeedometer.fuel_indicator_spedometer2, -110 + 110 / infoVehicles.bak * getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"), 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x - 135 / _UPVALUE1_, _UPVALUE0_.y + 545 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE0_.x - 135 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
      else
        dxDrawImage(_UPVALUE0_.x - 170 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 240 / _UPVALUE1_, 120 / _UPVALUE1_, texturesSpeedometer.battery_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x - 148 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 178 / infoVehicles.bak * getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") / _UPVALUE1_, 69 / _UPVALUE1_, 7 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        dxDrawText(string.format("%.1f", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"))) .. " kWh", _UPVALUE0_.x - 480 / _UPVALUE1_, _UPVALUE0_.y + 495 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 324 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, interpolateColor(_UPVALUE2_.oil, 1000, 350, _UPVALUE3_), false)
      dxDrawImage(_UPVALUE0_.x + 326 / _UPVALUE1_, _UPVALUE0_.y + 328 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, interpolateColor(_UPVALUE2_.battery, 1000, 350, _UPVALUE3_), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x - 202 / _UPVALUE1_, _UPVALUE0_.y + 258 / _UPVALUE1_, 569 / _UPVALUE1_, 174 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x - 200 / _UPVALUE1_, _UPVALUE0_.y + 260 / _UPVALUE1_, 565 / _UPVALUE1_, 170 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
      dxDrawText("000", _UPVALUE0_.x, _UPVALUE0_.y + 450 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry40"), "right", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE0_.x, _UPVALUE0_.y + math.floor(450 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_ - math.floor(50 / _UPVALUE1_), _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry40"), "right", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124) .. "", _UPVALUE0_.x + math.floor(170 / _UPVALUE1_), _UPVALUE0_.y + math.floor(550 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawText(string.format("%.1f", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"))) .. "L", _UPVALUE0_.x - math.floor(515 / _UPVALUE1_), _UPVALUE0_.y + math.floor(510 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x - math.floor(170 / _UPVALUE1_), _UPVALUE0_.y + math.floor(270 / _UPVALUE1_), math.floor(190 / _UPVALUE1_), math.floor(190 / _UPVALUE1_), texturesSpeedometer.fuel_spedometer2, 0, 0, 0, tocolor(140, 140, 140, 255), false)
        dxDrawImage(_UPVALUE0_.x - math.floor(170 / _UPVALUE1_), _UPVALUE0_.y + math.floor(300 / _UPVALUE1_), math.floor(190 / _UPVALUE1_), math.floor(190 / _UPVALUE1_), texturesSpeedometer.fuel_indicator_spedometer2, -110 + 110 / infoVehicles.bak * getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"), 0, 0, tocolor(140, 140, 140, 255), false)
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x - 135 / _UPVALUE1_, _UPVALUE0_.y + 545 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE0_.x - 135 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
      else
        dxDrawImage(_UPVALUE0_.x - 170 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 240 / _UPVALUE1_, 120 / _UPVALUE1_, texturesSpeedometer.battery_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x - 148 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 178 / infoVehicles.bak * getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") / _UPVALUE1_, 69 / _UPVALUE1_, 7 / _UPVALUE1_, tocolor(60, 60, 60, 245), false)
        dxDrawText(string.format("%.1f", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"))) .. " kWh", _UPVALUE0_.x - 480 / _UPVALUE1_, _UPVALUE0_.y + 495 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, false, false)
      end
      dxDrawImage(_UPVALUE0_.x + 324 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 26 / _UPVALUE1_, 26 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE0_.x + 326 / _UPVALUE1_, _UPVALUE0_.y + 328 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    dxDrawText("" .. string.format("%02.1f", _UPVALUE2_.oil / 10) .. "%", _UPVALUE0_.x + 312 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. string.format("%02.1f", _UPVALUE2_.battery / 10) .. "%", _UPVALUE0_.x + 312 / _UPVALUE1_, _UPVALUE0_.y + 510 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 270 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 270 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 310 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 310 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if infoVehicles.nitro then
      dxDrawImage(_UPVALUE0_.x + 32 / _UPVALUE1_, _UPVALUE0_.y + 398 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.nitro_icon, 0, 0, 0, tocolor(2, 192, 235, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 55 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, 120 / _UPVALUE1_, 5 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(40, 40, 40, 245), false)
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) > 1 then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 55 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, 115 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) / _UPVALUE1_, 5 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(2, 192, 235, 245), false)
      end
      dxDrawText(string.format("%02.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) .. "L", _UPVALUE0_.x - 135 / _UPVALUE1_, _UPVALUE0_.y + 595 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
    end
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 55 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 120 / _UPVALUE1_, 5 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(40, 40, 40, 245), false)
      if 1 < (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 55 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 1.2 * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) / _UPVALUE1_, 5 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 250, 60, 245), false)
      end
      dxDrawText("LPG", _UPVALUE0_.x - 135 / _UPVALUE1_, _UPVALUE0_.y + 345 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, false, false)
    end
  end
end
function renderSpeedMeter4()
  if getPedOccupiedVehicle(localPlayer) then
    dxDrawImage(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_, _UPVALUE0_.w - 75 / _UPVALUE1_, _UPVALUE0_.h - 75 / _UPVALUE1_, texturesSpeedometer.background_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, tocolor(65, 65, 65, 255), 140, 80, 5)
    exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, tocolor(65, 65, 65, 255), 249, 222, 5)
    dxDrawText("000", _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 300 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    if infoVehicles.rodzaj ~= "Elektryczny" then
      if infoVehicles.turbo then
        turbo1 = "T"
      else
        turbo1 = ""
      end
      dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 395 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(40, 40, 40, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
      dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(40, 40, 40, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    else
      dxDrawText("ELEKTRYK", _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 375 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(40, 40, 40, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    end
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE0_.x, _UPVALUE0_.y + 300 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 134 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, false, false)
      if math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) > 333 then
      end
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 249, 333 / 1.5, 5)
      dxDrawImage(_UPVALUE0_.x + 70 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, texturesSpeedometer.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE0_.x + 70 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, texturesSpeedometer.numbers, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawImage(_UPVALUE0_.x + 193 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.fuel_icon_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 193 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.battery_icon_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 140, 80 / infoVehicles.bak * (string.format("%1d", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) * 0.5), 5)
      dxDrawImage(_UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE0_.x + 132 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, interpolateColor(_UPVALUE2_.oil, 1000, 350, _UPVALUE3_), false)
      dxDrawImage(_UPVALUE0_.x + 254 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, 21 / _UPVALUE1_, 21 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, interpolateColor(_UPVALUE2_.battery, 1000, 350, _UPVALUE3_), false)
    else
      dxDrawText(333, _UPVALUE0_.x, _UPVALUE0_.y + 300 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 134 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, false, false)
      if 333 < 333 then
      end
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, tocolor(255, 255, 255, 150), 249, 333 / 1.5, 5)
      dxDrawImage(_UPVALUE0_.x + 70 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, texturesSpeedometer.lines, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE0_.x + 70 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, texturesSpeedometer.numbers, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawImage(_UPVALUE0_.x + 193 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.fuel_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 193 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.battery_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      end
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, tocolor(150, 150, 150, 150), 140, 80 / infoVehicles.bak * (string.format("%1d", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) * 0.5), 5)
      dxDrawImage(_UPVALUE0_.x + 140 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE0_.x + 132 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE0_.x + 254 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, 21 / _UPVALUE1_, 21 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    dxDrawText("" .. string.format("%02.1f", _UPVALUE2_.oil / 10) .. "%", _UPVALUE0_.x - 20 / _UPVALUE1_, _UPVALUE0_.y + 315 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. string.format("%02.1f", _UPVALUE2_.battery / 10) .. "%", _UPVALUE0_.x + 220 / _UPVALUE1_, _UPVALUE0_.y + 315 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if infoVehicles.nitro == true then
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 208 / _UPVALUE1_, _UPVALUE0_.y + 255 / _UPVALUE1_, _UPVALUE0_.w - 185 / _UPVALUE1_, _UPVALUE0_.h - 185 / _UPVALUE1_, tocolor(35, 35, 35, 200), 320, 80, 5)
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 208 / _UPVALUE1_, _UPVALUE0_.y + 255 / _UPVALUE1_, _UPVALUE0_.w - 185 / _UPVALUE1_, _UPVALUE0_.h - 185 / _UPVALUE1_, tocolor(52, 192, 235, 200), 320, 80 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 5)
      dxDrawImage(_UPVALUE0_.x + 193 / _UPVALUE1_, _UPVALUE0_.y + 165 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.nitro_icon, 90, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 215 / _UPVALUE1_, 70 / _UPVALUE1_, 5 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(35, 35, 35, 200), false)
      if 5 < (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 215 / _UPVALUE1_, 0.7 * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) / _UPVALUE1_, 5 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 250, 60, 205), false)
      end
      dxDrawText("LPG", _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    end
  end
end
function renderSpeedMeter5()
  if getPedOccupiedVehicle(localPlayer) then
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawImage(_UPVALUE0_.x + 57.5 / _UPVALUE1_, _UPVALUE0_.y + 97.5 / _UPVALUE1_, _UPVALUE0_.w - 70 / _UPVALUE1_, _UPVALUE0_.h - 70 / _UPVALUE1_, texturesSpeedometer.background_light_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
    else
      dxDrawImage(_UPVALUE0_.x + 57.5 / _UPVALUE1_, _UPVALUE0_.y + 97.5 / _UPVALUE1_, _UPVALUE0_.w - 70 / _UPVALUE1_, _UPVALUE0_.h - 70 / _UPVALUE1_, texturesSpeedometer.background_light_speedometer2, 0, 0, 0, tocolor(200, 200, 200, 100), false)
    end
    dxDrawImage(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_, _UPVALUE0_.w - 75 / _UPVALUE1_, _UPVALUE0_.h - 75 / _UPVALUE1_, texturesSpeedometer.background_light_speedometer2, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 90 / _UPVALUE1_, _UPVALUE0_.h - 90 / _UPVALUE1_, tocolor(65, 65, 65, 255), 100, 60, 5)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 75 / _UPVALUE1_, 20 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(25, 25, 25, 200), false)
    dxDrawText("000", _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(25, 25, 25, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawImage(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_, _UPVALUE0_.w - 75 / _UPVALUE1_, _UPVALUE0_.h - 75 / _UPVALUE1_, texturesSpeedometer.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 90 / _UPVALUE1_, _UPVALUE0_.h - 90 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 100, 60 / infoVehicles.bak * (string.format("%1d", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) * 0.5), 5)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawImage(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.fuel_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      else
        dxDrawImage(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.battery_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      end
      dxDrawText(string.format("%08.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124) .. "", _UPVALUE0_.x + 103 / _UPVALUE1_, _UPVALUE0_.y + 438 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal11"), "center", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE0_.x, _UPVALUE0_.y + 240 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 142 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 147 / _UPVALUE1_, _UPVALUE0_.y + 209 / _UPVALUE1_, 18 / _UPVALUE1_, 18 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, interpolateColor(_UPVALUE2_.battery, 1000, 350, _UPVALUE3_), false)
      dxDrawImage(_UPVALUE0_.x + 141 / _UPVALUE1_, _UPVALUE0_.y + 245 / _UPVALUE1_, 23 / _UPVALUE1_, 23 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, interpolateColor(_UPVALUE2_.oil, 1000, 350, _UPVALUE3_), false)
    else
      dxDrawImage(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_, _UPVALUE0_.w - 75 / _UPVALUE1_, _UPVALUE0_.h - 75 / _UPVALUE1_, texturesSpeedometer.lines, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      dxDrawImage(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 247 / _UPVALUE1_, _UPVALUE0_.w - 90 / _UPVALUE1_, _UPVALUE0_.h - 90 / _UPVALUE1_, tocolor(150, 150, 150, 150), 100, 60 / infoVehicles.bak * (string.format("%1d", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100) * 0.5), 5)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawImage(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.fuel_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.battery_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      end
      dxDrawText(string.format("%08.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124) .. "", _UPVALUE0_.x + 103 / _UPVALUE1_, _UPVALUE0_.y + 438 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal11"), "center", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE0_.x, _UPVALUE0_.y + 240 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 142 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(150, 150, 150, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 147 / _UPVALUE1_, _UPVALUE0_.y + 209 / _UPVALUE1_, 18 / _UPVALUE1_, 18 / _UPVALUE1_, texturesSpeedometer.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE0_.x + 141 / _UPVALUE1_, _UPVALUE0_.y + 245 / _UPVALUE1_, 23 / _UPVALUE1_, 23 / _UPVALUE1_, texturesSpeedometer.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    dxDrawText("" .. string.format("%02.1f", _UPVALUE2_.battery / 10) .. "%", _UPVALUE0_.x + 4 / _UPVALUE1_, _UPVALUE0_.y + 265 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. string.format("%02.1f", _UPVALUE2_.oil / 10) .. "%", _UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y + 338 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 183 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 183 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 285 / _UPVALUE1_, 22 / _UPVALUE1_, 22 / _UPVALUE1_, texturesSpeedometer.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if infoVehicles.nitro == true then
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 243 / _UPVALUE1_, _UPVALUE0_.w - 200 / _UPVALUE1_, _UPVALUE0_.h - 200 / _UPVALUE1_, tocolor(65, 65, 65, 255), 320, 80, 5)
      exports.shader_circle:dxDrawCircle(_UPVALUE0_.x + 207 / _UPVALUE1_, _UPVALUE0_.y + 243 / _UPVALUE1_, _UPVALUE0_.w - 200 / _UPVALUE1_, _UPVALUE0_.h - 200 / _UPVALUE1_, tocolor(52, 192, 235, 200), 320, 80 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 5)
      dxDrawImage(_UPVALUE0_.x + 193 / _UPVALUE1_, _UPVALUE0_.y + 165 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, texturesSpeedometer.nitro_icon, 90, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if infoVehicles.rodzaj ~= "Elektryczny" then
      if infoVehicles.turbo then
        turbo1 = "T"
      else
        turbo1 = ""
      end
      dxDrawText(infoVehicles.rodzaj, _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(25, 25, 25, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
      dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(25, 25, 25, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    else
      dxDrawText("ELEKTRYK", _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 335 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(25, 25, 25, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    end
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 270 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 5 / _UPVALUE1_, 50 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(25, 25, 25, 200), false)
      if 5 < (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 270 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, 5 / _UPVALUE1_, 0.7 * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 100) / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 250, 60, 205), false)
      end
      dxDrawText("LPG", _UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 50 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(25, 25, 25, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    end
    dxDrawImage(_UPVALUE0_.x + 70 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.w - 95 / _UPVALUE1_, _UPVALUE0_.h - 95 / _UPVALUE1_, texturesSpeedometer.indicator_speedometer2, (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 107 - 63, 0, 0, tocolor(200, 200, 200, 255), false)
  end
end
function removeTexturesSpeedometer()
  if isEventHandlerAdded("onClientRender", root, renderSpeedMeter5) then
    removeEventHandler("onClientRender", root, renderSpeedMeter5)
    for _FORV_3_, _FORV_4_ in pairs(texturesSpeedometer) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesSpeedometer = {}
  elseif isEventHandlerAdded("onClientRender", root, renderSpeedMeter4) then
    removeEventHandler("onClientRender", root, renderSpeedMeter4)
    for _FORV_3_, _FORV_4_ in pairs(texturesSpeedometer) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesSpeedometer = {}
  elseif isEventHandlerAdded("onClientRender", root, renderSpeedMeter2) then
    removeEventHandler("onClientRender", root, renderSpeedMeter2)
    for _FORV_3_, _FORV_4_ in pairs(texturesSpeedometer) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesSpeedometer = {}
  elseif isEventHandlerAdded("onClientRender", root, renderSpeedMeter3) then
    removeEventHandler("onClientRender", root, renderSpeedMeter3)
    for _FORV_3_, _FORV_4_ in pairs(texturesSpeedometer) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesSpeedometer = {}
  elseif isEventHandlerAdded("onClientRender", root, renderSpeedMeter1) then
    removeEventHandler("onClientRender", root, renderSpeedMeter1)
    for _FORV_3_, _FORV_4_ in pairs(texturesSpeedometer) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesSpeedometer = {}
  end
end
function loadTexturesSpeedometer(_ARG_0_)
  if _ARG_0_ == 4 then
    texturesSpeedometer = {
      lines = dxCreateTexture(":ST_speedmeter/images/speedmeter3/lines.png"),
      background_light_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/background_light.png"),
      indicator_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/indicator.png"),
      fuel_icon_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/fuel_icon.png"),
      battery_icon_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/battery_icon.png"),
      nitro_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter2/nitro_icon.png"),
      engine = dxCreateTexture(":ST_speedmeter/images/speedmeter1/engine.png"),
      brake = dxCreateTexture(":ST_speedmeter/images/speedmeter1/brake.png"),
      lock = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lock.png"),
      lights = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lights.png"),
      oil_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/battery1_icon.png")
    }
  elseif _ARG_0_ == 3 then
    texturesSpeedometer = {
      background_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/background.png"),
      fuel_icon_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/fuel_icon.png"),
      battery_icon_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/battery_icon.png"),
      nitro_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter2/nitro_icon.png"),
      numbers = dxCreateTexture(":ST_speedmeter/images/speedmeter1/numbers.png"),
      lines = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lines.png"),
      engine = dxCreateTexture(":ST_speedmeter/images/speedmeter1/engine.png"),
      brake = dxCreateTexture(":ST_speedmeter/images/speedmeter1/brake.png"),
      lock = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lock.png"),
      lights = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lights.png"),
      oil_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/battery1_icon.png")
    }
  elseif _ARG_0_ == 2 then
    texturesSpeedometer = {
      fuel_spedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/fuel.png"),
      fuel_indicator_spedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/fuel_indicator.png"),
      battery_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/battery_icon.png"),
      nitro_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter2/nitro_icon.png"),
      engine = dxCreateTexture(":ST_speedmeter/images/speedmeter1/engine.png"),
      brake = dxCreateTexture(":ST_speedmeter/images/speedmeter1/brake.png"),
      lock = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lock.png"),
      lights = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lights.png"),
      oil_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/battery1_icon.png")
    }
  elseif _ARG_0_ == 1 then
    texturesSpeedometer = {
      indicator_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/indicator.png"),
      background_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/background.png"),
      background_light_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/background_light.png"),
      fuel_icon_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/fuel_icon.png"),
      battery_icon_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/battery_icon.png"),
      fuel_spedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/fuel.png"),
      fuel_indicator_spedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/fuel_indicator.png"),
      nitro_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter2/nitro_icon.png"),
      oil_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/battery1_icon.png"),
      numbers = dxCreateTexture(":ST_speedmeter/images/speedmeter1/numbers.png"),
      lines = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lines.png"),
      engine = dxCreateTexture(":ST_speedmeter/images/speedmeter1/engine.png"),
      brake = dxCreateTexture(":ST_speedmeter/images/speedmeter1/brake.png"),
      lock = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lock.png"),
      lights = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lights.png")
    }
  else
    texturesSpeedometer = {
      background = dxCreateTexture(":ST_speedmeter/images/speedmeter2/background_light.png"),
      lines = dxCreateTexture(":ST_speedmeter/images/speedmeter0/lines.png"),
      numbers = dxCreateTexture(":ST_speedmeter/images/speedmeter1/numbers.png"),
      indicator = dxCreateTexture(":ST_speedmeter/images/speedmeter1/indicator.png"),
      broken_texture = dxCreateTexture(":ST_speedmeter/images/speedmeter1/broken_texture.png"),
      battery_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/battery_icon.png"),
      nitro_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter2/nitro_icon.png"),
      engine = dxCreateTexture(":ST_speedmeter/images/speedmeter1/engine.png"),
      brake = dxCreateTexture(":ST_speedmeter/images/speedmeter1/brake.png"),
      lock = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lock.png"),
      lights = dxCreateTexture(":ST_speedmeter/images/speedmeter1/lights.png"),
      fuel_icon_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/fuel_icon.png"),
      battery_icon_speedometer2 = dxCreateTexture(":ST_speedmeter/images/speedmeter2/battery_icon.png"),
      oil_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/battery1_icon.png")
    }
  end
end
function isEventHandlerAdded(_ARG_0_, _ARG_1_, _ARG_2_)
  if type(_ARG_0_) == "string" and isElement(_ARG_1_) and type(_ARG_2_) == "function" and type((getEventHandlers(_ARG_0_, _ARG_1_))) == "table" and #getEventHandlers(_ARG_0_, _ARG_1_) > 0 then
    for _FORV_7_, _FORV_8_ in ipairs((getEventHandlers(_ARG_0_, _ARG_1_))) do
      if _FORV_8_ == _ARG_2_ then
        return true
      end
    end
  end
  return false
end
function RGBToHex(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ < 0 or 255 < _ARG_0_ or _ARG_1_ < 0 or 255 < _ARG_1_ or _ARG_2_ < 0 or 255 < _ARG_2_ or alpha and (0 > alpha or 255 < alpha) then
    return nil
  end
  return string.format("#%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_)
end
function interpolateColor(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return tocolor(_ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][1] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][1] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][1]), _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][2] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][2] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][2]), _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][3] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][3] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][3]), 190)
end
getResourceName(getThisResource(), true, 58477083)
return
