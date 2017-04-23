function fzf_find -d "fzf source to find file"
    find . -name "*$argv[1]*" | grep -v "/\." | fzf | read entry

    if test -n "$entry"
        commandline $entry
    end
end
