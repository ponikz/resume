% SPDX-FileCopyrightText: Copyright (c) 2025 Alexey Ponikarov
% SPDX-License-Identifier: MIT

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aap[Alexey Ponikarov]
\LoadClass[12pt]{article}
\RequirePackage{xcolor}
  \definecolor{my-blue}{RGB}{5,60,94}
\RequirePackage{graphicx}
\RequirePackage{svg}
\RequirePackage{microtype}
\RequirePackage{libertine}
\RequirePackage[absolute]{textpos}
  \TPGrid{16}{16}
\RequirePackage[top=2\TPVertModule, bottom=2\TPVertModule, left=3\TPHorizModule, right=2\TPHorizModule]{geometry}
\RequirePackage{tikz}
\RequirePackage{fancyhdr}
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{0pt}
  \fancyhf{}
  \fancyfoot[C]{
    \ifnum\value{page}=1\else
      \color{gray} page \thepage{} of \pageref{LastPage}
    \fi
  }
  \fancyfoot[C]{
    \begin{textblock}{2}(0,0){
      \tikz[x=\TPHorizModule,y=\TPVertModule] \filldraw[fill=my-blue, draw=none] (0,0) rectangle (2,16);
    }\end{textblock}
  }

% Replace this with \RequirePackage{href-ul}
\RequirePackage[normalem]{ulem}
\RequirePackage[hidelinks]{hyperref}
  \makeatletter\begingroup
    \catcode`\$=6 %
    \catcode`\#=12 %
    \gdef\href@split$1#$2#$3\\$4{%
      \hyper@@link{$1}{$2}{\uline{$4}}%
      \endgroup
    }%
  \endgroup\makeatother

\newcommand\nospell[1]{#1}

\AtBeginDocument{%
  \setlength{\topskip}{0mm}
  \setlength{\parindent}{0pt}
  \setlength{\parskip}{5pt}
  \tolerance=2000
  % \raggedbottom
  \large
}
\newcommand\myPhoto{%
  \begin{textblock}{3.2}[1,0](14,1.7){
    \includegraphics[width=\textwidth]{me.jpg}
  }\end{textblock}
}

\endinput
