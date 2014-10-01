function fish_right_prompt
    set_color $fish_color_cwd
    echo -n "❮"
    set_color blue
    date "+ %m/%d %I:%M"
    set_color $fish_color_cwd
end
