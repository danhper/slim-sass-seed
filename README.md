# slim-sass-seed

A basic sinatra project to help designers coding with Slim, Sass and CoffeeScript.

## Installation (only first use)

### Installing Ruby

You need to have Ruby 1.9+ to use the project. 
If you already have, please skip to the Installing dependencies section.

First, install Homebrew and check everything is fine. 
If you have errors, follow the instructions to fix them.

```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
```

Then, install rbenv and ruby-build, then install ruby and configure your computer to use it.

```
brew install rbenv ruby-build
rbenv install 2.1.0
rbenv global 2.1.0
rbenv rehash
```

### Instaling dependencies

First, get the project, and rename it to the name you want by changing `PROJECT_NAME`.

```
git clone https://github.com/tuvistavie/slim-sass-seed.git PROJECT_NAME
cd PROJECT_NAME
```

If you do not have bundler installed, please run 

```
gem install bundler
```

to install it first. Then, install the dependencies.

```
bundle install
```

## Usage

To launch the development server and listen for changes, run

```
bundle exec foreman start
```

Pressing ctrl+c will stop the processes.

The server will start on port 3000, so you can access it at [http://localhost:3000](http://localhost:3000).

If you need to change the port, please do so in the `Procfile` by replacing the `3000` by the port you want in the following line.

```
web: bundle exec rackup -p 3000
```

### Slim 

To use slim templates, simply put the templates under the `views` directory and access them by visiting `/TEMPLATE_NAME`.

For example, if you create `views/my_template.slim`, you will be able to access it at [http://localhost:3000/my_template](http://localhost:3000/my_template). If you simply visit [http://localhost:3000/](http://localhost:3000/), it will look for `views/index.slim`.

Your templates will be wrapped in `views/layout.slim`, so please add CSS/JS files and make global changes directly in this file.

### Sass

You can add Sass files to `public/sass`. The files will be automatically compiled to `public/css` with the same filename and the extension changed.

So if you create `public/sass/style.scss`, it will be compiled to `public/css/style.css`, and you will be able to put it in your Slim template with

```
link rel="stylesheet" href="/css/style.css"
```

### CoffeeScript

You can add CoffeeScript directly in `public/coffee`. The files will be automatically compiled to `public/js` with the same filename and the extension changed.

So if you create `public/coffee/app.coffee`, it will be compiled to `public/js/app.js`, and you will be able to put it in your Slim template with

```
script src="/js/app.js"
```

### Livereload

If you have the Livereload extension installed for your browser, it should work out of the box. The Livereload server should be listening on port 35729.

## TODO

I will try to make the project easily configurable even by non-programmers
