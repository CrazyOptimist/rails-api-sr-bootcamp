# Rails API Sr Basecamp

## DEV ENV SETUP

Install RVM and Ruby, create gemset for your specific project
```bash
# http://rvm.io/rvm/install
\curl -sSL https://get.rvm.io | bash
rvm install 2.7.2
rvm use 2.7.2
rvm gemset create rails-api
```

Add below lines to your `.zshrc` or `.bashrc`(it depends on what terminal you use, like zsh, bash or fish)  
```ini
source ~/.rvm/scripts/rvm
rvm use ruby 2.7.2@rails-api
```

Create a new Rails project
```bash
sudo apt-get install postgresql-client libpq5 libpq-dev # I used Debian Bullseye, and the deps are required for using postgresql
rails new api -T --api -d postgresql
```
- `-T`: do not create default test folder (Rails comes with Minitest by default, we drop it to use Rspec instead)
- `--api`: drop template(frontend) related assets/config
