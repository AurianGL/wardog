function check_docker
    if not pgrep -x Docker >/dev/null
        echo "Starting Docker..."
        open --background -a Docker
        # Wait until Docker is running
        while not docker info >/dev/null 2>&1
            sleep 1
        end
    end
end
