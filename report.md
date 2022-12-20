# Simple Docker

## Part 1. Готовый докер.
* 1.1 Использование команды docker pull для выкачки докера nginx
![./img/1.png](./img/1.png "docker image create")
* 1.2 Проверка наличия докер образа при помощи команды docker images
![./img/2.png](./img/2.png "docker image check")
* 1.3 Запуск докер образа при помощи команды docker run -d image_id
![./img/3.png](./img/3.png "run by image id")
* 1.4 Проверка запуска докера при помощи команды docker ps
![./img/4.png](./img/4.png "check containers")
* 1.5 Просмотр информации о контейнере при помощи команды docker inspect container_id
![./img/5.png](./img/5.png "get info")
* 1.6 Остановка докер образа и проверка, что он остановился
![./img/6.png](./img/6.png "stop and check")
* 1.7 Запуск докера с замапленными портами 80 и 443 через run
![./img/7.png](./img/7.png "run with mapped ports")
* 1.8 Проверка на доступность стартовой страницы nginx по адресу localhost:80 в браузере
![./img/8.png](./img/8.png "check localhost:80")
* 1.9 Перезапуск докера и проверка, что он запустился
![./img/9.png](./img/9.png "restart container")

## Part 2. Операции с контейнером

* 2.1 Вывод содрежимого файла nginx.conf через exec
![./img/10.png](./img/10.png "out nginx.conf")
* 2.2 Создание на локальной машине файла nginx.conf. Настройка в нем по пути /status отдачу страницы статуса сервера
![./img/11.png](./img/11.png "create and set nginx.conf")
* 2.3 Копирование файла nginx.conf внутрь докер образа.
![./img/12v0.png](./img/12v0.png "cp nginx.conf")
* Перезапуск nginx внутри докер образа.
![./img/12.png](./img/12.png "reload nginx")
* Проверка статуса сервера.
![./img/13.png](./img/13.png "check status")
*2.4 Экспорт контейнера в файл. Остановка контейнера
![./img/14.png](./img/14.png "export and stop")
* 2.5 Удаление образа
![./img/15.png](./img/15.png "delete image")
* 2.6 Удаление остановленного контейнера
![./img/16.png](./img/16.png "delete cntr")
* 2.7 Импорт контейнера обратно. Запуск импортированного контейнера. Проверка работоспособности контейнера
![./img/17.png](./img/17.png "import from tar")
* Запуск импортированного контейнера. 
![./img/18.png](./img/18.png "start")
* Проверка работоспособности контейнера
![./img/19.png](./img/19.png "check status")


## Part 3. Мини веб-сервер

* 3.1 Создание образа и запуск контейнера на порту 81
![./img/20.png](./img/20.png "creating image and cntr")
* 3.2 файл мини-сервера и nginx.conf
* [Server file](server/main.c)
* [Nginx conf](server/nginx/nginx.conf)
* 3.3 Проверка nginx.conf и main.c в контейнере
![./img/21.png](./img/21.png "check conf")
![./img/22.png](./img/22.png "check main")
* 3.4 Установка gcc, spawn-dcgi, libfcgi-dev
* Перед этим нужно обновить систему `apt-get update`
![./img/23.png](./img/23.png "download lis")
* 3.5 Запуск сервера
![./img/24.png](./img/24.png "starting server")
* Проверка
![./img/25.png](./img/25.png "check localhost")


## Part 4. Свой докер

* 4.1 Создание докер образа. Запуск контейнера и проверка страницы localhost:80
![./img/26.png](./img/26.png "create docker image and run")
* 4.5 Добавление в файл nginx.conf проксирование странички /status
![./img/27.png](./img/27.png "add /status")
* 4.6 Проверка страницы /status   
![./img/28.png](./img/28.png "check status")
* [Source files](my_docker/)


## Part 5. **Dockle**

* 5.1 Сканирование образа                                  
![./img/29.png](./img/29.png "dockle image" )
* 5.2 Проверка на отсутствие ошибок и предупреждений после исправления образа
![./img/30.png](./img/30.png "dockle image")
* [Source files](dockle/)

## Part 6. Базовый **Docker Compose**
* Проверка на работоспособность после сборки и запуска                
![./img/31.png](./img/31.png "compose and up")
