# https://www.czerniga.it/2021/11/14/how-to-install-gitlab-using-docker-compose/

export GITLAB_HOME=$(pwd)/srv
echo $GITLAB_HOME 

docker-compose up -d

docker exec -it gitlab-ce grep 'Password:' /etc/gitlab/initial_root_password 
