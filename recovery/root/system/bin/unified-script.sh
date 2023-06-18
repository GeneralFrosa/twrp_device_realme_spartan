#!/system/bin/sh
# This script is needed to automatically set device props.

load_RMX3371IN()
{
      echo "Setting up props for RXM3371IN"
      resetprop "ro.build.product" "RE54E4L1"
      resetprop "ro.product.model" "RMX3371"
      resetprop "ro.product.device" "RE54E4L1"
      resetprop "ro.product.product.device" "RE54E4L1"
      resetprop "ro.commonsoft.ota" "RMX3371"
      resetprop "ro.separate.soft" "21732"
}

load_RMX3371ID/EU()
{
      echo "Setting up props for RMX3371ID/EU"
      resetprop "ro.build.product" "RE54E4L1"
      resetprop "ro.product.model" "RMX3371"
      resetprop "ro.product.device" "RE54E4L1"
      resetprop "ro.product.product.device" "RE54E4L1"
      resetprop "ro.commonsoft.ota" "RMX3371"
      resetprop "ro.separate.soft" "21733"
}

project=$(cat /proc/oplusVersion/prjName)
echo $project

case $project in
     "2169A")
         load_RMX3371IN
              ;;
     "2169B")
          load_RMX3371ID/EU
              ;;
           *)
          load_RMX3371IN
              ;;

esac

exit 0
