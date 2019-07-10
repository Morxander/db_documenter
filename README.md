# DatabaseDocumenter

Welcome to Database Documenter gem! We created this gem to generate database documentation for rails applications.

## Features

1. Generate database documentation as a Word document.
2. Generate Description for columns based on it is type and name, Also handle Enums and STI and AASM.
3. Easy to change the generated description by adding a comment on your database.
4. Hide sample values of desired columns using configuration.
5. You can Ignore models inside certain namespaces.
6. Works on MySQL and PostgreSQL database.

## Installation

```ruby
gem 'database_documenter', git: 'https://github.com/espace/db_documenter.git'
```

And then execute:

    $ bundle install

## Usage

in the application folder run this rake task and then you will found word document named `database.docx` in your application folder:

    $ bundle exec rake generate_db_document

## Configuration

Create a file in your initializers folder for example name it `database_documenter.rb` and you can configure the gem like this.

```ruby
DatabaseDocumenter.configure do |config|
  config.skipped_modules = ['NAMESPACE']
  config.hidden_values_columns = ['col1', 'col2']
end
```

## Override generated description
You can override it by adding comment to your schema using one of the following options:

### Rails 4
use [migration comments](https://github.com/pinnymz/migration_comments) gem or [pg_comment](https://github.com/albertosaurus/pg_comment)

### Rails 5.2
use `change_column_comment` and `change_table_comment` methods in rails 5

## TODO

- Add more Configurations.
- Add OverCommit
- Generate the ERD with the file.
- Clean code.
- Add test cases.
