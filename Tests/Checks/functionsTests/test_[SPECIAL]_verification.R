source(paste0(getwd(), "/Tests/Checks/check.R"))

test <- function(n, showLogs) {
  logs <- list(
                list(TRUE, "polynome1", "res1_1", "res1_2"),
                list(FALSE, "polynome2", "res2_1", "res2_2"),
                list(NA, "polynome3", "res3_1", "res3_2")
  )
  
  Verification(logs, "[fct quelconque]()", "1", showLogs)
}