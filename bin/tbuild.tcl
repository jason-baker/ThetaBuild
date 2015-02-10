package provide thetaBuild 1.0
namespace eval ::thetaBuild {
    #!/usr/bin/env tclsh
    
    set dir         [file normalize [file dirname [info script]]]
    set LIBDIR      [file normalize [file join $dir .. lib]]
    set SRCDIR      [file normalize [file join $dir .. src ThetaBuild]]
    set SHAREDIR    [file normalize [file join $dir .. share ThetaBuild]]
    lappend ::auto_path ${LIBDIR}
    
    puts "/----------------------------------------\\"
    puts "| ThetaBuild v1.0                        |"
    puts "| Written by Jason M. Baker              |"
    puts "\\----------------------------------------/"
    
    package require Tcl 8.6
    
    if {[catch {package require ThetaBuild 1.0} output]} {
        error "Unable to load system library: $output"
    }
    
}

