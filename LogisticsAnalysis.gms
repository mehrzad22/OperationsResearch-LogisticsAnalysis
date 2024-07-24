************************************* sets
sets


i /1*20/
j /1*8/
k /1*3/        ;

************************************* data
Parameter f_cost(j) /1        1175
2         587.5
3         822.5
4         587.5
5         1175
6         1057.5
7         705
8         587.5/;

$call gdxxrw.exe D:/Uni/4/OR-1/project/OR1_Project_Data_.xlsx par=mf_cost rng=mf_cost!A1:D9
Parameter mf_cost(j,k);
$gdxin OR1_Project_Data_.gdx
$load mf_cost
$gdxin

$call gdxxrw.exe D:/Uni/4/OR-1/project/OR1_Project_Data_.xlsx par=cf_cost rng=cf_cost!A1:I21
Parameter cf_cost(i,j);
$gdxin OR1_Project_Data_.gdx
$load cf_cost
$gdxin

$call gdxxrw.exe D:/Uni/4/OR-1/project/OR1_Project_Data_.xlsx par=CP rng=return_request!A1:D21
Parameter CP(i,k);
$gdxin OR1_Project_Data_.gdx
$load CP
$gdxin


************************************* variables

variables z          ;

integer variables y(k,j),w(k,j) ,n(j);

binary variables x(i,j),kk(j) ;



**************************************
equations q1,q2,q3(j),q4,q5(j),q6(j),q7(j),q8(i),q9(j),q10(j),q11(j),q12(i,j)  ;

q1 .. z =e= 2*sum((i,j), (CP(i,'1')+CP(i,'2')+CP(i,'3'))*x(i,j)*cf_cost(i,j))
              +sum((k,j), (y(k,j)+w(k,j))*mf_cost(j,k))
              +sum(j , n(j)*f_cost(j))   ;

q2    .. sum(j,n(j)) =l= 269 ;
q3(j) .. n(j) =l= 130 ;
q4(j) .. sum(i,(CP(i,'1')+CP(i,'2')+CP(i,'3'))*x(i,j)) =l= 5*sum(k,y(k,j)) ;
q5(j) .. sum(i,(CP(i,'1')+CP(i,'2')+CP(i,'3'))*x(i,j)) =l= (3.3333)*sum(k,w(k,j)) ;
q6(j) .. sum(i,(8*CP(i,'1')+10*CP(i,'2')+12*CP(i,'3'))*x(i,j)) =l= (117.5)*n(j) ;
q7(j) .. n(j) =l= 130*sum(i,x(i,j));
q8(i) .. sum(j,x(i,j)) =e= 1 ;
q9(j) .. sum(k,y(k,j) + w(k,j))=e=sum(i,(CP(i,'1')+CP(i,'2')+CP(i,'3'))*x(i,j)) ;
q10(j) .. n(j) =l= 130*kk(j);
q11(j) .. n(j) =g= kk(j) ;
q12(i,j) .. x(i,j) =g= 0;

**************************************



option mip=cplex;

Model ttt /all/ ;

solve ttt using mip minimizing z ;

display  z.l ;









