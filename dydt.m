function dydt = dydt(t,in2)
%DYDT
%    DYDT = DYDT(T,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    25-Apr-2023 18:28:21

y2 = in2(2,:);
y3 = in2(3,:);
y4 = in2(4,:);
t2 = T_x(1.0);
t3 = T_x(2.0);
t4 = cos(y3);
t5 = sin(y3);
t6 = y4.^2;
t7 = t4.^2;
t8 = t6.*y3;
t10 = t4.*7.935408e-4;
t11 = t4.*5.012440875e-5;
t14 = t5.*9.44103263688e-4;
t17 = t5.*2.0282813078697e-3;
t18 = t4.*t5.*2.85991929741024e-2;
t9 = sin(t8);
t12 = t7.*7.5919536225e-4;
t19 = -t17;
t20 = -t18;
t13 = -t12;
t15 = t9.*1.5037322625e-6;
t21 = t4.*t9.*4.5551721735e-5;
t22 = t9.*4.71552462057456e-3;
t16 = -t15;
t23 = t11+t13+5.57299569888425e-3;
t24 = 1.0./t23;
dydt = [y2;t24.*(t2.*2.136420552e-2+t10+t14+t20+t22+t2.*t4.*8.596692e-4-2.6196e-5).*(2.5e+1./1.2e+1);t24.*(t2.*5.41466625e-5+t16+t19+t21+t2.*t4.*2.0665125e-4+5.627865e-5).*(-5.0e+1./3.0);y4;t24.*(t3.*2.136420552e-2+t10+t14+t20+t22+t3.*t4.*8.596692e-4-2.6196e-5).*(2.5e+1./1.2e+1);t24.*(t3.*5.41466625e-5+t16+t19+t21+t3.*t4.*2.0665125e-4+5.627865e-5).*(-5.0e+1./3.0)];