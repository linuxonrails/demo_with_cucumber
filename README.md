# Demo para Testeo web con Cucumber

## 0. Prerequisitos.

Instala PHP para la probar los ejemplos en PHP y gnupg para una instalación segura de RVM:

```sh
$ sudo apg-get install php gpg # para ubuntu; con fedora utiliza yum
```

## 1. Descarga e instala RVM

RVM es un gestor de versiones de Ruby con el que podrás instalar la última versión estable de Ruby fácilmente.

```sh
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
```

```sh
$ \curl -sSL https://get.rvm.io | bash -s stable --ruby
```

Más información en http://rvm.io/rvm/install


## 2. Clona este repositorio

```sh
$ git clone https://github.com/linuxonrails/demo_with_cucumber
```


## 3. Cambia al directorio del repositorio clonado:

```sh
$ cd demo_with_cucumber
```

## 4. Instala cucumber y sus depenciencias

Mediante bundler (que viene por defecto al instalar Ruby con RVM)

```sh
$ bundle
```

## 5. Ejecuta la demo

Inicia un servidor PHP en el directorio actual mediante:

```sh
$ php -S localhost:8000
```

Accede con tu navegador favorito a http://localhost:8000

```sh
$ firefox http://localhost:8000 &
```

Y lanza los tests de cucumber con el siguiente comando:

```sh
$ cucumber -r features features
```