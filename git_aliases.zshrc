SRC_GIT_FUNCS='source ~/.zshrc.d/git_functions.zshrc'

git config --global alias.l "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

git config --global alias.a "add"
git config --global alias.co "checkout"
git config --global alias.cob "checkout -B"
git config --global alias.d "diff"
git config --global alias.s "status -s"
git config --global alias.f "fetch"
git config --global alias.b "branch"

git config --global alias.pr "!eval ${SRC_GIT_FUNCS} && git_pr"
git config --global alias.open "!eval ${SRC_GIT_FUNCS} && git_open"
git config --global alias.recent "for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
