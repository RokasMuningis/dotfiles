NORD_PROMPT_SYMBOL="❯"


function nord_get_pwd() {
    echo -n "${PWD/$HOME/~}"
}

function prompt_nord_setup() {
    autoload -Uz vcs_info
    setopt prompt_subst
}

function nord_get_git() {
    local string_builder=""
    local status_builder="["

    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

    local staged=$(git status --porcelain 2>/dev/null | grep -e "^[MADRCU]")
    local unstaged=$(git status --porcelain 2>/dev/null | grep -e "^[MADRCU? ][MADRCU?]")

    if [[ -n ${unstaged} ]]; then
        status_builder+="?"
    fi
    if [[ -n ${staged} ]]; then
        status_builder+="!"
    fi

    status_builder+="]"


    if [[ -n ${branch} ]]; then
        string_builder+="%f on %F{red}  ${branch}"
    fi

    if [ "$status_builder" != "[]" ]; then
        string_builder+=" ${status_builder}"
    fi

    if [ "$string_builder" != "" ]; then
        echo -n "${string_builder}%f";
    fi;
}


function precmd {
    PROMPT=" %F{green}$(nord_get_pwd)$(nord_get_git)%f
 %F{green}❯ %f"
}

prompt_nord_setup "$@"