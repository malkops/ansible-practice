# Домашнее задание к занятию 1 «Введение в Ansible»

## Подготовка к выполнению

1. Установите Ansible версии 2.10 или выше.

![ansible_version](https://github.com/malkops/ansible-practice/assets/44001733/8de4c491-c38b-4956-9616-9499e100b147)

2. Создайте свой публичный репозиторий на GitHub с произвольным именем. - _**https://github.com/malkops/ansible-practice**_
3. Скачайте [Playbook](./playbook/) из репозитория с домашним заданием и перенесите его в свой репозиторий. - _**netology/08-ansible-01-base/playbook**_

## Основная часть

1. Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте значение, которое имеет факт `some_fact` для указанного хоста при выполнении playbook.

![1](https://github.com/malkops/ansible-practice/assets/44001733/7190a06a-5821-408f-acf0-66fe11de6a61)

2. Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на `all default fact`.

![2](https://github.com/malkops/ansible-practice/assets/44001733/2c0edf6f-2aa2-4f0d-8563-c2ba1ee25010)

3. Воспользуйтесь подготовленным (используется `docker`) или создайте собственное окружение для проведения дальнейших испытаний.

![3](https://github.com/malkops/ansible-practice/assets/44001733/5e2d409e-501c-48f8-a060-d5efd6224f13)

4. Проведите запуск playbook на окружении из `prod.yml`. Зафиксируйте полученные значения `some_fact` для каждого из `managed host`.

![4](https://github.com/malkops/ansible-practice/assets/44001733/31def0fb-7215-48bc-b820-425671d6128f)

5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились значения: для `deb` — `deb default fact`, для `el` — `el default fact`.

![5](https://github.com/malkops/ansible-practice/assets/44001733/ca8a9eeb-37fe-49ae-bf8a-fcdac9526e1c)

6. Повторите запуск playbook на окружении `prod.yml`. Убедитесь, что выдаются корректные значения для всех хостов.

![6](https://github.com/malkops/ansible-practice/assets/44001733/86e67e3a-62e2-41d9-8cf6-1b8f5a6f269e)

7. При помощи `ansible-vault` зашифруйте факты в `group_vars/deb` и `group_vars/el` с паролем `netology`.
![7](https://github.com/malkops/ansible-practice/assets/44001733/253bc82c-8754-43eb-82ca-95feee02bc45)

8. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь в работоспособности.

![8](https://github.com/malkops/ansible-practice/assets/44001733/0b121ba7-355c-45e9-b414-32b3bf50ca78)

9. Посмотрите при помощи `ansible-doc` список плагинов для подключения. Выберите подходящий для работы на `control node`.

![9](https://github.com/malkops/ansible-practice/assets/44001733/45f114de-bf39-4b7b-a4bb-d204ca8abd24)

10. В `prod.yml` добавьте новую группу хостов с именем  `local`, в ней разместите localhost с необходимым типом подключения.

![10](https://github.com/malkops/ansible-practice/assets/44001733/13c8582f-49e0-48b7-a138-a0c61ef2584a)

11. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь, что факты `some_fact` для каждого из хостов определены из верных `group_vars`.

![11](https://github.com/malkops/ansible-practice/assets/44001733/115b7414-cccc-4baf-8a1d-a55e33d27eb7)

12. Заполните `README.md` ответами на вопросы. Сделайте `git push` в ветку `master`. В ответе отправьте ссылку на ваш открытый репозиторий с изменённым `playbook` и заполненным `README.md`. - _**https://github.com/malkops/ansible-practice/blob/master/netology/08-ansible-01-base/README.md**_

## Необязательная часть

1. При помощи `ansible-vault` расшифруйте все зашифрованные файлы с переменными.

![13](https://github.com/malkops/ansible-practice/assets/44001733/337f0528-0a14-4376-aee9-e112ed5693d1)

2. Зашифруйте отдельное значение `PaSSw0rd` для переменной `some_fact` паролем `netology`. Добавьте полученное значение в `group_vars/all/exmp.yml`.

![14](https://github.com/malkops/ansible-practice/assets/44001733/20832a9e-4939-4e8f-8874-24d6ddff36a9)

3. Запустите `playbook`, убедитесь, что для нужных хостов применился новый `fact`.
![15](https://github.com/malkops/ansible-practice/assets/44001733/db0565ed-90b5-4fe0-8fea-0478ff6b2892)

4. Добавьте новую группу хостов `fedora`, самостоятельно придумайте для неё переменную. В качестве образа можно использовать [этот вариант](https://hub.docker.com/r/pycontribs/fedora).

![16](https://github.com/malkops/ansible-practice/assets/44001733/15b40608-139f-4812-964e-0bb68ee00a2d)

5. Напишите скрипт на bash: автоматизируйте поднятие необходимых контейнеров, запуск ansible-playbook и остановку контейнеров. - _**netology/08-ansible-01-base/provision.sh**_

![17](https://github.com/malkops/ansible-practice/assets/44001733/54cd1e26-4349-4d29-8ec9-d3d38e93d2bb)

![18](https://github.com/malkops/ansible-practice/assets/44001733/e6074d87-4f52-470f-a989-72e4e5e7882c)

6. Все изменения должны быть зафиксированы и отправлены в ваш личный репозиторий. - _**Зафиксированы.**_
