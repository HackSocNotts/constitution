\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{constitution}[Document class for HackSoc Constitution]

\LoadClass[a4paper,twoside,notitlepage,11pt]{article}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[a4paper,margin=20mm]{geometry}
\RequirePackage[colorlinks,linkcolor=darkgray]{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{catchfile}
\RequirePackage{graphicx}

\titleformat{\section}[hang]{\normalfont}
{\thesection~~~}{.5em}{}[\quad]
\titleformat{\section}[hang]{\fontsize{14}{17}\bfseries}{\noindent\thesection. }{1pt}{}[\quad]
\titleformat{name=\section, numberless}[hang]{\fontsize{14}{17}\bfseries}{}{1pt}{}[\quad]
\titlespacing{\section}{0mm}{0mm}{-2em}[-2em]
\titlespacing{name=\section, numberless}{0mm}{0mm}{-2em}[-2em]
\renewcommand{\thesection}{\arabic{section}}

\newcounter{clause}
\makeatletter
\@addtoreset{clause}{section}
\makeatother
\newenvironment{clause}[1][]{\refstepcounter{clause}\par\medskip\noindent\thesection.\theclause #1 \rmfamily}{\medskip}

\newcounter{subclause}
\makeatletter
\@addtoreset{subclause}{clause}
\makeatother
\newenvironment{subclause}[1][]{\refstepcounter{subclause}\par\medskip\noindent\thesection.\theclause.\thesubclause #1 \rmfamily}{\medskip}