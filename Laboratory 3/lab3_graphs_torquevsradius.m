%% Step 9
% Graph of Friction Torque vs. Average Disc Radius R

Rad=[0.065 0.089 0.116];

%%Notice that we're going by runs and not discs

% Run 1 
figure(2);
t1=[1.553 2.330 3.107];
h1=plot(Rad,t1,'ob','MarkerFaceColor','b')
p=polyfit(Rad,t1,1);
xx=linspace(-p(2)/p(1), max(Rad));
f=polyval(p,xx);
hold on;
plot(xx,f,'-k')

% Run 2 
hold on;
t2=[2.330 4.660 5.437];
h2=plot(Rad,t2,'or','MarkerFaceColor','r')
p=polyfit(Rad,t2,1);
xx=linspace(-p(2)/p(1), max(Rad));
f=polyval(p,xx);
hold on;
plot(xx,f,'-k')

% Run 3 
hold on;
t3=[3.624 5.695 8.284];
h3=plot(Rad,t3,'og','MarkerFaceColor','g')
p=polyfit(Rad,t3,1);
xx=linspace(-p(2)/p(1), max(Rad));
f=polyval(p,xx);
hold on;
plot(xx,f,'-k')


% Run 4 
hold on;
t4=[4.660 6.213 9.838];
h4=plot(Rad,t4,'ok','MarkerFaceColor','y')
p=polyfit(Rad,t4,1);
xx=linspace(-p(2)/p(1), max(Rad));
f=polyval(p,xx);
hold on;
plot(xx,f,'-k')
axis([0 0.13 0 10]);

% legends and labels and title
legend([h1 h2 h3 h4],{'Run 1','Run 2','Run 3','Run 4'},'Location','northwest');
xlabel('Average Disc Radius, R (m)')
ylabel('Friction Torque, T (N.m)')
title('Graph of Friction Torque vs. Average Disc Radius')

print('-f2','-dpng')
