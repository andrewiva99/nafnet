### Информация
[Оригинальная статья проекта NAFNet](https://paperswithcode.com/paper/simple-baselines-for-image-restoration)

[Репозиторий проекта NAFNet](https://github.com/megvii-research/NAFNet)


### Запуск проекта с DockerHub

1. Откройте Docker
2. Скачайте образ 
```
docker pull andreybg/nafnet
```
3. Создайте и запустите новый контейнер из образа
```
docker run andreybg/nafnet
```
4. Если тест пройден, то результат работы сохранен в  /NAFNet/noisy1.png

![11](https://user-images.githubusercontent.com/112372506/233912727-f7ffc309-d279-4232-bab9-6706c170c637.jpg)

 
### Локальная сборка образа
1. Склонировать репозиторий 

```
git clone https://github.com/andrewiva99/nafnet.git
cd nafnet
```

2. Запустите Docker и соберите образ

```
docker build -t nafnet .
```

3. Запустите контейнер

```
docker run nafnet
```

#### Исходное изображение и результат можно скопировать в <folder_path>
   
   Для этого узнайте CONTAINER ID 
   
   ```
   docker ps -a
   ```
   А затем
   ```
   docker cp <container_id>:/NAFNet/noisy.png <folder_path>
   ```
   ```
   docker cp <container_id>:/NAFNet/noisy1.png <folder_path>
   ```
