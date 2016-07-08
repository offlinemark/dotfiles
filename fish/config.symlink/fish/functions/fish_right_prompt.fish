function fish_right_prompt
    set_color $fish_color_cwd
    echo -n "❮"
    set_color blue
    date "+ %I:%M"
    set_color $fish_color_cwd
end
