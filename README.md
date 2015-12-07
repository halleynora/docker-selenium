Pre-requisites:

Install boot2docker if you are on a Windows/OSX machine: http://boot2docker.io/

Run (you'll find his in the boot2docker documentation too)
* from a command prompt or shell
* boot2docker init
* boot2docker start
* boot2docker ssh -L 8080:localhost:8080
 * this will put you into a docker VM with port 8080 forwarded from you local machine to port 8080 of the docker VM


* Once inside the docker VM
 * git clone http://git.tm.tmcs/qa/docker-selenium.git
 * cd docker-selenium
 * ./start-hub.sh
 * ./start-node.sh (you can repeat this for multiple nodes)
* Go to the browser on your computer and type http://localhost:8080/grid/console
 * you should the nodes that you created