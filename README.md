# viktoriya666_infra
viktoriya666 Infra repository
HW 6.
Перейти в корень репозитория viktoriya666_infra.

Создание виртуалки:

gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=startup.sh

Создание правила:
gcloud compute firewall-rules create default-puma-server \
  --allow=tcp:9292 \
  --target-tags=puma-server \
  --description="access to server puma"

testapp_IP = 35.189.216.81 
testapp_port = 9292

В своем браузере зайти на http://35.189.216.81:9292, в окне браузера увидите интерфейс вашего приложения.
