double theta_R = atan2(yg - y, xg - x) * 180/PI;  // [deg]
double theta_G = atan2(yg - y0, xg - x0);         // [rad]
double dist = pow(xg-x,2)+pow(yg-y,2);
double theta_rad = theta * PI/180;                // [rad]

// if (abs(theta_G - (double)theta_rad) >= theta_tor && change){
//     RobotState = Rotation;
//     change = false;
// }else if (dist>=dis_tor){
//     RobotState = LineFollowing;
// }else{
//     RobotState = IDLE;
// }
// RobotState = LineFollowing;
// double K_psi = 5;
// double K_omega = 0.5;
Serial.print(theta_G - (double)theta_rad);

switch (RobotState)  {
    case Rotation :
        if (abs(theta_G - (double)theta_rad) >= theta_tor){
            w = K_psi*(theta_R - (double)theta);
		    v = K_omega*(cos(theta_rad)*(x0-x) + sin(theta_rad)*(y0-y)); 
        }else{
           w = 0;
           v = 0;
            RobotState = LineFollowing;
        }              
        break ;
    case LineFollowing :
        if (dist >= dis_tor){
           w = K_psi*(sin(theta_G)*(x+p*cos(theta_rad)-x0)-cos(theta_G)*(y+p*sin(theta_rad)-y0));
           v = K_omega*(cos(theta_G)*(xg-x) + sin(theta_G)*(yg-y));
        }else{
            w = 0;
            v = 0;  
            RobotState = IDLE; 
        }               
        break ;
    case IDLE :
        w = 0;
        v = 0;
        break ;
    }


// Sending Control Input
left = (int)(2*v-w)/2;
right = (int)(2*v+w)/2;

// Printing
Serial.print("\n ============================================================== \n");
Serial.print("RobotState: ");
Serial.print(RobotState);
Serial.print("\nv: ");
Serial.print(v,3);
Serial.print(", w: ");
Serial.print(w,3);
Serial.print("\nLeft: ");
Serial.print(left,DEC);
Serial.print("\nRight: ");
Serial.print(right,DEC);
Serial.print("\nDistance: ");
Serial.print(dist,3);
