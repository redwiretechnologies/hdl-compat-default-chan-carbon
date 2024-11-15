# SPDX-License-Identifier: Apache-2.0

set script_dir [file dirname [ file dirname [ file normalize [ info script ]/... ] ] ]

puts $script_dir

source "$script_dir/../../../common/carbon/rev4/carbon_system_bd.tcl"
source "$script_dir/../../scripts/default-4rx-chan_bd.tcl"
source "$script_dir/../../../common/scripts/common_bd.tcl"

ad_ip_parameter axi_ad9361_0 CONFIG.ADC_INIT_DELAY 11
ad_ip_parameter axi_ad9361_1 CONFIG.ADC_INIT_DELAY 11
