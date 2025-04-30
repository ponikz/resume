% SPDX-FileCopyrightText: Copyright (c) 2025 Alexey Ponikarov
% SPDX-License-Identifier: MIT

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aap}
\LoadClass[12pt]{article}

\RequirePackage{xcolor}
\definecolor{my-blue}{RGB}{5,60,94}

\RequirePackage{graphicx}
\RequirePackage{svg}
\RequirePackage{microtype}
\RequirePackage{libertine}
\RequirePackage[absolute]{textpos}
\TPGrid{16}{16}

\RequirePackage[top=2\TPVertModule, bottom=2\TPVertModule, 
               left=3\TPHorizModule, right=2\TPHorizModule]{geometry}

\RequirePackage{tikz}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}

\RequirePackage[normalem]{ulem}
\RequirePackage{href-ul}
\RequirePackage[hidelinks]{hyperref}

\newcommand\nospell[1]{#1}

\AtBeginDocument{%
  \setlength{\topskip}{0mm}
  \setlength{\parindent}{0pt}
  \setlength{\parskip}{5pt}
  \tolerance=2000
  \raggedbottom
  \large
}

\newcommand\myPhoto{%
  \begin{textblock}{2.8}[1,0](14,1.4)
    \includegraphics[width=\linewidth]{me.jpg}
  \end{textblock}
}

\endinput

\endinput
