\NeedsTeXFormat{LaTeX2e}%
\ProvidesClass{bjutthesis}[2019/4/23 v1.0 LaTeX document class]%
\LoadClass[UTF8,a4paper,zihao=-4,twoside,fontset=windows]{ctexbook}
\RequirePackage[paper=a4paper,left=31.7mm,right=31.7mm,top=25.4mm,bottom=25.4mm,headheight=15pt]{geometry}
\RequirePackage{bm}
\RequirePackage{hyperref}

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
    bookmarksnumbered=true,% put section numbers in bookmarks
    %hidelinks% remove link color and border
}

\setCJKsansfont{SimHei}
\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
\setCJKmonofont{FangSong}%
\setmainfont[NFSSFamily=entextrm]{Times New Roman}%
\setsansfont[NFSSFamily=entextsf]{Times New Roman}%

% \makeatletter
% \def\@dotsep{2}
% \renewcommand*\l@chapter{\@dottedtocline{1}{0em}{0.0em}}
% \renewcommand*\l@section{\@dottedtocline{1}{12pt}{12pt}}
% \renewcommand*\l@subsection{\@dottedtocline{2}{24pt}{24pt}}
% \renewcommand*\l@subsubsection{\@dottedtocline{3}{36pt}{36pt}}
% \renewcommand*\l@paragraph{\@dottedtocline{4}{48pt}{48pt}}
% \renewcommand*\l@subparagraph{ \@dottedtocline{5}{60pt}{60pt}}
% \makeatother

% \RequirePackage{titletoc}
% % \RequirePackage[toc]{multitoc}
% \titlecontents{chapter}[4em]{\vspace{0mm} \zihao{4} \heiti}{\contentslabel{4.0em}}{}{
% 	\zihao{-4} \titlerule*[0.5pc]{$\cdot$}\contentspage}
% \titlecontents{section}[4em]{\zihao{-4}}{\contentslabel{2.5em}}{}{%
% 	\titlerule*[0.5pc]{$\cdot$}\contentspage}
% \titlecontents{subsection}[7.0em]{\zihao{-4}}{\contentslabel{2.5em}}{}{%
% 	\titlerule*[0.5pc]{$\cdot$}\contentspage}

% \makeatletter
% \renewcommand{\numberline}[1]{%
% \settowidth\@tempdimb{#1\hspace{0.5em}}%
% \ifdim\@tempdima<\@tempdimb%
% \@tempdima=\@tempdimb%
% \fi%
% \hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}
% \makeatother


\def\@bigtitle{}
\newcommand{\bigtitle}[1]{\def\@bigtitle{#1}}

\RequirePackage[titles]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftdotsep}{1}
\setlength{\cftbeforechapskip}{5pt}
\setlength{\cftbeforesecskip}{3pt}
\setlength{\cftbeforesubsecskip}{3pt}
\renewcommand{\cftchapfont}{\zihao{4}\heiti}
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
    \fancyhead[CE]{\footnotesize \kaishu \@bigtitle}% structure elements
    \fancyhead[CO]{\footnotesize \kaishu \leftmark}% structure elements
    \fancyfoot[CE,CO]{\footnotesize -\thepage-}% page number
    \renewcommand{\headrulewidth}{0.8pt}% header rule
    \renewcommand{\footrulewidth}{0pt}% footer rule
}
\fancypagestyle{mainmatterstyle}{% style for mainmatter
    \fancyhf{}% clear fields
    \fancyhead[CE]{\footnotesize \kaishu \@bigtitle}% structure elements
    \fancyhead[CO]{\footnotesize \kaishu \CTEXthechapter\quad \leftmark}% structure elements
    \fancyfoot[CE,CO]{\footnotesize -\thepage-}% page number
    \renewcommand{\headrulewidth}{0.8pt}% header rule
    \renewcommand{\footrulewidth}{0pt}% footer rule
}
\fancypagestyle{backmatterstyle}{% header and footer style for backmatter
    \fancyhf{}% clear fields
    \fancyhead[CE]{\footnotesize \kaishu \@bigtitle}% structure elements
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
        afterskip = {18pt},
        pagestyle = plain,
    }
}

%- section
\ctexset {
    section = {
        format = \linespread{1.0}\zihao{4}\sffamily\raggedright,
        aftername = \enspace,
        beforeskip = {13pt},
        afterskip = {6pt},
    }
}
%- subsection
\ctexset {
    subsection = {
        format = \linespread{1.0}\zihao{-4}\sffamily\raggedright,
        aftername = \enspace,
        beforeskip = {13pt},
        afterskip = {6pt},
    }
}
% - subsubsection
\ctexset {
    subsubsection = {
        format = \linespread{1.0}\zihao{-4}\kaishu\raggedright,
        aftername = \enspace,
        beforeskip = {13pt},
        afterskip = {3pt},
        %runin = true
    }
}

\linespread{1.41}
\setlength{\parskip}{0.5ex plus 0.25ex minus 0.25ex}
