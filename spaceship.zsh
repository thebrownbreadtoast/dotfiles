# spaceship-prompt configuration
SPACESHIP_TIME_SHOW=false
SPACESHIP_USER_SHOW=always
SPACESHIP_ASYNC_SHOW=true
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_JOBS_AMOUNT_THRESHOLD=0
SPACESHIP_HG_SHOW=false
SPACESHIP_VENV_GENERIC_NAMES=(virtualenv venv .venv env)

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  python        # Python section
  package       # Package version
  node          # Node.js section
  elixir        # Elixir section
  golang        # Go section
  docker        # Docker section
  aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  venv          # virtualenv section
  line_sep      # Line break
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
    async         # Async jobs indicator
    jobs          # Background jobs indicator
    exit_code     # Exit code section
    exec_time     # Execution time
)

