sx=[
0
0.692307692
0.769230769
0.840909091
0.863636364
0.875
1.142857143
1.263157895
1.37037037
1.678571429
2
2.5
2.533333333
2.684210526
2.8
2.916666667
2.925925926
4.333333333
4.4375
4.444444444
6.714285714
9
12

];
py=[
74.5
68
67.4
68.62162162
66.15789474
66.5
67.0625
65.70833333
65.93243243
67.12765957
70
73.8
67.23684211
66.88235294
67.96428571
65.87142857
66.74050633
72.30769231
73.3943662
71.6
71.39361702
72.22222222
72.3125

];
x=0:0.01:10;
%y=interp1(sx,py,x');    %用分段线性插值完成第二步工作
%plot(sx,sy)
y=spline(sx,py,x'); 

plot(sx,py,'+',x,y)             %用三次样条插值完成第二步工作
grid on