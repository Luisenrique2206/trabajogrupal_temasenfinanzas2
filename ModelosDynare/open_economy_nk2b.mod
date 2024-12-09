%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% The Open-Economy NK Model %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Dynare code simulates a NK model for a small open economy.
% Author: Valerio Nispi Landi
% First version: 22/10/2018
% This version: 04/04/2021

close all;
warning off
%%
%%%%%%%%%%%%%%%%%%%%%%%Endogenous Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
var
c             % consumption 
rk            % rental rate of capital 
rr            % real interest rate
w             % real wage
h             % hours 
k             % capital
q             % Tobin Q
i             % investment
lambda        % marginal utility of consumption
r             % nominal interest rate
pi            % inflation 
mc            % marginal cost
g             % public spending
a             % TFP
piH           % PPI inflation
s             % real exchange rate
pH            % relative PPI
yH            % domestic production
d             % external debt
gdp           % gross domestic product
De            % nominal depreciation
yz            % foreign demand
rz            % foreign interest rate
tb            % trade balance
xp            % exports
mp            % imports
tot           % terms of trade
% log variables to have IRFs in percentage deviations from the ss
clog wlog hlog klog ilog dlog      
proof         % check variables
;
%%
%%%%%%%%%%%%%%%%%%%%%%%Exogenous Variables%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
varexo 
va   % productivity shock
vg   % public spending shock
vm   % monetary policy shock
vy   % foreign demand shock
vp   % foreign monetary policy shock
;  
    
%%
%%%%%%%%%%%%%%%%%%%%%%%Parameters%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

parameters

beta 
alpha 
delta 
sigma
phi 
kappaL 
epsilon 
eta 
gamma 
gammaz
gss 
ass 
piss 
rss 
dss 
kappaI
kappaP
kappaD
phipi
phiy
phie
rhoa
rhog
rhom
rhop
rhoy  
;

%% Structural Parameters (quarterly calibration)
%% Structural Parameters (quarterly calibration)
beta=0.99;                    % discount factor
alpha=0.33;                   % elasticity of production wrt capital
epsilon=6;                    % elasticity of substitution btw differentiated goods
delta=0.025;                  % depreciation rate
sigma=1;                      % relative risk aversion
phi=1;                        % inverse of Frisch elasticity
gss=0.2;                        % share of public spending in ss
eta=1.5;                      % elasticity of intratemporal substitution
gamma=0.3;                    % trade openness
D=0.25;                       % external debt/GDP ratio

piss=1;                        % inflation targeting (quarterly calibration)
dss=4*D;                       % foreign debt
yHss=1;                        % domestic output
pHss=1;                        % domestic price
sss=1;                         % real FX rate
hss=1/3;                       % hours of work
rrss=1/beta;                   % real interest rate
rss=piss/beta;                   % nominal interest rate
qss=1;                         % marginal value of investment (in terms of lambda)  
rkss=1/beta-(1-delta);         % rental rate of capital
mcss=(epsilon-1)/epsilon;      % real marginal costs
kss=alpha*mcss*yHss/rkss;            % capital
wss=(1-alpha)*mcss*yHss/hss;         % real wage
kappaL=wss/(hss^(phi));          % labor preference parameter
iss=delta*kss;                   % investment
css=yHss-iss-gss-dss*(1/beta-1);       % consumption
lambdass=(css-kappaL/(1+phi)*hss^(1+phi))^(-sigma);   % marginal utlity of consumption
ass=yHss/(kss^(alpha)*hss^(1-alpha)); % tfp
gammaz=1-(1-gamma)*(css+iss)-gss;   % foreign parameter

%% Parameters not affecting the steady state
phipi=1.5;                % mp response to inflation
phiy=0.125;              % mp response to output
phie=0;                   % mp response to exchange rate
kappaI=0;              % investment adjustment cost (as in CEE). If 0, q is constant
kappaD=0.001;             % usually calibrated at a small value. If 0, the model has a unit root
rhoa=0.9;                 % tfp persistence
rhog=0.9;                 % public spending persistence
rhop=0.9;                 % foreign mp shock persistence
rhoy=0.9;                 % foreign demand shock persistence persistence
rhom=0.8;                 % monetary policy inertia
calvo=0.66;               % price rigidity in calvo framework
% adjusment cost coefficient to have the same linear Phillips Curve of the Calvo framework 
% complicated
kappaP=(epsilon-1)*calvo/(piss^2*(1-calvo)*(1-beta*calvo)); % adjusment 



