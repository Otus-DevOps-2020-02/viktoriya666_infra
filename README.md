# viktoriya666_infra
viktoriya666 Infra repository

HW 5.

Данные для подключения: bastion_IP = 34.77.201.5 someinternalhost_IP = 10.132.0.3

ssh -i ~/.ssh/appuser -A -t appuser@34.77.201.5 ssh 10.132.0.3

Дополнительное задание: Для того, чтобы подключится по алиасу ssh someinternalhost необходимо в файл ~/.ssh/config внести данные:

Host * ForwardAgent yes

Host bastion HostName 34.77.201.5 User appuser IdentityFile ~/.ssh/appuser

Host someinternalhost HostName 10.132.0.3 ProxyJump bastion User appuser IdentityFile ~/.ssh/appuser

Или:
alias someinternalhost="ssh -i ~/.ssh/appuser -t -A appuser@34.77.201.5 ssh 10.132.0.3"
