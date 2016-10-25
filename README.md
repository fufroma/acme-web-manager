# Acme Web Manager

This application is a graphical frontend for [Acme Php Client](https://github.com/octopuce/acmephpc)

It is still under development and MUST NOT be used in production, use at your own risks.


## Installation

### 1. To install, first clone the repository :

    git clone git@github.com:mduplouy/acme-web-manager.git

### 2. Get composer

    $ curl -s https://getcomposer.org/installer | php

### 3. Install the dependencies using Composer :

    $ cd acme-web-manager
    $ php ../composer.phar install

### 4. Configure the app

* Check apache user has write permissions on the following folders :
    * /cache (create it if needed)
    * /var   (if you use filesystem storage)
* Configure web/.htaccess.sample and rename it to web/.htaccess

Do not forget to deny access to all files but the index.php and assets!

### 6. Configure your web server

Your web server must point to the web/ directory of the app (DocumentRoot directive with Apache HTTP server)

To enable dev env, add an DirectoryIndex to point to the index_dev.php file instead of default index.php

## Badges
[![Build Status](https://travis-ci.org/mduplouy/silex-cops.png?branch=master)](https://travis-ci.org/mduplouy/silex-cops)
