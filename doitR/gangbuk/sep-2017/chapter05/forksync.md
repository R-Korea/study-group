github fork 후 원본과 sync
================

**username 에 github id 변경**

### 1. local로 가져오기

    $ git clone https://github.com/username/study-group

### 2. remote 등록

**remote 확인**

    $ git remote -v
    origin  https://github.com/username/study-group (fetch)
    origin  https://github.com/username/study-group (push)

**upstream 추가 (R-Korea/study-group)**

    $ git remote add upstream https://github.com/R-Korea/study-group

**remote 확인**

    $ git remote -v
    origin  https://github.com/username/study-group (fetch)
    origin  https://github.com/username/study-group (push)
    upstream    https://github.com/R-Korea/study-group (fetch)
    upstream    https://github.com/R-Korea/study-group (push)

### 3. pull upstream

**R-Korea 로 부터 변경 사항을 local 로 가져옴**

    $ git pull upstream master

### 4. push origin

**local 의 변경된 사항을 username/study-group 으로 올림**

    $ git push origin master
