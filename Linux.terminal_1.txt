Первое ДЗ 
Linux terminal (GitBash) commands

1) Посмотреть где я
Vadim@MacBook-Pro-newowner ~> pwd
2) Создать папку
Vadim@MacBook-Pro-newowner ~/terminal777> mkdir Linux_Terminal_1
3) Зайти в папку
Vadim@MacBook-Pro-newowner ~/terminal777> cd Linux_Terminal_1
4) Создать 3 папки
Vadim@MacBook-Pro-newowner ~/t/Linux_Terminal_1> mkdir {folder1,folder2,folder3}
5) Зайти в любоую папку
Vadim@MacBook-Pro-newowner ~/t/Linux_Terminal_1> cd folder1/
6) Создать 5 файлов (3 txt, 2 json)
Vadim@MacBook-Pro-newowner ~/t/L/folder1> touch {file1.txt,file2.txt,file3.txt,file4.json,file5.json}
7) Создать 3 папки
Vadim@MacBook-Pro-newowner ~/t/L/folder1> mkdir {folder4,folder5,folder6}
8. Вывести список содержимого папки
Vadim@MacBook-Pro-newowner ~/t/L/folder1> ls -la
9) + Открыть любой txt файл
Vadim@MacBook-Pro-newowner ~/t/L/folder1> cat >> file1.txt
10) + написать туда что-нибудь, любой текст.
sheet1
11) + сохранить и выйти.
control+C
12) Выйти из папки на уровень выше
Vadim@MacBook-Pro-newowner ~/t/L/folder1> cd ../
—
13) переместить любые 2 файла, которые вы создали, в любую другую папку.
Vadim@MacBook-Pro-newowner ~/t/Linux_Terminal_1 [1]> mv /Users/Vadim/terminal777/Linux_Terminal_1/folder1/file1.txt /Users/Vadim/terminal777/Linux_Terminal_1/folder1/file2.txt folder2/
14) скопировать любые 2 файла, которые вы создали, в любую другую папку.
Vadim@MacBook-Pro-newowner ~/t/Linux_Terminal_1> cp /Users/Vadim/terminal777/Linux_Terminal_1/folder1/file4.json /Users/Vadim/terminal777/Linux_Terminal_1/folder1/file5.json folder2/
15) Найти файл по имени
Vadim@MacBook-Pro-newowner ~/t/Linux_Terminal_1 [SIGINT]> find . -name file1.txt
16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает.
Есть несколько вариантов просмотреть содержимое файла:
Vadim@MacBook-Pro-newowner ~/t/L/folder2> cat file1.txt

Vadim@MacBook-Pro-newowner ~/t/L/folder2> nl file1.txt
Команда nl работает как и cat, но выводит еще и номера строк в столбце слева.

Vadim@MacBook-Pro-newowner ~/t/L/folder2 [SIGINT]> less file1.txt
Команда less выводит содержимое файла, но отображает его только в рамках текущего окна в режиме просмотра. Не  выводит текст файла в терминале.

Vadim@MacBook-Pro-newowner ~/t/L/folder2> more file1.txt
Команда more выводит файл в терминале в режиме просмотра, но в отличие от less оставляет текст файла в терминале

Vadim@MacBook-Pro-newowner ~/t/L/folder2> head file1.txt
Команда head выводит первые 10 строк файла. С помощью опции n можно задать количество строк, которое нужно вывести.
Например команда head -2 file1.txt выведет первые 2 строки файла.

Vadim@MacBook-Pro-newowner ~/t/L/folder2> tail file1.txt
Команда tail выводит последние 10 строк файла. С помощью опции n можно задать количество строк, которое нужно вывести (считается от последней строки).

17) вывести несколько первых строк из текстового файла
head -2 file1.txt
18) вывести несколько последних строк из текстового файла
tail -2 file1.txt
19) просмотреть содержимое длинного файла (команда less) изучите как она работает.
Vadim@MacBook-Pro-newowner ~/t/L/folder2 [SIGINT]> less file1.txt
Прокручивать текст файла клавишами w и z 
Поиск текста внутри файла /
Просмотр списка доступных команд h
Выйти из режима просмотра q
20) вывести дату и время
Vadim@MacBook-Pro-newowner ~/t/L/folder2> date
=========

Задание *
1) Отправить http запрос на сервер.
http://162.55.220.72:5005/terminal-hw-request
Vadim@MacBook-Pro-newowner ~/t/L/folder2> curl http://162.55.220.72:5005/terminal-hw-request
2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
Vadim@MacBook-Pro-newowner ~/t/Linux_Terminal_1> vim script.sh
cd ../
mkdir Linux_Terminal_2
cd Linux_Terminal_2
mkdir {folder1,folder2,folder3}
cd folder1/
touch {file1.txt,file2.txt,file3.txt,file4.json,file5.json}
mkdir {folder4,folder5,folder6}
ls -la
mv file1.txt file2.txt ../folder2
