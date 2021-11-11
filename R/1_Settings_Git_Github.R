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

# Uma vez na vida
create_github_token()

# Uma vez na vida
gitcreds::gitcreds_set()

# Uma ver por projeto
use_github()
```
