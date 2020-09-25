#' Outlier Function
#'
#' takes and x value returns possible values of z and x that are outliers
#'
#' @param x
#'
#' @return possible outliers and outliers of a function
#' @export
#'
#' @examples
#'
z_score = function(x){
  z=(x-mean(x))/sd(x)

  a = z[abs(z)>3]
  b = x[abs(z)>3]

  c = z[abs(z)>=2 & abs(z)<=3]
  d = x[abs(z)>=2 & abs(z)<=3]

  cat(" Possible values of z that are outliers: [",c,"]")

  cat(" Possible values of x that are outliers: [",d,"]")

  cat(" Values of z that are outliers: [",a,"]")

  cat(" Values of x that are outliers: [",b,"]")

}
