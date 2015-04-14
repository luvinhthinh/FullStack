# Full Stack Web Application 

<h3>Description</h3>
  This project demonstrates a web application architecture, which try to achieve no single point of failure as well as high availability. For demo pupose, at first, the requests will hit the Load Balancer (LB0); then they are Round Robin redirected to 2 Apache Http Web Servers (named WS1 and WS2) which are functionality identical, and in turn forward requests to another Load Balancer (LB1) for Application Servers. Each application server itself may or may not have its own Load Balancer.
  <br><br>
  Why do we need so many layer ? It is useful for : 
  + no single point of failure : one server is down, the business still carry on
  + high availability : minimal down time when deployment and support of higher traffic throughput

<h3>Assumption:</h3> 
  - Application installed : 
     + Nginx as Load Balancers
     + Apache Http Server as Web Servers
     + NodeJS as Application Servers
     + SpringBoot for Business Logic Micro Services
     + Redis for Session Storage
     + LDAP Authentication Rest API
     + To be updated ( pending Logging && Data Analysis, CDN, and Health Monitoring Application)

<h3>Load Balancer 0</h3>
  - This component redirects requests to  different web servers using Round Robin Policy. By default, it listens to port 80.
  - For more details, the configuration file is kept in LB0/conf/nginx.conf
  - Usage
    + to start : sh start.sh
    + to stop : sh stop.sh
    + to restart : sh restart.sh

<h3>Web Server Cluster</h3>
  - These components are configured as reverse proxies to redirect requests to application servers accordingly. They are functionality identical and should be deployed into different VMs or pieces of hardware. In this demo, they are hosted on the same box, listening to different port 8001 and 8002.
  - For more details, the configuration file is kept in WebServerCluster/{Instance}/conf/httpd.conf
  - Usage
    + to start : sh start.sh
    + to stop : sh stop.sh
    + to restart : sh restart.sh
