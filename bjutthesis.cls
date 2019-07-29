\NeedsTeXFormat{LaTeX2e}%
\ProvidesClass{bjutthesis}[2019/4/23 v1.0 LaTeX document class]%
\LoadClass[UTF8,a4paper,zihao=-4,twoside]{ctexbook}
\RequirePackage[paper=a4paper,left=31.7mm,right=31.7mm,top=25.4mm,bottom=25.4mm,headheight=15pt]{geometry}
\RequirePackage{bm}
\RequirePackage{hyperref}
\RequirePackage{ifthen}
\RequirePackage{xeCJK}
\RequirePackage[normalem]{ulem}
\useunder{\uline}{\ulined}{}
\hypersetup{% set hyperlinks
    bookmarks=true,% show bookmarks bar
    pdfencoding=auto,% allows non-Latin based languages in bookmarks
    %pdftitle={},% title
    %pdfauthor={},% author
    %pdfsubject={},% subject
    %pdftoolbar=true,% show toolbar
    %pdfmenubar=true,% show menu
    pdffitwindow=false,% window fit to page when opened
    pdfstartview={FitH},% fits the width of the page to the window
    %pdfnewwindow=true,% links in new window
    %backref=true,% do bibliographical back references
    %pagebackref=true,% backreference by page number
    colorlinks=true,% false: boxed links; true: colored links
    linkcolor=black,% color of internal links
    citecolor=blue,% color of links to bibliography
    %filecolor=magenta,% color of file links
    urlcolor=red,% color of external links
    bookmarksnumbered=true% put section numbers in bookmarks
    %hidelinks% remove link color and border
}
\newcommand\bjut@fontset{\csname g__ctex_fontset_tl\endcsname}

\setmainfont{Times New Roman}

\ifthenelse{\equal{\bjut@fontset}{fandol}}{%linux
  %\setmainfont[
  %  Extension      = .otf,
  %  UprightFont    = *-regular,
  %  BoldFont       = *-bold,
  %  ItalicFont     = *-italic,
  %  BoldItalicFont = *-bolditalic,
  %]{texgyretermes}
  %\setsansfont[
  %  Extension      = .otf,
  %  UprightFont    = *-regular,
  %  BoldFont       = *-bold,
  %  ItalicFont     = *-italic,
  %  BoldItalicFont = *-bolditalic,
  %]{texgyreheros}
  %\setmonofont[
  %  Extension      = .otf,
  %  UprightFont    = *-regular,
  %  BoldFont       = *-bold,
  %  ItalicFont     = *-italic,
  %  BoldItalicFont = *-bolditalic,
  %  Scale          = MatchLowercase,
  %]{texgyrecursor}
}{
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \ifthenelse{\equal{\bjut@fontset}{mac}}{
    \setmonofont[Scale=MatchLowercase]{Menlo}
  }{
    \setmonofont[Scale=MatchLowercase]{Courier New}
  }
}
%\unimathsetup{
%  math-style = ISO,
%  bold-style = ISO,
%  nabla      = upright,
%  partial    = upright,
%}
%\IfFontExistsTF{XITSMath-Regular.otf}{
%  \setmathfont[
%    Extension    = .otf,
%    BoldFont     = XITSMath-Bold,
%    StylisticSet = 8,
%  ]{XITSMath-Regular}
%  \setmathfont[range={cal,bfcal},StylisticSet=1]{XITSMath-Regular.otf}
%}{
%  \setmathfont[
%    Extension    = .otf,
%    BoldFont     = *bold,
%    StylisticSet = 8,
%  ]{xits-math}
%  \setmathfont[range={cal,bfcal},StylisticSet=1]{xits-math.otf}
%}
\ifthenelse{\equal{\bjut@fontset}{windows}}{
  \xeCJKsetup{EmboldenFactor=2}
  \IfFileExists{C:/bootfont.bin}{
    \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi_GB2312]{SimSun}
    \setCJKfamilyfont{zhkai}[AutoFakeBold]{KaiTi_GB2312}
  }{
    \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi]{SimSun}
    \setCJKfamilyfont{zhkai}[AutoFakeBold]{KaiTi}
  }
  \setCJKsansfont[AutoFakeBold]{SimHei}
  \setCJKfamilyfont{zhsong}[AutoFakeBold]{SimSun}
  \setCJKfamilyfont{zhhei}[AutoFakeBold]{SimHei}
}{}
\ifthenelse{\equal{\bjut@fontset}{mac}}{
  \setCJKmainfont[
         UprightFont = * Light,
            BoldFont = * Bold,
          ItalicFont = Kaiti SC,
      BoldItalicFont = Kaiti SC Bold,
    ]{Songti SC}
  \setCJKsansfont[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhsong}[
         UprightFont = * Light,
            BoldFont = * Bold,
    ]{Songti SC}
  \setCJKfamilyfont{zhhei}[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=* Bold]{Kaiti SC}
  \xeCJKsetwidth{‘’“”}{1em}
}{}


