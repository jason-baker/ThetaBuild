namespace eval ::thetaBuild {
    #!/usr/bin/env tclsh
    
    set basedir     [file normalize [file join [file normalize [file dirname [info script]]] ".."]]
    set ::LIBDIR    [file normalize [file join $basedir lib]]
    set ::SRCDIR    [file normalize [file join $basedir src thetaBuild]]
    set ::SHAREDIR  [file normalize [file join $basedir share thetaBuild]]
    lappend ::auto_path ${LIBDIR}
    
    puts "/----------------------------------------\\"
    puts "| thetaBuild v1.0                        |"
    puts "| Written by Jason M. Baker              |"
    puts "\\----------------------------------------/"
    
    package require Tcl 8.5
    
    puts "LIBDIR: ${::LIBDIR}"
    
    if {[catch {package require thetaBuild 1.0} output]} {
        error "Unable to load system library: $output"
    }
    
    puts "Loaded!"
    
    ::thetaBuild::common::directory {test}
}
