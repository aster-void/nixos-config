{ user, ... }: {
  # @CHANGEME: use your own password. you can use mkpasswd to generate one. run init.sh and this file will be deleted.
  users.users.${user}.hashedPassword = "$2b$11$u1MrjMDbqHgh4PPheSiFt.CiAZxYAaNZt.cuc7pJiMH8HEzO2bcmK";
}

