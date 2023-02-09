# Ruby Challenge - Three Word Sequences

## Basic Requirements
1- check your ruby version, I'm using:

- ruby 3.1.0
- bundler 2.3.11

## How to run the program

1- you will need a `.txt` file or you can use the provided files.

2- if you want to use a separate file you need to provide the full path, e.g. `ruby ./solution.rb /Users/catharinakomrij/Desktop/from_desktop.txt`

3- run `ruby ./solution.rb texts/moby_dick.txt`
  top 3 from the output should be something like:
```
the sperm whale - 116
the white whale - 111
of the whale - 87
```
4- run `ruby ./solution.rb texts/moby_dick`
```
File type must be .txt please.
```

## How to run the tests
1- run `bundle` - not sure if this is needed for rspec to work

2- run `bundle exec rspec spec/file_handler_service_spec.rb`

## What you would do next, given more time (if anything)?

- The program accepts a list of one or more file paths (e.g. ruby solution.rb texts/moby-dick.txt brothers-karamazov.txt ...).

- The program also accepts input via stdin (e.g. `cat texts/*.txt | java solution.java`).

- Contractions shouldn’t be changed into two words (eg. can't should not become can t)

- Hyphens on line-endings can be treated as continuations OR punctuation.


## Are there bugs that you are aware of?