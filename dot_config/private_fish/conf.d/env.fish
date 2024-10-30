fish_add_path --append ~/.local/bin

if test "$TERM_PROGRAM" = vscode
    # if we are already in vscode, use code as the editor
    set -gx EDITOR code --wait
else
    set -gx EDITOR nvim
end
