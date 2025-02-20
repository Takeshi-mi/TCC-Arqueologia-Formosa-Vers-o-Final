%% IFBthesis Latex Template - version 1
%%
%% IFBthesis's latex template for thesis and dissertations
%% https://github.com/auyer/IFBtcc
%%
%% (c) 2017 Rafael de Campos Passos (rcpassos@ieee.org)
%%
%%
%% This document was initially based on RiSE Latex template, from Yguaratã
%% Cerqueira Cavalcanti
%%
%%

\ProvidesClass{ifgtcc}

%% OPTIONS

\DeclareOption{pt}{%
  \let\@language=0%
  \PassOptionsToPackage{brazil}{babel}}

\DeclareOption{en}{%
  \let\@language=1%
  \PassOptionsToPackage{brazil,english}{babel}}

\DeclareOption{oneside}{%
  \PassOptionsToClass{oneside}{book}}

\DeclareOption{twoside}{%
  \PassOptionsToClass{twoside}{book}}

\DeclareOption{print}{%
  \let\@scr=0}

\DeclareOption{scr}{%
  \let\@scr=1%
  \PassOptionsToClass{dvipdfm}{book}}

\DeclareOption{bsc}{%
  \let\@degreetype=0}

\DeclareOption{msc}{%
  \let\@degreetype=1}

\DeclareOption{qual}{%
  \let\@degreetype=2}

\DeclareOption{prop}{%
  \let\@degreetype=3}

\DeclareOption{phd}{%
  \let\@degreetype=4}

\DeclareOption{singlespacing}{%
  \let\@linespacing=0}

\DeclareOption{onehalfspacing}{%
  \let\@linespacing=1}

\DeclareOption{doublespacing}{%
  \let\@linespacing=2}

% Default options
\ExecuteOptions{pt,msc,print}
\ProcessOptions

\LoadClass[12pt,a4paper]{book}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PACKAGES

\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage[utf8]{inputenc}
\RequirePackage{textcase}
\RequirePackage{textcomp}
\RequirePackage{url}
\RequirePackage{colortbl}
\RequirePackage{xspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}
\RequirePackage[scaled=0.92]{helvet}
\RequirePackage{courier}
\RequirePackage{appendix}
\RequirePackage[acronym]{glossaries}
\makeglossaries
\makeglossaries
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage[top=3.00cm,left=3.00cm,bottom=2.00cm,right=2.00cm]{geometry}
\RequirePackage[calcwidth]{titlesec}
\RequirePackage{psboxit}
\RequirePackage[avantgarde]{quotchap}
\RequirePackage[nottoc, notlof, notlot]{tocbibind}
\RequirePackage{indentfirst}
\RequirePackage{enumitem}
\RequirePackage{natbib}
\RequirePackage{lastpage}
\RequirePackage{listings}


\setglossarystyle{list}
\if\@scr0
  \RequirePackage{graphicx}
\fi

\if\@scr1
  \RequirePackage[dvips]{graphicx}
  \RequirePackage[dvips,usenames]{color}
  \RequirePackage[dvipdfm,colorlinks,backref]{hyperref}
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% GENERAL PURPOSE MACROS

\let\origcleardoublepage=\cleardoublepage
\def\cleardoublepage{%
  \newpage{\pagestyle{empty}\origcleardoublepage}
}

%%
% For use with the pseudocode package
\def\@lopcchapterspace{\relax}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LABELS
\gdef\resumoname{Resumo} \gdef\abstrname{Abstract}
\gdef\keywordsnamePT{Palavras-chave}
\gdef\keywordsnameEN{Keywords}

% Acronym style
\usepackage[acronym,nonumberlist]{glossaries}

% Estilo para a lista de acrônimos
\newglossarystyle{longlistwithpages}{
  \setglossarystyle{long} % Baseado no estilo "long"
  \renewcommand*{\glossentry}[2]{%
    \item[\glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}}]
    \glossentrydesc{##1}%
    \hfill\textit{pág. ##2}% Exibe o número da página
  }
}



%% Language Dependent

