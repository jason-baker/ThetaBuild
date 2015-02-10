
# Dependency order matters here until I figure out a slick way to do dependency injection
# or split the package all up into crazy little piecs
package ifneeded ThetaBuild 1.0 {
    source [file join ${LIBDIR} ThetaBuild common.tcl]
}
