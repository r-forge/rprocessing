PScatter <- function(x, y, PApp = NULL)
{
    if(length(x) != length(y)) stop("length of 'x' and 'y' do not match.")
    x <- as.integer(x)
    y <- as.integer(y)

    if(is.null(PApp)) PApp <- PApplet("PScatter")
    PSet(PApp,"setXY", x, y)
    PResize(PApp, max(x), max(y))

    invisible(PApp)
}
