#data strucuters

#vectors----
v1=c(1,2,3,4,5)
class(v1)
v2= c('A','B','C','D','E')
v2
class(v2)
v3=c(TRUE,FALSE,F,T)
class(v3)
v2[2]
v2[3]
v4=c('A',2,T)
class(v4)
v4
v1[v1==4]=7
v1
v2[v2=='D']='Z'
v2
v5=rnorm(100,mean=60,sd=15)
?rnorm
v5
mean(v5)
sd(v5)
hist(v5)
?hist
break
hist(v5,breaks=15,col=1:15)
hist(v5,breaks = 10)
hist(v5, freq=F,col='green',main='',xlab='Marks',ylab='Density of Counts',xlim=c(0,100),ylim=c(0,0.08))
lines(density(v5),col='red',lty=4,lwd=3)
title(main = 'PUMBA',sub='MBA')
#matrix----
m1=matrix(100:123)
matrix(m1,nrow = 6,ncol = 4,byrow = T,dimnames = NULL)
lenght=matrix(100:123)
(m2=matrix(c(100:123),ncol = 4,byrow = T))
m2[1,2]
m2[1;2, ]
m2[2,]
m2[1:2,]
m2[c(2,6),c(1,4)]
colMeans(m2)
colSums(m2)

#array----
?array
a1=array(100:123,dim=c(4,3,2))
a1
(loc=paste('loc',1:4,sep = '-'))
(product=paste('p',1:3,sep = '@'))
(coy=paste('coy',1:2,sep = '%'))
dimnames(a1)=list(loc,product,coy)
a1
apply(a1,1,sum)
sum(a1)
apply(a1,c(2,3),sum)
apply(a1,c(1,3),sum)
a2=array(200:246,dim=c(4,3,2))
a2
(loc=paste('loc',1:4,sep = '-'))
(product=paste('p',1:3,sep = '@'))
(coy=paste('coy',1:2,sep = '%'))
dimnames(a2)=list(loc,product,coy)
a2
sum(a2)
apply(a2,c(2,3),sum)

#databframe----
(rollno=1:60)
(sname=paste('student',1:60,sep=''))
(gender=sample(c('M','F'),size=60 ,replace=T,prob=c(.6,.4)))
(marks = floor(runif(30,50,100)))
(marks2=ceiling(runif(30,50,100)))
dfl=data.frame(rollno,sname,gender,marks,marks2)
head(dfl,n=60)
tail(dfl)
str(dfl)
class(dfl)
summary(dfl)
dfl$sname
?c
dfl[marks>90&gender=='F',]
dfl[hist(20)]
aggregate(dfl$marks,by=list(dfl$gender),FUN=mean)
aggregate(dfl$marks,by=list(dfl$gender),FUN=max)
pie(x=dfl$marks)
barplot(dfl$marks)
(marks2=
#list----

#factors----
(grades=sample(c('A','B','C','D'),size=30,replace = T,prob=c(.3,.2,.4,.1)))
table(grades)  
class(grades) 
gradesF=factor(grades)
gradesF
gradesF1=factor(grades,ordered = T)
gradesF1
gradesF2=factor(grades,ordered = T,levels=c('D','C','B','A'))
gradesF2
x=1:4
sort(x)
rev(x)
