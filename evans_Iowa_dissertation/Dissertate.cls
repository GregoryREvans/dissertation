% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "1.0",
%     date            = "24 January 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     supported       = "send email to suchow@post.harvard.edu",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/01/24 v1.0 Dissertate Class]
\LoadClass[12pt, oneside, letterpaper]{book}


% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}

\usepackage[
    natbib=true,
    citestyle=authortitle-ticomp,
    bibstyle=apa,
    % style=chicago-authordate, % sets both at once
    backend=biber,
    % labeldateparts,
]{biblatex}
\addbibresource{references.bib}
% \PassOptionsToPackage{citestyle=verbose-ibid, bibstyle=authoryear, backend=biber, labeldateparts}{biblatex}
\RequirePackage{dirtree}
\RequirePackage{color}
\usepackage{hyperref}
\usepackage{varioref}
\PassOptionsToPackage{printonlyused,smaller,withpage}{acronym}
\usepackage{acronym}
\usepackage{yfonts}
\usepackage{float}
\usepackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{patterns, positioning, quotes,graphs,graphs.standard,}
\usepackage{minted}
\usepackage{hologo}
\usepackage{listings}
\lstset{
  basicstyle=\fontsize{11}{13}\selectfont\ttfamily,
  columns=fullflexible,
  frame=single,
  breaklines=true,
  postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},
  lineskip={-5pt},
  keepspaces=true,
  captionpos=b, % Set the caption position to bottom
  abovecaptionskip=0pt, % Reduce the space above the caption
  belowcaptionskip=0pt, % Reduce the space below the caption
  % numbers=left,
  % numberstyle=\tiny,
  % numbersep=5pt,
  %showstringspaces=false,
  %identifierstyle=\color{blue},
  %keywordstyle=\bfseries,
  %commentstyle=\color{red},
  %stringstyle=\color{darkgreen},
}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}
\RequirePackage[palatino]{quotchap}

\usepackage{caption}
\captionsetup[lstlisting]{singlelinecheck=false}
\newcounter{subFigure}
\setcounter{subFigure}{0}

\usepackage{fontspec}

\RequirePackage{kvoptions}
\DeclareStringOption{School}[]
\ProcessKeyvalOptions*
\RequirePackage{packages/\Dissertate@School/style}

% \usepackage{makeidx}
% \makeindex
\usepackage{imakeidx}
\makeatletter
\newcommand\myindexsize{\@setfontsize\myindexsize{10}{8}} % first value is font size second ind baselineskip
\makeatother
\indexsetup{
    othercode={\myindexsize\selectfont},
    % level = \section*, % Entries start at \section level
    % toclevel = section, % Entries included in the TOC as sections
    % columns = 2, % Use two columns in the index
    % balance = true, % Balance the columns
    % headers = {Index}{Index}, % Headers for the index
    % indextopmargin = 10pt, % Set top margin
    % indexbottommargin = 10pt, % Set bottom margin
}
\makeindex[
    columns=3,
    intoc,
]
% \usepackage{idxlayout} % For index layout adjustments
% % Define the index font size
% \makeatletter
% \def\printindex{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn\fi
%   \columnseprule \z@ \columnsep 35\p@ \twocolumn[\section*{\indexname}]%
%   \@mkboth{\MakeUppercase\indexname}%
%   {\MakeUppercase\indexname}%
%   \thispagestyle{plain}\parindent\z@
%   \parskip\z@ \@plus .3\p@\relax
%   \let\item\@idxitem%
%   \small % Change this size to adjust the index font
%   \raggedright\footnotesize % If necessary, adjust alignment and font size
%   \indexsetup
%   \addtolength{\parskip}{\baselineskip}
%   \parskip\baselineskip
%   \input{\jobname.ind}\clearpage
%   \if@restonecol\twocolumn\fi}
% \makeatother

