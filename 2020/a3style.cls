\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style}[shui]
%\LoadClass[UTF8,a4paper,winfonts,openright]{ctexbook} %其中winfonts解决某些不常用字无法正确显示的问题，其中openright与twoside的效果一样
\LoadClass[twocolumn,landscape,UTF8,twoside]{ctexbook}%A3双栏排版用


%\RequirePackage{gbt7714} %参考文献
%\RequirePackage[backend=biber,style=gb7714-2015]{biblatex} %参考文献，其中biber是参考文献的编译器，可自己选择
%\RequirePackage{cite}  

%\RequirePackage[top=2.5cm,bottom=2cm,left=2.5cm,right=2cm]{geometry} % 页边距
%对于A3双栏排版而言\columnwidth=(\textwidth-\columnsep)/2,也就是本栏的\textwidth，也就是默认的\linewidth
\usepackage[paperwidth=42.0cm,paperheight=29.7cm,top=2.25cm,bottom=2.25cm,right=2.5cm,left=3.5cm,columnsep=3cm]{geometry}%A3试卷使用
\columnseprule=.4pt %双栏分割线


\RequirePackage{mathdots} %添加斜向省略号

\RequirePackage{xcolor}%定义了一些颜色
%\RequirePackage{colortbl,booktabs}%第二个包定义了几个*rule，画表格用
%\RequirePackage[linguistics]{forest} %画树形图
%\RequirePackage{luatex85} %画分形menger-sponge用


%\RequirePackage[colorlinks]{hyperref}
\RequirePackage[draft=false,colorlinks=true,CJKbookmarks=true,linkcolor=black,citecolor=green,urlcolor=red,hyperindex]{hyperref}
\RequirePackage{enumerate} %生成列项序号使用
\RequirePackage{extarrows} %用于各种箭头等号上下带文字
%报错Undefined control sequence. }  (为没有请求相应宏包)
\RequirePackage{amssymb} %使用数学识别公式软件（Mathpix Snipping Tool）
%\RequirePackage{subfig} %使用subfig并列排图
\RequirePackage{amsmath} %数学公式
\RequirePackage{amsthm}
\RequirePackage{mathtools} %数学公式扩展宏包,提供了公式编号定制和更多的符号、矩阵等。
\RequirePackage{cases} %使用括号对公式等进行并列排列

%\RequirePackage{longtable} %长表格
%\RequirePackage{multirow} %支持合并多行单元格。
%\RequirePackage{tabu} %提供排版复杂格式表格的 tabu 环境

\RequirePackage{graphicx} %图片
%\RequirePackage{epsfig} 
%\RequirePackage{tikz} %画图
%\RequirePackage{mathpazo} %画图
%\RequirePackage{pgfplots} %画图
%\RequirePackage{pstricks} %画图
%\usetikzlibrary{calc,intersections,through,backgrounds} %画图相关
%\usepgfplotslibrary{fillbetween} %图像的填充
%\usetikzlibrary{patterns}	%作图相关
%\RequirePackage{listings}   %插入代码

\RequirePackage{amsfonts} %用来输入各种符号的特殊形态，例如字母的花体、空心体等，配合amssymb使用
\RequirePackage{mathrsfs} %数学中的花体(不是太花的)
%\RequirePackage{float}
%\lstset{language=Mathematica}%这条命令可以让LaTeX排版时将Mathematica键字突出显示
%\lstset{extendedchars=false}%这一条命令可以解决代码跨页时，章节标题，页眉等汉字不显示的问题
%\usetikzlibrary{shapes,arrows} %tikz图形库

%\RequirePackage{overpic} %图上标记
%\RequirePackage[labelfont=bf,textfont=bf]{caption}


%\usepackage{subfig}%subcaption与subfig冲突
%subfig也可以弄子图子标题，推荐subcaption
%\usepackage[caption=false]{subfig}%subfig较为安全的用法
\RequirePackage{caption}
\RequirePackage{subcaption}%subcaption与subfig冲突
%在subcaption里面也可以使用\subfloat[标题]{}的形式

%\RequirePackage[numbers,sort&compress]{natbib} %参数代表：数字和排序与压缩，与biblatex有冲突

\RequirePackage{textcomp} %摄氏度符号
%\usepackage{ccmap} %pdf中文复制
%\RequirePackage{color} %gnuplot彩色文字
%\RequirePackage{indentfirst}


%\RequirePackage{xltxtra}
%\RequirePackage{bm}
%\RequirePackage{pdfpages}
\RequirePackage{fancyhdr} %页眉页脚排版相关

\graphicspath{{picture/}} %图片存放目录,可直接引用，不用填路径名


\RequirePackage{titlesec} %设置目录标题格式
\RequirePackage{titletoc} %设置目录标题格式

\RequirePackage{indentfirst} %段落缩进包
%\RequirePackage{setspace}    %设置行间距包 此包与脚注的超链接有冲突，设置摘要的行间距使用,暂时使用别的方法替代设置
\RequirePackage[bodytextleadingratio=1.917]{zhlineskip} %采用新包进行行间距设置，学校要求正文宋体小4号，12磅，行间距23磅，约为1.917倍
% 采用带圈数字符号代替*号脚注
\xeCJKsetcharclass{`①}{`⑩}{1}


