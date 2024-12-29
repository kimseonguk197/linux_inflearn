# 사용자가 현재 위치해 있는 폴더 경로 출력 명령어
pwd

# 현재위치에서 파일 및 폴더 목록 조회
ls

# 목록조회 자세히
ls -l

# 목록조회 자세히 + 숨김파일까지
ls -al

# 목록조회 자세히 + 숨김파일까지 + 시간순정렬
ls -alt (오래된것부터 : alrt)

# 특정 디렉토리로 이동
cd seonguk_dir

# 상위 디렉토리로 이동
cd .. # 또는 cd ../

# 루트 디렉토리(최상위폴더)로 이동
cd /

# 다시 기존의 seonguk_dir로 돌아오는 방법
cd home/seonguk/seonguk_dir #상대경로(루트경로에서 실행해야 seonguk_dir로 이동)
cd /home/seonguk/seonguk_dir #절대경로(어떤 폴더에서 이 명령어를 실행해도 이동)
cd - #직전폴더로 이동

# 홈경로(최초 로그인했을떄의 폴더위치)로 이동
cd

# 상대경로와 절대경로
cd ../../ #내 위치를 기준으로 2단계 상위폴더로 이동 : 상대경로
cd /home #내 위치와 상관없이 /home폴더로 이동 : 절대경로

# 비어있는 파일 만들기
touch first_file.txt

# 파일내용 조회하기
cat first_file.txt

# 파일내용 상위 10줄 조회
head first_file.txt

# 파일내용 하위 10줄 조회
tail first_file.txt

# 파일내용 하위 n개 조회
tail -5 first_file.txt
# 파일내용 실시간으로 조회
taill -f first_file.txt

# 터미널창에 문자열을 출력
echo "hello world"

# 파일에 echo를 통해 내용을 입력. > : 덮어쓰기모드, >> : 추가모드
echo "hello world1" > second_file.txt
echo "hello world2" >> second_file.txt

# 이전에 실행했던 명령어 기록 조회
history

# rm은 삭제 명령어
rm second_file.txt

# 만약에 삭제할건지 묻는지 여부에 상관없이 강제 삭제
rm -f second_file.txt

# 폴더째 삭제는 -r옵션
rm -r 폴더명

# cp는 복사명령어
# cp 복사대상 복사될파일명
cp second_file.txt third_file.txt
cp -r test ../ #test폴더를 현재폴더의 상위폴더로 폴더째 복사하는명령어

# mv는 이동명령어(잘라서 붙여넣기)
mv first_file.txt ../
mv first_file.txt second_file.txt #이름 변경하기

# grep : 파일 내에서 문자열 찾기
# 현재 폴더에서 (r)모든 티렉토리를 포함하여, (i)대소문자를 구분하지 않고, (n)파일의 라인수까지 출력하여 문자열 검색
grep -rni "world1" .

# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"

# first로 시작하는 파일을 찾는 명령어
find . -name "first*" -type f

# find와 grep 혼용
# 왼쪽에서 찾은 파일대상을 오른쪽으로 넘겨 해당 파일을 대상으로 grep명령어 수행
find . -name "*.txt" | xargs grep -rni "world1"

# {}안에 find에서 찾은 대상이 들어가고, \;은 구문의 끝을 의미
find . -name "*.txt" -exec grep -rni "world1" {} \;

