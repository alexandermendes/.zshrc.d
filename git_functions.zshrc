git_open() {
    local origin=$(git config remote.origin.url)
    local base=$(echo "$origin" | sed "s/git@\(.*\):\(.*\)/https:\/\/\1\/\2/" | sed "s/\.git$//")
    echo $base
    local branch=$(git symbolic-ref --quiet --short HEAD )
    open "$base${1:-/}"
}

git_pr() {
    local branch=$(git symbolic-ref --quiet --short HEAD)
    git_open "/pull/new/$branch"
}
