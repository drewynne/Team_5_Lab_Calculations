%% Step 8
% Graph of friction torque vs. axial load P

P=[48.314 97.364 146.414 195.464];

% Disc 1 F1 mclaren
figure(1);
T1=[3.107 5.437 8.284 9.838];
h1=plot(P,T1,'ob','MarkerFaceColor','b');
p=polyfit(P,T1,1);
xx=linspace(-p(2)/p(1), max(P));
f=polyval(p,xx);
hold on;
plot(xx,f,'-k');
axis([0 200 0 12]);

% let p1 be line of best fit 1
p1=p;


% Disc 2 blackman's bay
hold on;
T2=[2.330 4.660 5.695 6.213];
h2=plot(P,T2,'or','MarkerFaceColor','r');
p=polyfit(P,T2,1);
xx=linspace(-p(2)/p(1), max(P));
f=polyval(p,xx);
hold on;
line2=plot(xx,f,'-k');

% let p2 be line of best fit 2
p2=p;


% Disc 3 mr. wynne
hold on;
T3=[1.553 2.330 3.624 4.660];
h3=plot(P,T3,'og','MarkerFaceColor','g');
p=polyfit(P,T3,1);
xx=linspace(-p(2)/p(1), max(P));
f=polyval(p,xx);
hold on;
line3=plot(xx,f,'-k');

% let p3 be line of best fit 3
p3=p;

% legends and labels and title
legend([h1 h2 h3],{'Disc 1','Disc 2','Disc 3'},'Location','northwest');
xlabel('Axial Force, P (N)')
ylabel('Friction Torque, T (N.m)')
title('Graph of Friction Torque vs. Axial Force')

print('-f1','-dpng')

% Gradients of line of best fit

m1=p1(1)
m2=p2(1)
m3=p3(1)

%% Graph of Gradient m agaisnt average radius

figure(3);
m=[m3 m2 m1];
r=[0.0650 0.0890 0.1160];
h4=plot(r,m,'or','MarkerFaceColor','r');
p=polyfit(r,m,1)
xx=linspace(-p(2)/p(1), max(r));
f=polyval(p,xx);
hold on;
line4=plot(xx,f,'-k');

xlabel('Average Disc Radius, R (m)');
ylabel('Gradient, m');
title('Graph of Gradient against Average Disc Radius');

% eq of line
coefficient_of_friction=p(1)

print('-f3','-dpng')



