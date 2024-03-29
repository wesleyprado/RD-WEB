# RD-WEB

## Env Config

## Pré requesites:

## Ruby

```sh
  Windows Install:  https://rubyinstaller.org/downloads/
  ```
 ```sh
  Linux Install: 
 ```
```sh
  sudo apt-get install ruby-full
  sudo apt install ruby2.5-dev
  sudo apt-get install ubuntu-dev-tools
  sudo apt-get install libffi-dev
  ```
## VsCode

```sh
  Windows Install:  https://code.visualstudio.com/download
 ```
```sh
  Linux Install:  https://code.visualstudio.com/download
```
## VsCode Extensions:

  * Ruby	
  * Docker
  * Cucumber-mapper-ruby	
  * Snippets and Syntax Highlight for Gherkin (Cucumber)	
  * VSCode Ruby
  * vscode-icons
	
## Download the project or clone it and after in the project path run:

```sh
gem install bundler
bundle install
```
## To run the tests in qa

 ```sh
cucumber -p qa -p json
```
## To run the tests in homolog

 ```sh
cucumber -p hmg -p json
```
## To run the tests in prod

 ```sh
cucumber -p prod -p json
```

## To run the tests in docker

  # You need to update de files with valid information and have the docker installed

 ```sh
docker-compose build
docker-compose up
```

## Report

### Path :
* reports/report.html
* reports/report.json