#' sign up with an instructor account
#'
#' Sign up an account for teaching and uploading SocraticSwirl lessons.
#' Note that this requires an email confirmation.
#'
#' @param username desired username
#' @param password your password
#' @param email e-mail address, which will sent a confirmation link
#'
#' @export
socratic_swirl_signup <- function(username, password, email) {
  Parse_signup(username, password, email = email)
}


#' Log into an instructor account
#'
#' Log into an instructor account. This has to be done before accessing the
#' SocraticSwirl dashboard or submitting a new course.
#'
#' @param username account username
#' @param password account password
#'
#' @export
socratic_swirl_instructor <- function(username, password) {
  u <- Parse_login(username, password)
  options(socratic_swirl_instructor = u$username)
}


#' Open the SocraticSwirl dashboard
#'
#' Opens the SocraticSwirl instructor dashboard in a browser.
#'
#' @export
dashboard <- function() {
  app <- system.file("dashboard", package = "socraticswirlInstructor")
  shiny::runApp(app, launch.browser = TRUE)
}