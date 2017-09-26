#numeric이 아닌 integer로 하려면 숫자 옆에 대문자 L을 입력하면 됨
#ex) 1L 

int<-1L
int
str(int)  #str 구조 분석 = structure


# c = combine 묶기

var1<-c(1,2,5,7,8)
var1

# : = 컬럼 1 to 5

var2<-c(1:5)
var2

# 단순히 1:5 도 가능
1:5

# seq(a,b) = sequence a부터 b까지
var3<-seq(1,5)
var3

#콘솔창 청소 단축키 Ctrl + L

var4<-seq(1,10, by=2)
#by=a , a개씩 뛰어서
var4

var1+1
#모든 vactor 에 1을 더함

#[a] = index 몇 번째
var1[3] #var1의 3번째 vactor

var1
var2<-c(1,2)
var2
var1 + var2
#오류가 뜨지만 계산은 됨, var2에 vactor 2개가 반복적으로 더해짐
#warning = 실행은 되지만 경고
#error = 실행자체가 안됨

var1+2
var1
#var1+2에 대한 결과가 var1에 담기지 않음
#새변수 지정(varr1<-var1+2)
#또는 기존변수 덮어쓰기(var1<-var1+2) 로 변수 저장 가능

length(var1)
#length 변수의 길이를 알고 싶을 때 사용

# rep(a,b) = repeat a를 b번 반복
temp3<-rep(1,5)
temp3

#문자 입력시에는 문자 앞 뒤에 따옴표(') 또는 쌍따옴표(")를 입력
char1<-'a'
char2<-'text'
char3<-'hello world'
char1
char2
char3
#변수명과 문자의 구분을 위하여 '', ""를 사용(둘다 써도 됨)
a<-1
b<-a
b
b<-"a"
b

#문자와 숫자를 같이 썼을 땐?
d<-c(1,"1")
d # 문자로 들어가 있음 <- vactor는 모든 자료가 같아야 함
as.numeric('a') #<- a를 숫자로 바꾸면 NA로 되면서 정보가 사라짐
#따라서 numeric 이 아닌 character가 되는 것


#함수를 배워보자
x<-c(1,2,3)
x

mean(x)
max(x)
min(x)
sum(x)
#함수의 결과도 반드시 변수명을 지정해 보관해야 남는다


char4<-c("Hello!", "world", "is", "good!")
char4

#paste 문장 붙여 넣기
paste(char4, collapse="_")
#collapse="_" _를 넣어서 붙이기
paste_char4<-paste(char4, collapse="_")
paste_char4

#패키지 설치 install.packages("패키지명")
#패키지 불러오기 Library(패키지명)

install.packages("ggplot2")
library(ggplot2)

str(iris)

ggplot(iris, aes(x=Sepal.Length, y=Petal.Width))+geom_point()
#ggplot 내 iris 데이터를 활용하였음(기존 데이터)

x<-c("a", "a", "b", "c")
x
qplot(x)
#빈도로 나타냄

qplot(data=mpg, x=hwy)

#qplot = 바로 데이터를 보여줄 수 있는 명령어
#ggplot 레이어를 겹처 만들 수 있도록 하는 명령어

qplot(data=mpg, x=cty)
qplot(data=mpg, x=drv,y=hwy)
qplot(data=mpg,x=drv,y=hwy,geom="line") #geom <- 그래프 표시 방법
qplot(data=mpg, x=drv, y=hwy, geom="boxplot")
qplot(data=mpg, x=drv, y=hwy, geom="boxplot", colour=drv) #colour 변수별 색 변경

qplot(data=mpg, x=hwy, bins=10) #bins=10 10개로 표시
qplot(data=mpg, x=hwy, binwidth=5) #binwidth=5 5 단위로 표시


#연습문제
score1<-c(50,60,70,80,90) #score1<-seq(50,60,by=10) 도 가능
score2<-c(mean(score1),max(score1), min(score1))
score2

#데이터 프레임 만들기
english<-c(90,80,60,70)
english
math<-c(50,60,100,20)
math
midterm<-data.frame(english,math) #data.frame(변수명들) <- 프레임화
midterm

#항상 구조 확인할 것
str(midterm)
#obs : 행 , variables : 열

midterm$english #midterm에서 english 변수만 보자
english
english2<-midterm$english #데이터 프레임에서 백터화 하
english2

#데이터 프레임화는 vactor의 변수가 배수이거나 동일한 길이여야함

#각 과목별 평균 내보기
mean(midterm$english)

#한번에 만들기
r_midterm<-data.frame(english, math, class=c(1,1,2,2))
r_midterm

fru<-c("사과","딸기","수박")
price<-c(1800,1500,3000)
sales<-c(24,38,13)
store<-data.frame(fru,price,sales)
store

fru_add<-c(fru,"평균")
price_add<-c(price,mean(price))
sales_add<-c(sales,mean(sales))
store_mean<-data.frame(fru_add,price_add,sales_add)
store_mean

getwd() #working directory 확인
#setwd("경로") 파일 불러오기

#readxl 패키지 설치/불러오기
install.packages("readxl")
library(readxl)

setwd("c:/Users/Daehoon/Documents/R study/study-group/doitR/gangbuk/sep-2017/chapter03_04")
getwd()
df_exam<-read_excel("excel_exam.xlsx") #read_excel 함수명
df_exam
head(df_exam,3)

#col_names=F, 열이름을 보이지 말라
#sheet=3, 3번째 시트를 불러오라
#stringsAsFactors=F, 변수명을 factor로 불러오지마라, character로 불러와라
#csv 파일 불러오려면 read.csv 함수명 사용
#csv파일로 저장하기 write.csv(midterm, file="midterm.csv") midterm.csv 파일로 만들어라
#RData 파일로 저장하기 save(midterm, file="midterm.rda") midterm.rda 파일로 만들어라
#csv는 변수명을 지정해서 저장해야함
#df_csv_exam<-read.csv("midterm.csv")
#Rdata는 기존 저장시 사용했던 변수명을 그대로 사용함
#load("midterm.rda")
#메모리에서 삭제할 시, rm(변수명)으로 삭제 가능

?save #?=help // save에 관한 도움말 표시
#save.image() 현재 워크스페이스 저장