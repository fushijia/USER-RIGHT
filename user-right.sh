#!/bin/bash
# 系统用户权限发生改变---user_right_change
# 系统用户组权限发生改变---group_right_change
# 系统用户增加---user_add
# 系统用户减少---user_del
# 系统用户组增加---group_add
# 系统用户组减少---group_del
# 系统用户状态发生改变---user_state_change

user_name="usertest"

function user_right_change()
{
    usermod 
}

function group_right_change()
{
    usermod 
}

function user_add()
{
    for (( i=1;i<100;i++ ))
    do 
    {
        userdate=`date +%Y-%m-%d-%H:%M:%S`
        useradd ${user_name}${i} 
        echo "add ${user_name}${i}-----${userdate}-----${i}" >> /home/fsj/adduser.dat
        sleep 3
    }
    done
}

function user_del()
{
    for (( i=1;i<100;i++ ))
    do 
    {
        userdate=`date +%Y-%m-%d-%H:%M:%S`
        userdel ${user_name}${i} 
        echo "add ${user_name}${i}-----${userdate}-----${i}" >> /home/fsj/deluser.dat
        sleep 3
        sleep 3
    }
    done
}

function group_add()
{
    #same as user_add
    echo "aa"
}

function group_del()
{
    #same as group_add
    echo "aa"
}

function user_state_change()
{
   usermod -L  userdel ${user_name}
}

function Main()
{
    user_add
    user_del
}

Main