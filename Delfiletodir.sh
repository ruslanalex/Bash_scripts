#!/bin/bash

read -p "Введите путь к директории: " DELDIR

if [ -e $DELDIR ]
        then
                echo 'Указанная директория найдена'
                cd $DELDIR
                echo 'Произвожу удаление'
                rm -v *.bak *.tmp *.backup
                echo 'Удаление завершено успешно'
        else
   echo 'Указанная директория не найдена! Выполнение остановлено'
                exit 2
fi
