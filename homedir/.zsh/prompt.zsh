NORD_PROMPT_SYMBOL="❯"


function nord_get_pwd() {
    echo -n "${PWD/$HOME/~}"
}

function nord_get_branch() {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ "$branch" != "" ]; then
        echo -n " on %F{red}  ${branch}"
    fi
}

function nord_get_git_status() {
    local string_builder="["
    local staged=$(git status --porcelain 2>/dev/null | grep -e "^[MADRCU]")
    local unstaged=$(git status --porcelain 2>/dev/null | grep -e "^[MADRCU? ][MADRCU?]")

    if [[ -n ${unstaged} ]]; then
        string_builder+="?"
    fi
    if [[ -n ${staged} ]]; then
        string_builder+="!"
    fi

    string_builder+="]"
    if [ "$string_builder" != "[]" ]; then
        echo -n "${string_builder}"
    fi
}


function precmd {
    PROMPT=" %F{green}$(nord_get_pwd)$(nord_get_branch)$(nord_get_git_status)%f
 %F{green}❯ %f"
}
