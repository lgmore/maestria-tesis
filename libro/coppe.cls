%%
%% This is file `coppe.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% coppe.dtx  (with options: `class')
%% 
%% This is the `coppe' document class used for composition of LaTeX
%% monographs (master and PhD thesis, and PhD qualifying exams)
%% satisfying the requirements of the Coordination of Research and
%% Graduate Courses in Engineering at the Federal University of
%% Rio de Janeiro.
%% 
%% Copyright (C) 2008 Vicente Helano and George Ainsworth Jr.
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License version 3 as
%% published by the Free Software Foundation.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%% GNU General Public License version 3 for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% version 3 along with this package (see COPYING file).
%% If not, see <http://www.gnu.org/licenses/>.
%% 
%% Author(s): Vicente Helano,
%%            George Ainsworth
%% 
%% \CheckSum{1391}
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\def\filename{coppe.dtx}
\def\fileversion{v2.1.1}
\def\filedate{2009/11/17}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{coppe}[\filedate\ \fileversion\ COPPE Dissertations and Thesis]
\LoadClass[12pt,a4paper,oneside]{book}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyphenat}
\RequirePackage{lastpage}
\RequirePackage[plainpages=false,pdfpagelabels]{hyperref}
%\RequirePackage[english,brazil]{babel}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{eqparbox}
\RequirePackage[a4paper,bindingoffset=0.0cm,vcentering=true,%
top=3.5cm,bottom=2.5cm,left=4.0cm,right=2.5cm]{geometry}
\def\CoppeTeX{{\rm C\kern-.05em{\sc o\kern-.025em p\kern-.025em
p\kern-.025em e}}\kern-.08em
T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX\spacefactor1000}

\RequirePackage{fancyhdr}
\RequirePackage{titlesec}

\newboolean{isdraft}
\newboolean{maledoc}
\setboolean{maledoc}{false}
\setboolean{isdraft}{false}

%% 
%\titleformat{\chapter}[hang]{\huge}{\thechapter}{1em}{}
\titleformat{\chapter}[display]{\LARGE}{\bfseries \chaptertitlename~\thechapter}{1em}{\bfseries} 
\titlespacing{\chapter}{0pt}{2.5cm}{1cm}



\fancypagestyle{rectorado}{%
\fancyhead{}
\fancyfoot{} %clear all headers and footers fields
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[R]{\thepage} %prints the page number on the right side of the header
}

\fancypagestyle{plain}{%redefining plain pagestyle
\fancyhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot{} %clear all headers and footers fields
%\fancyhead[R]{\thepage} %empty page for chapter's first page
}
%%

%\pdfstringdefDisableCommands{\def\Makeuppercase{}}

\DeclareOption{msc}{%
  \newcommand{\@degree}{M.Sc.}
  \newcommand{\@degreename}{Maestr\'ia en Ciencias de la Computaci\'on}
  \newcommand{\local@degname}{M\'aster en Ciencias de la Computaci\'on}
  \newcommand{\foreign@degname}{Master in Computer Science}
  \newcommand\local@doctype{Tesis}
  \newcommand\foreign@doctype{Dissertation}
}
\DeclareOption{dscexam}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doctorado}
  \newcommand{\local@degname}{Doctor}
  \newcommand{\foreign@degname}{Doctor}
  \setboolean{maledoc}{true}
  \newcommand\local@doctype{Examen de Calificaci\'on}
  \newcommand\foreign@doctype{Qualifying Exam}
}
\DeclareOption{dsc}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doctor}
  \newcommand{\local@degname}{Doctor}
  \newcommand{\foreign@degname}{Doctor}
  \newcommand\local@doctype{T\'esis}
  \newcommand\foreign@doctype{Thesis}
}
\DeclareOption{draft}{%
  \setboolean{isdraft}{true}
  \ClassWarning{coppe}{draft mode is ON}%
}
\DeclareOption{numbers}{%
  \PassOptionsToPackage{numbers}{natbib}
}
\DeclareOption{pdftex}{%
  \PassOptionsToPackage{pdftex}{hyperref,graphicx}
  \PassOptionsToPackage{plainpages=false,pdfpagelabels}{hyperref}
}
\DeclareOption{dvips}{%
  \PassOptionsToPackage{dvips}{hyperref,graphicx}
}
\onehalfspacing
\DeclareOption{doublespacing}{%
  \doublespacing
}
\ProcessOptions\relax
\newcommand\university[1]{%
  \renewcommand\local@universityname{#1}
}

\newcommand\department[1]{%
  \ifthenelse{\equal{#1}{PEC}}
    {\global\def\local@deptname{Facultad Polit\'ecnica }
     \global\def\foreign@deptname{Polytechnical School}}{}
  \ifthenelse{\equal{#1}{PEE}}
    {\global\def\local@deptname{Engenharia El{\' e}trica}
     \global\def\foreign@deptname{Electrical Engineering}}{}
  \ifthenelse{\equal{#1}{PEM}}
    {\global\def\local@deptname{Engenharia Mec{\^ a}nica}
     \global\def\foreign@deptname{Mechanical Engineering}}{}
  \ifthenelse{\equal{#1}{PEMM}}
    {\global\def\local@deptname{Engenharia Metal{\' u}rgica e de Materiais}
\global\def\foreign@deptname{Metallurgical and Materials Engineering}}{}
  \ifthenelse{\equal{#1}{PEN}}
    {\global\def\local@deptname{Engenharia Nuclear}
     \global\def\foreign@deptname{Nuclear Engineering}}{}
  \ifthenelse{\equal{#1}{PENO}}
    {\global\def\local@deptname{Engenharia Oce{\^ a}nica}
     \global\def\foreign@deptname{Ocean Engineering}}{}
  \ifthenelse{\equal{#1}{PPE}}
    {\global\def\local@deptname{Planejamento Energ{\' e}tico}
     \global\def\foreign@deptname{Energy Planning}}{}
  \ifthenelse{\equal{#1}{PEP}}
    {\global\def\local@deptname{Engenharia de Produ{\c c}{\~ a}o}
     \global\def\foreign@deptname{Production Engineering}}{}
  \ifthenelse{\equal{#1}{PEQ}}
    {\global\def\local@deptname{Engenharia Qu{\' i}mica}
     \global\def\foreign@deptname{Chemical Engineering}}{}
  \ifthenelse{\equal{#1}{PESC}}
    {\global\def\local@deptname{Engenharia de Sistemas e Computa{\c c}{\~ a}o}
     \global\def\foreign@deptname{Systems Engineering and Computer Science}}{}
  \ifthenelse{\equal{#1}{PET}}
    {\global\def\local@deptname{Engenharia de Transportes}
     \global\def\foreign@deptname{Transportation Engineering}}{}
}
\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}

\newcommand\catalogingtitle[1]{%
  \global\def\cataloging@title{#1}%
}

\newcommand\foreigntitle[1]{%
  \global\def\foreign@title{#1}%
}
\newcount\@advisor\@advisor0
\newcommand\advisor[4]{%
  \global\@namedef{CoppeAdvisorTitle:\expandafter\the\@advisor}{#1}
  \global\@namedef{CoppeAdvisorName:\expandafter\the\@advisor}{#2}
  \global\@namedef{CoppeAdvisorSurname:\expandafter\the\@advisor}{#3}
  \global\@namedef{CoppeAdvisorDegree:\expandafter\the\@advisor}{#4}
  \global\@namedef{CoppeAdvisorFull:\expandafter\the\@advisor}{#1\ #2 #3 #4}
  \global\advance\@advisor by 1
  \ifnum\@advisor>1
    \renewcommand\local@advisorstring{Orientadores}
    \renewcommand\foreign@advisorstring{Advisors}
  \fi
}
\newcount\@examiner\@examiner0
\newcommand\examiner[3]{%
  \global\@namedef{CoppeExaminer:\expandafter\the\@examiner}{#1\ #2, #3}
  \global\advance\@examiner by 1
}
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}
\renewcommand\date[2]{%
  \month=#1
  \year=#2
}
\newcommand\local@monthname{\ifcase\month\or
  Enero\or Febrero\or Marzo\or Abril\or Mayo\or Junio\or
  Julio\or Agosto\or Setiembre\or Octubre\or Noviembre\or Diciembre\fi}
\newcommand\foreign@monthname{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
\newcommand\place[3]{%
  \renewcommand\local@cityname{#1}
  \renewcommand\local@statename{#2}
  \renewcommand\local@countryname{#3}
}
\newcounter{keywords}
\newcommand\keyword[1]{%
  \global\@namedef{CoppeKeyword:\expandafter\the\c@keywords}{#1}
  \global\addtocounter{keywords}{1}
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  \thispagestyle{empty}
  \setcounter{page}{2}
  \makefrontpage
  \clearpage
%%%  \pagestyle{plain}
\pagestyle{rectorado}
  \ifthenelse{\boolean{maledoc}}{}{\makecatalog}%
}
\renewcommand\mainmatter{%
  \immediate\write\@auxout{%
    \string\newlabel{front:pageno}{{}{\Roman{page}}{}{page.\roman{page}}{}}}
  \cleardoublepage
  \@mainmattertrue
% % % % % % % % % % % % % % % % % % %   \pagestyle{plain}
%%\pagestyle{myheadings}
\pagestyle{rectorado}
  \pagenumbering{arabic}}

\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
\titleformat{\chapter}[display]{\LARGE}{\bfseries \chaptertitlename~\thechapter}{1em}{\bfseries} 
\titlespacing{\chapter}{0pt}{0.5cm}{1cm}
}
\renewcommand\maketitle{%
\pagenumbering{alph}
\config@hypersetup
  \begin{titlepage}
            \begin{flushleft}
            \setlength\baselineskip{0pt}
            \setlength\parskip{1mm}
            \centering\makebox[10cm][c]{\includegraphics[width=3cm]{logo-pol.png}}\par
            \makebox[20mm][c]{\bf\sf\small DIP/FPUNA}
            \end{flushleft}
  \begin{center}
  \nohyphens{\bf \local@title}\par
  \vspace*{28mm}
  \nohyphens{\bf \@authname\ \@authsurn}\par
  \end{center}
  \vspace*{16mm}
% % %   \begin{flushright}

  \begin{minipage}{1\textwidth}\centering
% % % % % % % % % % % % % % % % % % % % % % % % % % % % comentar para tapa
\nohyphens{%
  \begin{tabularx}{100mm}[b]{@{}l@{ }X@{}}
    \local@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorFull:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@%
        \expandafter&\expandafter\space%
        \csname CoppeAdvisorFull:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@ 
  \end{tabularx}}\par
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
%  \vspace*{28mm} separacion para tapa
   \vspace*{20mm} 
  \frontcover@maintext
  \end{minipage}\par
%   \vspace*{7.5mm}
  
% % %   \end{flushright}
  \vspace*{\fill}
  \begin{center}
  \MakeUppercase{\local@cityname\ - \local@countryname} \par
  \local@monthname\ - \number\year
  \end{center}
  \end{titlepage}
  \global\let\maketitle\relax%
  \global\let\and\relax}
%-1\newcommand\makefrontpage{%
%-1  \begin{center}
%-1    {\bf \sloppy\nohyphens{\local@title}}\par
%-1    \vspace*{15mm}
%-1% % %     \MakeUppercase{\bf{\@authname\ \@authsurn}}\par
%-1   {\bf{\@authname\ \@authsurn}}\par
%-1  \end{center}\par
%-1  \vspace*{15mm}
%-1%   \frontpage@maintext
%-1  \noindent Aprobado en Noviembre del 2011.\par
%-1\vskip2cm
%-1     \begin{center}
%-1  \begin{flushright}
%-1        \count1=0
 %-1       \@whilenum \count1<\@examiner \do {
%-1            \vskip50\p@ \baselineskip12pt
%-1        \eqparbox{signture@list}{\hrulefill}\\
%-1        \eqparbox{signture@list}{\protect\centering%
%-1            \ \ \ \csname CoppeExaminer:\the\count1 \endcsname\ \ \ }\\
%-1            \advance\count1 by 1}
%-1  \end{flushright}
%-1     \end{center}
%-1  \vspace*{\fill}
%-1%  \frontpage@bottomtext
%-1}
\newcommand\makefrontpage{%
	\begin{center}
		\sloppy\nohyphens{\textbf{\MakeUppercase\local@title}}\par
		\vspace*{15mm}
		{\@authname\ \@authsurn}\par
	\end{center}\par
	\vspace*{15mm}
	%\frontpage@maintext
	%\noindent Aprobado en Agosto del 2017.\par
	\vspace*{8mm}
	\noindent\local@approvedname:\par
	\begin{center}
		\begin{flushright}
			\count1=0
			\@whilenum \count1<\@examiner \do {
				\vskip26\p@ \baselineskip12pt
				\eqmakebox[signture@list][c]{\hrulefill}\\
				\eqmakebox[signture@list][c]{%
					\ \ \ \protect\csname CoppeExaminer:\the\count1 \endcsname\ \ \ }\\
				\advance\count1 by 1}
		\end{flushright}
	\end{center}
	\vspace*{\fill}
	%\frontpage@bottomtext
}

\newcommand\config@hypersetup{%
\begingroup
  % changes to \toks@ and \count@ are kept local;
  % it's not necessary for them, but it is usually the case
  % for \count1, because the first ten counters are written
  % to the DVI file, thus you got lucky because of PDF output
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{keywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname CoppeKeyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname CoppeKeyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter;\expandafter\space
        \csname CoppeKeyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \edef\x{\endgroup
    \noexpand\hypersetup{%
      pdfkeywords={\the\toks@}%
    }%
  }%
\x
\hypersetup{%
  pdfauthor={\@authname\ \@authsurn},
  pdftitle={\local@title},
 pdfsubject={\local@doctype\ de \@degreename\ en \local@deptname\ de DIP/FPUNA},
  pdfcreator={LaTeX with CoppeTeX toolkit},
  breaklinks={true},
  raiselinks={true},
  pageanchor={true},
}}
\newcommand\makecatalog{%
  \vspace*{\fill}
  \begin{center}
% % %     \setlength{\fboxsep}{5mm}
% % %     \mbox{\makebox[5mm][c]{}%
      \begin{minipage}[c]{1\textwidth}
      \setlength{\parindent}{10mm}
      \noindent Datos internacionales de Catalogaci\'on en la Publicaci\'on (CIP)\\
      \noindent DE BIBLIOTECA CENTRAL DE LA UNA\par
      \vspace*{10mm}
      \noindent\sloppy\nohyphens\@authsurn,\nohyphens\@authname\par
\vspace*{10mm}
%\local@title
%\nohyphens{\local@title/\@authname\ \@authsurn. -- \local@cityname
     % , \number\year.}\par
      \nohyphens{\cataloging@title/\@authname\ \@authsurn. -- \local@cityname
      , \number\year.}\par

% % %       \pageref{front:pageno},
      \pageref{LastPage} p. :~il. \par
% %       p.\@ifundefined{r@cat:lofflag}{}{\pageref{cat:lofflag}}.\par
%% 24May2011 sin tamaño de hoja
%%%p.\@ifundefined{r@cat:lofflag}{}{\pageref{cat:lofflag}} $29,7$cm.\par
      % There is an issue here. When the last entry must be split between lines,
      % the spacing between it and the next paragraph becomes smaller.
      % Should we manually introduce a fixed space? But how could we know that
      % a name was split? Is this happening yet?
% % %       \nohyphens{%
% % %       \begin{tabularx}{100mm}[b]{@{}l@{ }X@{}}
% % %         \local@advisorstring: &
% % %         \count1=0
% % %         \toks@={}
% % %         \@whilenum \count1<\@advisor \do{%
% % %         \ifcase\count1 % same as \ifnum0=\count1
% % %           \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
% % %           \expandafter\endcsname\expandafter\space%
% % %           \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
% % %         \else
% % %           \toks@=\expandafter\expandafter\expandafter{%
% % %             \expandafter\the\expandafter\toks@
% % %             \expandafter&\expandafter\space
% % %             \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
% % %             \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
% % %           }%
% % %         \fi
% % %         \advance\count1 by 1}
% % %         \the\toks@
% % %       \end{tabularx}}\par
\vspace*{10mm}
      \nohyphens{\local@doctype\ ({\@degreename}) --
      \local@deptname, \number\year.}\par
       Bibliograf\'ia.\par
\vspace*{10mm}
%24-May-2011 Eliminado
      %\bibname: p. \pageref{bib:begin} -- \pageref{bib:end}.\par
      \count1=0
      \count2=1
      \nohyphens{\@whilenum \count1<\value{keywords} \do {%
        \number\count2. \csname CoppeKeyword:\the\count1 \endcsname.
        \advance\count1 by 1
        \advance\count2 by 1}      
      I. T{\' i}tulo.}\par
\vspace*{10mm}
\hfill CDD 519.4 \qquad \qquad \par  
% \begin{tabularx}{\textwidth}{r}
% 
%  \end{tabularx}

    \end{minipage}
% % % }
  \end{center}
  \vspace*{\fill}}

\newcommand\dedication[1]{
  \gdef\@dedic{#1}
    \cleardoublepage
    \vspace*{\fill}
    \begin{flushright}
      \begin{minipage}{60mm}
        \raggedleft \it \normalsize \@dedic
      \end{minipage}
    \end{flushright}}

\newenvironment{abstract}{%
  \clearpage
%%%  \thispagestyle{plain}
\thispagestyle{rectorado}
%%%  \abstract@toptext\par
  \vspace*{4.6mm}
  \begin{center}
    {\bf \sloppy\nohyphens{\local@title}}
%    \vspace*{2.2mm}
%     \@authname\ \@authsurn \par
%     \vspace*{7mm}
%     \local@monthname/\number\year
  \end{center}\par
  \vspace*{\fill}
  \noindent%
\begin{minipage}{1\textwidth}
\begin{minipage}{0.45\textwidth}
 \ 
\end{minipage}
\begin{minipage}{0.53\textwidth}
  \begin{tabularx}{\textwidth}[b]{@{}l@{ }X@{}}
    Autor: & \@authname\ \@authsurn \\
    \local@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter&\expandafter\space
        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}\par
\end{minipage}
\end{minipage}\par
\vspace*{5mm}
\noindent{\bf RESUMEN}\par \ \par
% % %   \noindent\local@deptstring: \local@deptname\par
% % %   \vspace*{7mm}
}{
\vspace*{\fill}
}
\newenvironment{foreignabstract}{%
  \clearpage
%%%  \thispagestyle{plain}
  \thispagestyle{rectorado}
  \begin{otherlanguage}{english}
% % %   \foreignabstract@toptext\par
  \vspace*{4.6mm}
  \begin{center}
    {\bf \sloppy\nohyphens{\foreign@title}}
%    \vspace*{2.2mm}
%     \@authname\ \@authsurn \par
%     \vspace*{7mm}
%     \local@monthname/\number\year
  \end{center}\par
  \vspace*{\fill}
  \noindent%
\begin{minipage}{1\textwidth}
\begin{minipage}{0.45\textwidth}
 \ 
\end{minipage}
\begin{minipage}{0.53\textwidth}
  \begin{tabularx}{\textwidth}[b]{@{}l@{ }X@{}}
    Author: & \@authname\ \@authsurn \\
    \foreign@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter&\expandafter\space
        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}\par
\end{minipage}
\end{minipage}\par
\vspace*{5mm}
\noindent{\bf SUMMARY}\par \ \par
}{%
  \end{otherlanguage}
  \vspace*{\fill}
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\foreign@title\@empty
  \global\let\foreign@title\relax
  \global\let\local@title\@empty
  \global\let\local@title\relax
  \global\let\author\relax
  \global\let\author\relax
  \global\let\date\relax}
\renewcommand\listoffigures{%
  \immediate\write\@auxout{%
\string\newlabel{cat:lofflag}{{}{:~il.}{}{page.\roman{page}}{}}}
  %%\string\newlabel{cat:lofflag}{{}{:~il.;}{}{page.\roman{page}}{}}}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \addcontentsline{toc}{chapter}{\listfigurename}%
% % %       \@mkboth{\listfigurename}%
% % %               {\listfigurename}%
      \@mkboth{\listfigurename}%
              {\listfigurename}%

    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \addcontentsline{toc}{chapter}{\listtablename}%
      \@mkboth{%
          \listtablename}%
         {\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\newcommand\printlosymbols{%
\renewcommand\glossaryname{\listsymbolname}%
\@input@{\jobname.los}}
\def\makelosymbols{%
  \newwrite\@losfile
  \immediate\openout\@losfile=\jobname.syx
  \def\symbl{\@bsphack\begingroup
             \@sanitize
             \@wrlos}\typeout
  {Writing index of symbols file \jobname.syx}%
  \let\makelosymbols\@empty
}
\@onlypreamble\makelosymbols
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2}{\thepage}}%
    \endgroup
    \@esphack}}}
\newcommand\printloabbreviations{%
\renewcommand\glossaryname{\listabbreviationname}%
\@input@{\jobname.lab}}
\def\makeloabbreviations{%
  \newwrite\@labfile
  \immediate\openout\@labfile=\jobname.abx
  \def\abbrev{\@bsphack\begingroup
              \@sanitize
              \@wrlab}\typeout
  {Writing index of abbreviations file \jobname.abx}%
  \let\makeloabbreviations\@empty
}
\@onlypreamble\makeloabbreviations
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2}{\arabic{page}}}%
    \endgroup
    \@esphack}}}
\newdimen\bibindent%
\setlength\bibindent{1.5em}%
\renewenvironment{thebibliography}[1]%
     {\chapter*{\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}%
      \immediate\write\@auxout{%
      \string\newlabel{bib:begin}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\setlength{\labelwidth}{0ex}%
            \setlength{\leftmargin}{9.0ex}%
            \setlength{\itemindent}{-9.0ex}%
            \advance\leftmargin\labelsep%
            \@openbib@code%
            \usecounter{enumiv}%
            \let\p@enumiv\@empty%
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy%
      \clubpenalty4000%
      \@clubpenalty \clubpenalty%
      \widowpenalty4000%
      \sfcode`\.\@m}%
     {\def\@noitemerr%
       {\@latex@warning{Empty `thebibliography' environment}}%
      \immediate\write\@auxout{%
      \string\newlabel{bib:end}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}%
      \endlist}
\newenvironment{theglossary}{%
  \if@twocolumn%
    \@restonecolfalse\onecolumn%
  \else%
    \@restonecolfalse%
  \fi%
  \@mkboth{\glossaryname}%
  {\glossaryname}%
  \chapter*{\glossaryname}%
  \addcontentsline{toc}{chapter}{\glossaryname}
  \list{}
  {\setlength{\listparindent}{0in}%
   \setlength{\labelwidth}{1.0in}%
   \setlength{\leftmargin}{1.5in}%
   \setlength{\labelsep}{0.5in}%
   \setlength{\itemindent}{0in}}%
   \sloppy}%
  {\if@restonecol\twocolumn\fi%
\endlist}
\renewenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\indexname}%
  {\indexname}%
%%%  \thispagestyle{plain}\parindent\z@
\thispagestyle{rectorado}\parindent\z@
  \addcontentsline{toc}{chapter}{\indexname}
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\glossaryname{Glossary}
\newcommand\listabbreviationname{LISTA DE ABREVIATURAS}
\newcommand\listsymbolname{LISTA DE S\'IMBOLOS}
\newcommand\local@advisorstring{Orientador}
\newcommand\foreign@advisorstring{Advisor}
%\ifthenelse{\boolean{maledoc}}{%
%  \newcommand\local@approvedname{Examinado por}%
%}{%
%  \newcommand\local@approvedname{Examinada por}%
%}
\ifthenelse{\boolean{maledoc}}{%
	\newcommand\local@approvedname{Aprobado en Agosto de 2017 por}%
}{%
	\newcommand\local@approvedname{Aprobado en Agosto de 2017 por}%
}
\newcommand\local@universityname{Universidad Nacional de Asunci\'on}
\newcommand\local@deptstring{Programa}
\newcommand\foreign@deptstring{Department}
\newcommand\local@cityname{Asunci\'on}
\newcommand\local@statename{}
\newcommand\local@countryname{Paraguay}

% % % Tesis presentada a la Escuela de Estudios de Postgraduación Académica (o Facultad de),
% % % Universidad Nacional de Asunción, como requisito para la obtención del Grado de
% % % Magíster en.... Curso de (o Departamento de)

\newcommand\frontcover@maintext{
  \sloppy\nohyphens{\local@doctype\ 
  \ifthenelse{\boolean{maledoc}}{presentado}{presentada}
  a la  \local@deptname de la 
  \local@universityname, 
como requisito para la obtenci\'on del Grado de
  \local@degname.}
}
\newcommand\frontpage@maintext{
  \noindent {\local@doctype}
  \ifthenelse{\boolean{maledoc}}{ENVIADO}{ENVIADA}
  \sloppy\nohyphens{AL CUERPO DOCENTE DEL DEPARTAMENTO DE POSTGRADUCI\'ON DE LA FACULTAD POLIT\'ECNICA
DE LA UNIVERSIDAD NACIONAL DE ASUNCI\'ON COMO PARTE DE LOS REQUISITOS
  NECESARIOS PARA A OBTENCI\'ON DEL GRADO DE 
  {\local@degname} EN
  {\local@deptname.\par}}%
}
\newcommand\frontpage@bottomtext{%
  \begin{center}
%   {{\local@cityname, \local@statename\ -- \local@countryname}}\par
  {{\local@cityname, -- \local@countryname}}\par
  {\local@monthname\ DEL \number\year}
  \end{center}%
}

%% 
%%
%% End of file `coppe.cls'.
