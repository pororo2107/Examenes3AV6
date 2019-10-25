
ini_val=-1
i=1
x1=-1
e(i)=10
while(e(i)>0.001)
        
    if(i ==1)
    
        x(i)=ini_val
        
    end
    
    fx=cos(x(i)+1)-sin(x(i)+1)+0.8
    
    fpx=-sin(x(i)+1)-cos(x(i)+1)
    
    x(i+1)= (x(i))-(fx / fpx)
    
    i= i+1;
   
    e(i)=abs(x(i-1)-x(i));
    
    if(e(i) > 50);
        break;
    end
end
tamanio = size(e);
ite = 1:1:tamanio(2);
figure('DefaultAxesFontsize', 14)
set (gcf , 'color', 'white');
plot(ite,e,'color',[1 0 0], 'LineWidth',2)
grid on
hold on
plot(ite,x,'color',[0 0 1], 'LineWidth',2)
xlabel('Iterations')
ylabel('error')
legend ('error','x')

