\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{constitution}[2009/05/15 v0.0.1 Document class for typesetting a constitution]

\LoadClass[a4paper,twoside,notitlepage,11pt]{article}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[letterpaper,margin=20mm]{geometry}
\RequirePackage[colorlinks,linkcolor=darkgray]{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{amstext}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{tocloft}
\RequirePackage{titletoc}
\RequirePackage[explicit]{titlesec}
\RequirePackage[all]{xy}
\RequirePackage{nccmath}
\RequirePackage[a4paper,hmargin=75pt,vmargin=2cm]{geometry}
\RequirePackage[hypcap]{caption}
\RequirePackage{cleveref}
\RequirePackage{amssymb}
\RequirePackage{listings}
\RequirePackage{float}
\RequirePackage{latexsym}
\RequirePackage{changepage}
\RequirePackage{mdframed}
\RequirePackage{hyperref}
\RequirePackage{enumerate}
\RequirePackage{catchfile}

% Temporary
\setcounter{section}{1}

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