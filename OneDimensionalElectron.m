
%inital position and velocity set to 0
x = zeros(5,1);
v = zeros(5,1);
vd = 0;

%charge of an electron in coulombs
q = 1.60*10^-19;
m = 9.10938215e-31;


for (t = 1:1000)
dv = q/m;
v = v + dv;
x = x + v;
vt(:,t) = v(:);

vd = mean(vt);

r = rand(1,5);
ir = r <= 0.05;
v(ir) = 0;

% if(rand<0.05)
%     v=0;
% end

subplot(1,2,1)
plot(t,x,'xr'); hold on
xlabel('time');
ylabel('x - position');
subplot(1,2,2);
plot(t,v,'xr'); hold on
plot(t,vd,'og');
pause(0.01)

end