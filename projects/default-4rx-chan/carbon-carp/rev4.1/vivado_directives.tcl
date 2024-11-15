# SPDX-License-Identifier: Apache-2.0

set full_board [get_parts -of_objects [get_projects]]
set board [string range $full_board 4 6]

if { ( $board == "9eg" || $board == "4ev" ) } {
    set_property STEPS.OPT_DESIGN.ARGS.DIRECTIVE ExploreWithRemap [get_runs impl_1]
    set_property STEPS.PLACE_DESIGN.ARGS.DIRECTIVE ExtraTimingOpt [get_runs impl_1]
}

if { ( $board == "9eg" || $board == "3eg" ) } {
    set_property STEPS.OPT_DESIGN.ARGS.DIRECTIVE ExploreWithRemap [get_runs impl_1]
    set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE NoTimingRelaxation [get_runs impl_1]
    set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
}

if { ( $board == "9eg" ) } {
    set_property STEPS.PLACE_DESIGN.ARGS.DIRECTIVE SSI_HighUtilSLRs [get_runs impl_1]
}
