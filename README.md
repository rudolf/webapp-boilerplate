# Node / Backbone Web App Boilerplate

## Description
Node/Backbone forms a powerful combination for building single page web applications that scale. Because of these two project's popularity, there are several great boilerplate projects out there, but all for either Node or Backbone seperately. This project aims to integrate these two worlds (Backend and Frontend) making it easy to start building next generation web applications.

The most prominent technologies are:

#### Backend: 
- Node.js
- Express.js
- Mongoose.js / MongoDB

#### Frontend: 
 - Backbone.js
 - Marionette.js
 - Require.js
 - Jade Templates
 - Stylus CSS Preprocessor

### Other
 - CoffeeScript
 - Grunt based development environment
 
Although it should already provide a solid starting point, this project is still a work in progress (See Todo's below).

## Getting started

1. In an Ubuntu 12.10 terminal, run the following command to install the required dependencies. (Or use your distribution's instructions to install Git, Node v0.8, NPM and MongoDB.)

        sudo apt-get install git nodejs npm mongodb-server

2. Get the project source code from GitHub

        git clone git@github.com:skaapgif/webapp-boilerplate.git webapp
        cd webapp

3. Optionally run these commands to set up the node package manager to install node packages in your home folder (useful if you don't have sudo rights, like at a university lab)

        cat npmrc >> ~/.npmrc
        cat bashrc >> ~/.bashrc
        source ~/.bashrc

4. Finally, install node package dependencies and start the server

        npm install
        npm install -g grunt-cli
        npm start

5. Point your browser to localhost:3000 and start hacking! Any changes to source files will cause grunt to recompile/reload.

## Todo
 - Mocha BDD api tests
 - Mocha BDD frontend tests using WebDriver
 - Introduction to folder layout & files, links to relevant tutorials
 - Example stylus css
 - MongoDB sessions
 - Production hardening (Cluster, error handling, monitoring)
 - Heroku Procfile and instructions for super easy heroku deployments
