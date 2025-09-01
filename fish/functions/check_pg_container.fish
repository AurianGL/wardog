function check_pg_container
    cd ~/code/Pennylane/jeancaisse
    if not docker ps --format '{{.Names}}' | grep -q pgsql_container_name
        echo "Starting PostgreSQL container..."
        docker-compose up -d
    end
end
