if test (uname) = Darwin
    fish_add_path /opt/homebrew/bin
    
    set -gx HOMEBREW_BUNDLE_FILE ~/.config/Brewfile
end
