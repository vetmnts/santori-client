function cacheChartData(_ARG_0_)
  highest_value = false
  bitcoin_01 = 0
  bitcoin_1 = 0
  bitcoin_2 = 0
  bitcoin_3 = 0
  bitcoin_4 = 0
  bitcoin_5 = 0
  bitcoin_6 = 0
  bitcoin_7 = 0
  bitcoin_8 = 0
  bitcoin_9 = 0
  bitcoin_10 = 0
  bitcoin_11 = 0
  bitcoin_12 = 0
  bitcoin_13 = 0
  bitcoin_14 = 0
  bitcoin_15 = 0
  bitcoin_16 = 0
  bitcoin_17 = 0
  bitcoin_18 = 0
  bitcoin_19 = 0
  bitcoin_20 = 0
  ethereum_01 = 0
  ethereum_1 = 0
  ethereum_2 = 0
  ethereum_3 = 0
  ethereum_4 = 0
  ethereum_5 = 0
  ethereum_6 = 0
  ethereum_7 = 0
  ethereum_8 = 0
  ethereum_9 = 0
  ethereum_10 = 0
  ethereum_11 = 0
  ethereum_12 = 0
  ethereum_13 = 0
  ethereum_14 = 0
  ethereum_15 = 0
  ethereum_16 = 0
  ethereum_17 = 0
  ethereum_18 = 0
  ethereum_19 = 0
  ethereum_20 = 0
  litecoin_01 = 0
  litecoin_1 = 0
  litecoin_2 = 0
  litecoin_3 = 0
  litecoin_4 = 0
  litecoin_5 = 0
  litecoin_6 = 0
  litecoin_7 = 0
  litecoin_8 = 0
  litecoin_9 = 0
  litecoin_10 = 0
  litecoin_11 = 0
  litecoin_12 = 0
  litecoin_13 = 0
  litecoin_14 = 0
  litecoin_15 = 0
  litecoin_16 = 0
  litecoin_17 = 0
  litecoin_18 = 0
  litecoin_19 = 0
  litecoin_20 = 0
  dogecoin_01 = 0
  dogecoin_1 = 0
  dogecoin_2 = 0
  dogecoin_3 = 0
  dogecoin_4 = 0
  dogecoin_5 = 0
  dogecoin_6 = 0
  dogecoin_7 = 0
  dogecoin_8 = 0
  dogecoin_9 = 0
  dogecoin_10 = 0
  dogecoin_11 = 0
  dogecoin_12 = 0
  dogecoin_13 = 0
  dogecoin_14 = 0
  dogecoin_15 = 0
  dogecoin_16 = 0
  dogecoin_17 = 0
  dogecoin_18 = 0
  dogecoin_19 = 0
  dogecoin_20 = 0
  ripple_01 = 0
  ripple_1 = 0
  ripple_2 = 0
  ripple_3 = 0
  ripple_4 = 0
  ripple_5 = 0
  ripple_6 = 0
  ripple_7 = 0
  ripple_8 = 0
  ripple_9 = 0
  ripple_10 = 0
  ripple_11 = 0
  ripple_12 = 0
  ripple_13 = 0
  ripple_14 = 0
  ripple_15 = 0
  ripple_16 = 0
  ripple_17 = 0
  ripple_18 = 0
  ripple_19 = 0
  ripple_20 = 0
  for _FORV_4_, _FORV_5_ in ipairs(table_stockExchange) do
    if _ARG_0_[1] then
      bitcoin_01 = _FORV_5_.bitcoin
      bitcoin_1 = _FORV_5_.bitcoin_1
      bitcoin_2 = _FORV_5_.bitcoin_2
      bitcoin_3 = _FORV_5_.bitcoin_3
      bitcoin_4 = _FORV_5_.bitcoin_4
      bitcoin_5 = _FORV_5_.bitcoin_5
      bitcoin_6 = _FORV_5_.bitcoin_6
      bitcoin_7 = _FORV_5_.bitcoin_7
      bitcoin_8 = _FORV_5_.bitcoin_8
      bitcoin_9 = _FORV_5_.bitcoin_9
      bitcoin_10 = _FORV_5_.bitcoin_10
      bitcoin_11 = _FORV_5_.bitcoin_11
      bitcoin_12 = _FORV_5_.bitcoin_12
      bitcoin_13 = _FORV_5_.bitcoin_13
      bitcoin_14 = _FORV_5_.bitcoin_14
      bitcoin_15 = _FORV_5_.bitcoin_15
      bitcoin_16 = _FORV_5_.bitcoin_16
      bitcoin_17 = _FORV_5_.bitcoin_17
      bitcoin_18 = _FORV_5_.bitcoin_18
      bitcoin_19 = _FORV_5_.bitcoin_19
      bitcoin_20 = _FORV_5_.bitcoin_20
    end
    data_bitcoin = {
      bitcoin_20,
      bitcoin_19,
      bitcoin_18,
      bitcoin_17,
      bitcoin_16,
      bitcoin_15,
      bitcoin_14,
      bitcoin_13,
      bitcoin_12,
      bitcoin_11,
      bitcoin_10,
      bitcoin_9,
      bitcoin_8,
      bitcoin_7,
      bitcoin_6,
      bitcoin_5,
      bitcoin_4,
      bitcoin_3,
      bitcoin_2,
      bitcoin_1,
      bitcoin_01
    }
    if _ARG_0_[2] then
      ethereum_01 = _FORV_5_.ethereum
      ethereum_1 = _FORV_5_.ethereum_1
      ethereum_2 = _FORV_5_.ethereum_2
      ethereum_3 = _FORV_5_.ethereum_3
      ethereum_4 = _FORV_5_.ethereum_4
      ethereum_5 = _FORV_5_.ethereum_5
      ethereum_6 = _FORV_5_.ethereum_6
      ethereum_7 = _FORV_5_.ethereum_7
      ethereum_8 = _FORV_5_.ethereum_8
      ethereum_9 = _FORV_5_.ethereum_9
      ethereum_10 = _FORV_5_.ethereum_10
      ethereum_11 = _FORV_5_.ethereum_11
      ethereum_12 = _FORV_5_.ethereum_12
      ethereum_13 = _FORV_5_.ethereum_13
      ethereum_14 = _FORV_5_.ethereum_14
      ethereum_15 = _FORV_5_.ethereum_15
      ethereum_16 = _FORV_5_.ethereum_16
      ethereum_17 = _FORV_5_.ethereum_17
      ethereum_18 = _FORV_5_.ethereum_18
      ethereum_19 = _FORV_5_.ethereum_19
      ethereum_20 = _FORV_5_.ethereum_20
    end
    data_ethereum = {
      ethereum_20,
      ethereum_19,
      ethereum_18,
      ethereum_17,
      ethereum_16,
      ethereum_15,
      ethereum_14,
      ethereum_13,
      ethereum_12,
      ethereum_11,
      ethereum_10,
      ethereum_9,
      ethereum_8,
      ethereum_7,
      ethereum_6,
      ethereum_5,
      ethereum_4,
      ethereum_3,
      ethereum_2,
      ethereum_1,
      ethereum_01
    }
    if _ARG_0_[3] then
      litecoin_01 = _FORV_5_.litecoin
      litecoin_1 = _FORV_5_.litecoin_1
      litecoin_2 = _FORV_5_.litecoin_2
      litecoin_3 = _FORV_5_.litecoin_3
      litecoin_4 = _FORV_5_.litecoin_4
      litecoin_5 = _FORV_5_.litecoin_5
      litecoin_6 = _FORV_5_.litecoin_6
      litecoin_7 = _FORV_5_.litecoin_7
      litecoin_8 = _FORV_5_.litecoin_8
      litecoin_9 = _FORV_5_.litecoin_9
      litecoin_10 = _FORV_5_.litecoin_10
      litecoin_11 = _FORV_5_.litecoin_11
      litecoin_12 = _FORV_5_.litecoin_12
      litecoin_13 = _FORV_5_.litecoin_13
      litecoin_14 = _FORV_5_.litecoin_14
      litecoin_15 = _FORV_5_.litecoin_15
      litecoin_16 = _FORV_5_.litecoin_16
      litecoin_17 = _FORV_5_.litecoin_17
      litecoin_18 = _FORV_5_.litecoin_18
      litecoin_19 = _FORV_5_.litecoin_19
      litecoin_20 = _FORV_5_.litecoin_20
    end
    data_litecoin = {
      litecoin_20,
      litecoin_19,
      litecoin_18,
      litecoin_17,
      litecoin_16,
      litecoin_15,
      litecoin_14,
      litecoin_13,
      litecoin_12,
      litecoin_11,
      litecoin_10,
      litecoin_9,
      litecoin_8,
      litecoin_7,
      litecoin_6,
      litecoin_5,
      litecoin_4,
      litecoin_3,
      litecoin_2,
      litecoin_1,
      litecoin_01
    }
    if _ARG_0_[4] then
      dogecoin_01 = _FORV_5_.dogecoin
      dogecoin_1 = _FORV_5_.dogecoin_1
      dogecoin_2 = _FORV_5_.dogecoin_2
      dogecoin_3 = _FORV_5_.dogecoin_3
      dogecoin_4 = _FORV_5_.dogecoin_4
      dogecoin_5 = _FORV_5_.dogecoin_5
      dogecoin_6 = _FORV_5_.dogecoin_6
      dogecoin_7 = _FORV_5_.dogecoin_7
      dogecoin_8 = _FORV_5_.dogecoin_8
      dogecoin_9 = _FORV_5_.dogecoin_9
      dogecoin_10 = _FORV_5_.dogecoin_10
      dogecoin_11 = _FORV_5_.dogecoin_11
      dogecoin_12 = _FORV_5_.dogecoin_12
      dogecoin_13 = _FORV_5_.dogecoin_13
      dogecoin_14 = _FORV_5_.dogecoin_14
      dogecoin_15 = _FORV_5_.dogecoin_15
      dogecoin_16 = _FORV_5_.dogecoin_16
      dogecoin_17 = _FORV_5_.dogecoin_17
      dogecoin_18 = _FORV_5_.dogecoin_18
      dogecoin_19 = _FORV_5_.dogecoin_19
      dogecoin_20 = _FORV_5_.dogecoin_20
    end
    data_dogecoin = {
      dogecoin_20,
      dogecoin_19,
      dogecoin_18,
      dogecoin_17,
      dogecoin_16,
      dogecoin_15,
      dogecoin_14,
      dogecoin_13,
      dogecoin_12,
      dogecoin_11,
      dogecoin_10,
      dogecoin_9,
      dogecoin_8,
      dogecoin_7,
      dogecoin_6,
      dogecoin_5,
      dogecoin_4,
      dogecoin_3,
      dogecoin_2,
      dogecoin_1,
      dogecoin_01
    }
    if _ARG_0_[5] then
      ripple_01 = _FORV_5_.ripple
      ripple_1 = _FORV_5_.ripple_1
      ripple_2 = _FORV_5_.ripple_2
      ripple_3 = _FORV_5_.ripple_3
      ripple_4 = _FORV_5_.ripple_4
      ripple_5 = _FORV_5_.ripple_5
      ripple_6 = _FORV_5_.ripple_6
      ripple_7 = _FORV_5_.ripple_7
      ripple_8 = _FORV_5_.ripple_8
      ripple_9 = _FORV_5_.ripple_9
      ripple_10 = _FORV_5_.ripple_10
      ripple_11 = _FORV_5_.ripple_11
      ripple_12 = _FORV_5_.ripple_12
      ripple_13 = _FORV_5_.ripple_13
      ripple_14 = _FORV_5_.ripple_14
      ripple_15 = _FORV_5_.ripple_15
      ripple_16 = _FORV_5_.ripple_16
      ripple_17 = _FORV_5_.ripple_17
      ripple_18 = _FORV_5_.ripple_18
      ripple_19 = _FORV_5_.ripple_19
      ripple_20 = _FORV_5_.ripple_20
    end
    data_ripple = {
      ripple_20,
      ripple_19,
      ripple_18,
      ripple_17,
      ripple_16,
      ripple_15,
      ripple_14,
      ripple_13,
      ripple_12,
      ripple_11,
      ripple_10,
      ripple_9,
      ripple_8,
      ripple_7,
      ripple_6,
      ripple_5,
      ripple_4,
      ripple_3,
      ripple_2,
      ripple_1,
      ripple_01
    }
    data_highest_value = {
      litecoin_20,
      litecoin_19,
      litecoin_18,
      litecoin_17,
      litecoin_16,
      litecoin_15,
      litecoin_14,
      litecoin_13,
      litecoin_12,
      litecoin_11,
      litecoin_10,
      litecoin_9,
      litecoin_8,
      litecoin_7,
      litecoin_6,
      litecoin_5,
      litecoin_4,
      litecoin_3,
      litecoin_2,
      litecoin_1,
      litecoin_01,
      ethereum_20,
      ethereum_19,
      ethereum_18,
      ethereum_17,
      ethereum_16,
      ethereum_15,
      ethereum_14,
      ethereum_13,
      ethereum_12,
      ethereum_11,
      ethereum_10,
      ethereum_9,
      ethereum_8,
      ethereum_7,
      ethereum_6,
      ethereum_5,
      ethereum_4,
      ethereum_3,
      ethereum_2,
      ethereum_1,
      ethereum_01,
      bitcoin_20,
      bitcoin_19,
      bitcoin_18,
      bitcoin_17,
      bitcoin_16,
      bitcoin_15,
      bitcoin_14,
      bitcoin_13,
      bitcoin_12,
      bitcoin_11,
      bitcoin_10,
      bitcoin_9,
      bitcoin_8,
      bitcoin_7,
      bitcoin_6,
      bitcoin_5,
      bitcoin_4,
      bitcoin_3,
      bitcoin_2,
      bitcoin_1,
      bitcoin_01,
      dogecoin_20,
      dogecoin_19,
      dogecoin_18,
      dogecoin_17,
      dogecoin_16,
      dogecoin_15,
      dogecoin_14,
      dogecoin_13,
      dogecoin_12,
      dogecoin_11,
      dogecoin_10,
      dogecoin_9,
      dogecoin_8,
      dogecoin_7,
      dogecoin_6,
      dogecoin_5,
      dogecoin_4,
      dogecoin_3,
      dogecoin_2,
      dogecoin_1,
      dogecoin_01,
      ripple_20,
      ripple_19,
      ripple_18,
      ripple_17,
      ripple_16,
      ripple_15,
      ripple_14,
      ripple_13,
      ripple_12,
      ripple_11,
      ripple_10,
      ripple_9,
      ripple_8,
      ripple_7,
      ripple_6,
      ripple_5,
      ripple_4,
      ripple_3,
      ripple_2,
      ripple_1,
      ripple_01
    }
  end
  for _FORV_4_ = 1, #data_highest_value do
    if not highest_value or data_highest_value[_FORV_4_] > highest_value then
      highest_value = data_highest_value[_FORV_4_]
    end
  end
  chart_data_bitcoin = data_bitcoin
  chart_data_ethereum = data_ethereum
  chart_data_litecoin = data_litecoin
  chart_data_dogecoin = data_dogecoin
  chart_data_ripple = data_ripple
  chart_columns_bitcoin = #data_bitcoin - 1
  chart_columns_ethereum = #data_ethereum - 1
  chart_columns_litecoin = #data_litecoin - 1
  chart_columns_dogecoin = #data_dogecoin - 1
  chart_columns_ripple = #data_ripple - 1
  cacheChartDrawing()
end
getResourceName(getThisResource(), true, 227078094)
return
