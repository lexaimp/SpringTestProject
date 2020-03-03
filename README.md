# SpringTestProject
Для запуска проекта необходимо собрать его с помощью [maven](https://www.apache-maven.ru/install.html)

в консоли, переходим в директорию проекта и выполняем команду
  ```bash
  mvn package
  ```
создастся папка target, а в ней war архив с приложением

для настройки окружения воспользуемся [docker](https://docs.docker.com/install/) и 
[docker-compose](https://docs.docker.com/compose/install/)

выполняем команду

  ```bash
  docker-compose -f docker-compose.yml up -d
  ```
параметр -d указывает что контейнеры будут запущенны как демоны(службы)
  
при сборке контейнера с Томкатом war архив автоматически задеплоится
  
для доступа к проекту необходимо перейти по адресу http://localhost:8080/SpringTestProject-1.0/  
  Так же в системе должны быть доступны порты: 
  * 5432 - bd 
  * 8080 - tomcat
  * 8081 - adminer

для остановки и удаления контейнеров выполните
  ```bash
  docker-compose -f docker-compose.yml down
  docker system prune -a -f
  ```
