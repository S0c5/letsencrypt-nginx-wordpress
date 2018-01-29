# letsencrypt-nginx-wordpress
This project is used for deploy as fastest as possible a WordPress with SSL provided by letsencrypt through nginx reverse proxy using docker and docker-machine

## Setup 

1) please modify the file ```config.env``` and update the domain for request your ssl certificate. 
```bash
  host_name=your_domain_here
  host_port=80
```
2) create a instance of docker-machine accesisble through internet:

example with aws driver 

```bash
  $ docker-machine create  --driver amazonec2 --amazonec2-instance-type t2.micro example-machine
```

3) Please eval your insance for connect with docker

```bash 
  $ eval $(docker-machine env example-machine)
 ```

4) run 

```bash 
  $ make
```

## Clean 

you only need to run:

```bash 
  make clean
```

and please wait with your coffe. 

Happy hacking :) 
