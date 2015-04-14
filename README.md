# Full Stack Web Application 

Description
  This project demonstrates a web application architecture, which try to achieve no single point of failure as well as high availability. For demo pupose, at first, the requests will hit the Load Balancer (LB0); then they are Round Robin redirected to 2 Apache Http Web Servers (named WS1 and WS2) which are functionality identical, and in turn forward requests to another Load Balancer (LB1) for Application Servers. Each application server itself may or may not have its own Load Balancer.</br>
  Why do we need so many layer ? 
  It is useful for : 
  + no single point of failure : one server is down, the business still carry on
  + high availability : minimal down time when deployment and support of higher traffic throughput

Assumption: 
  - Application installed : 
     + Nginx as Load Balancers
     + Apache Http Server as Web Servers
     + NodeJS as Application Servers
     + SpringBoot for Business Logic Micro Services
     + Redis for Session Storage
     + LDAP Authentication Rest API
     + To be updated ( pending Logging && Data Analysis, CDN, and Health Monitoring Application)

Load Balancer 0
  - This component redirects requests to  different web servers using Round Robin Policy. By default, it listens to port 80.
  - For more details, the configuration file is kept in LB0/conf/nginx.conf
  - Usage
    + to start : sh start.sh
    + to stop : sh stop.sh
    + to restart : sh restart.sh

Web Server Cluster
