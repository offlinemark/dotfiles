function fish_right_prompt
    # date "+%m/%d/%y %r"
    set_color $fish_color_cwd
    echo -n "}["
    set_color blue
    date "+%r"
    set_color $fish_color_cwd
    echo "]"
end