% 默认页面页眉页脚样式
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\songti\zihao{5} \thepage}% 页码位于页脚居中
    \renewcommand{\headrulewidth}{0pt}       %去掉页眉的下滑线
   \fancyhead[R]{\songti\zihao{5}\leftmark}
    %\fancyhead[C]{\songti\zihao{-5}\@ctitle}
    %\fancyhead[C]{\songti\zihao{-5}\leftmark}
}
\pagestyle{plain}






%目录格式
\titlecontents{chapter}
         [0em] %目录页的左间距，不能省
         {\heiti \zihao{4} } %设置标题的整体格式，如字体、字体尺寸、与上一个标题的垂直距离等。该参数可空置
         {\contentslabel{1.5em}} %设置标题标志的格式,如序号格式、序号宽度、序号与标题内容之间的间距等，不能为空
         {}%
         {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{0em}}

\titlecontents{section}
         [1.2em]
         {\songti \zihao{-4} \addvspace{-1pt} }%其中的\addvspace{-1pt}是为调整二级标题在目录中的垂直距离而用，可根据排版效果自行改变
         {\contentslabel{2.5em}}
         {}%
         {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{0em}}

\renewcommand{\contentsname}{目 \quad 录}


%标题格式格式
\ctexset{
	chapter ={
                format = \centering \heiti \LARGE,
               % pagestyle = empty,
		name = {,、},
		%number = \chinese{section},
                aftername = { \!\!\!\!\! },
	}
}
%
\ctexset{
	section ={
                format =  \heiti \zihao{4},
		name = {（, ）},
                aftername = { \!\!\!\!\! },
		number = \chinese{section},
	}
}

%%%%

\ctexset{
	subsection ={
		format = \raggedright \heiti \zihao{-4},
		number = \arabic{section},
	}
}
\ctexset{
	subsubsection ={
		format = \raggedright \heiti \zihao{-4},
		number = \arabic{section},
	}
}