% Portuguese
\if\@language0
  \RequirePackage[portuguese]{babel}
  \gdef\@bachelordissertation{Trabalho de Conclusão de Curso}
  \gdef\@mastersdissertation{Dissertação de Mestrado}
  \gdef\@phdqualifying{Monografia de Qualificação}
  \gdef\@phdproposal{Proposta de Tese de Doutorado}
  \gdef\@phdthesis{Tese de Doutorado}
  \gdef\@bachelordegree{Bacharel}
  \gdef\@mastersdegree{Mestre}
  \gdef\@phddegree{Doutor}
  \gdef\@maleadvisertitle{Orientador}
  \gdef\@femaleadvisertitle{Orientadora}
  \gdef\@malecoadvisertitle{Co-Orientador}
  \gdef\@femalecoadvisertitle{Co-Orientadora}
  \gdef\@notdefined{NÃO DEFINIDO}
  \gdef\acknowledgementsname{Agradecimentos}
  \gdef\@axiomname{Axioma}
  \gdef\@conjecturename{Conjectura}
  \gdef\@defname{Definição}
  \gdef\@lemmaname{Lema}
  \gdef\@theoname{Teorema}
  \gdef\@propname{Proposição}
  \gdef\@corname{Corolário}
  \gdef\@proofname{Prova}
  \gdef\@figurename{Figura}
  \gdef\@tablename{Tabela}
  \gdef\@equationame{equação}
  \gdef\@chaptername{Capítulo}
  \gdef\@textby{ }
  \gdef\@sectionname{Seção}
  \gdef\@appendixname{Apêndice}
  \gdef\@tocname{Sumário}
  \newcommand\bibliographytocname{Referências}
  \renewcommand{\bibname}{\bibliographytocname}
  \renewcommand{\appendixtocname}{Apêndice}
  \renewcommand{\appendixpagename}{Apêndice}
  \gdef\@lstlistingname{Lista deAlgoritmos}
  \gdef\@listoftablesname{Lista de Tabelas}
  \gdef\@listoffiguresname{Lista de Figuras}
  \gdef\@pagename{página}
  \gdef\@listacronymsname{Acrônimos}
  \gdef\@colophontext{%
  \urlstyle{rm}%
  Este volume foi tipografado em \LaTeX\ na classe \textsf{ifbthesis}
  (\url{http://github.com/auyer/IFBtcc}).
  \if\@scr1
  Para detalhes sobre este documento, clique \Acrobatmenu{GeneralInfo}{aqui}.
  \fi}
% English
  \else\if\@language1
  \RequirePackage[english]{babel}
  \gdef\@bachelordissertation{B.Sc. Dissertation}
  \gdef\@mastersdissertation{M.Sc. Dissertation}
  \gdef\@phdqualifying{Ph.D. Thesis Qualification}
  \gdef\@phdproposal{Ph.D. Proposal}
  \gdef\@phdthesis{Ph.D. Thesis}
  \gdef\@bachelordegree{Bachelor}
  \gdef\@mastersdegree{Master of Science}
  \gdef\@phddegree{Philosophy Doctor}
  \gdef\@maleadvisertitle{Advisor}
  \gdef\@femaleadvisertitle{Advisor}
  \gdef\@malecoadvisertitle{Co-Advisor}
  \gdef\@femalecoadvisertitle{Co-Advisor}
  \gdef\@notdefined{UNDEFINED}
  \gdef\acknowledgementsname{Acknowledgements}
  \gdef\@axiomname{Axiom}
  \gdef\@conjecturename{Conjecture}
  \gdef\@defname{Definition}
  \gdef\@lemmaname{Lemma}
  \gdef\@theoname{Theorem}
  \gdef\@propname{Proposition}
  \gdef\@corname{Corollary}
  \gdef\@proofname{Proof}
  \gdef\@figurename{Figure}
  \gdef\@tablename{Table}
  \gdef\@textby{ }
  \gdef\@equationame{equation}
  \gdef\@chaptername{Chapter}
  \gdef\@sectionname{Section}
  \gdef\@tocname{Contents}
  \gdef\@listoftablesname{List of Tables}
  \gdef\@listoffiguresname{List of Figures}
  \gdef\@lstlistingname{List of Algorithms}
  \renewcommand{\appendixtocname}{Appendix}
  \renewcommand{\appendixpagename}{Appendix}
  \newcommand\bibliographytocname{References}
  
  \renewcommand{\bibname}{\bibliographytocname}
  \gdef\@pagename{page}
  \renewcommand{\acronymname}{Acronyms}
  \gdef\@colophontext{%
  \urlstyle{rm}%
  This volume has been typeset in \LaTeX with the \textsf{ifbthesis} class
  (\url{https://github.com/auyer/IFBtcc}).
  \if\@scr1
  For details about this document, click \Acrobatmenu{GeneralInfo}{here}.
  \fi}
\fi\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% IDENTIFICATION

%% School identification

\def\universitypt#1{%
  \gdef\@universitypt{#1}}
\def\@universitypt{Instituto Federal de Goiás}

\def\universityen#1{%
  \gdef\@universityen{#1}}
\def\@universityen{Federal Institute of Goi\'as'}

\def\campus#1{%
  \gdef\@campus{#1}}
\def\@campus{\textit{Campus} Formosa}

\def\universitylogo{images/ifblogo.tex}

\let\@showinstitute=0
\def\institutept#1{%
  \let\@showinstitutept=1
  \gdef\@institutept{#1}}
\def\instituteen#1{%
  \let\@showinstituteen=1
  \gdef\@instituteen{#1}}

\let\@showdepartment=0
\def\departmentpt#1{%
  \let\@showdepartment=1
  \gdef\@departmentpt{#1}}
\def\departmenten#1{%
  \let\@showdepartment=1
  \gdef\@departmenten{#1}}

\def\programpt#1{%
  \gdef\@programpt{#1}}
\def\@programpt{\@notdefined}

\def\programen#1{%
  \gdef\@programen{#1}}
\def\@programen{\@notdefined}

\def\majorfieldpt#1{%
  \gdef\@majorfieldpt{#1}}
\def\@majorfieldpt{\@notdefined}

\def\majorfielden#1{%
  \gdef\@majorfielden{#1}}
\def\@majorfielden{\@notdefined}

\def\address#1{%
  \gdef\@address{#1}}
\def\@address{Recife}

%% Authors identification

\def\author#1{%
  \gdef\@author{#1}
  \if\@scr1 \hypersetup{pdfauthor={\@author}}\fi}
\def\@author{\@notdefined}

\def\adviser{%
  \@ifnextchar [%
    {\@padviser}%
    {\@padviser[\@empty]}}
\def\@padviser[#1]#2{%
  \ifx#1\@empty
    \gdef\@advisertitle{\@maleadvisertitle}
  \else
    \gdef\@advisertitle{\@femaleadvisertitle}
  \fi
  \gdef\@adviser{#2}}
\def\@adviser{\@notdefined}

\let\@showcoadviser=0
\def\coadviser{%
  \@ifnextchar [%
    {\@pcoadviser}%
    {\@pcoadviser[\@empty]}}
\def\@pcoadviser[#1]#2{%
  \let\@showcoadviser=1
  \ifx#1\@empty
    \gdef\@coadvisertitle{\@malecoadvisertitle}
  \else
    \gdef\@coadvisertitle{\@femalecoadvisertitle}
  \fi
  \gdef\@coadviser{#2}}

%% Work identification

\def\title#1{%
  \gdef\@title{#1}
  \if\@scr1 \hypersetup{pdftitle={\@title}}\fi}
\def\@title{\@notdefined}

\def\@texttype{%
  \if\@degreetype0
    \@bachelordissertation
  \else\if\@degreetype1
    \@mastersdissertation
  \else\if\@degreetype2
    \@phdqualifying
  \else\if\@degreetype3
    \@phdproposal
  \else\if\@degreetype4
    \@phdthesis
  \fi\fi\fi\fi\fi}

\def\@degree{%
  \if\@degreetype0
    \@bachelordegree
  \else\if\@degreetype1
    \@mastersdegree
  \else\if\@degreetype2
    \@phddegree
  \else\if\@degreetype3
    \@phddegree
  \else\if\@degreetype4
    \@phddegree
  \fi\fi\fi\fi\fi}


\gdef\@presentationtext{%
\if\@language0
Trabalho de Conclusão de Curso apresentado ao \if\@showdepartment1\@departmentpt\ \else\@institutept\ \fi
da \@universitypt\ {\it campus} Formosa, como requisito parcial para obtenção do
grau de Tecnólogo em Análise e Desenvolvimento de Sistemas.\\\vspace{4em}
\fi
\if\@language1 %If language is English
A \@texttype{} presented to the \if\@showdepartment1\@departmenten\
\else\@instituteen\ \fi of \@universityen\ in partial fulfillment of the
requirements for the degree of \@degree\ in \@majorfielden.
\fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chapter formats

\newcommand{\formatFrontmatterChapter}{
   \titlespacing*{\chapter}{0pt}{-34pt}{40pt}
   \titleformat{\chapter}[display]{
     \centering\normalfont
   }{
     \chaptertitlename~\thechapter
   }{20pt}{\normalsize}
}

\renewcommand{\frontmatter}{\formatFrontmatterChapter}
\renewcommand{\backmatter}{\frontmatter}

\newcommand{\MainChapterFormat}{
   \renewcommand{\chapnumfont}{%     % define font for chapter number
     \usefont{T1}{pnc}{b}{n}%      % choose New Chancery, bold, normal shape
    \fontsize{44}{100}%          % font size 100pt, baselineskip 100pt
     \selectfont%                  % activate font
   }

   \colorlet{chapnumcol}{gray!85}  % color for chapter number

   \titleformat{\chapter}[display]
     {\bfseries}
     {\chapnumfont\textcolor{chapnumcol}{\thechapter}}
     {-24pt}
     {\huge}
}

\newcommand{\formatMainmatterChapter}{
%    \titlespacing*{\chapter}{0pt}{-65pt}{40pt}
   \MainChapterFormat
}

\newcommand{\formatAppendixmatterChapter}{
%    \titlespacing*{\chapter}{0pt}{-63pt}{40pt}
   \MainChapterFormat
}

\renewcommand{\mainmatter}{
  \formatMainmatterChapter
  \pagestyle{fancy}
  \glsresetall % Reset all acronyms
}

\newcommand{\appendixmatter}{
  \formatAppendixmatterChapter
  \pagestyle{fancy}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PAGE LAYOUT


%% Line spacing
\if\@linespacing0
  \singlespacing
\else\if\@linespacing1
  \onehalfspacing
\else\if\@linespacing2
  \doublespacing
\fi\fi\fi

%% Paragraphs
\setlength\parindent{1.30cm}

%% Lists, enumerations, etc.
\setlist[itemize]{leftmargin=\parindent+\labelwidth-\labelsep, label={\tiny$\blacksquare$}}
\setlist[enumerate]{leftmargin=\parindent+\labelwidth-\labelsep}

%% Appendix

\newcommand{\theappendix}{%
  \appendixmatter
  \if@openright\cleardoublepage\else\clearpage\fi
  \addappheadtotoc
  \appendix
  \begingroup
    \let\ps@plain\ps@empty
    \appendixpage
  \endgroup}

%% References

\newenvironment{references}{
	\backmatter
	\bibliographystyle{ifglibs/abnt}
	\setlength{\bibhang}{0pt}
	\singlespacing % Change to singlespacing for the references
	\begingroup
	\raggedright
	\renewcommand{\bibname}{\bibliographytocname}
}
{
	\endgroup
	\onehalfspacing % Put onehalfspacing back
}

%% Captions (Tables, Figures, etc.)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%         STANDARD STYLE           %%%%%%%%%%%%%%%%%%%

%% Fonts

%\newcommand\quotefont{\normalfont\normalsize}
\newcommand\quotefonti{\it\normalsize}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Frontpage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\frontpage{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \begin{center}
  \includegraphics[scale=0.2]{images/ifgvertical} \\
  \if\@language0
    {\fontfamily{times}\selectfont \small \@universitypt\\}
    {\fontfamily{times}\selectfont \small \@campus\\}
    {\fontfamily{times}\selectfont \small \@programpt\\}
  \else
    {\fontfamily{times}\selectfont \small \@universityen\\}
     {\fontfamily{times}\selectfont \small \@campus\\}
    {\fontfamily{times}\selectfont \small \@programen\\}
  \fi
  {\fontfamily{times}\selectfont \small http://www.ifg.edu.br/formosa\\}
  \vfill

    {\normalsize\bfseries{\MakeUppercase{\@title}}}
    \vskip1\baselineskip
    \if\@language0
        {\normalsize \bfseries{ }}
    \else
        {\normalsize \bfseries{ }}
    \fi
    \vskip1\baselineskip
    \normalsize \textit{\bfseries{\MakeUppercase{\@author}}}
    \vskip1\baselineskip
    {{\normalsize \bfseries{\@texttype}}}\\
  \vspace{6.5cm}


  \vskip\baselineskip
  \vskip\baselineskip
  \@address\\\@date
  \end{center}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Work Presentation page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\presentationpage{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \begin{center}
  	\includegraphics[scale=0.2]{images/ifgvertical} \\
  	\if\@language0
  	{\fontfamily{times}\selectfont \small \@universitypt\\}
  	{\fontfamily{times}\selectfont \small \@campus\\}
  	{\fontfamily{times}\selectfont \small \@programpt\\}
  	\else
  	{\fontfamily{times}\selectfont \small \@universityen\\}
  	{\fontfamily{times}\selectfont \small \@campus\\}
  	{\fontfamily{times}\selectfont \small \@programen\\}
  	\fi
  	{\fontfamily{times}\selectfont \small http://www.ifg.edu.br/formosa\\}
  	\vfill
	{\large\bfseries{\MakeUppercase{\@title}}}\\
	\vfill
	{\Large \@author}
	\vfill
  \vskip 38mm
  \begin{flushright}
    \begin{minipage}{100mm}
    \quotefonti %
    \@presentationtext
    \vskip2\baselineskip
    \end{minipage}
  \end{flushright}
  \centering{
    	{\quotefont \@advisertitle:} \@adviser\\
    	\if\@showcoadviser1{\quotefont\@coadvisertitle:} \@coadviser\\\fi
  }
  \vfill
 \begin{center}
  		\@address
  		\\
  		\@date
  \end{center}
  \end{center}
  \setcounter{page}{1}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ficha catalografica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ficha catalografica (Dados internacionais de catalogação-na-publicacao)

\newcommand{\FakeFichaCatalografica}{
	\vspace*{\fill}					% Posição verticaL
	\hrule							% Linha horizontal
	\begin{center}					% Minipage Centralizado
		\begin{minipage}[c]{12.5cm}		% Largura
			
			\@author
			
			\hspace{0.5cm} \@title  / \@author. --
			\@address, \@date-
			
			\hspace{0.5cm} \pageref{LastPage} p.; 30 cm.\\
			
			\hspace{0.5cm} \@advisertitle~\@adviser\\
			
			\hspace{0.5cm}
			\parbox[t]{\textwidth}{\@texttype~--~\@universitypt, \@date.}\\
			
			\hspace{0.5cm}
			1. Plano Semestral de Trabalho Docente
			2. IFG
			3. Desenvolvimento de software
			4. Aplicação \textit{Web}
			I. Orientador: \@adviser.
			II. \@universitypt.
			IV. Título: \@title\\
			
			\hspace{8.75cm} CDU 02:141:005.7\\
			
		\end{minipage}
	\end{center}
	\hrule
}
\newenvironment{fichacatalografica}{%
    \clearpage
    \thispagestyle{empty}
    \singlespacing
    \footnotesize
}{%
    \onehalfspacing
    \normalsize
}%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ATA de DEFESA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{ata}{%
	\clearpage
	\thispagestyle{empty}
	\singlespacing
	\footnotesize
}{%
	\onehalfspacing
	\normalsize
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% REPOSITORIO IFG
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{redi}{%
	\clearpage
	\thispagestyle{empty}
	\singlespacing
	\footnotesize
}{%
	\onehalfspacing
	\normalsize
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dedicatory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\dedicatory{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  ~\\
  \vfill
  \begin{flushright}
    \begin{minipage}{100mm}
    \quotefonti
    \begin{flushright}}
\def\enddedicatory{
		\end{flushright}
    \normalfont
    \end{minipage}
  \end{flushright}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Acknowledgements
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\acknowledgements{%
  \pagestyle{empty}
  \chapter*{\huge \acknowledgementsname}
  \thispagestyle{empty}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Resumo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\resumo{%
  %\onehalfspacing
  \pagestyle{empty}
  \gdef\@keywordsname{\keywordsnamePT}
  \chapter*{{\huge \resumoname}}
  \thispagestyle{empty}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\abstract{%
  %\onehalfspacing
  \gdef\@keywordsname{\keywordsnameEN}
  \pagestyle{empty}
  \chapter*{{\huge \abstrname}}
  \thispagestyle{empty}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Keywords
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\@keywordsname{\@defaultkeywordsname}
\def\keywords{%
  \par\vskip\baselineskip\noindent{\bf\@keywordsname: }}
\def\endkeywords{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Quotations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{citationblock}%
  {%
  \begin{spacing}{1.}
   \small
   \begin{list}{}{%
       \setlength{\listparindent}{0cm}%
       \setlength{\itemindent}{\listparindent}%
       \setlength{\rightmargin}{0cm}%
       \setlength{\leftmargin}{4cm}%
       \setlength{\parsep}{0pt}}%
    \item\relax}%
  {\end{list}\end{spacing}}

\def\epigraph{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  ~\\
  \vfill
  \begin{quotation}}
\def\endepigraph{\end{quotation}}

\def\quotation{%
  \@ifnextchar [%
    {\begin{pquot@tion}}%
    {\begin{pquot@tion}[\@empty]\end{pquot@tion}}}
\def\endquotation{\end{pquot@tion}\@afterindentfalse\@afterheading}

\def\pquot@tion[#1]#2{%
  \def\@qauthor{#2}
  \def\@qnote{#1}
  \begin{flushright}
    \begin{minipage}{0.8\textwidth}
      \begin{flushright}\quotefonti}
\def\endpquot@tion{%
        \vskip.2\baselineskip%
        \quotefont---\MakeTextUppercase{\@qauthor}
        \if\@qnote\@empty
          \relax
        \else
          \space(\@qnote)
        \fi
      \end{flushright}
    \end{minipage}
  \end{flushright}
  \normalfont\vskip2\baselineskip}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Table of contents

\setcounter{tocdepth}{4}

\renewcommand\tableofcontents{%

   \pagestyle{empty}

   \chapter*{{\huge \@tocname}}

   \thispagestyle{empty}

   \@starttoc{toc}

   \thispagestyle{empty}}


\renewcommand\listoffigures{%
   \pagestyle{empty}
   \chapter*{{\huge \@listoffiguresname}}
   \thispagestyle{empty}
   \@starttoc{lof}}

\renewcommand\lstlistoflistings{%
  \pagestyle{empty}
  \chapter*{{\huge \@lstlistingname}}
  \thispagestyle{empty}
  \@starttoc{lol}}


\renewcommand\listoftables{%
   \pagestyle{empty}
   \chapter*{{\huge \@listoftablesname}}
   \thispagestyle{empty}
   \@starttoc{lot}}
   
\newcommand{\listofacronyms}{%
    \pagestyle{empty}
    \chapter*{{\huge Lista de aooo}} % Título destacado
    \thispagestyle{empty}
    \addcontentsline{toc}{chapter}{Lista de Acrônimos} % Adiciona ao Sumário
    \vspace{-5em} % Ajusta o espaçamento
    \printglossary[type=\acronymtype, title={Lista de Acrônimos}]
% \printglossary[title={Glossário}]
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Some codes coming from phdthesis

% %% make the equation numbers have little ovals around them
 \def\tagform@#1{\maketag@@@{\cornersize{0.8}\ovalbox{\ignorespaces\sffamily{#1}\unskip\@@italiccorr}}}
%
% %% Load up PS insertion package
 \PScommands

% %% now reset the headers and footers
 \fancyhead{}
 \fancyfoot{}

% %% put the page numbers on the top in a nice box
% %% even side pages
 \fancyhead[LE]{%
 	\rule{0cm}{4mm}\color{black}{\thepage}\hfill\leftmark
 }

% %% odd side pages
 \fancyhead[RO]{
 	\rule{0cm}{4mm}\color{black}{\rightmark}\hfill\thepage
 }

% Header style of the chapter page
\fancypagestyle{plain}{
  \fancyhead{}
  \fancyfoot{}
  \fancyhead{\hfill\thepage}
  \renewcommand{\headrulewidth}{0pt}
 }

% %% bring the style into effect

 \pagestyle{fancy}
\renewcommand{\chaptermark}[1]{%
	\markboth{\MakeUppercase{%
			\ #1}}{}}
% %% make the quotation appear next to the chapter number
\renewcommand\chapterheadstartvskip{\vspace*{-5\baselineskip}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Sectioning
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setcounter{secnumdepth}{4}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Tables and figures

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\small\bf #1\rm\enskip #2}%
  \ifdim \wd\@tempboxa >\hsize
    {\small\bf#1\rm\enskip #2\par}
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mathematics

% Equation numbering
\renewcommand{\theequation}{\rm\thechapter.\arabic{equation}}

% Theorem-like environments
\newtheoremstyle{theo}%
	{\topsep}{\topsep}% Space above and below
	{\slshape}% Body style
	{0pt}% Heading indent amount
	{\bfseries}{.}% Heading font and punctuation after it
	{1ex plus 0pt minus .2ex}% Space after heading
	{}% Head spec (empty = same as  plain  style
\theoremstyle{definition}
\newtheorem{Def}{\@defname}[chapter]
\theoremstyle{theo}
\newtheorem{Axi}{\@axiomname}[chapter]
\newtheorem{Conj}{\@conjecturename}[chapter]
\newtheorem{Lem}{\@lemmaname}[chapter]
\newtheorem{Theo}{\@theoname}[chapter]
\newtheorem{Prop}{\@propname}[chapter]
\newtheorem{Cor}{\@corname}[chapter]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Code BLocks

\lstnewenvironment{code}[1][language=Python,caption=Name,label=code:Name]
  {
  \lstset{
    #1,
    basicstyle=\ttfamily\small,
    aboveskip={1.0\baselineskip},
    belowskip={1.0\baselineskip},
    columns=fixed,
    extendedchars=true,
    breaklines=true,
    tabsize=4,
    prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}},
    frame=lines,
    showtabs=false,
    showspaces=false,
    showstringspaces=false,
    keywordstyle=\color[rgb]{0.627,0.126,0.941},
    commentstyle=\color[rgb]{0.133,0.545,0.133},
    stringstyle=\color[rgb]{01,0,0},
    numbers=left,
    numberstyle=\small,
    stepnumber=1,
    numbersep=10pt,
    escapeinside={\%*}{*)}
    }
  }
 {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reference macros

\newcommand{\figref}[2][]{\@figurename~\ref{#2}#1\xspace}
\newcommand{\tabref}[1]{\@tablename~\ref{#1}\xspace}
\newcommand{\eqnref}[1]{\@equationame~\eqref{#1}\xspace}
\newcommand{\chapref}[1]{\@chaptername~\ref{#1}\xspace}
\newcommand{\secref}[1]{\@sectionname~\ref{#1}\xspace}
\newcommand{\appref}[1]{\@appendixname~\ref{#1}\xspace}
\newcommand{\axiref}[1]{\@axiomname~\ref{#1}\xspace}
\newcommand{\conjref}[1]{\@conjname~\ref{#1}\xspace}
\newcommand{\defref}[1]{\@defname~\ref{#1}\xspace}
\newcommand{\lemref}[1]{\@lemmaname~\ref{#1}\xspace}
\newcommand{\theoref}[1]{\@theoname~\ref{#1}\xspace}
\newcommand{\corref}[1]{\@corname~\ref{#1}\xspace}
\newcommand{\propref}[1]{\@propname~\ref{#1}\xspace}
\newcommand{\pgref}[1]{\@pagename~\pageref{#1}\xspace}
