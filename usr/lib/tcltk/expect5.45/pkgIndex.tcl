if {![package vsatisfies [package provide Tcl] 8.6]} {return}
package ifneeded Expect 5.45 \
    [list load [file join /usr lib libexpect.so.5.45]]
