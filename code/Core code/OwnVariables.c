// Robot Parameters
double R = 0.1001405119340;
double L = 0.5052864456892;
bool change = true;
enum States {Rotation, LineFollowing, IDLE};
// enum States RobotState;
enum States RobotState = Rotation ;

// Control Parameters
double K_psi = 2;
double K_omega = 5;
double w;                                         // rotation input
double v;                                         // translation input
double p = 100;                                   // look ahead [cm]
double theta_tor = 0.03;                         // angle tolerance [rad]
double dis_tor = 1.5;                             // distance tolerance


