package provide thetaBuild 1.0
namespace eval ::thetaBuild::common {
    proc Proc {name unary binary script} {
    }
    
    proc directory {script} {
        set NEWDIR "tmp"
        set OLDDIR [pwd]
        cd $NEWDIR
        if {[catch {uplevel 1 $script} output]} {
            cd $OLDDIR
            error output
        }
        cd $OLDDIR
    }
}