\usepackage{pdfpages}
\usepackage{enumitem}
\usepackage{graphics}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{lettrine}
%\RequirePackage[super,comma,numbers]{natbib}
% \RequirePackage[citestyle=verbose-ibid,sort&compress,square,comma,authoryear]{natbib}
% \newcommand*{\footcite}[1]{\footnote{\cite{#1}}}
% \renewcommand{\bibnumfmt}[1]{[#1]}
\RequirePackage[
    width=5.75in,
    % left=1in,
    % right=1in,
    top=1.51in,
    bottom=1.40in,
    headheight=27.17804pt,
    letterpaper,
]{geometry}
\RequirePackage{fancyhdr}

\usepackage{lilyglyphs}
\usepackage{ragged2e}

% %%% EXPERIMENTAL HEADERS
\usepackage{fancyhdr}
% % \pagestyle{fancy}
% \fancyhf{} % clear all header and footer fields
% \fancyhead[CE]{R~A~T~I~O~N~A~L~~~~T~H~A~U~M~A~T~U~R~G~Y} 
% \fancyhead[CO]{\leftmark}
% % \fancyfoot[LE,RO]{\thepage}
% \renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{#1}}{}}
% %%%%

%%% EXPERIMENTAL MARGINPARS
% graffito
% \def\graffito@setup{%
% %   \slshape\footnotesize% this was due to \slhape in above book
%    \itshape\footnotesize\leavevmode\color{Black}%
%    \parindent=0pt \lineskip=0pt \lineskiplimit=0pt %
%    \tolerance=2000 \hyphenpenalty=300 \exhyphenpenalty=300%
%    \doublehyphendemerits=100000%
%    \finalhyphendemerits=\doublehyphendemerits}

\setlength{\marginparwidth}{6.25em}%
\setlength{\marginparsep}{1.25em}%
\RequirePackage{mparhack}
\let\oldmarginpar\marginpar
\renewcommand{\marginpar}[2][]{% always add optional parameter, make it empty by default
   \if\relax\detokenize{#1}\relax% optional parameter empty, in all normal document calls
      \oldmarginpar[\singlespacing\raggedleft\hspace{0pt}\footnotesize\textit{#2}]{\singlespacing\raggedright\hspace{0pt}\footnotesize\textit{#2}}%
   \else%two parameters, let them use their styling
      \oldmarginpar[{#1}]{#2}%
   \fi%
}
% \let\graffito\marginpar
%%%

\newcommand{\mythreequarterflat}{\hspace{1pt}\lilyGlyph[scale=1.4,raise=0.5]{accidentals.mirroredflat.flat}}
\newcommand{\myflat}{\hspace{1pt}\lilyGlyph[scale=1.4,raise=0.5]{accidentals.flat}}
\newcommand{\myquarterflat}{\hspace{1pt}\lilyGlyph[scale=1.4,raise=0.5]{accidentals.mirroredflat}}
\newcommand{\mynatural}{\hspace{1pt}\lilyGlyph[scale=1.4,raise=0.7]{accidentals.natural}}
\newcommand{\myquartersharp}{\hspace{1pt}\lilyGlyph[scale=1.4,raise=0.8]{accidentals.sharp.slashslash.stem}}
\newcommand{\mysharp}{\hspace{1pt}\lilyGlyph[scale=1.4,raise=0.8]{accidentals.sharp}}
\newcommand{\mythreequartersharp}{\hspace{1pt}\lilyGlyph[scale=1.4,raise=0.8]{accidentals.sharp.slashslash.stemstemstem}}

\usepackage{tabularx}
  \setlength{\extrarowheight}{3pt} % increase table row height
\newcommand{\tableheadline}[1]{\multicolumn{1}{l}{\MakeUppercase{#1}}}
\newcommand{\myfloatalign}{\centering} % to be used with each float for alignment
\usepackage{subfig}

\usepackage[titletoc]{appendix}
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\setcounter{tocdepth}{1}

\RequirePackage{url}
\usepackage[titles]{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
%%%
\renewcommand\cftpartfont{\normalsize \scshape}
\renewcommand\cftpartpagefont{\normalsize \scshape}
%%%
% \usepackage{fixltx2e}
\usepackage{ragged2e}

\renewcommand\bibname{Bibliography}
\renewcommand\listfigurename{Listing of figures}
\RaggedRight

\parindent 12pt
\RequirePackage{mathspec}

\setmathsfont(Digits,Latin,Greek)[Numbers={Proportional},SizeFeatures={{Size=-8, OpticalSize=8},{Size= 8-, OpticalSize=12}},]{EB Garamond}
\setmathrm{EB Garamond}

\widowpenalty=300
\clubpenalty=300

\defaultfontfeatures{Mapping=tex-text}
\newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{EB Garamond}
\setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{EB Garamond}
\setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}
\setmonofont[Scale=MatchLowercase]{Noto Mono} % Font substitution for Source Code Pro

\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
								textfont={sf,footnotesize,singlespacing},
								justification={justified,RaggedRight},
								singlelinecheck=false,
								margin=0pt,
								figurewithin=chapter,
								tablewithin=chapter]{caption}

%\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\renewcommand{\thefootnote}{\arabic{footnote}}


% \usepackage[bidi=default]{babel}
% \babelprovide[import]{hebrew}
% \babelfont{rm}{FreeSerif}
% \newcommand{\startlocale}[1]{%
%   \selectlanguage{#1}%
%   \section{\foreignlanguage{nil}{#1}}}

%\onehalfspacing
%\doublespacing

% an environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Align reference numbers so that they do not cause an indent
\newlength\mybibindent
\setlength\mybibindent{0pt}
\makeatletter
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}
\makeatother

% adding space to list of listings after chapters
\makeatletter
\let\my@chapter\@chapter
\renewcommand*{\@chapter}{%
  \addtocontents{lol}{\protect\addvspace{10pt}}%
  \my@chapter}
\makeatother

% adding space to list of listings after part
% \makeatletter
% \let\my@part\@part
% \renewcommand*{\@part}{%
%   \addtocontents{lol}{\protect\addvspace{10pt}}%
%   \my@part}
% \makeatother

\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\vspace*{\fill}
\begin{center}
This page was intentionally left blank.
\end{center}
\vspace{\fill}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother

\makeatletter
\newcommand{\mypartone}[1]{
    \cleardoublepage
    % \clearpage
    \phantomsection
    \stepcounter{part}
    \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}
    \thispagestyle{empty}
    % \centering
    \begin{center}
    \null\vfill

    \textcolor{SchoolColor}{\Huge PART \thepart}

    \vspace{1cm}
    \textcolor{SchoolColor}{\LARGE\space#1}
    \\[0.25cm]
    \includegraphics[width=0.50\textwidth]{lilypond/artzt.jpg}
    \\
        \emph{Der Artzet}
    \\
    Hans Holbein
    \\
    \emph{Totentanz}
    \\
    (c.1523)
    \vfill
    \end{center}
    \clearpage
}
\makeatother

\makeatletter
\newcommand{\myparttwo}[1]{
    \cleardoublepage
    % \clearpage
    \phantomsection
    \stepcounter{part}
    \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}
    \thispagestyle{empty}

    \begin{center}
    \null\vfill

    \textcolor{SchoolColor}{\Huge PART \thepart}

    \vspace{1cm}
    \textcolor{SchoolColor}{\LARGE\space#1}
    \\[0.25cm]
    \includegraphics[width=0.75\textwidth]{lilypond/mundi.jpg}
    \\
    \emph{An sit mundus, \& an unus}
    \\
    Illustrator Unknown
    \\
    \emph{Historia Mundi Naturalis: C. Plinii Secundi}
    \\
    (c.1582)
    \vfill
    \end{center}
    \clearpage
}
\makeatother

\makeatletter
\newcommand{\appendixpart}[1]{
    \cleardoublepage
    % \clearpage
    \phantomsection
    \stepcounter{part}
    \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}
    \thispagestyle{empty}

    \begin{center}
    \null\vfill

    \textcolor{SchoolColor}{\Huge APPENDICES}

    \vspace{1cm}
    \includegraphics[width=0.50\textwidth]{lilypond/hamonshu.jpg}
    \\
    \emph{Untitled}
    \\
    Mori Yuzan
    \\
    \emph{Hamonshū}
    \\
    (c.1903)
    \vfill
    \end{center}
    \clearpage
}
\makeatother

% \makeatletter
% \newcommand{\mypart}[1]{
%     \clearpage
%     \thispagestyle{empty}
%     \centering
%     \null\vfill

%     \stepcounter{part}
%     \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}
%     {\Huge\bfseries\thepart\space#1}

%     \vspace{1cm}
%     \textbf{\Large\@author}
%     \\[0.25cm]
%     \textbf{\large Address}

%     \vfill
%     \clearpage
% }
% \makeatother

% ***********
% greek enumi
% ***********
\makeatletter
\newcommand{\Greekalpha}[1]{\c@Greekalpha{#1}}
\newcommand{\c@Greekalpha}[1]{%
  {%
    \ifcase\number\value{#1} %
    \or
    Α\or Β\or Γ\or Δ\or Ε\or Ζ\or Η\or Θ\or Ι\or Κ\or Λ\or Μ\or Ν\or Ξ\or Ο\or Π\or Ρ\or Σ\or Τ\or Υ\or Φ\or Χ\or Ψ\or Ω\fi
  }%
}
\makeatother

\makeatletter
\newcommand{\Greeklowalpha}[1]{\c@Greeklowalpha{#1}}
\newcommand{\c@Greeklowalpha}[1]{%
  {%
    \ifcase\number\value{#1} %
    \or α\or β\or γ\or δ\or ε\or ζ\or η\or θ\or ι\or κ\or λ\or μ\or ν\or ξ\or ο\or π\or ρ\or σ\or τ\or υ\or  φ\or χ\or ψ\or ω\fi
  }%
}
\makeatother

% \newfontfamily\chapternumberfont{EB Garamond}

% % Redefine the format for chapter numbers
% \titleformat{\chapter}[display]
%   {\normalfont\Huge\bfseries}{\chapternumberfont\thechapter}{0pt}{\Huge}
% sections \FloatBarrier

%%% junk test from baca book

\makeatletter
\DeclareRobustCommand{\spacedlowsmallcaps}[1]{{\addfontfeatures{LetterSpace=14.0}\scshape\lowercase{#1}}}% WordSpace=1.8
\DeclareRobustCommand{\spacedcaps}[1]{{\addfontfeatures{LetterSpace=14.0}\scshape\uppercase{#1}}}% WordSpace=1.8
\makeatother
     

\titleformat{\section}
    {\relax}{\textsc{\lowercase{\thesection}}}{1em}{\spacedcaps}
    
% subsections
\titleformat{\subsection}
    {\relax}{\textsc{\lowercase{\thesubsection}}}{1em}{\addfontfeature{Ligatures={Historic, Common, Rare}}\addfontfeature{RawFeature=+swsh}\normalsize\itshape}
    
% Greg added swashes and ligatures to subsection titles
% subsubsections
% \titleformat{\subsubsection}
%     {\relax}{\textsc{\lowercase{\thesubsubsection}}}{1em}{\addfontfeature{Ligatures={Historic, Common, Rare}}\normalsize\itshape}
% can't decide between styles but shouldn't nest any deeper just to use all of them
\titleformat{\subsubsection}
    {\relax}{\textsc{\lowercase{\thesubsubsection}}}{1em}{\spacedlowsmallcaps}