demo_with_cucumber
==================

Demo para Testeo web con Cucumber:

0. Prerequisitos. Instala PHP para la probar los ejemplos en PHP y gnupg para instalación segura de RVM:

$ sudo apg-get install php gpg # para ubuntu


1. Descarga e instala RVM siguiendo http://rvm.io/rvm/install mediante:

$ gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

$ \curl -sSL https://get.rvm.io | bash -s stable --ruby


2. Clona este repositorio

$ git clone https://github.com/linuxonrails/demo_with_cucumber


3. Cambia al directorio de la demo:

$ cd demo_with_cucumber


4. Instala cucumber y sus depenciencias mediante bundler:

$ bundle


5. Ejecuta un servidor PHP en el directorio actual:

$ php -S localhost:8000


6. Accede con tu navegador favorito a localhost:8000 y lanza los tests desde la consola con:

$ firefox http://localhost:8000 &

$ cucumber -r features features