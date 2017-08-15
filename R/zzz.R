e = new.env()

reg.finalizer(e, function(e) {
  message('Object Bye!')
}, onexit = TRUE)


finalize <- function(env) {

   print(ls(env))
   message("Bye from Name space Finalizer")
}


.onLoad <- function(libname, pkgname) {
   parent <- parent.env(environment())
   print(str(parent))
   reg.finalizer(parent, finalize, onexit= TRUE)
}
