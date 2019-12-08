function Circle()
%Introduction to the function
disp('The General Equation of the Circle is in the form:')
disp(' ')
disp("Ax^2 + Ay^2 + Bx + Cy + D")
disp(' ')
disp('Simplified:')
disp("x^2 + y^2 + Dx + Ey + F")
disp(' ')
disp("Where:")
disp("D = B/A")
disp("E = C/A")
disp("F = D/A")
disp(' ')
disp("This program will determine the following paramters of a circle that lies on three points")
disp("~ Center of the Circle, (h,k)")
disp("~ Radius of the Cirlce, r")
disp("~ Vector[D,E,F]")
disp(' ')
disp("Input three points that lie on the circle:")
% Input First point
disp("First point")
X1 = input('X1: ');
Y1 = input('Y1: ');
% Input Second Point
disp('Second Point')
X2 = input('X2: ');
Y2 =input('Y2: ');
% Input Third Point
disp("Third Point")
X3 = input('X3: ');
Y3 = input('Y3: ');
% Get the square of the components of each point and store it to a new variable
X1s = X1^2;
X2s = X2^2;
X3s = X3^2;
Y1s = Y1^2;
Y2s = Y2^2;
Y3s = Y3^2;
% Get the sum of squares of the components for each point and store it to a new variable
p1 = X1s + Y1s;
p2 = X2s + Y2s;
p3 = X3s + Y3s;
% Solve for the Coefficients A, D, E and F
% The Following matrices are created 
a = [X1 Y1 1; X2 Y2 1; X3 Y3 1];
d = [p1 Y1 1; p2 Y2 1; p3 Y3 1];
e = [p1 X1 1; p2 X2 1; p3 X3 1];
f = [p1 X1 Y1; p2 X2 Y2; p3 X3 Y3];
% Get the determinant of matrix a to solve for the cofficient A
A = det(a);
% Get the negative determinant of matrix d and divide it by A to solve for the cofficient D
D = (-1)*det(d)/A;
% Get the determinant of matrix e and divide it by A to solve for the cofficient E
E = det(e)/A;
% Get the negative determinant of matrix f and divide it by A to solve for the constant F
F = (-1)*det(f)/A;
% Center (h,k) of the circle passing through the three points are:
h = ((-1)*D)/(2);
k = ((-1)*E)/(2);
% The Radius of the Circle is solved by:
r = sqrt((((D*A)^2)+((E*A)^2)-(4*A*(F*A)))/(4*(A^2)));
% Display the solved parameters
disp(' ')
disp(['The Center of the Circle: (',num2str(h),',',num2str(k),')']); 
disp(['Radius of the Circle: ', num2str(r)]);
disp(['Vector [D,E,F]: [',num2str(D),',',num2str(E),',',num2str(F),']']);
end

