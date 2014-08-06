function fish_prompt --description "Write out Marks' custom prompt"

  # Just calculate these once, to save a few cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end

  if not set -q __fish_prompt_normal
    set -g __fish_prompt_normal (set_color normal)
  end

  switch $USER

    case root # root still runs bash, so this isn't really necessary

    if not set -q __fish_prompt_cwd
      if set -q fish_color_cwd_root
        set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
      else
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
      end
    end

    # echo -n -s "$USER" @ "$__fish_prompt_hostname" ' ' "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" '# '
    echo -n -s "$__fish_prompt_normal" [ "$USER" @ "$__fish_prompt_hostname" _ "$__fish_prompt_cwd" "$PWD" "$__fish_prompt_normal" ']# '

    case '*'

    if not set -q __fish_prompt_cwd
      set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end

    echo -n -s $__fish_prompt_cwd [ $USER ' '
    set_color cyan
    echo -n -s $__fish_prompt_hostname ' '
    set_color blue
    prompt_pwd | tr -d '\n'
    echo -n -s $__fish_prompt_cwd ]
    set_color red
    __fish_git_prompt | tr -d ' '
    echo -s $__fish_prompt_cwd '{ ' $__fish_prompt_normal

  end
end
