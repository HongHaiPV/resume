# Overview
A one-column, letter-size resume template in LaTeX. The template is a minimalist space-efficient design with default XeLatex font (Latin Modern) of size 11pt.

## Preview

<p align="center">
  <img src="https://github.com/HongHaiPV/resume/blob/main/resume_honghaipv.png" width="80%"/>
</p>

## Required macros
For a quick replication, you must provide the following values: `\name{}`, `\email{}`, `\phone{}`, `\address{}`, `linkedin{}` and `\github{}`.

You can change the format by modifying the class file `resume.cls`.

## Environments
 - `rSection` - takes 1 argument: Section name.
 - `rSchool` - takes 5 arguments: University name, Study duration, Degree + Major, GPA and Miscellaneous.
 - `rWork` - takes 3 arguments: Position, Company and Work duration. Responsibilities are enclosed inside `rWork`, each separated by `\item`.

## Build Instructions
- Build by using XeLatex: `$xelatex <file_name.tex>`.
- Import to an Overleaf project, using XeLatex compiler.

## References
This work is inspired by the work of Trey Hunner @ http://www.LaTeXTemplates.com and Gayle L. McDowell @ http://www.careercup.com/resume.


## License
- MIT, except the personal data which is owned by @HongHaiPV.
