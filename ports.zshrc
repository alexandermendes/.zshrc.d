# Kill all processes on a port
killport() {
    if [ $# -eq 0 ]; then
        printf "${RED}Invalid port${NC}\n"
        return
    fi

    pids=$(lsof -t -i:$1)
    len=$(lsof -t -i:$1 | wc -l | xargs)

    if [ "$len" != 0 ]; then
        kill -9 $(lsof -t -i:$1)
    fi

    printf "${GREEN}Killed $len process(es) on port $1${NC}\n"
}

alias kp=killport
