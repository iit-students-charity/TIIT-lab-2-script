#1 2 5 6 7 8 10 13 16 17 18 22 23 24 25 26 31 34 37 
mkdir lab2
cd lab2
mkdir rep1
cd rep1

#3 12 21 25 26 

echo "<< #1 Создать репозиторий >>"
	git init
echo "<< #2 Проверить состояние, #4 добавит файл в контекст >>"
	echo 111 >> text.txt
	git add text.txt
	git status 
echo "<< #5 создать коммит с комментарием >>"
	git commit -m "1"
echo "<< #6 создать коммит с комментарием, включающий все отслеживаемые файлы >>"
	echo 222 >> text.txt
	git commit -am "2"
echo "<< #7 просмотреть протокол >>"
	git log
echo "<< #8 просмотреть настройки >>"	
	git config
echo "<< #9 убрать файл из контекста >>"
	echo 111 >> text2.txt
	git add text2.txt
	git status
	git reset HEAD
	git status
echo "<< #10 Просмотреть изменения в файле по сравнению с последним коммитом >>"
	echo 333 >> text.txt
	git diff text.txt
echo "<< #11 убрать изменения последнего коммита из файла >>"
	git commit -am "3"
	cat text.txt
	echo " "
	git checkout HEAD^ text.txt
	cat text.txt
	git commit -am "4"
echo "<< #13 добаить в контекст коммита все изменённые и добавленне файлы >>"                   
	git add *
	git commit -m "5"
echo "<< #14 изменить настройки >>"
	git config --global user.email "Chelovek264@gmail.com"
echo "<< #15 изменить имя >>"
	git config --global user.name "ARtoriouSs"
echo "<< #16 просмотреть ветки >>"
	git branch
echo "<< #17 создать ветку >>"
	git branch b1
echo "<< #18 переключится на другую ветку >>"
	git checkout b1
echo "<< #19 создать ветку и сразу переключится на неё >>"
	git checkout -b b2
echo "<< #20 удалить ветку >>"
	git checkout master
	git branch -d b2
echo "<< #22 примержить изменения >>"
	git checkout b1
	echo 444 >> text.txt
	git commit -am "b1-1"
	git checkout master
	git merge b1
echo "<< #23 создать конфликт >>"
	echo 11111 > text.txt
	git commit -am "6"
	git branch b2
	echo 22222 > text.txt
	git commit -am "7"
	git checkout b2
	echo 23332 > text.txt
	git commit -am "b2-1"
	git checkout master
	git merge b2
echo "<< #24 узнать в каком файле конфликт >>"
	git status
echo "<< #27-30 Сделать ребазирование, создать конфликт, устранить его, отменить ребазирование, пропустить конфликтный коммит и перейти к следующему >>"
cd ..
mkdir rep2
cd rep2
	git init
	echo 11111 > text.txt
	git add *
	git commit -m "1"
	git branch b1
	echo 22222 > text.txt
	git commit -am "2"
	git checkout b1
	echo 33333 > text.txt
	git commit -am "b1-1"
	git rebase master
	git rebase --abort
	git rebase master
	echo 33333 > text.txt
	git add *
	git rebase --continue
echo "<< #31 отправить изменения в удалённый репозиторий >>"
	git remote add origin https://github.com/ARtoriouSs/PubRep.git
	git push origin master
echo "<< #32 взять изменения из удалённого репозитория >>"
cd ..
mkdir rep3
cd rep3
	git init
	git remote add origin https://github.com/ARtoriouSs/PubRep.git
	git pull










