if status is-interactive
    # remove greeting
    set -g fish_greeting
    
    # force the shell to be in english for my sanity
    set -gx LANG en_US.UTF-8

    # map ctrl+backspace to remove previous word
    bind \cH backward-kill-word

    # enable direnv
    if type -q direnv
        direnv hook fish | source
    end

    # enable starship prompt
    if type -q starship
        starship init fish | source
    end
end
