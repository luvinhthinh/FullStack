# FullStack

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
