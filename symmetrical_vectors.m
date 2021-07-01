clear
clf


Va.mag = 1;
Va.phase = 0;
Vb.mag = 1;
Vb.phase = -120;
Vc.mag = 1; 
Vc.phase = 120;
w = 2.5

rad = pi/180;
Vabc = [Va.mag*exp(1i*Va.phase*rad);Vb.mag*exp(1i*Vb.phase*rad);Vc.mag*exp(1i*Vc.phase*rad)];
Va_vector = [real(Va.mag*exp(1i*Va.phase*rad));imag(Va.mag*exp(1i*Va.phase*rad))]
Vb_vector = [real(Vb.mag*exp(1i*Vb.phase*rad));imag(Vb.mag*exp(1i*Vb.phase*rad))]
Vc_vector = [real(Vc.mag*exp(1i*Vc.phase*rad));imag(Vc.mag*exp(1i*Vc.phase*rad))]

figure(1)
quiver(0,0,Va_vector(1),Va_vector(2),'r','LineWidth',w)
hold on
quiver(0,0,Vb_vector(1),Vb_vector(2),'b','LineWidth',w)
hold on
quiver(0,0,Vc_vector(1),Vc_vector(2),'g','LineWidth',w)
legend('V_a','V_b','V_c')
axis([-1 1 -1 1])
grid on

a = exp(1i*2*pi/3)
A = [1 1 1;1 a^2 a;1 a a^2]

V012 = A^-1*Vabc

V0_vector = [real(V012(1));imag(V012(1))]
V1_vector = [real(V012(2));imag(V012(2))]
V2_vector = [real(V012(3));imag(V012(3))]

figure(2)
quiver(0,0,V0_vector(1),V0_vector(2),'r','LineWidth',w)
hold on
quiver(0,0,V1_vector(1),V1_vector(2),'b','LineWidth',w)
hold on
quiver(0,0,V2_vector(1),V2_vector(2),'g','LineWidth',w)
legend('V_0','V_1','V_2')
axis([-1 1 -1 1])
grid on