%%
%%%%%%%%%%%%%%%%%%%%%%%Non-Linear Model%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

model;
% Households
lambda=(c-kappaL/(1+phi)*h^(1+phi))^-sigma;  
1=beta*lambda(1)/lambda*r/pi(1);
1=beta*lambda(1)/lambda*rz*s(1)/s+kappaD*(d-dss);
1=beta*lambda(1)/lambda*(rk(1)+(1-delta)*q(1))/q;
kappaL*h^(phi)=w;        
k=(1-delta)*k(-1)+(1-kappaI/2*(i/i(-1)-1)^2)*i;
1=q*(1-kappaI/2*(i/i(-1)-1)^2-kappaI*(i/i(-1)-1)*i/i(-1))+kappaI*beta*lambda(1)/lambda*q(1)*(i(1)/i-1)*(i(1)/i)^2;    
% Firms
yH=a*k(-1)^alpha*h^(1-alpha);
(1-alpha)*mc*yH=w*h;
alpha*mc*yH=rk*k(-1);
(piH-piss)*piH=beta*(lambda(1)/lambda*pH(1)*yH(1)/(pH*yH)*piH(1)*(piH(1)-piss))+epsilon/kappaP*(mc/pH-(epsilon-1)/epsilon);
% Market clearing
yH=(1-gamma)*pH^(-eta)*(c+i)+g+gammaz*yz*(tot)^eta+(kappaP/2*(piH-piss)^2)*yH;
gdp=c+i+pH*g-s*d+s*rz(-1)*d(-1)+(kappaP/2*(piH-piss)^2)*gdp+s*kappaD/2*(d-dss)^2; 
% Prices
1=(1-gamma)*pH^(1-eta)+gamma*s^(1-eta);
piH=pH/pH(-1)*pi;
% Policy
r/(rss)=((pi/piss)^(phipi)*(gdp)^(phiy)*(De/piss)^phie)^(1-rhom)*(r(-1)/rss)^(rhom)*exp(vm);
% Shocks
log(a)=(1-rhoa)*log(ass)+rhoa*log(a(-1))+va;  
log(g)=(1-rhog)*log(gss)+rhog*log(g(-1))+vg;  
log(yz)=rhoy*log(yz(-1))+vy; 
rz=(1-rhop)*1/beta+rhop*rz(-1)+vp;
% Auxiliary variables
rr=r/pi(1);
s/s(-1)=De/pi;
gdp=pH*yH;
tb=xp-mp;
xp=pH*gammaz*yz*(tot)^eta;
mp=gamma*s^(1-eta)*(c+i);
tot=s/pH;
clog=log(c); wlog=log(w); hlog=log(h); klog=log(k); ilog=log(i); dlog=log(s*d/(4*gdp));
proof=gdp-(c+i+pH*g+tb+(kappaP/2*(piH-piss)^2)*gdp);
end;

%% Steady State

steady_state_model;

pi=1;  
piH=1;
d=dss;                       
yH=1;                        
pH=1;                        
s=1;                         
h=1/3;                       
rr=1/beta;                   
r=pi/beta;                   
q=1;                         
rk=1/beta-(1-delta);         
mc=(epsilon-1)/epsilon;      
k=alpha*mc*yH/rk;            
w=(1-alpha)*mc*yH/h;        
i=delta*k; 
g=gss;
c=yH-i-g-d*(1/beta-1);       
lambda=(c-kappaL/(1+phi)*h^(1+phi))^(-sigma);   
a=ass; 
rz=1/beta;
yz=1;
De=1;
gdp=pH*yH;
tot=s/pH;
xp=pH*gammaz*yz*(tot)^eta;
mp=gamma*s^(1-eta)*(c+i);
tb=xp-mp+s*kappaD/2*(d-dss)^2;
clog=log(c);
wlog=log(w);
hlog=log(h); klog=log(k); 
ilog=log(i); 
dlog=log(s*d/(4*gdp));
proof=0;

end;

steady;
check;

%% Shocks
shocks;
var va; stderr 0.01;     
var vg; stderr 0.01;    
var vm; stderr 0.0025; 
var vy; stderr 0.01;     
var vp; stderr 0.0025;    
end;

%% IRFs
stoch_simul(irf=40,order=1, hp_filter=1600,pruning,noprint)
gdp 
clog 
ilog 
klog
q 
pi
s 
dlog 
tb 
proof;