# rails-template

### Rails application setup

1. Setup config
2. Initialize Smacss architecture
3. Setup Gemfile
4. Add Bootstrap & AngularJS via CDN
5. Initialize test environment (RSpec)


### Setup

Clone the project in your system

```sh
?> git clone https://github.com/PushApplication/rails-template.git
```

Go into the project and init the submodule

```sh
?> cd rails-template
?> git submodule update --init
Submodule 'smacss' (https://github.com/mehdi-farsi/smacss-archi) registered for path 'smacss'
Cloning into 'smacss'...
remote: Counting objects: 27, done.
remote: Compressing objects: 100% (19/19), done.
remote: Total 27 (delta 3), reused 26 (delta 2), pack-reused 0
Unpacking objects: 100% (27/27), done.
Checking connectivity... done.
Submodule path 'smacss': checked out '7a278766c40a3b220baf580c37ed8912b9b21d24'
```

Launch the installer

```shell
?> sh install.sh
/Users/mehdi/.rails-templates -> /Users/mehdi/Documents/projects/rails-templates
/Users/mehdi/.railsrc -> /Users/mehdi/Documents/projects/rails-templates/railsrc
```

Now all the new projects will be extended by this custom setup.
