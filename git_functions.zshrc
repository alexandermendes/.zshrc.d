git_pr() {
    local origin=$(git config remote.origin.url)
    local base=$(echo "$origin" | sed "s/git@\(.*\):\(.*\)/https:\/\/\1\/\2/" | sed "s/\.git$//")
    echo $base
    local branch=$(git symbolic-ref --quiet --short HEAD )
    open "$base/pull/new/$branch"
}
