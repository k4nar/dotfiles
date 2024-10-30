if status is-interactive
    # aliases for git
    abbr -a -- gc 'git commit'
    abbr -a --set-cursor='%' -- gcm 'git commit -m "%"'
    abbr -a -- ga 'git add'
    abbr -a -- gau 'git add -u'
    abbr -a -- gs 'git switch'
    abbr -a -- gsc 'git switch -c'
    abbr -a -- gst 'git status'
    abbr -a -- gp 'git push'
    abbr -a -- gpf 'git push -f'
    abbr -a -- gd 'git diff'
    abbr -a -- gds 'git diff --staged'
    abbr -a -- grb 'git rebase'
    abbr -a -- grbc 'git rebase --continue'
    abbr -a -- grba 'git rebase --abort'
    abbr -a -- grbm 'git rebase origin/main'
    abbr -a -- gcp 'git cherry-pick'
    abbr -a -- gcpc 'git cherry-pick --continue'
    abbr -a -- gcpa 'git cherry-pick --abort'
    
    # require gh (github-cli)
    abbr -a -- gpr 'gh pr create'

    # git checkout + branch picker
    function gcd
        if count $argv > /dev/null
            git checkout $argv
        else
            git checkout (git branch --sort='-authordate:iso8601' | fzf | tr -d '[:space:]')
        end
    end
end
