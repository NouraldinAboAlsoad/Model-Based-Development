l1=5;
l2=6;
theta1=linspace(0,180,250);
theta2=linspace(0,60,250);

x1=l1 * cosd(theta1);
y1=l1 * sind(theta1);
x2= x1 + l2 * cosd(theta1 + theta2);
y2= y1 + l2 * sind(theta1 + theta2);

figure ;
CurrentPoint1= plot([0, x1(1)],[0,y1(1)],'MarkerSize', 10);
EndPoint= plot (-8,-5.1,'o', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r', 'MarkerSize', 20)
%CurrentPoint1= plot([0,x1(1)],[0,y1(1)]);
%FinalShape= plot (x1,y1);
hold on;
CurrentPoint2= plot([x1(1),x2(1)],[y1(1),y2(1)],'MarkerSize', 10);
EndEffector = plot(x2(1), y2(1), 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g', 'MarkerSize', 3);
StartArm = plot(0, 0, 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g', 'MarkerSize', 3);
MiddleJoint= plot(x1(1), y1(1), 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g', 'MarkerSize', 3);
ENDEFFECTORDistance= plot(x2(1), y2(1), 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g', 'MarkerSize', 0.5);

for i=1 : length(theta1)
delete (CurrentPoint2);
delete (CurrentPoint1);
delete (StartArm);
delete (MiddleJoint);
delete (EndEffector);

CurrentPoint1= plot([0, x1(i)],[0,y1(i)],'r','LineWidth', 10);
CurrentPoint2= plot([x1(i),x2(i)],[y1(i),y2(i)],'b','LineWidth', 10);
xlim([-15, 15]);  % Set x-axis range
ylim([-10, 15]);  % Set y-axis range
EndEffector = plot(x2(i), y2(i), 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g', 'MarkerSize', 3);
StartArm = plot(0, 0, 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g', 'MarkerSize', 3);
MiddleJoint= plot(x1(i), y1(i), 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g', 'MarkerSize', 3);
ENDEFFECTORDistance= plot(x2(i), y2(i), 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g', 'MarkerSize', 1);
drawnow
if i == length(theta1)
    text(-8,-6,'MBD ROBOTARM FINISHED');
end
end
