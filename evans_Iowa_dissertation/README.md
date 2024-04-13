# Dissertate: a LaTeX dissertation template [![Build Status](https://travis-ci.org/suchow/Dissertate.svg?branch=master)](https://travis-ci.org/suchow/Dissertate)


This package provides all the files needed to support the production and typesetting of a PhD dissertation at Harvard, Princeton, and NYU, though it can easily be adapted to meet the requirements of other schools. The format and styling is based closely on the requirements published by each university's registrar.

## Getting started
1. Pick your school by editing line 6 of `dissertation.tex` to use the option `Harvard`, `Princeton`, or `NYU`, depending on your school.
4. Personalize the document by filling out your name and all the other info in `frontmatter/personalize.md`.
5. Begin writing your thesis using the chapter files in 'chapters/'

## FAQ

### How do I make the text justified instead of ragged right?
Remove or comment out the line `\RaggedRight` from the .cls file.

## Acknowledgments
Thanks to Andrew Leifer for many code and README contributions and to Clemens Eppner for the Ubuntu instructions.

## Note: This template has been preloaded into Overleaf (www.overleaf.com) to make it possible to get started without needing to install anything, and this README file has been updated to reflect this. To use this template on a local machine, please see the original source at https://github.com/suchow/Dissertate