%各个标题的设置
%%%
\iffalse
\newcommand{\大zx}[2]{
    \chapter*{#1}
    \songti
    \zihao{-4}
    {#2}
}
\newcommand{\中zx}[2]{
    \section{#1}
    \songti
    \par
    \zihao{-4}
    {#2}
}
\fi
%%%


%分部标题
\newcounter{counter0}
\newcommand{\bt}[1]{
	\refstepcounter{counter0}
    \addcontentsline{toc}{part}{第\chinese{counter0}章 \  #1}
    \chaptermark{第\chinese{counter0}章 \ #1}
	\part*{第\chinese{counter0}章$ \quad $ #1}
}
%一级标题
\newcounter{counter1}[counter0]
\newcommand{\bta}[1]{
    %\NoBgThispage
    \clearpage{\backgroundsetup{contents={}}\pagestyle{empty}\cleardoublepage}%其中的\NoBgThispage是使水印不显示\backgroundsetup{contents={}}控制分页多出的空白页不显示水印
	\refstepcounter{counter1}
	\chapter*{#1}
	\addcontentsline{toc}{chapter}{#1}
	\chaptermark{#1}
	\songti
	\zihao{5}
}
%二级标题
\newcounter{counter2}[counter1]
\newcommand{\btb}[1]{
	\refstepcounter{counter2}
	\section*{(\chinese{counter2} ) #1}
	\addcontentsline{toc}{section}{(\chinese{counter2}) #1 }
	\songti
	\zihao{5}
}
%%%%%%
%三级标题
\newcounter{counterA}[counter2]
\newcommand{\btc}[1]{
	\refstepcounter{counterA}
    \subsection*{\Roman{counterA} \ {#1}}
        \songti
        \zihao{5}
}
%四级标题
\newcounter{counterB}[counterA]
\newcommand{\btd}[1]{
	\refstepcounter{counterB}
        %\subsubsection*{ (\arabic{counterB}) \!\! {#1}}
        \subsubsection*{#1}
        \songti
        \zihao{5}
}
	
	
\numberwithin{equation}{counter1} %令公式的计数器与章节挂钩
	
%\numberwithin{figure}{counter1} %令图片的计数器与章节挂钩
\numberwithin{figure}{enumi}

\numberwithin{table}{counter1} %令表格的计数器与章节挂钩


%图片编号
\renewcommand{\thefigure}{\arabic{figure}}

%对子图的标号作设置
\renewcommand{\thesubfigure}{\text{$ \alph{subfigure} $}}



%重定图片义分隔符
%\makeatletter
%\long\def\@makecaption#1#2{% % #2 is argument of \caption and \captionof command     
%	\vskip\abovecaptionskip
%	\sbox\@tempboxa{#2}        % place #2 into a scratch TeX box
%	\ifdim \wd\@tempboxa = 0pt % test if scratch box has zero width
%	\centering #1 \par       % if yes, typeset only #1 (the float's name and number)
%	\else                      % else, proceed with default definition
%	\sbox\@tempboxa{\setmainfont{Times New Roman} \heiti \zihao{5}{#1$ \ $ #2}} %设置图片表格标题样式
%	\ifdim \wd\@tempboxa >\hsize
%	#1: #2\par
%	\else
%	\global \@minipagefalse
%	\hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
%	\fi
%	\fi
%	\vskip\belowcaptionskip}
%\makeatother
%重定图片义分隔符

\newenvironment{myquote}{\begin{quote}\kaishu\small}{\end{quote}}	%对于引用话语，古籍等做的一个环境设定


%定理环境
\newtheorem{theorem}{定理}[counter1]

%公理环境
\newtheorem{axiom}{公理}[counter1]

%定义环境
\newtheorem{definition}{定义}[counter1]

%引理环境
\newtheorem{lemma}{引理}[counter1]

%猜想环境
\newcounter{counterguess} %这组计数全局通用
\refstepcounter{counterguess}
\newtheorem{guess}{猜想}[counterguess]

%有时由于分页的问题，脚注会出问题可以使用下面的命令手调
%\setcounter{footnote}{3} %设置脚注

%\usepackage{ulem}

%
%上面的答案显示与隐藏的使用是：\answer{ABC}，其中的[1]为参数个数，#1代表参数
%	
\newcommand{\lmx}[1]{\romannumeral #1}	%罗马数字小写
\newcommand{\lmd}[1]{\uppercase\expandafter{\romannumeral #1}}	%罗马数字大写



%新增加的

%定义平行四边形
\usepackage{tikz}
\newcommand\ps{%
	\mathord{\text{%
			\tikz[baseline]
			\draw ( 0em, .1ex) -- ++ (.9em,0ex) -- ++(.2em, 1.2ex) -- ++(-.9em,0ex) -- cycle;}}}	

%\usepackage[backend=biber,style=gb7714-2015,gbfootbib=true]{biblatex} %backend是选择编译器，gbfootbib是使用国标的脚注显示
%\DeclareFieldFormat{howpublished}{\href{#1}{#1}} %用于参考网页文献网址中含有中文名字是添加正常显示
%\newcommand{\howpublished}[1]{howpublished= {\href{#1}{#1}}}
%\addbibresource{date/参考文献.bib}
%\usetikzlibrary{lindenmayersystems} %画分形图像用
%
%下面是答案的隐藏和显示，此处处理的答案不包括详解，详解部分需另外进行处理
%
\usepackage{multirow}
\usepackage{pdfpages}
\usepackage{wrapfig}
%
%
\usepackage[normalem]{ulem}%下划线\uline{XXX}
%\usepackage{soul}下划线的
\usepackage{diagbox}%斜线表头的制作
\newlength{\keylength}
\newif\ifanswer
\newboolean{print}
\setboolean{print}{true}


\newcommand{\tk}[1]{
	\ifanswer
	%\underline{~#1~}%
\answxsim{
\item
#1
}{}
	\else
	%\settowidth{\keylength}{~#1~}
	%\underline{\hspace{\keylength}}
    %\uline{\hspace{\keylength}}
%注意，此处不能使用\hspace{\keylength}进行填充(在刚好换行的时候会出问题)
%\uline{\hbox to 2cm{}}%长度的问题。暂时没找到解决办法
    %\textcolor{red}{\ul{#1}}
	\fi}


\newcommand{\xzanswer}[1]{%
	\ifanswer
	  $ ( \ \ \ \ ) $
\answxsim{
\item
#1
}{}% $ ( \quad ) $
	\else
      $ ( \quad ) $
	%\phantom{#1}%
	\fi}

%为兼容以前的选择题保留下面的\answer命令
\newcommand{\answer}[1]{%
	\ifanswer
			#1%
	\else
	%\phantom{#1}%
	\fi}
%
%
%
%\usepackage{xcolor}
\makeatletter
\newif\ifstudent
\studenttrue
\newenvironment{master}{%
	\ifstudent\def\@eqnnum{{\normalfont \color{white} (\theequation)}}\color{white}%
	\else\def\@eqnnum{{\normalfont \normalcolor (\theequation)}}\normalcolor%
	\fi}{}
\makeatother

\newcommand{\banswer}[1]{%
	\ifanswer
%    \par
%	%\fbox{%
%		\parbox{\linewidth}{%
%			\vspace{0.5em}
%			\noindent
%			{\heiti{\zihao{-4}解：}}
%			#1%
%			\vspace{0.5em}
%		}%
%	}
\answxsim{
\item
#1
}{}\vfill
    %\vfill %垂直分列，自动划分大题的空白
	\else
	%\phantom{#1}% 
\iffalse 
	\begin{master}
	\fbox{%
		\parbox{\textwidth}{%
			\vspace{0.5em}
			\noindent
			{\heiti{\zihao{-4}解：}}
			#1%
			\vspace{0.5em}
		}%
	}
    \end{master}
\fi
    \vfill %垂直分列，自动划分大题的空白
	\fi}



%题目出处
\newif\ifexwhere
\newcommand{\exwhere}[1]{%
	\ifexwhere
	(#1)%
	\else
	%\phantom{#1}%
	\fi}
%

%\tktrue  %显示填空题答案\printtrue；隐藏填空题答案\printfalse




%填空题填写答案示意：\underline{\hbox to 13mm{\answer{\text{答案}}}}
\usepackage{graphicx}
\usepackage{background}

\backgroundsetup{scale=1,angle=0,opacity=0.15,contents={
		%\begin{tikzpicture}[remember picture,overlay]
		%\node at ([yshift=300pt,xshift=-200pt]current page.center)
		%{\includegraphics[width=10cm]{2.png}};
		%\end{tikzpicture}
}}


\usepackage{wrapfig} 
\usepackage{enumitem}
\usepackage{enumerate}
\newlength\baoxwidth
\setlength\baoxwidth{0ex}

\usepackage{svg}

%
%定义弧形
%
\usepackage{xwatermark}
\usepackage{arcs}
\usepackage{etoolbox}
\makeatletter
\providecommand\@gobblefour[4]{}
\patchcmd{\over@under@arc}
{\@gobbletwo}
{\@gobblethree}
{\@gobblefour}
{}{}{}
\makeatother
%
%定义弧形
%

%\usepackage{longtable}

\usepackage{tabularx}

%
%表格内换行
%
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}} 
%
%引用格式\tabincell{c}{内容\\内容}
%

%
%对选择题的四个选项处理
%
\usepackage{xstring,xifthen}
\newlength{\choicelengtha}
\newlength{\choicelengthb}
\newlength{\choicelengthc}
\newlength{\choicelengthd}
\newlength{\choicelengthe}
\newlength{\maxlength}
\newcommand{\fourchoices}[4]
{
	\par
	\settowidth{\choicelengtha}{A.~#1~~~}
	\settowidth{\choicelengthb}{B.~#2~~~}
	\settowidth{\choicelengthc}{C.~#3~~~}
	\settowidth{\choicelengthd}{D.~#4~~~}
	\ifthenelse{\lengthtest{\choicelengtha>\choicelengthb}}{\setlength{\maxlength}{\choicelengtha}}{\setlength{\maxlength}{\choicelengthb}}
	\ifthenelse{\lengthtest{\choicelengthc>\maxlength}}{\setlength{\maxlength}{\choicelengthc}}{}
	\ifthenelse{\lengthtest{\choicelengthd>\maxlength}}{\setlength{\maxlength}{\choicelengthd}}{}
	\ifthenelse{\lengthtest{\maxlength>0.49\linewidth}}%万事留一线(防止意外)
	{
    %在enumerate的环境中使用这个对齐没有问题，其它环境可能会有问题
    \begin{enumerate}[leftmargin=1.9em]
    	%\renewcommand{\labelenumii}{\Alph{enumii}.}
     %   \renewcommand{\labelenumiii}{\Alph{enumiii}.}
    	% A(\Alph) a(\alph) I(\Roman) i(\roman) 1(\arabic)
    	%设定全局标号series=example	%引用全局变量resume=example
    	%[topsep=-0.3em,parsep=-0.3em,itemsep=-0.3em,partopsep=-0.3em]
    	%可使用leftmargin调整列表环境左边的空白长度 [leftmargin=0em]
        	\item[A.]
        	#1
        \item[B.] 
    	       #2
        \item[C.] 
        #3
        \item[D.] 
        #4
    \end{enumerate} 
	\vspace{-1em}
	}
	{
		\ifthenelse{\lengthtest{\maxlength>0.24\linewidth}}%万事留一线(防止意外)
		{
			\begin{tabularx}{\linewidth}{XX}
				\setlength\tabcolsep{0pt}
				A.~#1~~~ & B.~#2~~~\\
				C.~#3~~~ & D.~#4~~~%\\
			\end{tabularx}
		\vspace{-1em}
		}
		{
			\begin{tabularx}{\linewidth}{XXXX}
				\setlength\tabcolsep{0pt}
				A.~#1~~~  & B.~#2~~~ & C.~#3~~~ & D.~#4~~~ %\\ \\
			\end{tabularx}
		\vspace{-2em}
		}
	}
	%\unskip \unskip
	%\vspace{-1em}
}


%
%对五个选项的处理(物理选修中可能遇到)
%
\newcommand{\fivechoices}[5]
{
\begin{enumerate}
	%\renewcommand{\labelenumii}{\Alph{enumii}.}
    %\renewcommand{\labelenumiii}{\Alph{enumiii}.}
	% A(\Alph) a(\alph) I(\Roman) i(\roman) 1(\arabic)
	%设定全局标号series=example	%引用全局变量resume=example
	%[topsep=-0.3em,parsep=-0.3em,itemsep=-0.3em,partopsep=-0.3em]
	%可使用leftmargin调整列表环境左边的空白长度 [leftmargin=0em]
   \item[A.]
        	#1
        \item[B.] 
    	       #2
        \item[C.] 
        #3
        \item[D.] 
        #4
        \item[E.] 
        #5
\end{enumerate}
}


%对与四个选项为图像时进行特殊处理

\newcommand{\pfourchoices}[4]
{
	\settowidth{\choicelengtha}{A.~#1~}
	\settowidth{\choicelengthb}{B.~#2~}
	\settowidth{\choicelengthc}{C.~#3~}
	\settowidth{\choicelengthd}{D.~#4~}
	\ifthenelse{\lengthtest{\choicelengtha>\choicelengthb}}{\setlength{\maxlength}{\choicelengtha}}{\setlength{\maxlength}{\choicelengthb}}
	\ifthenelse{\lengthtest{\choicelengthc>\maxlength}}{\setlength{\maxlength}{\choicelengthc}}{}
	\ifthenelse{\lengthtest{\choicelengthd>\maxlength}}{\setlength{\maxlength}{\choicelengthd}}{}
	\ifthenelse{\lengthtest{\maxlength>0.49\linewidth}}%万事留一线(防止意外)
	{
\par
\noindent
\parbox[t]%
{1.5em}{\hfill A.}\hskip0.2em%
\parbox[t]{\linewidth-1.7em}{\strut\raggedright%
	#1\strut}%
\\
\parbox[t]%
{1.5em}{\hfill B.}\hskip0.2em%
\parbox[t]{\linewidth-1.7em}{\strut\raggedright%
	#2\strut}%
\\
\parbox[t]%
{1.5em}{\hfill C.}\hskip0.2em%
\parbox[t]{\linewidth-1.7em}{\strut\raggedright%
	#3\strut}%
\\
\parbox[t]%
{1.5em}{\hfill D.}\hskip0.2em%
\parbox[t]{\linewidth-1.7em}{\strut\raggedright%
	#4\strut}%
%\vspace{\parskip}
\par
	}
	{
		\ifthenelse{\lengthtest{\maxlength>0.24\linewidth}}%万事留一线(防止意外)
		{
\par
\noindent
\begin{minipage}[h!]{0.49\linewidth}
 	\centering
 	#1\par
 	A.\vspace{1.5em}
\end{minipage}
 \hfill
\begin{minipage}[h!]{0.49\linewidth}
 	\centering
 	#2\par
 	B.\vspace{1.5em}
 \end{minipage}
\\
\begin{minipage}[h!]{0.49\linewidth}
 	\centering
 	#3\par
 	C.\vspace{0.9em}
\end{minipage}
 \hfil
\begin{minipage}[h!]{0.49\linewidth}
 	\centering
 	#4\par
 	D.\vspace{0.9em}
 \end{minipage}
%\vspace{\parskip} %这里，当有四个的时候自动会有parskip空行，原因未知
\par
		}
		{
\par
\noindent
\begin{minipage}[t]{0.25\linewidth}
 	\centering
 	#1\par
 	A.\vspace{0.9em}
 \end{minipage}
\begin{minipage}[t]{0.25\linewidth}
 	\centering
 	#2\par
 	B.\vspace{0.9em}
 \end{minipage}
\begin{minipage}[t]{0.25\linewidth}
 	\centering
 	#3\par
 	C.\vspace{0.9em}
 \end{minipage}
\begin{minipage}[t]{0.25\linewidth}
 	\centering
 	#4\par
 	D.\vspace{0.9em}
 \end{minipage}
%\vspace{\parskip} %这里，当有四个的时候自动会有parskip空行，原因未知
\par
		}
	}
}


%
%
%
%
%对选择题的三个选项处理
%
\newlength{\threechoicelengtha}
\newlength{\threechoicelengthb}
\newlength{\threechoicelengthc}
\newlength{\threemaxlength}
\newcommand{\threechoices}[3]
{
	\par
	\settowidth{\threechoicelengtha}{A.~#1~~~}
	\settowidth{\threechoicelengthb}{B.~#2~~~}
	\settowidth{\threechoicelengthc}{C.~#3~~~}
	\ifthenelse{\lengthtest{\threechoicelengtha>\threechoicelengthb}}{\setlength{\threemaxlength}{\threechoicelengtha}}{\setlength{\threemaxlength}{\threechoicelengthb}}
	\ifthenelse{\lengthtest{\threechoicelengthc>\threemaxlength}}{\setlength{\threemaxlength}{\threechoicelengthc}}{}
	\ifthenelse{\lengthtest{\threemaxlength>0.49\linewidth}}
	{
		\begin{tabularx}{\linewidth}[t]{X}
			\setlength\tabcolsep{0pt}
			A.~#1~~~\\
			B.~#2~~~\\
			C.~#3~~~%\\
		\end{tabularx}
	\vspace{-1em}
	}
	{
		\ifthenelse{\lengthtest{\threemaxlength>0.24\linewidth}}
		{
			\begin{tabularx}{\linewidth}[t]{XX}
				\setlength\tabcolsep{0pt}
				A.~#1~~~ & B.~#2~~~\\
				C.~#3~~~ & ~%\\
			\end{tabularx}
		\vspace{-1em}
		}
		{
			\begin{tabularx}{\linewidth}[t]{XXXX}
				\setlength\tabcolsep{0pt}
				A.~#1~~~  & B.~#2~~~ & C.~#3~~~ & ~ %\\ \\
			\end{tabularx}
		\vspace{-2em}
		}
	}
	%\unskip \unskip
	%\vspace{-1em}
}


%两个选项的设置
\newcommand{\twochoices}[2]{
\begin{tabularx}{\linewidth}[t]{XX}
			\setlength\tabcolsep{0pt}
			A.~#1~~~&
			B.~#2~~~\\
		\end{tabularx}
        \vspace{-2em}
}

%
%
%完型填空
%
\newcounter{counterwanxin}[enumi]
\newcommand{\cloze}{
\refstepcounter{counterwanxin}\uline{~~~\arabic{counterwanxin}~~~}~
}


%%



%
%下面的格式是为试卷设计用的，一般注释掉，采用试卷时可以将其打开

\usepackage{lastpage}%用于计算总页数
\renewcommand{\headrulewidth}{0pt}
\pagestyle{fancy}
%\fancyfoot[CO,CE]{第~\thepage~页~~共~\pageref{LastPage}~页}
\fancyfoot[CO,CE]{第~\thepage~页}
\fancyhead[RE]{\leavevmode\vbox to0pt{
		\vss\rlap{\putzdxx }\vskip -26cm }} %奇数页眉的右边                       
\fancyhead[LO]{\leavevmode\vbox to0pt{
		\vss\rlap{\putzdx }\vskip -26cm }} %偶数页眉的左边 

\newsavebox{\zdxa}%装订线

\sbox{\zdxa}
{\parbox{27cm}{\centering \heiti \hspace{1cm}
		科~目：\underline{\makebox[30mm][c]{物理}}~~~ 班~级：\underline{\makebox[45mm][c]{}}~~~ 姓~名：\underline{\makebox[30mm][c]{}} \\
		\vspace{1mm}
%		请在所附答题纸上空出密封位置。并填写试卷序号、班级、学号和 姓名\\
		%答题时学号
%		\vspace{1mm}
	  \dotfill{} 请 \dotfill{} 勿 \dotfill{} 在 \dotfill{} 参 \dotfill{} 考 \dotfill{} 线 \dotfill{} 内 \dotfill{} 作 \dotfill{} 答 \dotfill{}  \\
}}
\newsavebox{\zdxb}%装订线
\sbox{\zdxb}
{\parbox{27cm}{\centering \heiti
		\vspace{30mm}
		\vspace{1mm}
		\dotfill{} 请 \dotfill{} 勿 \dotfill{} 在 \dotfill{} 参 \dotfill{} 考 \dotfill{} 线 \dotfill{} 内 \dotfill{} 作 \dotfill{} 答 \dotfill{}  \\
}}

\newcommand{\putzdx}{
		\hspace{-1.7cm}\parbox{1cm}{\vspace{-1.5cm}
			\rotatebox[origin=c]{90}{
				\usebox{\zdxa}
		}}
}
\newcommand{\putzdxx}{
	\hspace{0.3cm}\parbox{1cm}{\vspace{-1.5cm}
		\rotatebox[origin=c]{-90}{
			\usebox{\zdxb}
	}}
}
%
%试卷格式完
%



%
%还原短文(英语)
%
%下划线空段不要用\quad之类生成(在分行时无效)
%
\newcounter{counterduanweng}[enumi]
\newcommand{\clozeduan}{
\refstepcounter{counterwanxin}\arabic{counterwanxin}.~\uline{\hbox to 13mm{}}~
}

\newcounter{counterduanwengl}[enumi]
\newcommand{\clozeduanl}{
\refstepcounter{counterwanxin}\arabic{counterwanxin}.~\uline{\hbox to 33mm{}}~
}


%%
%

%仅作为填空题的位置,包含答案的请使用\tk{}
%
\newcommand{\underlinegap}{
\hspace{-0.33em}\uline{\hbox to 13mm{}}
}


%%


%选词填空
%

\newcommand{\xctk}[1]{
\begin{center}
%\spaceskip=1em %%设置空格长度(字间距)
%\refstepcounter{enumi} %在非列表环境中使用
\fbox{
\shortstack[c]{	%添加这个是为了在盒子里面实现换行
#1	
}
}
\end{center}
}

%%

%首字母提示填空
%
%
%下划线空段不要用\quad之类生成(在分行时无效)
%
\newcounter{firstlettertk}[enumi]
\newcommand{\firstlettertk}[1]{
\refstepcounter{firstlettertk}\arabic{firstlettertk}.~\uline{#1 \hbox to 13mm{}}
}
%%


%\usepackage{tipa}%音标与特殊字符 与使用\chapter命令有冲突
%\usepackage{tipx}%音标与特殊字符 与使用\chapter命令有冲突


%
%可以定义双栏虚线表示
%
\iffalse
\usepackage{xpatch}
\makeatletter
\xpatchcmd{\@outputdblcol}{\vrule\@width\columnseprule}{\rotatebox{90}{\parbox{\textheight}{\dotfill}}}{}{}
\makeatother
\fi
%
%

%
\usepackage{multicol} %用于实现在同一页中实现不同的分栏 \columnseprule=1pt %实现插入分隔线
%设置文中双栏的分隔符
\makeatletter
\def\columnseprulecolor\vrule\@width\columnseprule{%
	\vbox to \ht\mult@rightbox{\leaders\vbox{\kern2pt\hbox{.}\kern2pt}\vfill}}
\makeatother
%
%

%\usepackage{longtable}%单栏长表格用
%\usepackage{supertabular}%双栏长表格用

%
%英文试卷中的对话环境
%
\usepackage{xparse} %指定命令参数「类型」
%由xparse定义新命令
%\newlength{\transcriptlen}
\NewDocumentCommand {\setspeaker} { mo } {%
	\IfNoValueTF{#2}
	{\expandafter\newcommand\csname#1\endcsname{\item[#1 :]}}%
	{\expandafter\newcommand\csname#1\endcsname{\item[#2 :]}}%
	%\IfNoValueTF{#2}
	%{\settowidth{\transcriptlen}{#1}}%
	%{\settowidth{\transcriptlen}{#2}}%
}
%
%参数设定方式\setspeaker{A}[shui]，在enumerate环境中直接应用就 \A 引用(\C被系统内部不用，不要用C作为参数)
%

%田字格
%\begin{tikzpicture} 
%\draw  [dashed,step=1,line width =0.5pt](0,0)grid(2,2);
%\end{tikzpicture}
%田字格

%\RequirePackage{exam}

\usepackage{mhchem}%普通化学公式
%\usepackage{chemfig}%复杂有机化学公式

\usepackage{extarrows} % 箭头扩展(长箭头)
\newcommand{\changdenghao}[2]{
\text{$  \xlongequal[\text{#2}]{\text{#1}} $} %套用text环境，为了能在化学方程式里愉快使用对齐
}
\newcommand{\danhengxian}[1]{
	%\settowidth{\danhengxianlength}{~#1~}
\text{%
		\tikz[baseline]
		\draw ( 0em, .6ex) -- node[very thick,above,yshift=-0.4ex,font=\fontsize{10}{10}\selectfont]{\text{#1}}  (1.5em,.6ex);
	}
}


\newcommand{\hfullline}{\hrulefill \ }

\usepackage{gensymb} %定义温度单位\celsius ，度单位\degree。电阻单位\ohm，千分号\perthousand，

\newcommand{\mulucreat}{
\pagestyle{mycontentstly}
\pagenumbering{Roman}%目录页面使用罗马数字
\tableofcontents
%清页，奇数页保证，外加清除背景水印
\clearpage{\backgroundsetup{contents={}}\pagestyle{empty}\cleardoublepage}%
\setcounter{page}{0}
%计数器清零
\pagenumbering{arabic}%正文使用阿拉伯数字
\pagestyle{mypagestyle}
}

%电流表
\newcommand{\ammetermytikz}{%
  \begin{tikzpicture}[baseline=-0.4em]
    \node[draw,circle,inner sep=1.6pt, outer sep=1.6pt] (4,0) {{\zihao{-5}A}};
  \end{tikzpicture}
}

%电压表
\newcommand{\voltmetermytikz}{%
  \begin{tikzpicture}[baseline=-0.4em]
    \node[draw,circle,inner sep=1.6pt, outer sep=1.6pt] (4,0) {{\zihao{-5}V}};
  \end{tikzpicture}
}


%微安表头
\newcommand{\uammetermytikz}{%
  \begin{tikzpicture}[baseline=-0.4em]
    \node[draw,circle,inner sep=1pt, outer sep=1pt] (4,0) {{\zihao{-6}$\mu$A}};
  \end{tikzpicture}
}

%毫安表头
\newcommand{\mammetermytikz}{%
  \begin{tikzpicture}[baseline=-0.4em]
    \node[draw,circle,inner sep=0.6pt, outer sep=0.6pt] (4,0) {{\zihao{-6}mA}};
  \end{tikzpicture}
}


%使用Gnumeric生成的LaTeX2e表格
\def\inputGnumericTable{}
\usepackage{ucs}
\usepackage{inputenc} 
\usepackage{color}
\usepackage{array} 
\usepackage{longtable} 
\usepackage{calc}  
\usepackage{multirow} 
\usepackage{hhline} 
\usepackage{ifthen} 
\usepackage{lscape}                    



%排版高考试卷专用

\newcommand{\gaokaoheader}[2]{
%\chapter*{}
\begin{center}
	\heiti 
%\rule{0em}{0em}\vspace*{-0.3cm}\\
\zihao{3}{#1 年 #2 （ 物理部分）}\\
%\vspace*{0.6cm}
%\zihao{4}{物理部分}\\
%\vspace*{1em}
\end{center}
\zihao{5}%试卷字体设置
}


\usepackage{pgfornament}%使用各种装饰样式

%选择题部分
\newcommand{\gaokaoxz}{
\begin{center}
\vspace{0.6cm}
%\heiti
\zihao{4}
{
\begin{tikzpicture}[baseline=-0.4em]
    \node at (0,0){\pgfornament[width = 1.7cm,
		]{11}};
  \end{tikzpicture}
		选择题
\begin{tikzpicture}[baseline=-0.4em]
    \node at (0,0){\pgfornament[width = 1.7cm,symmetry=v,
		]{11}};
  \end{tikzpicture}
}
    \vspace{1em}
\end{center}
}

%实验部分
\newcommand{\gaokaosy}{
\begin{center}
\vspace{0.6cm}
%\heiti
\zihao{4}
{
\begin{tikzpicture}[baseline=-0.4em]
    \node at (0,0){\pgfornament[width = 1.7cm,
		]{11}};
  \end{tikzpicture}
		实验题
\begin{tikzpicture}[baseline=-0.4em]
    \node at (0,0){\pgfornament[width = 1.7cm,symmetry=v,
		]{11}};
  \end{tikzpicture}
}
    \vspace{1em}
\end{center}
}

%计算题
\newcommand{\gaokaojs}{
\begin{center}
\vspace{0.6cm}
%\heiti
\zihao{4}
{
\begin{tikzpicture}[baseline=-0.4em]
    \node at (0,0){\pgfornament[width = 1.7cm,
		]{11}};
  \end{tikzpicture}
		计算题
\begin{tikzpicture}[baseline=-0.4em]
    \node at (0,0){\pgfornament[width = 1.7cm,symmetry=v,
		]{11}};
  \end{tikzpicture}
}
    \vspace{1em}
\end{center}
}

%选修部分
\newcommand{\gaokaoxx}[1]{
\begin{center}
\vspace{0.6cm}
%\heiti
\zihao{4}
{
\begin{tikzpicture}[baseline=-0.4em]
    \node at (0,0){\pgfornament[width = 1.7cm,
		]{11}};
  \end{tikzpicture}
		选修 #1
\begin{tikzpicture}[baseline=-0.4em]
    \node at (0,0){\pgfornament[width = 1.7cm,symmetry=v,
		]{11}};
  \end{tikzpicture}
}
    \vspace{1em}
\end{center}
}


%定义行内插入图形命令(采用一般插入的会导致上下间距不协调)
\newcommand{\hlinepicture}[1]{\tikz[baseline=-0.7ex]\node at (0,0) {#1};}%

\newcommand{\xuankao}[1]{〖 #1 〗}%


%到右边的下横线(右边空0.3\linewidth)
\newcommand{\hthreefullline}[1][]{
\hrulefill \ #1 \hbox to 0.3\linewidth{}
}
%使用\hthreefullline 或者hthreefullline[;]
%可选参数示例
%\newcommand{\sec}[2][]{
%    \section*{#1
%        \ifsecondargument
%            and #2
%        \fi}
%    }
%}

\newcommand{\htwofullline}[1][]{
\hrulefill \ #1 \hbox to 0.2\linewidth{}
}

\newcommand{\honefullline}[1][]{
\hrulefill \ #1 \hbox to 0.1\linewidth{}
}


%答案效果采用自定义实现

\newcounter{answerchp}
%\newcounter{answernum}{answerchp}

%文件创建
\newwrite\myoutput
\immediate\openout\myoutput=answerall.output
\newcommand\answxsim[2]{%
	%\immediate\openout\myoutput=answerall.output
	%\immediate\write\myoutput{1: #1}
	\immediate\write\myoutput{\unexpanded{#1}#2}
	%\immediate\write\myoutput{#2}
	%\immediate\write\myoutput{ and 3: #3}
	%\immediate\closeout\myoutput
}



\newcommand{\answerall}{
\newpage
\bta{参考答案}

\begin{multicols}{2}
\begin{enumerate}
%\renewcommand{\labelenumi}{\arabic{answerchp}.\arabic{enumi}}
\renewcommand{\labelenumi}{\arabic{enumi}.}
\renewcommand{\labelenumii}{(\arabic{enumii})}
\input{answerall}
\end{enumerate}
\end{multicols}
\immediate\closeout\myoutput
%文件复制，两次编译，可得修改后的正确结果
\newwrite\copyfile  % open the file to write to
\immediate\openout\copyfile=answerall.tex

\newread\file      % open the file to read from
\openin\file=answerall.output

\begingroup\endlinechar=-1
\loop\unless\ifeof\file
  \read\file to\fileline  % Read one line and store it into \fileline
  %\fileline\par                   % print the content into the pdf
  \immediate\write\copyfile{\unexpanded\expandafter{\fileline}}  % print the content to copy.txt
\repeat
\endgroup
}	



%\usepackage{siunitx}%国际单位制
\usepackage{circuitikz} %画电路图
%设定使用的图形风格样式
\ctikzset{
	european resistors ,%电阻风格
	cute inductors  ,%电感风格
	american voltages  ,%电压标注风格
	%上面是集中设置，可用inductor=american对某个物体进行单独设置
	bipoles/cutechoke/cthick=1.5,%电感上面横线厚度
	%bipoles/thickness=4, %临时增加线的宽度，画电容时可用
}




%tikz画图相关
\usetikzlibrary{intersections} %求交点坐标
\usetikzlibrary {arrows.meta}%箭头形状
\usetikzlibrary {angles}%角度标注，直角标注
\usetikzlibrary{quotes}%用引号标注，可较为方便的输入某些参数
\usetikzlibrary {decorations.pathreplacing}%两点间括号标注
\tikzset{
	mygrid/.style={very thin,step=0.1,color=red!30,},%设置网格格式
	>=Latex,%设置箭头格式
}
\usetikzlibrary{decorations.markings}%tikz标记位置，例如箭头位置等



\usepackage{fp}%高精度计算用
\usepackage{bm}
