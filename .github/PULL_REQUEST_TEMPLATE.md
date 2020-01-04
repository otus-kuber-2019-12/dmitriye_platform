# Выполнено ДЗ №

- [x] Основное ДЗ
- [x] Задание со *

## В процессе сделано:

- Установлен minikube
- Установлен kubectl
- Создан Dockerfile c nginx, упакован в образ и опубликован в репозитории DockerHub
- Создан манифест web-pod.yaml для разворачивания пода с опубликованным образом nginx
- Создан образ c frontend компонентом онлайн-сервиса HipsterShop и опубликован в репозитории DockerHub
- Создан манифест frontend-pod.yaml для разворачивания пода с опубликованным образом HipsterShop frontend
- Создан манифсет с испрлавелением для запуска образа HipsterShop frontend

## Как запустить проект:

- Под с nginx

```bash
minikube start
kubectl apply -f web-pod.yaml
kubectl port-forward --address 0.0.0.0 pod/web 8000:8000
```

- Под с HipsterShop frontend

```bash
minikube start
kubectl apply -f frontend-pod.yaml // frontend-pod-healthy.yaml для проверки исправленного решения
kubectl port-forward --address 0.0.0.0 pod/web 8080:8080
```

## Как проверить работоспособность:

- Для проверки запуска пода с nginx перейти по ссылке <http://localhost:8000>
- Для проверки запуска пода с HipsterShop frontend перейти по ссылке <http://localhost:8080>

## PR checklist:

- [x] Выставлен label с номером домашнего задания