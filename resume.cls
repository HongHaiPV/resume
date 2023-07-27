%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESUME CLASS FILE
% 
% Original template by: Trey Hunner v0.9 @ http://www.LaTeXTemplates.com
% Modifications by: HongHaiPV
% This class file defines the structure and design of the template. 
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2023/05/01 v1.0 Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type
\usepackage{mathptmx}
\usepackage[T1]{fontenc}
\usepackage{academicons}
\usepackage{fontawesome}

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements

\pagestyle{empty} % Suppress page numbers
\usepackage[left=0.6in
            ,top=0.5in
            ,right=0.6in
            ,bottom=0.6in
            ]{geometry} % Document margins

%----------------------------------------------------------------------------------------
% HEADINGS COMMANDS: Commands for printing name, address, email, phone number, linkedin and github
%----------------------------------------------------------------------------------------

\newcommand{\name}[1]{\renewcommand{\name}{#1}}
\newcommand{\phone}[1]{\renewcommand{\phone}{#1}}
\newcommand{\email}[1]{\renewcommand{\email}{#1}}
\newcommand{\address}[1]{\renewcommand{\address}{#1}}
\newcommand{\linkedin}[1]{\renewcommand{\linkedin}{#1}}
\newcommand{\github}[1]{\renewcommand{\github}{#1}}

% \printname is used to print the name as a page header

\def \printname {
  \begin{center}
    {\centering \huge \name}
  \end{center}
  \vspace{-\baselineskip}
}


%----------------------------------------------------------------------------------------
% PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printname % Print the name specified with \name
  \begin{center}
  \begin{minipage}[t]{.35\textwidth}
    \href{mailto:\email}{\email}\\ % Print email with clickable link
    \phone % Print phone number
  \end{minipage}%
  \begin{minipage}[t]{.3\textwidth}
    \centering
    \address % Print address
  \end{minipage}%
  \begin{minipage}[t]{.35\textwidth}
    \begin{flushright} % Align the right most box by the longest line
    \begin{tabular}[t]{l}
      \href{https://www.\linkedin}{\faLinkedinSquare\,\linkedin}\\ % Print LinkedIn profile with clickable link
      \href{https://www.\github}{\faGithub\,\github} % Print Github with clickable link
    \end{tabular}
    \end{flushright}
  \end{minipage} % End of the minipage
  \end{center}
  % \vspace{-0.8em}
}

%----------------------------------------------------------------------------------------
% SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionskip
  \MakeUppercase{\textbf{#1}} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{1em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
% WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSchool}[5]{ % 5 input arguments - University, year(s) studied, discipline, GPA and awards
  {\bf #1} \hfill {#2}\\
  {#3} \hfill {#4}\\
  {#5}
}

\newenvironment{rWork}[3]{ % 3 input arguments - title, company's name and work duration
  {
  \begin{minipage}[t]{0.4\textwidth}
    \bf #1 % Print title
  \end{minipage}
  \begin{minipage}[t]{0.3\textwidth}
    \bf #2 % Print company's name
  \end{minipage}
  \hfill \bf #3 % Flush work duration to the right
  }
  \begin{list}{\raisebox{.7\height}{\scalebox{.7}{$\bullet$}}}{\leftmargin=0em} % using small scaled \bullet for bullets, no indentation
    \setlength{\itemsep}{-0.5em} \vspace{-0.5em}% Compress items in list together for aesthetics
  }{
  \end{list}
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\huge} % Size of the name at the top of the document
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\nameskip{\bigskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section