%\setCJKsansfont{SimHei}
%\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
%\setCJKmonofont{FangSong}%
%\setmainfont[NFSSFamily=entextrm]{Times New Roman}%
%\setsansfont[NFSSFamily=entextsf]{Times New Roman}%

% \makeatletter
% \def\@dotsep{2}
% \renewcommand*\l@chapter{\@dottedtocline{1}{0em}{0.0em}}
% \renewcommand*\l@section{\@dottedtocline{1}{12pt}{12pt}}
% \renewcommand*\l@subsection{\@dottedtocline{2}{24pt}{24pt}}
% \renewcommand*\l@subsubsection{\@dottedtocline{3}{36pt}{36pt}}
% \renewcommand*\l@paragraph{\@dottedtocline{4}{48pt}{48pt}}
% \renewcommand*\l@subparagraph{ \@dottedtocline{5}{60pt}{60pt}}
% \makeatother

\RequirePackage{titletoc}
%\RequirePackage[toc]{multitoc}
\titlecontents{chapter}[4em]{\vspace{0mm} \zihao{4} \heiti}{\contentslabel{4.0em}}{}{
 	\zihao{-4} \titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{section}[4em]{\zihao{-4}}{\contentslabel{2.5em}}{}{%
 	\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[7.0em]{\zihao{-4}}{\contentslabel{2.5em}}{}{%
 	\titlerule*[0.5pc]{$\cdot$}\contentspage}
\RequirePackage{titlesec}
\titlespacing{\section}{0pt}{*0.3}{*0.3}
%\RequirePackage{tocloft}
%\setlength\cftaftertoctitleskip{5ex}
% \makeatletter
% \renewcommand{\numberline}[1]{%
% \settowidth\@tempdimb{#1\hspace{0.5em}}%
% \ifdim\@tempdima<\@tempdimb%
% \@tempdima=\@tempdimb%
% \fi%
% \hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}
% \makeatother


\def\bjut@define@term#1#2{%
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname bjut@#1\endcsname{##1}%
  }%
  \csname #1\endcsname{#2}%
}
\bjut@define@term{classificationnumber}{O212.1}
\bjut@define@term{secret}{公开}
\bjut@define@term{UDC}{510}
\bjut@define@term{universitycode}{10005}
\bjut@define@term{universityname}{北京工业大学}
\bjut@define@term{department}{应用数理学院}
\bjut@define@term{title}{论文题目}
%\bjut@define@term{titleEN}{英文论文题目,全大写}
\bjut@define@term{author}{XXXX}
\bjut@define@term{studentID}{XXXX}
\bjut@define@term{major}{XXXX}
\bjut@define@term{researchdirection}{XXXX}
\bjut@define@term{supervisor}{XXX\quad 教授}
\bjut@define@term{date}{\zhtoday}
\bjut@define@term{bigtitle}{}
\bjut@define@term{keywords}{}
\bjut@define@term{enkeywords}{}



\newcommand\makehardcover{%
\pagestyle{empty}
\vspace{-0.1cm}\noindent {\bf \zihao{5} 中文图书分类号:~{\bjut@classificationnumber}}

\vspace{-0.1cm}\noindent{\bf \zihao{5} 密 \hspace{1.57cm} 级:~\bjut@secret}

\vspace{-0.1cm}\noindent{\bf \zihao{5}\hspace{1.2cm} ~~{\bf{UDC}:~\bjut@UDC}}

\vspace{-0.1cm}\noindent{\bf \zihao{5} 学\hspace{0.37cm}校\hspace{0.37cm}代\hspace{0.37cm}码:~\bjut@universitycode}


\vspace{2.0cm}

\vspace{4cm}
\noindent { \heiti \zihao{3}论~~~~文~~~~题~~~~目: \parbox[t]{8cm}{\bjut@title}}


\vspace{0.4cm}
\noindent { \heiti \zihao{3}论~~~~文~~~~作~~~~者:{\zihao{3}\heiti \bjut@author
\hspace{0.2cm}~~\hspace{1cm}~~~ \hspace{0.6cm}}}

\vspace{0.4cm}
\noindent { \heiti \zihao{3}学\hspace{3.17cm}科:{\zihao{3}\heiti
\hspace{0.2cm}\bjut@major\hspace{1cm}~~~ \hspace{0.6cm}}}

\vspace{0.4cm}
\noindent { \heiti \zihao{3}指\hspace{0.68cm}导\hspace{0.68cm}教\hspace{0.68cm}师:{\zihao{3}\heiti
\hspace{0.2cm}\bjut@supervisor \hspace{1cm}~~~ \hspace{0.6cm}}}


\vspace{0.4cm}
\noindent { \heiti \zihao{3}论\hskip 1.82mm 文\hskip 1.82mm
提\hskip 1.82mm 交\hskip 1.82mm 日\hskip 1.82mm 期: \bjut@date }

}

\renewcommand\maketitle{%
\pagestyle{empty}
\vspace{-2cm}

\begin{tabular}{rp{2cm}p{6cm}rl }
\zihao{5}UDC~:&\bjut@UDC &&\songti\zihao{5} 学校代码~:&\bjut@universitycode\\
\songti\zihao{5}中文图书分类号~:&\bjut@classificationnumber &&\songti\zihao{5}学~~~~~~号~:&\bjut@studentID\\
&&&\songti\zihao{5}密~~~~~~级~:&\bjut@secret\\

\end{tabular}

\vspace{2cm}
 \centerline{  \zihao{1}\bfseries\kaishu{  北京工业大学理学硕士学位论文}}
\vspace{2cm}
% \centerline{\kaishu \bf \zihao{1}\quad （全日制）}
\vspace{2cm}

\begin{tabular}{lp{11.3cm}}
{\songti \bf \zihao{4}{题\hspace{1.04cm}目}:}&{\uline{\hfill \bjut@title \hfill}} \\
{\songti \bf \zihao{4} {英文题目}:}&{\expandafter\ulined\titleEN\hfill}
\end{tabular}


\vspace{2cm}
 \noindent {\fangsong \bf \zihao{4} 论~~~文~~~ 作~~~ 者~: }
 {\fangsong \zihao{4} ~~\bjut@author}

\vspace{0.2cm}
 \noindent {\fangsong \bf \zihao{4} 学~~~科~~~ 专~~~ 业~: }
 {\fangsong \zihao{4} ~\bjut@major}

\vspace{0.2cm}
 \noindent {\fangsong \bf \zihao{4} 研~~~究~~~ 方~~~ 向~: }
 {\fangsong \zihao{4} ~\bjut@researchdirection}

\vspace{0.2cm}
 \noindent {\fangsong \bf \zihao{4} 申~~~请~~~ 学~~~ 位~: }
 {\fangsong \zihao{4} ~理学硕士}

\vspace{0.2cm}
 \noindent {\fangsong \bf \zihao{4} 指~~~导~~~ 老~~~ 师~: }
 {\fangsong \zihao{4} ~\bjut@supervisor}

\vspace{0.2cm}
 \noindent {\fangsong \bf \zihao{4} 所~~~在~~~ 单~~~ 位~: }
 {\fangsong \zihao{4} ~\bjut@department}

\vspace{0.2cm}
 \noindent {\fangsong \bf \zihao{4} 答~~~辩~~~ 日~~~ 期~: }
 {\fangsong \zihao{4} ~~\large{2019 年~5 月}}

\vspace{0.2cm}
 \noindent {\fangsong \bf \zihao{4} 授~予~学~位~单~位~: }
 {\fangsong \zihao{4} ~\bjut@universityname}
\clearpage
\phantom{s}
\thispagestyle{empty}

}
\newcommand\makestatement{%
\vspace{1.6cm}

\centerline{ \zihao{3} \bf 独\quad 创\quad 性\quad 声\quad 明}
\pagestyle{empty}
\baselineskip=24pt

{\songti
本人声明所呈交的论文是我个人在导师指导下进行的研究工作及取得的
研究成果。尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表
或撰写过的研究成果，也不包含为获得北京工业大学或其它教育机构的学位或证书而使用过的材料。
与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。

\vspace{0.5cm}

\hspace{9cm}签~~名~:~\underline{\hspace{2.8 cm}}\\

\vspace{-1.0cm}
\hspace{9cm}日~~期~:~~~~~~年~~~~~月~~~~~日
\vskip4cm }

\begin{center}
{ \zihao{3} \bf 关于论文使用授权的说明}
\end{center}

{\songti
本人完全了解北京工业大学有关保留、使用学位论文的规定，即：
学校有权保留送交论文的复印件，允许论文被查阅和借阅；
学校可以公布论文的全部或部分内容，可以采用影印、缩印或其他复制手段保存论文。
\\
\indent （保密的论文在解密后应遵守此规定）

\vspace{0.5cm}

\hspace{0cm}签~~~~~~~~~~名~:~\underline{\hspace{2.5cm}}\hspace{2.5cm}~~~~~~~~ 日~~期~:~~~~~~~~~~~~~~~~~~~ 年~~~~~ 月~~~~~ 日\\

\vspace{-1.0cm}
\hspace{0cm}导~师~签~名~:~\underline{\hspace{2.5cm}}\hspace{2.5cm}~~~~~~ 日~~期~:~~~~~~~~~~~~~~~~~~~ 年~~~~~ 月~~~~~ 日\\
}
}

\RequirePackage[titles]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftdotsep}{1}
\setlength{\cftbeforechapskip}{0pt}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
\setlength{\cftaftertoctitleskip}{0pt}
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{0pt}


