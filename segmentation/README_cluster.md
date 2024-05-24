## Fork

Этот репозиторий представляет из себя Fork-версию репозитория ViT-Comer
Склонировать его можно по команде:
```
git clone https://github.com/ArtakOvakimyan/ViT-CoMer
```

Перейдите в директорию segmentation:
```
cd ViT-CoMer/segmentation
```

Набор инструкций по установке зависимостей находится в скрипте install.sh.<br/>
Там же создаётся и активируется виртуальное окружение.<br/>
Запустите команду:
```
bash install.sh
```

## Скачайте набор данных ade20k:
```
python3.9 dataroots/ade/ade20k.py
```

## В файлах конфигурации configs/ade20k ссылки на предобученные модели заменены веб-ссылками:

## Обучение

Чтобы запустить обучение ViT-CoMer-T + UperNet на ADE20k в узле с 3-мя GPU A-100 через sbatch напишите:

```shell
bash my_train.sh
```