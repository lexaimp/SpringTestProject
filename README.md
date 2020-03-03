# SpringTestProject
Для запуска проекта необходимо собрать его с пмощью [maven](https://www.apache-maven.ru/install.html)

в консоли, переходим в дирректорию проекта и выполняем команду
  ```bash
  mvn package
  ```
Создастся папка target, а вней war архив с приложением

Для настройки оркужения воспользуемся [docker](https://docs.docker.com/install/) и [docker-compose]https://docs.docker.com/compose/install/

выполняем комманду

  ```bash
  docker-compose -f docker-compose.yml up -d
  ```
параметр -d указывает что контейнеры будут запущенны как демоны(службы)
  
при сборке контейнера с Томкатом war архив автомтичиески задеплотся
  
для доступа к проекту необходимо перейти по адресу http://localhost:8080/SpringTestProject-1.0/  
  Так же в системе должы быть доступны порты: 
  * 5432 - bd 
  * 8080 - tomcat
  * 8081 - adminer

Для остановки и удаления контейнеров выполните
  ```bash
  docker-compose -f docker-compose.yml up -d
  docker system prune -a -f
  ```
