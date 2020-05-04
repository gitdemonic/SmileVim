#! /bin/bash

path_map_register="/d/regmap/spmi0-00/"
address="/d/regmap/spmi0-00/address"
count="/d/regmap/spmi0-00/count"
data="/d/regmap/spmi0-00/data"
output="result.csv"

# example: read_register 0x4156 1
read_register () {
    adb shell "echo $1 > $address"
    adb shell "echo $2 > $count"
    echo "$1($2): `adb shell "cat $data"|awk '{print $2}'`" | tee -a $output
    echo "" | tee -a $output
#    adb shell "cat $data"|awk '{print $2}'
}

write_to_file () {
    echo $1 | tee -a $output
}
rm $output
#:<<'END'
echo "qcom,thermal-coefficients" | tee -a $output
write_to_file "Expect: DA 50 FF"
read_register 0x415C 1
read_register 0x415D 1
read_register 0x415E 1

echo "qcom,fg-jeita-hyst-temp" | tee -a $output
write_to_file "Expect: 2"
read_register 0x4156 1


echo "qcom,fv-max-uv" | tee -a $output
write_to_file "Expect: 4200"
read_register 0x1070 1

write_to_file "qcom,dc-icl-ua"
write_to_file "Expect: 250000"
read_register 0x1470 1

echo "qcom,usb-icl-ua" | tee -a $output
write_to_file "Expect: 2400000"
read_register 0x1370 1

echo "qcom,fcc-max-ua" | tee -a $output
write_to_file "Expect: 2300000"
read_register 0x1061 1

echo "qcom,otg-cl-ua" | tee -a $output
write_to_file "Expect: 500000"
read_register 0x1152 1

echo "qcom,wipower-disbale" | tee -a $output
write_to_file "Expect: 1"
read_register 0x1495 1

write_to_file "SCHG_CHGR_JEITA_CCCOMP_CFG"
write_to_file "Expect: Disable"
read_register 0x1092 1

write_to_file "SCHG_CHGR_JEITA_FVCOMP_CFG"
write_to_file "Expect: Disable"
read_register 0x1091 1

echo "SCHG_CHGR_CHGR_CFG2" | tee -a $output
write_to_file "Expect: Bit 4 = 0"
read_register 0x1051 1

echo "SCHG_MISC_VSYS_MIN_SEL_CFG" | tee -a $output
write_to_file "Expect: = 0x01"
read_register 0x1683 1

echo "SCHG_CHGR_PRE_CHARGE_CURRENT_CFG" | tee -a $output
write_to_file "Expect: 0x14"
read_register 0x1060 1

echo "zebra,tccc_term_current" | tee -a $output
write_to_file "Expect: 2"
read_register 0x1063 1

echo "SCHG_USB_USBIN_AICL_OPTIONS_CFG" | tee -a $output
write_to_file "Expect: Enable"
read_register 0x1380 1

echo "SCHG_USB_USBIN_5V_AICL_THRESHOLD_CFG" | tee -a $output
write_to_file "Expect: 0x5"
read_register 0x1381 1

echo "Safety timer enable" | tee -a $output
write_to_file "Expect: From Battery Pack"
read_register 0x010A0 1

echo "Step charging" | tee -a $output
write_to_file "Expect: 0"
read_register 0x010B0 1

echo "PRE_TO_FAST_CHARGE_THRESHOLD_CFG_REG" | tee -a $output
write_to_file "Expect: 3V"
read_register 0x01074 1

echo "Pre charge Timer" | tee -a $output
write_to_file "Expect: From Battery Pack"
read_register 0x010A1 1

echo "Fast Charge Timer" | tee -a $output
write_to_file "Expect: From Battery Pack"
read_register 0x010A2 1

echo "Charger Inhibit Function" | tee -a $output
write_to_file "Expect: Disable"
read_register 0x1051 1

echo "FG_BATT_INFO_IBATT_SENSING_CFG" | tee -a $output
write_to_file "Expect: 0x0"
read_register 0x04173 1

echo "FG_BATT_INFO_JEITA_TOO_COLD"
write_to_file "Expect: This value is read from Battery, please refer to kernel log"
read_register 0x00004162 1

echo "FG_BATT_INFO_JEITA_COLD"
write_to_file "Expect: This value is read from Battery, please refer to kernel log"
read_register 0x00004163 1

echo "FG_BATT_INFO_JEITA_HOT"
write_to_file "Expect: This value is read from Battery, please refer to kernel log"
read_register 0x00004164 1

echo "FG_BATT_INFO_JEITA_TOO_HOT"
write_to_file "Expect: This value is read from Battery, please refer to kernel log"
read_register 0x00004165 1

