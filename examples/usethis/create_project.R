library(usethis)

# Files for git to ignore
#  'scratch_*.*' means that anything you name with 'scratch_' first will be
#  ignored so you don't commit and push your random notes/bug fixes
ignores <- c(
  ".Rhistory", ".RData", ".Rproj.user",
  "scratch_*.*", ".DS_Store"
)

# Create project using the current working directory
#  It was necessary to open create_project.R in RStudio for an .Rproj file
#  to be successfully created. Also 'use_description()' will only work if
#  the project name meets the same criteria as a package name, so the '-'
#  messed things up--without a 'DESCRIPTION' file, the 'use_gpl3_license()'
#  won't work.
create_project(path = getwd())
use_description()
use_git_ignore(ignores = ignores)
use_gpl3_license(name = "Robert Mitchell")

# Create project directories
use_directory("data")
use_directory("docs")
use_directory("models")
use_directory("notebooks")
use_directory("reports")

# Create project subdirectories
use_directory("data/external")
use_directory("data/raw")
use_directory("data/interim")
use_directory("data/tidy")
use_directory("docs/references")
use_directory("reports/figures")

# let's keep it tidy
#  'use_tidy_style()' must come last; have to commit work when finished
use_tidy_github()
use_tidy_description()
use_tidy_style()
