check_and_rename_env:
	  @if [ -e ".env" ]; then \
        echo "env file exists."; \
      else \
      	cp .env_example .env | \
        echo "File does not exist."; \
      fi

sock_up: check_and_rename_env
	docker compose up

sock_down:
	docker compose down
