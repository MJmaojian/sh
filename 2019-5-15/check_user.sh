#!/bin/sh
#用户名为 tom 并且密码为 123456,则提示登录成功,否则提示登录失败
read -p "请输入用户名" user
read -p "请输入密码"   pass

if [ "$user" ==  'tom' -a "$pass"  == '123456' ]; then
  echo "login successful"
else
  echo "login failed"
fi
