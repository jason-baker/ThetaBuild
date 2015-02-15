# Dependency order matters here until I figure out a slick way to do dependency injection
# or split the package all up into crazy little piecs
#
package ifneeded thetaBuild 1.0 {
    source [file join ${LIBDIR} thetaBuild util.tcl]
    source [file join ${LIBDIR} thetaBuild common.tcl]
}
