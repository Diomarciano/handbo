# README #

Halo, ini spesifikasi software yg kita pakai

### What is this repository for? ###

* Ruby version 2.3
* postgresql 9.5
* Rails 4.2.6
* [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)

### How do I get set up? ###

* Summary of set up
* Configuration
* Dependencies
* Database configuration

Setting database masuk ke file config/database.yml
default: &default
  adapter: sqlite3
  pool: 5
  timeout: 5000

development:
  <<: *default
  database: db/development.sqlite3

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: db/test.sqlite3

production:
  <<: *default
  database: db/production.sqlite3



* How to run tests
gunakan bundle install dan jangan lupa migrasi database dgn menggunakan bundle exec rake db:migrate buat migrate

* Deployment instructions

### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Repo owner or admin
* Other community or team contact