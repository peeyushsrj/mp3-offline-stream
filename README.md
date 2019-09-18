mp3-offline-stream
==================

cloud with a substring match on song titles.

Use case:
- Slow internet collection ; stream previous collection of mp3 from laptop.

## Requirement

1. ruby
2. sinatra gem

## Use

1. Clone repo.
2. Move `index.rb` and `views/` directory to the directory where music files are.
3. Search a song: `0.0.0.0:4567/?q=writer`


## Roadmap

- To be written ( required things as 1.0)

### Changelog

v: 0.2
======

- Ruby as an executable (for linux)
- String match better downcased
- Priting sample sizes before server starts

v: 0.3
======

- changed: port default 4567 => 4444 
- added: form for input
- added: mobile zoom supported

v: 0.4
======

- modified: front-end upgrade
- added: no results found
