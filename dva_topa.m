% Definisanje konstanti
h1 = 40;
h2 = 10;
d  = 20;
theta = atan(h/d);
g = 9.81;

h = h1-h2;
v1=10;
v2=15;

% Definisanje početnih pozicija

x1= 0;
y1= h1;
x2= d;
y2= h2;


figure;
hold on

% Plotovanje pozicija đuladi kroz vreme

for t=0:0.01:100
        x1 = v1*cos(theta)*t;
        y1 = h1-g*t*t/2-v1*sin(theta)*t
        plot(x1,y1,'r.');
        x2=d-v2*cos(theta)*t
        y2=h2+v2*sin(theta)*t-g*t*t/2
        plot(x2,y2,'b.');
        if x1==x2 && y1==y2
            plot(x1,y2,'x')
        end

end

xlim([0 20])
ylim([-10 50])