set full_board [get_parts -of_objects [get_projects]]
set board [string range $full_board 4 7]

if { ( $board == "15eg" ) } {
    set_property STEPS.OPT_DESIGN.ARGS.DIRECTIVE ExploreWithRemap [get_runs impl_1]
    set_property STEPS.PLACE_DESIGN.ARGS.DIRECTIVE ExtraTimingOpt [get_runs impl_1]
}
