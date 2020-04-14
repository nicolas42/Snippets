Easy insecure way.  Embed username and password into the .git/config file

nano .git/config

[remote "origin"]
    url = https://<USERNAME>:<PASSWORD>@github.com/path/to/repo.git
    fetch = +refs/heads/*:refs/remotes/origin/*
