#base image
FROM ubuntu:latest 

#install netcat
RUN apt-get update && apt-get install -y netcat

#set working dir
WORKDIR /home/jess/docker_exe

#copy the chat server script to the container
COPY chat_server.sh .

#make it executable
RUN chmod +x chat_server.sh

#expose port container to listen t
EXPOSE 1234

#start chat 
CMD ["./chat_server.sh"]
