function [] = dogvsrabbit()
%dog velocity < rabbit velocity

x=0:.1:10;
r=4;
d=3;
vd=10;
vr=13;
t1=(((vr/vd)*(sqrt(r^2+d^2)))+r)/(1-(vr^2/vd^2));
t2=((sqrt(r^2+d^2)-r)/(1+(vr/vd)))*(x/d).^(1+(vr/vd));
t3=((sqrt(r^2+d^2)+r)/(1-(vr/vd)))*(x/d).^(1-(vr/vd));

y=(.5*(t2-t3))+t1;
plot(x,y);

%dog velocity = rabbit velocity
vd=10;
vr=10;
t4=-((sqrt(r^2+d^2)+r)/2)*log(x./d);
t5=-((sqrt(r^2+d^2)-r)/4)*(1-(x.^2/d^2));
y=t4+t5;
figure,
plot(x,y);

%dog velocity > rabbit velocity
vd=13;
vr=10;
t1=(((vr/vd)*(sqrt(r^2+d^2)))+r)/(1-(vr^2/vd^2));
t2=((sqrt(r^2+d^2)-r)/(1+(vr/vd)))*(x/d).^(1+(vr/vd));
t3=((sqrt(r^2+d^2)+r)/(1-(vr/vd)))*(x/d).^(1-(vr/vd));

y=(.5*(t2-t3))+t1;
figure,
plot(x,y);




end

