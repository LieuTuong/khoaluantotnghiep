#!/bin/bash

basedir=`pwd`
NCLI=3
NREP=6

function build {
    rm -rf $basedir/build/*
 
    for i in {0..6}
    do
        cp -r $basedir/hotstuff/ $basedir/build/node$i
    done

    for i in {0..3}
    do
        cp -r $basedir/hotstuff/ $basedir/build/client$i
    done
   
}

function clean_build {
    rm -rf $basedir/build/*
}

function clean_docker {
    docker rm $(docker ps -a -q)

}


function docker_compose_client_up {
    docker-compose -f client.docker-compose.yml up
}

function docker_compose_client_down {
    docker-compose -f client.docker-compose.yml down
}


function docker_compose_replica_up {
    docker-compose -f docker-compose.yml up
}


function docker_compose_replica_up {
    docker-compose -f docker-compose.yml down
}

cmd="$1"
shift 1
case "$cmd" in
    b) build ;;
    cleanbuild|cb|cleanb) clean_build ;;
    cleandocker|cleand|cd) clean_docker ;;
    docker-compose-cli|clidc) docker_compose_client_up;;
    docker-compose-rep|repdc) docker_compose_replica_up;;
    *) exit ;;
esac
