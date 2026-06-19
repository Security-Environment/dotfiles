# ~/.zshrc
# --- Prompt: know where you are, always ---
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$ '

# --- History: never lose a command, dedupe ---
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY HIST_IGNORE_DUPS

# --- Security-relevant aliases (explain what each does) ---
alias ll='ls -la'
alias ports='sudo ss -tulpn'                    # see what's listening, who owns it
alias myip='curl -s ifconfig.me'                # external IP, fast
alias dockerclean='docker system prune -af'     # nuke stale containers/images

# --- Functions over aliases when logic is needed ---
mkcd() { mkdir -p "$1" && cd "$1"; }            # one command instead of two

# --- Tool paths, only if they exist (don't break on machines without them) ---
[ -d "$HOME/go/bin" ] && export PATH="$PATH:$HOME/go/bin"   # for go-based tools like subfinder, httpx
