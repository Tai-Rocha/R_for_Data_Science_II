######################################
## Settings for Git and Github
######################################

# Settings for Git and Github (Certify that you run the next commands inside the project created)

library(usethis)

# One time
use_git_config(
  user.name = "Tai-Rocha",
  user.email = "taina013@gmail.com"
)

# One time
git_branch_default()

## Maybe you receive this error:
#Error: Cannot detect that project is already a Git repository. Do you need to run `use_git()`?

# One time per project
use_git()

# One time
create_github_token()

# One time (Put the token)
gitcreds::gitcreds_set()

# One time per project
use_github()

