
## Challenge Jobsity

In order to complete the challenge, I develop this project with the characteristics specified in the pdf file. This project is being developed with the Laravel 6 Framework.

## Server requirements
    - PHP >= 7.2.0
    - BCMath PHP Extension
    - Ctype PHP Extensio
    - JSON PHP Extension
    - Mbstring PHP Extension
    - OpenSSL PHP Extension
    - PDO PHP Extension
    - Tokenizer PHP Extension
    - XML PHP Extension
    - Composer


## Installation

First, we need to clone the repository in the directory: /var/www/jobsitychallenge/

 **https://github.com/pablolopezj/jobsitychallenge.git**

Next we need to run some commands:

    - composer install
    - npm install 
    - php artisan migrate
    - php artisan db:seed

 ## Server Configuration 

To create the Virtual host copy the file pablo_isaac_lopez.conf located in the root path into the directory /etc/apache2/sites-available

Next excecute the next command $ sudo a2ensite pablo_isaac_lopez.conf

And restart the apache $ sudo service apache2 reload

If is necessary there is a backup of the database in the root path named jobsitychallenge_01-11-19.sql