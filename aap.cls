\NeedsTeXFormat{LaTeX2e}
 \ProvidesClass{aap}
 \LoadClass[12pt]{article}
 
 \RequirePackage{xcolor}
   \definecolor{my-blue}{RGB}{5,60,94}
 \definecolor{my-blue}{RGB}{5,60,94}
 
 \RequirePackage{graphicx}
 \RequirePackage{svg}
 \RequirePackage{microtype}
 \RequirePackage{libertine}
 \RequirePackage[absolute]{textpos}
   \TPGrid{16}{16}
 \RequirePackage[top=2\TPVertModule, bottom=2\TPVertModule, left=3\TPHorizModule, right=2\TPHorizModule]{geometry}
 \TPGrid{16}{16}
 
 \RequirePackage[top=2\TPVertModule, bottom=2\TPVertModule, 
                left=3\TPHorizModule, right=2\TPHorizModule]{geometry}
 
 \RequirePackage{tikz}
 \RequirePackage{fancyhdr}
   \pagestyle{fancy}
   \renewcommand{\headrulewidth}{0pt}
   \fancyhf{}
   \fancyfoot[C]{{
     \ifnum\value{page}=1\else
       \color{gray} page \thepage{} of \pageref{LastPage}
     \fi
   }}
   \fancyfoot[C]{
     \begin{textblock}{2}(0,0){
       \tikz[x=\TPHorizModule,y=\TPVertModule] \filldraw[fill=my-blue, draw=none] (0,0) rectangle (2,16);
     }\end{textblock}
   }
 
 % Replace this with \RequirePackage{href-ul}
 \pagestyle{fancy}
 \renewcommand{\headrulewidth}{0pt}
 \fancyhf{}
 \fancyfoot[C]{%
   \ifnum\value{page}=1\else
     \color{gray} page \thepage{} of \pageref{LastPage}%
   \fi
 }
 \fancyfoot[L]{%
   \begin{tikzpicture}[remember picture,overlay]
     \fill[my-blue] (current page.south west) rectangle ++(2\TPHorizModule,16\TPVertModule);
   \end{tikzpicture}%
 }
 

 \RequirePackage{href-ul}
 
 \newcommand\nospell[1]{#1}
 
 @@ -48,13 +45,16 @@
   \setlength{\parindent}{0pt}
   \setlength{\parskip}{5pt}
   \tolerance=2000
   % \raggedbottom
   \raggedbottom
   \large
 }
 
 \newcommand\myPhoto{%
   \begin{textblock}{2.8}[1,0](14,1.5){
     \includegraphics[width=\textwidth]{me.jpg}
   }\end{textblock}
   \begin{textblock}{2.8}[1,0](14,1.4)
     \includegraphics[width=\linewidth]{me.jpg}
   \end{textblock}
 }
 
 \endinput
 
 \endinput
