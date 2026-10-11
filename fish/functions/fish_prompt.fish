function fish_prompt
    set -l normal (set_color normal)

    echo -n -s \
        (set_color $fish_color_user) (whoami) \
        $normal '@' \
        (set_color $fish_color_host) (prompt_hostname) \
        $normal ' ' \
        (set_color $fish_color_cwd) (prompt_pwd) \
        $normal ' ' \
        (set_color $fish_color_command) '>' \
        $normal ' '
end
