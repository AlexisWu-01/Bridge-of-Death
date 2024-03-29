%initialize ROS communications
pubvel = rospublisher('/raw_vel') 
message = rosmessage(pubvel);

%create timesteps
u = linspace(0.1,pi*(5 + .7),30);

%calculate wheel velocities according to timesteps
vL = (0.29696E-1+(-0.2048E-1).*cos((0.2E0+sqrt(-1)*0.E-323).*u)+(-0.433681E-18).*cos((0.2E0+sqrt(-1)*0.E-323).*u).^2+0.433681E-18.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2).^(1/2)+(0.261875E-4+(-0.115556E-37).*cos((0.2E0+sqrt(-1)*0.E-323).*u).^5+(-0.815663E-55).*cos((0.2E0+sqrt(-1)*0.E-323).*u).^6+0.114733E-20.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+0.167556E-37.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4+0.815663E-55.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^6+cos((0.2E0+sqrt(-1)*0.E-323).*u).^4.*((-0.545697E-21)+0.244699E-54.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2)+cos((0.2E0+sqrt(-1)*0.E-323).*u).^3.*((-0.858993E-5)+0.231112E-37.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2)+cos((0.2E0+sqrt(-1)*0.E-323).*u).*((-0.54181E-4)+(-0.158252E-20).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+(-0.115556E-37).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4)+cos((0.2E0+sqrt(-1)*0.E-323).*u).^2.*(0.373662E-4+0.545697E-21.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+(-0.244699E-54).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4)).^(-1).*(0.200768E-5+(-0.818191E-7).*cos((0.2E0+sqrt(-1)*0.E-323).*u).^3+0.336166E-23.*cos((0.2E0+sqrt(-1)*0.E-323).*u).^6+(-0.7691E-6).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+(-0.537866E-22).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4+(-0.336166E-23).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^6+cos((0.2E0+sqrt(-1)*0.E-323).*u).^4.*((-0.537866E-22)+(-0.504249E-22).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2)+cos((0.2E0+sqrt(-1)*0.E-323).*u).*((-0.264194E-5)+0.245457E-6.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2)+cos((0.2E0+sqrt(-1)*0.E-323).*u).^2.*(0.7691E-6+0.32272E-21.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+0.504249E-22.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4));
vR = (0.29696E-1+(-0.2048E-1).*cos((0.2E0+sqrt(-1)*0.E-323).*u)+(-0.433681E-18).*cos((0.2E0+sqrt(-1)*0.E-323).*u).^2+0.433681E-18.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2).^(1/2)+((-0.200768E-5)+0.818191E-7.*cos((0.2E0+sqrt(-1)*0.E-323).*u).^3+(-0.336166E-23).*cos((0.2E0+sqrt(-1)*0.E-323).*u).^6+0.7691E-6.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+0.537866E-22.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4+0.336166E-23.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^6+cos((0.2E0+sqrt(-1)*0.E-323).*u).*(0.264194E-5+(-0.245457E-6).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2)+cos((0.2E0+sqrt(-1)*0.E-323).*u).^4.*(0.537866E-22+0.504249E-22.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2)+cos((0.2E0+sqrt(-1)*0.E-323).*u).^2.*((-0.7691E-6)+(-0.32272E-21).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+(-0.504249E-22).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4)).*(0.261875E-4+(-0.115556E-37).*cos((0.2E0+sqrt(-1)*0.E-323).*u).^5+(-0.815663E-55).*cos((0.2E0+sqrt(-1)*0.E-323).*u).^6+0.114733E-20.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+0.167556E-37.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4+0.815663E-55.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^6+cos((0.2E0+sqrt(-1)*0.E-323).*u).^4.*((-0.545697E-21)+0.244699E-54.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2)+cos((0.2E0+sqrt(-1)*0.E-323).*u).^3.*((-0.858993E-5)+0.231112E-37.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2)+cos((0.2E0+sqrt(-1)*0.E-323).*u).*((-0.54181E-4)+(-0.158252E-20).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+(-0.115556E-37).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4)+cos((0.2E0+sqrt(-1)*0.E-323).*u).^2.*(0.373662E-4+0.545697E-21.*sin((0.2E0+sqrt(-1)*0.E-323).*u).^2+(-0.244699E-54).*sin((0.2E0+sqrt(-1)*0.E-323).*u).^4)).^(-1);

time_unit = u(2) - u(1); %time distance between each timestep
idx = 1;
tic

while 1
    vLi = vL(idx);
    vRi = vR(idx);
    message.Data = [vLi, vRi]; 
    send(pubvel, message);
    
    if toc > time_unit %check if timestep has passed
        idx = idx + 1
        tic
    end
   
    if idx == length(u) %check if sequence is over
        message.Data = [0, 0]; 
        send(pubvel, message);
        break
    end
    
    pause(.005)
end