# Golang-Challenger
The goal is to create the smallest image of a "Hello world" in Golang (lass than 2MB).

Image Registry link:
https://hub.docker.com/repository/docker/porfiriovitor/codeeducation

To create the smallest image possible, we need to make use of multistage building. First we use golang as the base image to get the "Hello World" binary. On the second part we create an image based on scratch, a super minimal image, that will execute the binary that we made on the first step.


#Docker Certificate
https://fullcycle.com.br/certificado/11bd4937-a735-46cb-9816-47e9c308d2df