\renewcommand{\cftchapfont}{\zihao{-4}\heiti}
\renewcommand{\cftsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecfont}{\zihao{-4}\songti}
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftchappagefont}{\zihao{-4}}
\renewcommand{\cftsecpagefont}{\zihao{-4}}
\renewcommand{\cftsubsecpagefont}{\zihao{-4}}

\RequirePackage{fancyhdr}% fancy headers and footers
\pagestyle{fancy}%
\providecommand{\chaptermark}{}% compatibility for non-book classes
\providecommand{\thechapter}{}% compatibility for non-book classes
\providecommand{\CTEXthechapter}{\thechapter.}% compatibility for non ctex classes
%- reset style of chapter and section mark to actual name
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{#1}}{}}%
\renewcommand{\sectionmark}[1]{\markright{\MakeUppercase{#1}}{}}%
%- deactivate uppercase effect
\renewcommand{\MakeUppercase}[1]{#1}%
%- Define different kinds of header and footer for different parts
\fancypagestyle{frontmatterstyle}{% style for frontmatter
    \fancyhf{}% clear fields
    \fancyhead[CE]{\footnotesize \kaishu \bjut@bigtitle}% structure elements
    \fancyhead[CO]{\footnotesize \kaishu \leftmark}% structure elements
    \fancyfoot[CE,CO]{\footnotesize -\thepage-}% page number
    \renewcommand{\headrulewidth}{0.8pt}% header rule
    \renewcommand{\footrulewidth}{0pt}% footer rule
}
\fancypagestyle{mainmatterstyle}{% style for mainmatter
    \fancyhf{}% clear fields
    \fancyhead[CE]{\footnotesize \kaishu \bjut@bigtitle}% structure elements
    \fancyhead[CO]{\footnotesize \kaishu \CTEXthechapter\quad \leftmark}% structure elements
    \fancyfoot[CE,CO]{\footnotesize -\thepage-}% page number
    \renewcommand{\headrulewidth}{0.8pt}% header rule
    \renewcommand{\footrulewidth}{0pt}% footer rule
}
\fancypagestyle{backmatterstyle}{% header and footer style for backmatter
    \fancyhf{}% clear fields
    \fancyhead[CE]{\footnotesize \kaishu \bjut@bigtitle}% structure elements
    \fancyhead[CO]{\footnotesize \kaishu \leftmark}% structure elements
    \fancyfoot[CE,CO]{\footnotesize -\thepage-}% page number
    \renewcommand{\headrulewidth}{0.8pt}% header rule
    \renewcommand{\footrulewidth}{0pt}% footer rule
}
%- Redefine \frontmatter to include the change
\providecommand{\frontmatter}{}% compatibility for non-book classes
\let\myfrontmatter\frontmatter%
\renewcommand{\frontmatter}{%
    \myfrontmatter%
    \pagestyle{frontmatterstyle}%
}
% - Redefine \mainmatter to include the change
\providecommand{\mainmatter}{}% compatibility for non-book classes
\let\mymainmatter\mainmatter%
\renewcommand{\mainmatter}{%
    \mymainmatter%
    \pagestyle{mainmatterstyle}%
}
%- Redefine \backmatter to include the change
\providecommand{\backmatter}{}% compatibility for non-book classes
\let\mybackmatter\backmatter%
\renewcommand{\backmatter}{%
    \mybackmatter%
    \pagestyle{backmatterstyle}%
}
%- Some Latex commands, like \chapter, use the \thispagestyle command
%- to automatically switch to the plain page style, thus ignoring the
%- page style currently in effect. To customize such pages you must
%- redefine the plain pagestyle. If you want the plain style inherits
%- the current style, comment all the lines in plain style definition.
\fancypagestyle{plain}{%
    % \fancyhf{}% clear fields
    % \renewcommand{\headrulewidth}{0pt}% header rule
    % \renewcommand{\footrulewidth}{0pt}% footer rule
}
\fancypagestyle{noheaderstyle}{% header and footer style for no header
    \fancyhf{}% clear fields
    \fancyfoot[CE,CO]{\footnotesize \thepage}% page number
    \renewcommand{\headrulewidth}{0pt}% header rule
    \renewcommand{\footrulewidth}{0pt}% footer rule
}

\ctexset {
    chapter = {
        format = \linespread{1.0}\zihao{3}\sffamily\centering,
        number = \arabic{chapter},
        aftername = \quad,
        beforeskip = {0pt},
        afterskip = {20.8pt},
        pagestyle = plain,
    }
}

%- section
\ctexset {
    section = {
        format = \linespread{1.0}\zihao{4}\sffamily\raggedright,
        aftername = \enspace,
        beforeskip = {19.5pt},
        afterskip = {19.5pt},
    }
}
%- subsection
\ctexset {
    subsection = {
        format = \linespread{1.0}\zihao{-4}\sffamily\raggedright,
        aftername = \enspace,
        beforeskip = {19.5pt},
        afterskip = {16.64pt},
    }
}
% - subsubsection
\ctexset {
    subsubsection = {
        format = \linespread{1.0}\zihao{-4}\kaishu\raggedright,
        aftername = \enspace,
        beforeskip = {0pt},
        afterskip = {16.64pt},
        %runin = true
    }
}
\RequirePackage{setspace}
%\renewcommand{\baselinestretch}{2.3}
%\setstretch{0.1}
%\linespread{1.3}\selectfont
\setlength{\parskip}{0.5ex plus 0.25ex minus 0.25ex}


\NewDocumentCommand\bjut@chapter{o m}{%
  \chapter*{#2}\chaptermark{#2}
  \addcontentsline{toc}{chapter}{#2}

}
\newenvironment{abstract}{%
    \bjut@chapter{摘\quad 要}%
}{
  \par\null\par\noindent\hangindent=4\ccwd\relax
  \textbf{关键词}：\bjut@keywords
}

\newenvironment{enabstract}{%
    \chapter{\bf{Abstract}}%
    \chaptermark{Abstract}
}{
  \par\null\par\noindent\hangindent=5.3em\relax
  \textbf{Key Words}: \bjut@enkeywords
}
%\RequirePackage{natbib}
%\rnewcommand\citet{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
