PAddJar<- .jaddClassPath

PApplet <- function(name, loc = NULL, title = "RProcessing")
{
    if(is.null(loc)) loc <- c(100L,100L)
    else loc <- as.integer(loc)

    ## create PApplet
    PObj <- .jnew(name)
    .jcall(PObj,, "init")

    ## create JFrame
    f <- .jnew("javax.swing.JFrame", title)
    .jcall(f, "Ljava/awt/Component;", "add", 
	    .jcast(PObj, "java/awt/Component"))
    .jcall(f,, "pack")
    .jcall(f,, "setLocation", loc[1], loc[2])
    .jcall(f,, "setVisible", TRUE)

    structure(list(PObj = PObj, frame = f), class = "PApplet")
}

PClose <- function(PApp) .jcall(PApp$frame,, "dispose")

PResize <- function(PApp, x, y) {
  .jcall(PApp$PObj,, "size", as.integer(x), as.integer(y))
  .jcall(PApp$frame,, "pack")
  .jcall(PApp$PObj,, "redraw")
}

PSet <- function(PApp, setter, ...) .jcall(PApp$PObj,, setter, ...)

