%%
%% This is file `csbachelor.cls',
%% 
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{csbachelor}
    [2017/3/22 v0.2 ZJU Dissertation Class]

\DeclareOption{authoryear}{\def\zjubibstyle{A}}
\DeclareOption{numberorder}{\def\zjubibstyle{N}}

\newif\ifzju@side\zju@sidetrue
\DeclareOption{twoside}{\zju@sidetrue}
\DeclareOption{oneside}{\zju@sidefalse}

\ExecuteOptions{twoside,oneside}
\ProcessOptions\relax
\ifzju@side
   \LoadClass[a4paper,12pt,twoside,titlepage,openany]{article}
   \def\zjuside{T}
\else
   \LoadClass[a4paper,12pt,oneside,titlepage]{article}
   \def\zjuside{O}
\fi

\RequirePackage[top=2.54cm,bottom=1.65cm,left=3.17cm,right=2.17cm,includehead,includefoot]{geometry}

\RequirePackage{ifthen}
\RequirePackage{calc}

% Label multi-line equations and add the last line. 
\RequirePackage[tbtags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage{amsthm}

\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

% Add reference by chapters
%\RequirePackage{chapterbib}
\RequirePackage[sort&compress,numbers,sectionbib]{natbib}
\bibliographystyle{plain}

\RequirePackage[normalem]{ulem}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Times New Roman}
%\setmonofont{Courier New}

\RequirePackage[slantfont,boldfont]{xeCJK}
\setCJKmainfont[BoldFont=STHeiti,ItalicFont=STKaiti]{STSong}
\setCJKsansfont[BoldFont=STHeiti]{STXihei}
\setCJKmonofont{STFangsong}
\punctstyle{kaiming}

\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{nomencl}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{url}
\urlstyle{tt}

\RequirePackage{lscape}
\RequirePackage{graphicx}
\RequirePackage{pdfpages}

\RequirePackage{enumerate}
\RequirePackage{float}
\RequirePackage{array}

\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{multirow}
\RequirePackage{dcolumn}
\RequirePackage{colortbl}
\RequirePackage{threeparttable}
\RequirePackage{array}
\setlength{\headheight}{27pt}
\setlength{\footskip}{1.3cm}
\raggedbottom

%\frenchspacing
\widowpenalty=10000
\setlength{\parskip}{0pt}
\setlength{\parindent}{2.0em}

% line span
\RequirePackage{setspace}
%\setstretch{1.6}
\linespread{1.5}\selectfont
%\renewcommand{\baselinestretch}{1.6}

% array span
\renewcommand{\arraystretch}{0.8}

\setlength{\abovedisplayskip}{0pt}
\setlength{\belowdisplayskip}{0pt}

\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}
\setCJKfamilyfont{FangSong}{STFangSong}
\setCJKfamilyfont{HeiTi}{STXihei}
\setCJKfamilyfont{KaiShu}{AR PL KaitiM GB}
\setCJKfamilyfont{LiShu}{FZLiShu-S01}
\setCJKfamilyfont{SongTi}{STSong}
\setCJKfamilyfont{YouYuan}{YouYuan}
\setCJKfamilyfont{STFangsong}{STFangsong}
\setCJKfamilyfont{STXingkai}{STXingkai}
\DeclareRobustCommand{\fangsong}{\CJKfamily{FangSong}}
\DeclareRobustCommand{\stfangsong}{\CJKfamily{STFangsong}}
\DeclareRobustCommand{\stxingkai}{\CJKfamily{STXingkai}}
\DeclareRobustCommand{\heiti}{\CJKfamily{HeiTi}}
\DeclareRobustCommand{\kaiti}{\CJKfamily{KaiShu}}
\DeclareRobustCommand{\lishu}{\CJKfamily{LiShu}}
\DeclareRobustCommand{\songti}{\CJKfamily{SongTi}}
\DeclareRobustCommand{\youti}{\CJKfamily{YouYuan}}
\setcounter{secnumdepth}{4}

%\titleformat{\chapter}[block]%
%{\sanhao\heiti\filcenter}{}{1em}{}{}
%\titlespacing{\chapter}%
%  {0pt}{0.3\baselineskip}{0.3\baselineskip}
%\titlecontents{chapter}[1.5em]{}%
%{}{}{\titlerule*[10pt]{.}\contentspage}

\titleformat{\section}[hang]%
  {\sihao\heiti}{\thesection}{1em}{}{}
\titlespacing{\section}%
  {0pt}{0.2\baselineskip}{0.2\baselineskip}
\titlecontents{section}[2.2em]{}%
{\hspace{1em}\thecontentslabel\hspace{1em}}{}{\titlerule*[7pt]{.}\contentspage}

\titleformat{\subsection}[hang]%
  {\xiaosi\heiti}{\thesubsection}{1em}{}{}
\titlespacing{\subsection}%
  {0pt}{0.1\baselineskip}{0.1\baselineskip}
\titlecontents{subsection}[3.0em]{}%
{\hspace{2em}\thecontentslabel\hspace{1em}}{}{\titlerule*[5pt]{.}\contentspage}

\titleformat{\subsubsection}[hang]%
  {\xiaosi}{\thesubsubsection}{1em}{}{}
\titlespacing{\subsubsection}%
  {0pt}{0.0\baselineskip}{0.0\baselineskip}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.5pt}
%\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

%\fancypagestyle{plain}{
%  \fancyhf{}
%  \fancyhead[L]{\xiaowu\songti 浙江大学计算机科学与技术学院本科毕业论文}
%  \fancyhead[R]{\xiaowu\songti\leftmark 呵呵}
%  \fancyfoot[C]{\xiaowu\thepage}}
\fancyhf{}
%\fancyhead[L]{\xiaowu\songti 浙江大学计算机科学与技术学院本科毕业论文}
%\fancyhead[R]{\xiaowu\songti\leftmark}
\fancyfoot[C]{\xiaowu\thepage}
\renewcommand{\contentsname}{\centerline{目\quad 录}}
\renewcommand{\listfigurename}{\centerline{图~目~录}}
\renewcommand{\listtablename}{\centerline{表~目~录}}
\setcounter{tocdepth}{2}  % 设置目录的深度到 subsection
\renewcommand{\nomname}{\centerline{术~语~表}}
\renewcommand{\refname}{参考文献}
%\renewcommand{\bibname}{参~考~文~献}
%\renewcommand{\bibname}{\centerline{参~考~文~献}}
\renewcommand{\nomlabelwidth}{25mm}
\renewcommand{\nompreamble}{\vspace{1em}}
\makenomenclature
\renewcommand{\figurename}{图} % 插图题头
\renewcommand{\tablename}{表} % 插表题头
\setlength{\belowcaptionskip}{2mm}
\renewcommand{\footnotesize}{\wuhao}
\newtheoremstyle{zjutheorem}
   {9pt}{9pt}{\ttfamily}{0pt}{\heiti}{：}{0pt}{}
\theoremstyle{zjutheorem}
\newtheorem{zjuhypothsis}{假设~}[section]
\newtheorem{zjudefine}{定义~}[section]
\newtheorem{zjulemma}{引理~}[section]
\newtheorem{zjutheorem}{定理~}[section]
\newtheorem{zjuproposition}{命题~}[section]
\newenvironment{zjuproof}{\begin{proof}[\textnormal{\heiti 证明~}]}{\end{proof}}
\newcolumntype{.}{D{.}{.}{2.4}}
\AtBeginDocument{%
   \makeatletter
   \input{csbachelor.cfg}
   \makeatother}
\endinput

%%
%% End of file `csbachelor.cls'.
