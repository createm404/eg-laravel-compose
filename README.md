# Установка Docker:
# Убедитесь, что у вас установлен Docker на вашем компьютере.
# Если нет, то установите для Linux

```bash
curl -fsSL https://test.docker.com -o test-docker.sh
sudo sh test-docker.sh

sudo usermod -aG docker $USER
newgrp docker
```


# Склонируйте репозиторий из GitHub:
```bash
git clone https://github.com/createm404/eg-laravel-compose.git
```

# Перейдите в директорию с загруженным репозиторием:
```bash
cd eg-laravel-compose
```

# Запустите контейнеры с помощью команды
```bash
docker compose up --build -d
```

# После успешного запуска приложение будет доступно по адресу:
```bash
http://localhost:8080/
```
