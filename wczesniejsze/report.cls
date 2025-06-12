\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt,a4paper,authortitle]{mwrep}
\usepackage[OT4]{polski}
\usepackage{url}

\makeatletter

\newcommand\svnurlfield{SVN}
\newcommand\promotorfield{Promotor}

\let\@svnurl\@empty
\newcommand{\svnurl}[1]{
  \DeclareRobustCommand{\@svnurl}{\svnurlfield: \url{#1}}
}
\newcommand\@typesetsvnurl{%
  \ifx\@svnurl\@empty
  \else
    \footnote{\@svnurl}
  \fi
}

\newcommand{\studycycle}{
  \DeclareRobustCommand{\@studycycle}
}

\newcommand{\coursesemester}{
  \DeclareRobustCommand{\@coursesemester}
}

\newcommand{\coursename}{
  \DeclareRobustCommand{\@coursename}
}

\newcommand{\courseyear}{
 \DeclareRobustCommand{\@courseyear}
}

\newcommand{\courseteacher}{
  \DeclareRobustCommand{\@courseteacher}
}

\newcommand{\coursegroup}{
 \DeclareRobustCommand{\@coursegroup}
}
\newcommand{\pretitle}{
  \DeclareRobustCommand{\@pretitle}
}

\newcommand{\department}{
  \DeclareRobustCommand{\@department}
}

\newcommand\@typesettitle{{\LARGE \@title\@typesetsvnurl \par}}
\newcommand\@typesetpretitle{{\@pretitle \par}}
\newcommand\@typesetauthor{{\LARGE \@author \par}}
\newcommand\@typesetdepartment{{\@department \par}}

\newcommand\coursesemesterfield{Semestr}

\renewcommand{\maketitle}{%
  \newpage
  \null
  \includegraphics[scale=0.8]{ftims_logo}
  
  \vskip 5\baselineskip
  \hrule{\hspace{\textwidth}}\\
  \noindent\strut\@studycycle\hfill\coursesemesterfield\ \@coursesemester
  \hrule{\hspace{\textwidth}}\\
  \noindent\strut\@coursename\hfill\ \@courseyear
  \hrule{\hspace{\textwidth}}\\
  \noindent\strut\@courseteacher\hfill\ \@coursegroup
  \hrule{\hspace{\textwidth}}\\

  \vskip 5\baselineskip
  \begin{center}%
  \let \footnote \thanks
    \large
  \@typesetpretitle%
  \vskip 1\baselineskip
  \@typesettitle%
  \vskip 4\baselineskip
  \@typesetauthor%
 % \vskip 1\baselineskip
 % \includegraphics[scale=0.20]{ftims}
 % \par
 % \@typesetdepartment%
 % \end{center}%

 % \begin{flushright}%
 % \vskip 6\baselineskip
 % \@typesetpromotor%
 % \end{flushright}%
  
 % \begin{center}%
 % \vskip 5\baselineskip
 % \@typesetexamdate%
   \end{center}%

  \par
  \vskip 1\baselineskip
  }