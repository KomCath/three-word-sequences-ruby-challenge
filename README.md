# Ruby Challenge - Three Word Sequences

## Basic Requirements
1- check your ruby version, I'm using:

- ruby 3.1.0
- bundler 2.3.11

2- run `bundle install`

## How to run the program

1- you will need to use a `.txt` file or you can use the provided files.

2- if you want to use your own file you need to provide the full path, eg. `ruby src/solution.rb /Users/catharinakomrij/Desktop/from_desktop.txt`

3- run `ruby src/solution.rb texts/moby_dick.txt`
  top 3 from the output should be something like:

```
the sperm whale - 87
the white whale - 79
of the whale - 76
```
4- run `ruby src/solution.rb texts/moby_dick`

```
File type must be .txt
```
5- run `ruby src/solution.rb`

```
Ops file is missing
```

## How to run the tests

1- run `bundle exec rspec `

2- all tests should be green :)

## What you would do next, given more time (if anything)?
- Refactor WordSequenceBuilder, with the purpose of

- The program accepts a list of one or more file paths (e.g. ruby solution.rb texts/moby-dick.txt brothers-karamazov.txt ...).

- The program also accepts input via stdin (e.g. `cat texts/*.txt | java solution.java`).

- Running via Docker as well as via the command-line.

- Add more tests to specs

- Add logic that interacts with user:
  - display any number sequences not just 100
  - build any sequences not just 3 words


## Are there bugs that you are aware of?

No bugs that I know of, but I can see more restructuring and refactoring.