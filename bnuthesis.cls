%%
%% This is file `bnuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% bnuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2005-2023 by Tsinghua University TUNA Association <tuna@tsinghua.edu.cn>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{bnuthesis}
[2024/05/22 0.0.1 Xinjiang University Thesis Template]
\newcommand\bnu@error[1]{%
  \ClassError{bnuthesis}{#1}{}%
}
\newcommand\bnu@warning[1]{%
  \ClassWarning{bnuthesis}{#1}%
}
\newcommand\bnu@patch@error[1]{%
  \bnu@error{Failed to patch command \protect#1}%
}
\newcommand\bnu@deprecate[2]{%
  \def\bnu@@tmp{#2}%
  \bnu@warning{%
    The #1 is deprecated%
    \ifx\bnu@@tmp\@empty\else
      . Use #2 instead%
    \fi
  }%
}
\@ifl@t@r\fmtversion{2017/04/15}{}{
  \bnu@error{%
    TeX Live 2017 or later version is required to compile this document%
  }
}
\RequirePackage{iftex}
\ifXeTeX\else
  \ifLuaTeX\else
    \bnu@error{XeLaTeX or LuaLaTeX is required to compile this document}
  \fi
\fi
\InputIfFileExists{bnuthesis-pdf-test-config.tex}{}{
  \InputIfFileExists{bnuthesis-log-test-config.tex}{}{}
}
\hyphenation{BNU-Thesis}
\def\bnuthesis{BNUThesis}
\def\thuthesis{ThuThesis}
\def\version{0.0.2}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=bnu,
  prefix=bnu@,
  setkeys=\kvsetkeys}
\let\bnu@setup@hook\@empty
\newcommand\bnusetup[1]{%
  \let\bnu@setup@hook\@empty
  \kvsetkeys{bnu}{#1}%
  \bnu@setup@hook
}
\newcommand\bnu@define@key[1]{%
  \kvsetkeys{bnu@key}{#1}%
}
\kv@set@family@handler{bnu@key}{%
  \@namedef{bnu@#1@@name}{#1}%
  \def\bnu@@default{}%
  \def\bnu@@choices{}%
  \kv@define@key{bnu@value}{name}{%
    \@namedef{bnu@#1@@name}{##1}%
  }%
  \@namedef{bnu@#1@@check}{}%
  \@namedef{bnu@#1@@code}{}%
  \kv@define@key{bnu@value}{choices}{%
    \def\bnu@@choices{##1}%
    \@namedef{bnu@#1@@reset}{}%
    \@namedef{bnu@#1@@check}{%
      \@ifundefined{%
        ifbnu@\@nameuse{bnu@#1@@name}@\@nameuse{bnu@\@nameuse{bnu@#1@@name}}%
      }{%
        \bnu@error{Invalid value "#1 = \@nameuse{bnu@\@nameuse{bnu@#1@@name}}"}%
      }%
      \@nameuse{bnu@#1@@reset}%
      \@nameuse{bnu@\@nameuse{bnu@#1@@name}@\@nameuse{bnu@\@nameuse{bnu@#1@@name}}true}%
    }%
  }%
  \kv@define@key{bnu@value}{default}{%
    \def\bnu@@default{##1}%
  }%
  \kvsetkeys{bnu@value}{#2}%
  \@namedef{bnu@\@nameuse{bnu@#1@@name}}{}%
  \kv@set@family@handler{bnu@choice}{%
    \ifx\bnu@@default\@empty
      \def\bnu@@default{##1}%
    \fi
    \expandafter\newif\csname ifbnu@\@nameuse{bnu@#1@@name}@##1\endcsname
    \expandafter\g@addto@macro\csname bnu@#1@@reset\endcsname{%
      \@nameuse{bnu@\@nameuse{bnu@#1@@name}@##1false}%
    }%
  }%
  \kvsetkeys@expandafter{bnu@choice}{\bnu@@choices}%
  \expandafter\let\csname bnu@\@nameuse{bnu@#1@@name}\endcsname\bnu@@default
  \expandafter\ifx\csname bnu@\@nameuse{bnu@#1@@name}\endcsname\@empty\else
    \@nameuse{bnu@#1@@check}%
  \fi
  \kv@define@key{bnu}{#1}{%
    \@namedef{bnu@\@nameuse{bnu@#1@@name}}{##1}%
    \@nameuse{bnu@#1@@check}%
    \@nameuse{bnu@#1@@code}%
  }%
}
\newcommand\bnu@option@hook[2]{%
  \expandafter\g@addto@macro\csname bnu@#1@@code\endcsname{#2}%
}
\bnu@define@key{
  thesis-type = {
    name = thesis@type,
    choices = {
      thesis,
      proposal,
    },
    default = thesis,
  },
  degree = {
    choices = {
      bachelor,
      master,
      doctor,
      postdoc,
    },
    default = doctor,
  },
  degree-type = {
    choices = {
      academic,
      professional,
    },
    name = degree@type,
  },
  main-language = {
    name = main@language,
    choices = {
      chinese,
      english,
    },
  },
  language = {
    choices = {
      chinese,
      english,
    },
  },
  system = {
    choices = {
      auto,
      mac,
      unix,
      windows,
    },
    default = auto,
  },
  fontset = {
    choices = {
      auto,
      windows,
      mac,
      ubuntu,
      fandol,
      none,
    },
    default = auto,
  },
  font = {
    choices = {
      auto,
      times,
      termes,
      stix,
      xits,
      libertinus,
      newcm,
      lm,
      newtx,
      none,
    },
    default = auto,
  },
  cjk-font = {
    name = cjk@font,
    choices = {
      auto,
      windows,
      mac,
      mac-word,
      noto,
      fandol,
      none,
    },
    default = auto,
  },
  math-font = {
    name = math@font,
    choices = {
      auto,
      stix,
      xits,
      libertinus,
      newcm,
      lm,
      newtx,
      none,
    },
    default = auto,
  },
  math-style = {
    name = math@style,
    choices = {
      GB,
      ISO,
      TeX,
    },
  },
  uppercase-greek = {
    name = uppercase@greek,
    choices = {
      italic,
      upright,
    },
  },
  less-than-or-equal = {
    name = leq,
    choices = {
      slanted,
      horizontal,
    },
  },
  integral = {
    choices = {
      upright,
      slanted,
    },
  },
  integral-limits = {
    name = integral@limits,
    choices = {
      true,
      false,
    },
  },
  partial = {
    choices = {
      upright,
      italic,
    },
  },
  math-ellipsis = {
    name = math@ellipsis,
    choices = {
      centered,
      lower,
      AMS,
    },
  },
  real-part = {
    name = real@part,
    choices = {
      roman,
      fraktur,
    },
  },
  output = {
    choices = {
      print,
      electronic,
    },
    default = print,
  },
}
\newif\ifbnu@degree@graduate
\newcommand\bnu@set@graduate{%
  \bnu@degree@graduatefalse
  \ifbnu@degree@doctor
    \bnu@degree@graduatetrue
  \fi
  \ifbnu@degree@master
    \bnu@degree@graduatetrue
  \fi
}
\bnu@set@graduate
\bnu@option@hook{degree}{%
  \bnu@set@graduate
}
\DeclareBoolOption[false]{openright}
\DeclareComplementaryOption{openany}{openright}
\DeclareBoolOption[true]{raggedbottom}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\ifbnu@openright
  \PassOptionsToClass{openright}{book}
\else
  \PassOptionsToClass{openany}{book}
\fi
\PassOptionsToPackage{no-math}{fontspec}
\LoadClass[a4paper,UTF8,zihao=-4,scheme=plain,fontset=none]{ctexbook}[2017/04/01]
\RequirePackage{etoolbox}
\RequirePackage{filehook}
\RequirePackage{xparse}
\RequirePackage{geometry}%
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}
\RequirePackage{notoccite}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\AtEndPreamble{
  \ifx\tikzifexternalizing\@undefined\else
    \tikzifexternalizing{
      \renewcommand*\includepdf[2][]{}
    }{}
  \fi
}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifbnu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\ifXeTeX
  \RequirePackage{xeCJKfntef}
\else
  \RequirePackage{ulem}
\fi
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{url}
\AtEndPreamble{
  \@ifpackageloaded{biblatex}{}{
    \@ifpackageloaded{apacite}{}{
      \RequirePackage{natbib}
    }
  }
}
\AtEndOfPackageFile*{natbib}{
  \@ifpackageloaded{apacite}{}{
    \RequirePackage{bibunits}
  }
}
\newcommand\bnu@package@conflict[2]{%
  \AtEndOfPackageFile*{#1}{%
    \AtBeginOfPackageFile*{#2}{%
      \bnu@error{The "#2" package is incompatible with "#1"}%
    }%
  }%
}
\bnu@package@conflict{biblatex}{bibunits}
\bnu@package@conflict{biblatex}{chapterbib}
\bnu@package@conflict{biblatex}{cite}
\bnu@package@conflict{biblatex}{multibib}
\bnu@package@conflict{biblatex}{natbib}

\bnu@package@conflict{bibunits}{biblatex}
\bnu@package@conflict{bibunits}{chapterbib}
\bnu@package@conflict{bibunits}{multibib}

\bnu@package@conflict{unicode-math}{amscd}
\bnu@package@conflict{unicode-math}{amsfonts}
\bnu@package@conflict{unicode-math}{amssymb}
\bnu@package@conflict{unicode-math}{bbm}
\bnu@package@conflict{unicode-math}{bm}
\bnu@package@conflict{unicode-math}{eucal}
\bnu@package@conflict{unicode-math}{eufrak}
\bnu@package@conflict{unicode-math}{mathrsfs}
\bnu@package@conflict{unicode-math}{newtxmath}
\bnu@package@conflict{unicode-math}{upgreek}

\bnu@package@conflict{natbib}{biblatex}
\bnu@package@conflict{natbib}{cite}

\bnu@package@conflict{newtxmath}{amsfonts}
\bnu@package@conflict{newtxmath}{amssymb}
\bnu@package@conflict{newtxmath}{unicode-math}
\bnu@package@conflict{newtxmath}{upgreek}
\AtBeginOfPackageFile*{amsthm}{
  \@ifpackageloaded{newtxmath}{
    \bnu@error{The "amsthm" package should be loaded before setting "newtxmath"}
  }{}
}%
\geometry{
  paper          = a4paper,  % 210 * 297mm
  marginparwidth = 2cm,
  marginparsep   = 0.5cm,
}
\newcommand\bnu@set@geometry{%
  \ifbnu@degree@bachelor
    \geometry{
      top        = 2.5cm,
      bottom     = 2.0cm,
      left       = 2.5cm,
      right      = 2.0cm,
      headheight = 0.5cm,
      headsep    = 0.5cm,
      footskip   = 14.24323pt,
    }%
    \ifbnu@output@print
      \geometry{
        left       = 2.5cm,
        right      = 2cm,
      }%
    \else
      \geometry{
        hmargin    = 3cm,
      }%
    \fi
  \else
    \ifbnu@degree@graduate
      \geometry{
        % top        = 2.54cm,
        % bottom     = 2.54cm,
        % left       = 3.17cm,
        % right      = 3.17cm,
        top        = 3.3cm,
        bottom     = 3.3cm,
        left       = 3.2cm,   % 新大 标准页边距
        right      = 3.2cm,
      }%
    \else
      \geometry{
        margin     = 3cm,
        headheight = 0.5cm,
        headsep    = 0.3cm,
        footskip   = 0.8cm,
      }%
    \fi
  \fi
}
\bnu@set@geometry
\bnu@option@hook{degree}{\bnu@set@geometry}
\bnu@option@hook{output}{\bnu@set@geometry}
\bnusetup{main-language=\bnu@language}%
\let\bnu@main@language\bnu@language
\bnu@option@hook{language}{%
  \ifx\@begindocumenthook\@undefined\else
    \bnusetup{main-language=\bnu@language}%
    \let\bnu@main@language\bnu@language
  \fi
}
\newcommand\bnu@reset@main@language{%
  \bnusetup{language = \bnu@main@language}%
  \let\bnu@language\bnu@main@language
}
\newcommand\bnu@set@chapter@names{%
  \ifbnu@main@language@chinese
    \def\bnu@comments@name{指导教师评语}%
    \def\bibname{参考文献}%
    \def\appendixname{附录}%
    \def\indexname{索引}%
    \def\bnu@resolution@name{答辩委员会决议书}%
    \ifbnu@degree@bachelor
      \def\contentsname{目\qquad 录}%
      \def\listfigurename{插图索引}%
      \def\listtablename{表格索引}%
      \def\bnu@list@figure@table@name{插图和附表索引}%
      \def\bnu@list@algorithm@name{算法索引}%
      \def\bnu@acknowledgements@name{致\qquad 谢}%
      \def\listequationname{公式索引}%
      \def\bnu@denotation@name{主要符号表}%
      \def\bnu@resume@name{在学期间完成的相关学术成果}%
    \else
      \def\listfigurename{插图清单}%
      \def\listtablename{附表清单}%
      \def\bnu@list@figure@table@name{插图和附表清单}%
      \def\bnu@list@algorithm@name{算法清单}%
      \def\listequationname{公式清单}%
      \def\bnu@acknowledgements@name{致\quad 谢}%
      \ifbnu@degree@graduate
        \def\contentsname{目\quad 录}%
        \def\bnu@denotation@name{符号和缩略语说明}%
        \def\bnu@resume@name{在学期间完成的相关学术成果}%
      \else  % degree = postdoc
        \def\contentsname{目\qquad 次}%
        \def\bnu@denotation@name{符号表}%
        \def\bnu@resume@name{个人简历、发表的学术论文与科研成果}%
      \fi
    \fi
  \else
    \ifbnu@main@language@english
      \def\bnu@comments@name{Comments from Thesis Supervisor}%
      \def\bnu@resolution@name{Resolution of Thesis Defense Committee}%
      \def\indexname{Index}%
      \ifbnu@degree@bachelor
        \def\contentsname{CONTENTS}%
        \def\listfigurename{FIGURES}%
        \def\listtablename{TABLES}%
        \def\bnu@list@figure@table@name{FIGURES AND TABLES}%
        \def\bnu@list@algorithm@name{ALGORITHMS}%
        \def\listequationname{EQUATIONS}%
        \def\bnu@denotation@name{ABBREVIATIONS}%
        \def\bibname{REFERENCES}%
        \def\appendixname{APPENDIX}%
        \def\bnu@acknowledgements@name{ACKNOWLEDGEMENTS}%
        \def\bnu@resume@name{PUBLICATIONS}%
      \else
        \def\contentsname{Table of Contents}%
        \def\listfigurename{List of Figures}%
        \def\listtablename{List of Tables}%
        \def\bnu@list@figure@table@name{List of Figures and Tables}%
        \def\bnu@list@algorithm@name{List of Algorithms}%
        \def\listequationname{List of Equations}%
        \def\bnu@denotation@name{List of Symbols and Acronyms}%
        \def\bibname{References}%
        \def\appendixname{Appendix}%
        \def\bnu@acknowledgements@name{Acknowledgements}%
        \def\bnu@resume@name{Resume}%
      \fi
    \fi
  \fi
}
\bnu@set@chapter@names
\bnu@option@hook{degree}{\bnu@set@chapter@names}
\bnu@option@hook{main-language}{\bnu@set@chapter@names}
\newcommand\bnu@set@names{%
  \ifbnu@language@chinese
    \ctexset{
      figurename = 图,
      tablename  = 表,
    }%
    \def\bnu@algorithm@name{算法}%
    \def\bnu@equation@name{公式}%
    \def\bnu@assumption@name{假设}%
    \def\bnu@definition@name{定义}%
    \def\bnu@proposition@name{命题}%
    \def\bnu@lemma@name{引理}%
    \def\bnu@theorem@name{定理}%
    \def\bnu@axiom@name{公理}%
    \def\bnu@corollary@name{推论}%
    \def\bnu@exercise@name{练习}%
    \def\bnu@example@name{例}%
    \def\bnu@remark@name{注释}%
    \def\bnu@problem@name{问题}%
    \def\bnu@conjecture@name{猜想}%
    \def\bnu@proof@name{证明}%
    \def\bnu@theorem@separator{：}%
  \else
    \ifbnu@language@english
      \ctexset{
        figurename = {Figure},
        tablename  = {Table},
      }%
      \def\bnu@algorithm@name{Algorithm}%
      \def\bnu@equation@name{Equation}%
      \def\bnu@assumption@name{Assumption}%
      \def\bnu@definition@name{Definition}%
      \def\bnu@proposition@name{Proposition}%
      \def\bnu@lemma@name{Lemma}%
      \def\bnu@theorem@name{Theorem}%
      \def\bnu@axiom@name{Axiom}%
      \def\bnu@corollary@name{Corollary}%
      \def\bnu@exercise@name{Exercise}%
      \def\bnu@example@name{Example}%
      \def\bnu@remark@name{Remark}%
      \def\bnu@problem@name{Problem}%
      \def\bnu@conjecture@name{Conjecture}%
      \def\bnu@proof@name{Proof}%
      \def\bnu@theorem@separator{: }%
    \fi
  \fi
}
\bnu@set@names
\bnu@option@hook{language}{\bnu@set@names}
\ifLuaTeX
  % ctex 将带圈数字 U+2460–U+24FF 归入字符范围 3（ALchar），这里改回范围 6（JAchar）
  \ltjdefcharrange{3}{%
    "2000-"243F, "2500-"27BF, "2900-"29FF, "2B00-"2BFF}
  \ltjdefcharrange{6}{%
    "2460-"24FF, "2E80-"2EFF, "3000-"30FF, "3190-"319F, "31F0-"4DBF,
    "4E00-"9FFF, "F900-"FAFF, "FE10-"FE1F, "FE30-"FE6F, "FF00-"FFEF,
    "1B000-"1B16F, "1F100-"1F2FF, "20000-"3FFFF, "E0100-"E01EF}
\else
  \ifXeTeX
    \xeCJKDeclareCharClass{CJK}{"2460 -> "2473}
    \xeCJKDeclareCharClass{CJK}{"2605}
  \fi
\fi
\newcommand\bnu@set@punctuations{%
  \ifbnu@language@chinese
    \ifLuaTeX
      \ltjsetparameter{jacharrange={+9}}
    \else
      \ifXeTeX
        \xeCJKDeclareCharClass{FullLeft}{"2018, "201C}%
        \xeCJKDeclareCharClass{FullRight}{
          "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
        }%
      \fi
    \fi
  \else
    \ifbnu@language@english
      \ifLuaTeX
        \ltjsetparameter{jacharrange={-9}}
      \else
        \ifXeTeX
          \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
          \xeCJKDeclareCharClass{HalfRight}{
            "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
          }%
        \fi
      \fi
    \fi
  \fi
}
\bnu@set@punctuations
\bnu@option@hook{language}{\bnu@set@punctuations}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{21bp}%   # 新大 字号、行距（12,21）
  \abovedisplayskip 6bp%
  \abovedisplayshortskip 6bp%
  \belowdisplayshortskip 6bp%
  \belowdisplayskip \abovedisplayskip
}
\normalsize
\ifx\MakeRobust\@undefined \else
    \MakeRobust\normalsize
\fi
\def\bnu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\bnu@def@fontsize{chuhao}{42bp}
\bnu@def@fontsize{xiaochu}{36bp}
\bnu@def@fontsize{yihao}{26bp}
\bnu@def@fontsize{xiaoyi}{24bp}
\bnu@def@fontsize{erhao}{22bp}
\bnu@def@fontsize{xiaoer}{18bp}
\bnu@def@fontsize{sanhao}{16bp}
\bnu@def@fontsize{xiaosan}{15bp}
\bnu@def@fontsize{sihao}{14bp}
\bnu@def@fontsize{xiaosi}{12bp}
\bnu@def@fontsize{wuhao}{10.5bp}
\bnu@def@fontsize{xiaowu}{9bp}
\bnu@def@fontsize{liuhao}{7.5bp}
\bnu@def@fontsize{xiaoliu}{6.5bp}
\bnu@def@fontsize{qihao}{5.5bp}
\bnu@def@fontsize{bahao}{5bp}
\ifbnu@system@auto
  \IfFileExists{/System/Library/Fonts/Menlo.ttc}{
    \bnusetup{system = mac}
  }{
    \IfFileExists{/dev/null}{
      \IfFileExists{null:}{
        \bnusetup{system = windows}
      }{
        \bnusetup{system = unix}
      }
    }{
      \bnusetup{system = windows}
    }
  }
\fi
\newcommand\bnu@mac@word@font@path{%
  /Applications/Microsoft Word.app/Contents/Resources/DFonts/%
}
\ifbnu@fontset@auto
  \ifbnu@system@windows
    \bnusetup{fontset = windows}
  \else
    \IfFontExistsTF{SimSun}{
      \bnusetup{fontset = windows}
    }{
      \IfFileExists{\bnu@mac@word@font@path/SimSun.ttf}{
        \bnusetup{fontset = windows}
      }{
        \ifbnu@system@mac
          \bnusetup{fontset = mac}
        \else
          \IfFontExistsTF{Noto Serif CJK SC}{
            \bnusetup{fontset = ubuntu}
          }{
            \bnusetup{fontset = fandol}
          }
        \fi
      }
    }
  \fi
\fi
\newcommand\bnu@set@font{%
  \@nameuse{bnu@set@font@\bnu@font}%
}
\bnu@option@hook{font}{\bnu@set@font}
\newcommand\bnu@set@font@auto{%
  \ifbnu@font@auto
    \ifbnu@fontset@windows
      \bnusetup{font=times}%
    \else
      \ifbnu@fontset@mac
        \bnusetup{font=times}%
      \else
        \bnusetup{font=termes}%
      \fi
    \fi
  \fi
}
\bnu@option@hook{math-font}{\g@addto@macro\bnu@setup@hook{\bnu@set@font@auto}}
\AtBeginOfPackageFile*{siunitx}{\bnu@set@font@auto}
\AtEndPreamble{\bnu@set@font@auto}
\newcommand\bnu@set@font@times{%
  \setmainfont{Times New Roman}%
  \setsansfont{Arial}%
  \ifbnu@fontset@mac
    \setmonofont{Menlo}[Scale = MatchLowercase]%
  \else
    \setmonofont{Courier New}[Scale = MatchLowercase]%
  \fi
}
\newcommand\bnu@set@font@termes{%
  \setmainfont{texgyretermes}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \bnu@set@texgyre@sans@mono
}
\newcommand\bnu@set@texgyre@sans@mono{%
  \setsansfont{texgyreheros}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setmonofont{texgyrecursor}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
    Ligatures      = CommonOff,
  ]%
}
\let\bnu@font@family@stix\@empty
\newcommand\bnu@set@stix@names{%
  \ifx\bnu@font@family@stix\@empty
    \IfFontExistsTF{STIXTwoText-Regular.otf}{%
      \gdef\bnu@font@family@stix{STIXTwoText}%
      \gdef\bnu@font@name@stix@math{STIXTwoMath-Regular}%
    }{%
      \gdef\bnu@font@family@stix{STIX2Text}%
      \gdef\bnu@font@name@stix@math{STIX2Math}%
    }%
  \fi
}
\newcommand\bnu@set@font@stix{%
  \bnu@set@stix@names
  \setmainfont{\bnu@font@family@stix}[
    Extension      = .otf,
    UprightFont    = *-Regular,
    BoldFont       = *-Bold,
    ItalicFont     = *-Italic,
    BoldItalicFont = *-BoldItalic,
  ]%
  \bnu@set@texgyre@sans@mono
}
\let\bnu@font@family@xits\@empty
\newcommand\bnu@set@xits@names{%
  \ifx\bnu@font@family@xits\@empty
    \IfFontExistsTF{XITSMath-Regular.otf}{%
      \gdef\bnu@font@family@xits{XITS}%
      \gdef\bnu@font@style@xits@rm{Regular}%
      \gdef\bnu@font@style@xits@bf{Bold}%
      \gdef\bnu@font@style@xits@it{Italic}%
      \gdef\bnu@font@style@xits@bfit{BoldItalic}%
      \gdef\bnu@font@name@xits@math{XITSMath-Regular}%
    }{%
      \gdef\bnu@font@family@xits{xits}%
      \gdef\bnu@font@style@xits@rm{regular}%
      \gdef\bnu@font@style@xits@bf{bold}%
      \gdef\bnu@font@style@xits@it{italic}%
      \gdef\bnu@font@style@xits@bfit{bolditalic}%
      \gdef\bnu@font@name@xits@math{xits-math}%
    }%
  \fi
}
\newcommand\bnu@set@font@xits{%
  \bnu@set@xits@names
  \setmainfont{\bnu@font@family@xits}[
    Extension      = .otf,
    UprightFont    = *-\bnu@font@style@xits@rm,
    BoldFont       = *-\bnu@font@style@xits@bf,
    ItalicFont     = *-\bnu@font@style@xits@it,
    BoldItalicFont = *-\bnu@font@style@xits@bfit,
  ]%
  \bnu@set@texgyre@sans@mono
}
\let\bnu@font@family@libertinus\@empty
\newcommand\bnu@set@libertinus@names{%
  \ifx\bnu@font@family@libertinus\@empty
    \IfFontExistsTF{LibertinusSerif-Regular.otf}{%
      \gdef\bnu@font@family@libertinus@serif{LibertinusSerif}%
      \gdef\bnu@font@family@libertinus@sans{LibertinusSans}%
      \gdef\bnu@font@name@libertinus@math{LibertinusMath-Regular}%
      \gdef\bnu@font@style@libertinus@rm{Regular}%
      \gdef\bnu@font@style@libertinus@bf{Bold}%
      \gdef\bnu@font@style@libertinus@it{Italic}%
      \gdef\bnu@font@style@libertinus@bfit{BoldItalic}%
    }{%
      \gdef\bnu@font@family@libertinus@serif{libertinusserif}%
      \gdef\bnu@font@family@libertinus@sans{libertinussans}%
      \gdef\bnu@font@name@libertinus@math{libertinusmath-regular}%
      \gdef\bnu@font@style@libertinus@rm{regular}%
      \gdef\bnu@font@style@libertinus@bf{bold}%
      \gdef\bnu@font@style@libertinus@it{italic}%
      \gdef\bnu@font@style@libertinus@bfit{bolditalic}%
    }%
  \fi
}
\newcommand\bnu@set@font@libertinus{%
  \bnu@set@libertinus@names
  \setmainfont{\bnu@font@family@libertinus@serif}[
    Extension      = .otf,
    UprightFont    = *-\bnu@font@style@libertinus@rm,
    BoldFont       = *-\bnu@font@style@libertinus@bf,
    ItalicFont     = *-\bnu@font@style@libertinus@it,
    BoldItalicFont = *-\bnu@font@style@libertinus@bfit,
  ]%
  \setsansfont{\bnu@font@family@libertinus@sans}[
    Extension      = .otf,
    UprightFont    = *-\bnu@font@style@libertinus@rm,
    BoldFont       = *-\bnu@font@style@libertinus@bf,
    ItalicFont     = *-\bnu@font@style@libertinus@it,
  ]%
  \setmonofont{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\newcommand\bnu@set@font@newcm{%
  \setmainfont{NewCM10}[
    Extension      = .otf,
    UprightFont    = *-Book,
    BoldFont       = *-Bold,
    ItalicFont     = *-BookItalic,
    BoldItalicFont = *-BoldItalic,
  ]%
  \setsansfont{NewCMSans10}[
    Extension         = .otf,
    UprightFont       = *-Book,
    BoldFont          = *-Bold,
    ItalicFont        = *-BookOblique,
    BoldItalicFont    = *-BoldOblique,
  ]%
  \setmonofont{NewCMMono10}[
    Extension           = .otf,
    UprightFont         = *-Book,
    ItalicFont          = *-BookItalic,
    BoldFont            = *-Bold,
    BoldItalicFont      = *-BoldOblique,
  ]%
}
\newcommand\bnu@set@font@lm{%
  \setmainfont{lmroman10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setsansfont{lmsans10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
  \setmonofont{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\newcommand\bnu@set@font@newtx{%
  \RequirePackage{newtxtext}%
}
\ExplSyntaxOn
\@ifpackageloaded { xeCJK }
  { \msg_redirect_name:nnn { fontspec } { no-script } { info } }
  { }
\ExplSyntaxOff
\ifbnu@cjk@font@auto
  \ifbnu@fontset@mac
    \bnusetup{cjk-font = mac}
  \else
    \ifbnu@fontset@windows
      \IfFontExistsTF{SimSun}{
        \bnusetup{cjk-font = windows}
      }{
        \IfFileExists{\bnu@mac@word@font@path/SimSun.ttf}{
          \bnusetup{cjk-font = mac-word}
        }{
          \bnu@error{Cannot find "SimSun" font}
        }
      }
    \else
      \ifbnu@fontset@ubuntu
        \bnusetup{cjk-font = noto}
      \else
        \bnusetup{cjk-font = fandol}
      \fi
    \fi
  \fi
\fi
\newcommand\bnu@set@cjk@font@windows{%
  \setCJKmainfont{SimSun}[
    AutoFakeBold = 3,
    ItalicFont   = KaiTi,
  ]%
  \setCJKsansfont{SimHei}[AutoFakeBold = 3]%
  \setCJKmonofont{FangSong}%
  \setCJKfamilyfont{zhsong}{SimSun}[AutoFakeBold = 3]%
  \setCJKfamilyfont{zhhei}{SimHei}[AutoFakeBold = 3]%
  \setCJKfamilyfont{zhkai}{KaiTi}%
  \setCJKfamilyfont{zhfs}{FangSong}%
}
\@namedef{bnu@set@cjk@font@mac-word}{%
  \setCJKmainfont{SimSun}[%
    Path         = \bnu@mac@word@font@path,
    AutoFakeBold = 3,
    ItalicFont   = KaiTi,
  ]%
  \setCJKsansfont{SimHei}[%
    Path         = \bnu@mac@word@font@path,
    AutoFakeBold = 3,
  ]%
  \setCJKmonofont{FangSong}[Path=\bnu@mac@word@font@path]%
  \setCJKfamilyfont{zhsong}{SimSun}[%
    Path         = \bnu@mac@word@font@path,
    AutoFakeBold = 3,
  ]%
  \setCJKfamilyfont{zhhei}{SimHei}[%
    Path         = \bnu@mac@word@font@path,
    AutoFakeBold = 3,
  ]%
  \setCJKfamilyfont{zhkai}{KaiTi}[Path = \bnu@mac@word@font@path]%
  \setCJKfamilyfont{zhfs}{FangSong}[Path = \bnu@mac@word@font@path]%
}
\newcommand\bnu@set@cjk@font@mac{%
  \setCJKmainfont{Songti SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = Kaiti SC Regular,
    BoldItalicFont = Kaiti SC Bold,
  ]%
  \setCJKsansfont{Heiti SC}[
    UprightFont    = * Light,
    BoldFont       = * Medium,
  ]%
  \setCJKmonofont{STFangsong}
  \setCJKfamilyfont{zhsong}{Songti SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
  ]%
  \setCJKfamilyfont{zhhei}{Heiti SC}[
    UprightFont    = * Light,
    BoldFont       = * Medium,
  ]%
  \setCJKfamilyfont{zhfs}{STFangsong}%
  \setCJKfamilyfont{zhkai}{Kaiti SC}[
    UprightFont    = * Regular,
    BoldFont       = * Bold,
  ]%
  \setCJKfamilyfont{zhli}{Baoli SC}%
  \setCJKfamilyfont{zhyuan}{Yuanyi SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
  ]%
}
\newcommand\bnu@set@cjk@font@noto{%
  \setCJKmainfont{Noto Serif CJK SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = FandolKai-Regular,
    ItalicFeatures = {Extension = .otf},
  ]%
  \setCJKsansfont{Noto Sans CJK SC}[BoldFont = * Medium]%
  \setCJKmonofont{Noto Sans Mono CJK SC}%
  \setCJKfamilyfont{zhsong}{Noto Serif CJK SC}[
    UprightFont    = * Light,
    UprightFont    = * Bold,
  ]%
  \setCJKfamilyfont{zhhei}{Noto Sans CJK SC}[BoldFont = * Medium]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension      = .otf,
    UprightFont    = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension      = .otf,
    UprightFont    = *-Regular,
  ]%
}
\newcommand\bnu@set@cjk@font@fandol{%
  \setCJKmainfont{FandolSong}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
    ItalicFont  = FandolKai-Regular,
    ItalicFeatures = {Extension = .otf},
  ]%
  \setCJKsansfont{FandolHei}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKmonofont{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhsong}{FandolSong}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKfamilyfont{zhhei}{FandolHei}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
}
\ifbnu@cjk@font@none\else
  \providecommand\songti{\CJKfamily{zhsong}}
  \providecommand\heiti{\CJKfamily{zhhei}}
  \providecommand\fangsong{\CJKfamily{zhfs}}
  \providecommand\kaishu{\CJKfamily{zhkai}}
\fi
\newcommand\bnu@set@cjk@font{%
  \@nameuse{bnu@set@cjk@font@\bnu@cjk@font}%
}
\bnu@set@cjk@font
\bnu@option@hook{cjk-font}{\bnu@set@cjk@font}
\newcommand\bnu@set@math@style{%
  \ifbnu@math@style@TeX
    \bnusetup{
      uppercase-greek    = upright,
      less-than-or-equal = horizontal,
      integral           = slanted,
      integral-limits    = false,
      partial            = italic,
      math-ellipsis      = AMS,
      real-part          = fraktur,
    }%
  \else
    \bnusetup{
      uppercase-greek = italic,
      integral        = upright,
      partial         = upright,
      real-part       = roman,
    }%
    \ifbnu@math@style@ISO
      \bnusetup{
        less-than-or-equal = horizontal,
        integral-limits    = true,
        math-ellipsis      = lower,
      }%
    \else
      \ifbnu@math@style@GB
        \bnusetup{
          less-than-or-equal = slanted,
          integral-limits    = false,
          math-ellipsis      = centered,
        }%
      \fi
    \fi
  \fi
}
\ifbnu@main@language@chinese
  \bnusetup{math-style=GB}%
\else
  \bnusetup{math-style=TeX}%
\fi
\bnu@set@math@style
\bnu@option@hook{math-style}{\bnu@set@math@style}
\bnu@option@hook{main-language}{%
  \ifbnu@main@language@chinese
    \bnusetup{math-style=GB}%
  \else
    \bnusetup{math-style=TeX}%
  \fi
}
\newcommand\bnu@set@unimath@leq{%
  \ifbnu@leq@horizontal
    \ifx\@begindocumenthook\@undefined
      \let\le\bnu@save@leq
      \let\ge\bnu@save@geq
      \let\leq\bnu@save@leq
      \let\geq\bnu@save@geq
    \else
      \AtBeginDocument{%
        \let\le\bnu@save@leq
        \let\ge\bnu@save@geq
        \let\leq\bnu@save@leq
        \let\geq\bnu@save@geq
      }%
    \fi
  \else
    \ifbnu@leq@slanted
      \ifx\@begindocumenthook\@undefined
        \let\le\leqslant
        \let\ge\geqslant
        \let\leq\leqslant
        \let\geq\geqslant
      \else
        \AtBeginDocument{%
          \let\le\leqslant
          \let\ge\geqslant
          \let\leq\leqslant
          \let\geq\geqslant
        }%
      \fi
    \fi
  \fi
}
\newcommand\bnu@set@unimath@integral@limits{%
  \ifbnu@integral@limits@true
    \removenolimits{%
      \int\iint\iiint\iiiint\oint\oiint\oiiint
      \intclockwise\varointclockwise\ointctrclockwise\sumint
      \intbar\intBar\fint\cirfnint\awint\rppolint
      \scpolint\npolint\pointint\sqint\intlarhk\intx
      \intcap\intcup\upint\lowint
    }%
  \else
    \addnolimits{%
      \int\iint\iiint\iiiint\oint\oiint\oiiint
      \intclockwise\varointclockwise\ointctrclockwise\sumint
      \intbar\intBar\fint\cirfnint\awint\rppolint
      \scpolint\npolint\pointint\sqint\intlarhk\intx
      \intcap\intcup\upint\lowint
    }%
  \fi
}
\newcommand\bnu@set@unimath@ellipsis{%
  \ifbnu@math@ellipsis@centered
    \DeclareRobustCommand\mathellipsis{\mathinner{\unicodecdots}}%
  \else
    \DeclareRobustCommand\mathellipsis{\mathinner{\unicodeellipsis}}%
  \fi
}
\newcommand\bnu@set@unimath@real@part{%
  \ifbnu@real@part@roman
    \AtBeginDocument{%
      \def\Re{\operatorname{Re}}%
      \def\Im{\operatorname{Im}}%
    }%
  \else
    \AtBeginDocument{%
      \let\Re\bnu@save@Re
      \let\Im\bnu@save@Im
    }%
  \fi
}
\newcommand\bnu@set@unimath@style{%
  \ifbnu@uppercase@greek@upright
    \unimathsetup{math-style = TeX}%
  \else
    \ifbnu@uppercase@greek@italic
      \unimathsetup{math-style = ISO}%
    \fi
  \fi
  \ifbnu@math@style@TeX
    \unimathsetup{bold-style = TeX}%
  \else
    \unimathsetup{bold-style = ISO}%
  \fi
  \bnu@set@unimath@leq
  \bnu@set@unimath@integral@limits
  \ifbnu@partial@upright
    \unimathsetup{partial = upright}%
  \else
    \ifbnu@partial@italic
      \unimathsetup{partial = italic}%
    \fi
  \fi
  \bnu@set@unimath@ellipsis
  \bnu@set@unimath@real@part
}
\newcommand\bnu@qed{\rule{1ex}{1ex}}
\newcommand\bnu@load@unimath{%
  \@ifpackageloaded{unicode-math}{}{%
    \RequirePackage{unicode-math}%
    \AtBeginDocument{%
      \let\bnu@save@leq\leq
      \let\bnu@save@geq\geq
      \let\bnu@save@Re\Re
      \let\bnu@save@Im\Im
    }%
    \DeclareRobustCommand\bm[1]{{\symbfit{##1}}}%
    \DeclareRobustCommand\boldsymbol[1]{{\symbfit{##1}}}%
    \newcommand\square{\mdlgwhtsquare}%
    \newcommand\blacksquare{\mdlgblksquare}%
    \AtBeginDocument{%
      \renewcommand\checkmark{\ensuremath{\symbol{"2713}}}%
    }%
    \renewcommand\bnu@qed{\ensuremath{\QED}}%
  }%
}
\newcommand\bnu@set@math@font@stix{%
  \bnu@set@stix@names
  \setmathfont{\bnu@font@name@stix@math}[
    Extension    = .otf,
    Scale        = MatchLowercase,
    StylisticSet = \bnu@xits@integral@stylistic@set,
  ]%
  \setmathfont{\bnu@font@name@stix@math}[
    Extension    = .otf,
    Scale        = MatchLowercase,
    StylisticSet = 1,
    range        = {scr,bfscr},
  ]%
}
\newcommand\bnu@xits@integral@stylistic@set{%
  \ifbnu@integral@upright
    8%
  \fi
}
\newcommand\bnu@set@math@font@xits{%
  \bnu@set@xits@names
  \setmathfont{\bnu@font@name@xits@math}[
    Extension    = .otf,
    StylisticSet = \bnu@xits@integral@stylistic@set,
  ]%
  \setmathfont{\bnu@font@name@xits@math}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {cal,bfcal},
  ]%
}
\newcommand\bnu@libertinus@integral@stylistic@set{%
  \ifbnu@integral@slanted
    8%
  \fi
}
\newcommand\bnu@set@math@font@libertinus{%
  \bnu@set@libertinus@names
  \setmathfont{\bnu@font@name@libertinus@math}[
    Extension    = .otf,
    StylisticSet = \bnu@libertinus@integral@stylistic@set,
  ]%
}
\newcommand\bnu@newcm@integral@stylistic@set{%
  \ifbnu@integral@upright
    2%
  \fi
}
\newcommand\bnu@set@math@font@newcm{%
  \setmathfont{NewCMMath-Book}[
    Extension    = .otf,
    StylisticSet = \bnu@newcm@integral@stylistic@set,
  ]%
  \setmathfont{NewCMMath-Book}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {scr,bfscr},
  ]%
  \setmathrm{NewCM10}[
    Extension      = .otf,
    UprightFont    = *-Book,
    BoldFont       = *-Bold,
    ItalicFont     = *-BookItalic,
    BoldItalicFont = *-BoldItalic,
  ]%
  \setmathsf{NewCMSans10}[
    Extension         = .otf,
    UprightFont       = *-Book,
    BoldFont          = *-Bold,
    ItalicFont        = *-BookOblique,
    BoldItalicFont    = *-BoldOblique,
  ]%
  \setmathtt{NewCMMono10}[
    Extension           = .otf,
    UprightFont         = *-Book,
    ItalicFont          = *-BookItalic,
    BoldFont            = *-Bold,
    BoldItalicFont      = *-BoldOblique,
  ]%
}
\newcommand\bnu@set@math@font@lm{%
  \setmathfont{latinmodern-math}[Extension=.otf]%
  \setmathrm{lmroman10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setmathsf{lmsans10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
  \setmathtt{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\newcommand\bnu@set@math@font@newtx{%
  \ifbnu@font@newtx\else
    \let\bnu@save@encodingdefault\encodingdefault
    \let\bnu@save@rmdefault\rmdefault
    \let\bnu@save@sfdefault\sfdefault
    \let\bnu@save@ttdefault\ttdefault
    \RequirePackage[T1]{fontenc}%
    \renewcommand{\rmdefault}{ntxtlf}%
    \renewcommand{\sfdefault}{qhv}%
    \renewcommand{\ttdefault}{ntxtt}%
  \fi
  \ifbnu@uppercase@greek@italic
    \PassOptionsToPackage{slantedGreek}{newtxmath}%
  \fi
  \ifbnu@integral@upright
    \PassOptionsToPackage{upint}{newtxmath}%
  \fi
  \RequirePackage{newtxmath}
  \let\bnu@save@leq\leq
  \let\bnu@save@geq\geq
  \ifbnu@leq@slanted
    \let\le\leqslant
    \let\ge\geqslant
    \let\leq\leqslant
    \let\geq\geqslant
  \fi
  \ifbnu@integral@limits@true
    \let\ilimits@\displaylimits
  \fi
  \let\bnu@save@partial\partial
  \ifbnu@partial@upright
    \let\partial\uppartial
  \fi
  \ifbnu@math@ellipsis@centered
    \DeclareRobustCommand\mathellipsis{\mathinner{\cdotp\cdotp\cdotp}}%
  \else
    \DeclareRobustCommand\mathellipsis{\mathinner{\ldotp\ldotp\ldotp}}%
  \fi
  \let\bnu@save@Re\Re
  \let\bnu@save@Im\Im
  \ifbnu@real@part@roman
    \def\Re{\operatorname{Re}}%
    \def\Im{\operatorname{Im}}%
  \fi
  \RequirePackage{bm}%
  \ifbnu@font@newtx\else
    \let\encodingdefault\bnu@save@encodingdefault
    \let\rmdefault\bnu@save@rmdefault
    \let\sfdefault\bnu@save@sfdefault
    \let\ttdefault\bnu@save@ttdefault
  \fi
  \DeclareRobustCommand\symup[1]{{\mathrm{##1}}}%
  \DeclareRobustCommand\symbf[1]{{\bm{##1}}}%
  \DeclareRobustCommand\symbfsf[1]{{\bm{\mathsf{##1}}}}%
  \let\increment\upDelta%
  \renewcommand\bnu@qed{\openbox}%
}
\newcommand\bnu@set@math@font{%
  \ifbnu@math@font@none\else
    \ifbnu@math@font@newtx
      \bnu@set@math@font@newtx
    \else
      \bnu@load@unimath
      \bnu@set@unimath@style
      \@nameuse{bnu@set@math@font@\bnu@math@font}%
    \fi
  \fi
}
\bnu@option@hook{math-font}{\g@addto@macro\bnu@setup@hook{\bnu@set@math@font}}
\newcommand\bnu@set@math@font@auto{%
  \ifbnu@math@font@auto
    \bnusetup{math-font=xits}%
  \fi
}
\AtBeginOfPackageFile*{siunitx}{\bnu@set@math@font@auto}
\AtEndPreamble{\bnu@set@math@font@auto}
\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifbnu@output@print
      \ifodd\c@page
      \else
        \thispagestyle{empty}%
        \hbox{}%
        \newpage
        \if@twocolumn
          \hbox{}\newpage
        \fi
      \fi
    \fi
  \fi
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}%
}
\renewcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}%
}
\newif\ifbnu@backmatter
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \bnu@backmattertrue
  \bnusetup{toc-depth = 0}%
}
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand\footrulewidth{0pt}%
  \ifbnu@degree@bachelor
    \renewcommand\headrulewidth{0pt}%
    \fancyfoot[C]{
      \ifbnu@main@language@chinese
        \xiaowu
      \else
        \normalsize
      \fi
      \thepage
    }%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
  \else
    \renewcommand\headrulewidth{0.75bp}%
    \fancyhead[C]{%
      \wuhao
      \ifbnu@main@language@chinese
        \leftmark
      \else
        \MakeUppercase{\leftmark}%
      \fi
      }%
    \fancyfoot[C]{\wuhao\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth{%
        \CTEXifname{%
          \CTEXthechapter
          \ifbnu@main@language@chinese
            \quad
          \else
            \space
          \fi
        }{}##1%
      }{}%
    }%
  \fi
  \let\sectionmark\@gobble
}
\pagestyle{plain}
\def\ps@chapter{}
\ctexset{chapter/pagestyle = chapter}
\ctexset{%
  punct=quanjiao,
}
\newcommand\bnu@set@indent{%
  \ifbnu@main@language@chinese
    \ctexset{autoindent=2}%
  \else
    \ifbnu@degree@bachelor
      \ctexset{autoindent=0.8cm}%
    \else
      \ctexset{autoindent=0.74cm}%
    \fi
  \fi
}
\bnu@set@indent
\bnu@option@hook{degree}{\bnu@set@indent}
\bnu@option@hook{main-language}{\bnu@set@indent}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M
  \do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
}
\Urlmuskip=0mu plus 0.1mu
\partopsep=\z@skip
\def\@listi{\leftmargin\leftmargini
            \parsep \z@skip
            \topsep \z@skip
            \itemsep\z@skip}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \itemsep   \z@skip}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \partopsep \z@skip
              \itemsep   \z@skip}
\setlist{nosep}
\interfootnotelinepenalty=10000
\newcommand\bnu@circled[1]{%
  \ifnum#1 >10\relax
    \bnu@warning{%
      Too many footnotes in this page.
      Keep footnote less than 10%
    }%
  \fi
  {\symbol{\the\numexpr#1+"245F\relax}}%
}
\renewcommand{\thefootnote}{\bnu@circled{\c@footnote}}
\renewcommand{\thempfootnote}{\bnu@circled{\c@mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\footnotemargin=13.5bp
\long\def\@makefntext#1{%
  \begingroup
    % 序号取消上标
    \def\@makefnmark{\hbox{\normalfont\@thefnmark}}%
    \xiaowu
    \ifFN@hangfoot
      \bgroup
      \setbox\@tempboxa\hbox{%
        \ifdim\footnotemargin>\z@
          \hb@xt@\footnotemargin{\@makefnmark\hss}%
        \else
          \@makefnmark
        \fi
      }%
      \leftmargin\wd\@tempboxa
      \rightmargin\z@
      \linewidth \columnwidth
      \advance \linewidth -\leftmargin
      \parshape \@ne \leftmargin \linewidth
      % \footnotesize
      \xiaowu
      \@setpar{{\@@par}}%
      \leavevmode
      \llap{\box\@tempboxa}%
      \parskip\hangfootparskip\relax
      \parindent\hangfootparindent\relax
    \else
      \parindent1em%
      \noindent
      \ifdim\footnotemargin>\z@
        \hb@xt@ \footnotemargin{\hss\@makefnmark}%
      \else
        \ifdim\footnotemargin=\z@
          \llap{\@makefnmark}%
        \else
          \llap{\hb@xt@ -\footnotemargin{\@makefnmark\hss}}%
        \fi
      \fi
    \fi
    \footnotelayout#1%
    \ifFN@hangfoot
      \par\egroup
    \fi
  \endgroup
}
\allowdisplaybreaks[4]
\newcommand\bnu@put@parentheses[1]{%
  \ifbnu@language@chinese
    \unskip
    （#1）%
  \else
    (#1)%
  \fi
}
\def\tagform@#1{\maketag@@@{\bnu@put@parentheses{\ignorespaces#1\unskip\@@italiccorr}}}
\renewcommand{\eqref}[1]{%
  \textup{%
    \normalfont\bnu@put@parentheses{%
      \ignorespaces\ref{#1}\unskip\@@italiccorr
    }%
  }%
}
\def\fps@figure{htbp}
\def\fps@table{htbp}
\setlength{\floatsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\textfloatsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\intextsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\patchcmd{\@addtocurcol}%
  {\vskip \intextsep}%
  {\edef\save@first@penalty{\the\lastpenalty}\unpenalty
   \ifnum \lastpenalty = \@M  % hopefully the OR penalty
     \unpenalty
   \else
     \penalty \save@first@penalty \relax % put it back
   \fi
   \ifnum\outputpenalty <-\@Mii
     \addvspace\intextsep
     \vskip\parskip
   \else
     \addvspace\intextsep
   \fi}%
  {}{\bnu@patch@error{\@addtocurcol}}
\patchcmd{\@addtocurcol}%
  {\vskip\intextsep \ifnum\outputpenalty <-\@Mii \vskip -\parskip\fi}%
  {\ifnum\outputpenalty <-\@Mii
     \aftergroup\vskip\aftergroup\intextsep
     \aftergroup\nointerlineskip
   \else
     \vskip\intextsep
   \fi}%
  {}{\bnu@patch@error{\@addtocurcol}}
\patchcmd{\@getpen}{\@M}{\@Mi}
  {}{\bnu@patch@error{\@getpen}}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\bnu@define@key{
  figure-number-separator = {
    name    = figure@number@separator,
    default = {.},
  },
  table-number-separator = {
    name    = table@number@separator,
    default = {.},
  },
  equation-number-separator = {
    name    = equation@number@separator,
    default = {-},
  },
  number-separator = {
    name    = number@separator,
    default = {.},
  },
  figurestables-chapternumber = {
    name = figurestables@chapternumber,
    choices = {
      true,
      false,
    },
    default = false,
  }
}
\ifbnu@degree@bachelor
  \counterwithout{figure}{chapter}
  \counterwithout{table}{chapter}
\fi
\renewcommand\thefigure{%
  \ifnum\c@chapter>\z@
    \ifbnu@degree@bachelor\relax\else
    \ifbnu@figurestables@chapternumber@false\relax\else
      \thechapter
      \bnu@figure@number@separator
    \fi
  \fi
  \@arabic\c@figure
}
\renewcommand\thetable{%
  \ifnum\c@chapter>\z@
    \ifbnu@degree@bachelor\relax\else
    \ifbnu@figurestables@chapternumber@false\relax\else
      \thechapter
      \bnu@table@number@separator
    \fi
  \fi
  \@arabic\c@table
}
\renewcommand\theequation{%
  \ifnum\c@chapter>\z@
    \thechapter
    \bnu@equation@number@separator
  \fi
  \@arabic\c@equation
}
\newcommand\bnu@set@number@separator{%
  \let\bnu@figure@number@separator\bnu@number@separator
  \let\bnu@table@number@separator\bnu@number@separator
  \let\bnu@equation@number@separator\bnu@number@separator
}
\bnu@option@hook{number-separator}{\bnu@set@number@separator}
\DeclareCaptionFont{bnu}{%
  \ifbnu@degree@bachelor
    \fontsize{11bp}{15bp}\selectfont
  \else
    \ifbnu@language@chinese
      \fontsize{11bp}{14.3bp}\selectfont
    \else
      \fontsize{11bp}{12.65bp}\selectfont
    \fi
  \fi
}
\captionsetup{
  font           = bnu,
  labelsep       = quad,
  skip           = 6bp,
  figureposition = bottom,
  tableposition  = top,
}
\captionsetup[sub]{font=bnu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\newcommand\bnu@set@table@font{
  \ifbnu@language@chinese
    \def\bnu@table@font{%
      \fontsize{11bp}{14.3bp}\selectfont
      \renewcommand\arraystretch{1.42}%
    }%
  \else
    \def\bnu@table@font{%
      \fontsize{11bp}{12.65bp}\selectfont
      \renewcommand\arraystretch{1.47}%
    }%
  \fi
}
\bnu@set@table@font
\bnu@option@hook{language}{\bnu@set@table@font}
\patchcmd\@floatboxreset{%
  \normalsize
}{%
  \bnu@table@font
}{}{\bnu@patch@error{\@floatboxreset}}
\AtEndOfPackageFile*{longtable}{
  \AtBeginEnvironment{longtable}{%
    \bnu@table@font
  }
}
\heavyrulewidth=1.5bp
\lightrulewidth=1bp
\AtEndOfPackageFile*{threeparttable}{
  \g@addto@macro\TPT@defaults{\wuhao}
}
\ifbnu@degree@bachelor
  \newcommand{\bnu@abstract@name}{摘\quad 要}
  \newcommand{\bnu@abstract@name@en}{ABSTRACT}
\else
  \ifbnu@degree@graduate
    \newcommand{\bnu@abstract@name@en}{ABSTRACT}
    \newcommand{\bnu@abstract@name}{摘\quad 要}
  \else
    \newcommand{\bnu@abstract@name}{摘\quad 要}
    \newcommand{\bnu@abstract@name@en}{Abstract}
  \fi
\fi
\ctexset{%
  chapter = {
    nameformat   = {},
    numberformat = {},
    titleformat  = {},
    fixskip      = true,
    afterindent  = true,
    lofskip      = 0pt,
    lotskip      = 0pt,
  },
  section = {
    afterindent  = true,
  },
  subsection = {
    afterindent  = true,
  },
  subsubsection = {
    afterindent  = true,
  },
  paragraph/afterindent = true,
  subparagraph/afterindent = true,
}
\newcommand\bnu@set@section@format{%
  \ifbnu@degree@bachelor
    \ctexset{%
      chapter = {
        format     = \centering\heiti\bfseries\fontsize{16bp}{20bp}\selectfont,
        aftername = \hspace{0.5em},
        beforeskip = 0.5\baselineskip,
        afterskip  = 0.5\baselineskip,
      },
      section = {
        format     = \heiti\bfseries\fontsize{15bp}{20bp}\selectfont,
        beforeskip = 0.5\baselineskip,
        afterskip  = 0.5\baselineskip,
      },
      subsection = {
        format     = \heiti\bfseries\fontsize{14bp}{20bp}\selectfont,
        beforeskip = 0.5\baselineskip,
        afterskip  = 0.5\baselineskip,
      },
      subsubsection = {
        format     = \heiti\bfseries\fontsize{12bp}{20bp}\selectfont,
        beforeskip = 0.5\baselineskip,
        afterskip  = 0.5\baselineskip,
      },
    }%
    \ifbnu@main@language@chinese
      \ctexset{
        chapter = {
          name   = {第,章},
          number = \thechapter,
        },
      }%
    \else
      \ctexset{
        chapter = {
          name   = \chaptername\space,
          number = \bnu@english@number{chapter},
        },
      }%
    \fi
  \else
    \ctexset{%
      chapter = {
        beforeskip = 27bp,
        afterskip  = 27bp,
        number     = \thechapter,
      },
      section = {
        beforeskip = 24bp,
        afterskip  = 6bp,
      },
      subsection = {
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
      subsubsection = {
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
    }%
    \ifbnu@main@language@chinese
      \ctexset{%
        chapter = {
          format      = \centering\sffamily\sanhao,
          nameformat  = {},
          titleformat = {},
          name        = {第,章},
          aftername = \hspace{0.5em},
        },
        section = {
          format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
          aftername = \hspace{0.25em},
        },
        subsection = {
          format     = \sffamily\fontsize{13bp}{20bp}\selectfont,
          aftername = \hspace{0.25em},
        },
        subsubsection = {
          format     = \sffamily\fontsize{12bp}{20bp}\selectfont,
          aftername = \hspace{0.25em},
        },
      }%
    \else
      \ctexset{%
        chapter = {
          format      = \centering\sffamily\bfseries\fontsize{16bp}{20bp}\selectfont,
          nameformat  = \MakeUppercase,
          titleformat = \MakeUppercase,
          name        = \chaptername\space,
          aftername   = \space,
        },
        section = {
          format     = \sffamily\bfseries\fontsize{14bp}{20bp}\selectfont,
          aftername  = \space,
        },
        subsection = {
          format     = \sffamily\bfseries\fontsize{13bp}{20bp}\selectfont,
          aftername  = \space,
        },
        subsubsection = {
          format     = \sffamily\bfseries\fontsize{12bp}{20bp}\selectfont,
          aftername  = \space,
        },
      }%
    \fi
  \fi
}
\bnu@set@section@format
\bnu@option@hook{degree}{\bnu@set@section@format}
\bnu@option@hook{main-language}{\bnu@set@section@format}
\newcommand\bnu@english@number[1]{%
  \expandafter\ifcase\csname c@#1\endcsname
    Zero\or
    One\or
    Two\or
    Three\or
    Four\or
    Five\or
    Six\or
    Seven\or
    Eight\or
    Nine\or
    Ten\or
    Eleven\or
    Twelve\or
    Thirteen\or
    Fourteen\or
    Fifteen\or
    Sixteen\or
    Seventeen\or
    Eighteen\or
    Nineteen\or
    Twenty\or
    \bnu@error{You are genius}%
  \fi
}
\newcommand\bnu@pdfbookmark[2]{}
\newcommand\bnu@phantomsection{}
\NewDocumentCommand\bnu@chapter{s o m o}{%
  \IfBooleanF{#1}{%
    \bnu@error{You have to use the star form: \string\bnu@chapter*}%
  }%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \bnu@pdfbookmark{0}{#3}%
    }{%
      \bnu@phantomsection
      \addcontentsline{toc}{chapter}{#2}%
    }%
  }{%
    \bnu@phantomsection
    \addcontentsline{toc}{chapter}{#3}%
  }%
  \ifbnu@degree@bachelor\ctexset{chapter/beforeskip=40bp}\fi
  \chapter*{#3}%
  \ifbnu@degree@bachelor\ctexset{chapter/beforeskip=30bp}\fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}{%
      \@mkboth{}{}%
    }{%
      \@mkboth{#4}{#4}%
    }%
  }{%
    \@mkboth{#3}{#3}%
  }%
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\renewcommand\tableofcontents{%
  \ifbnu@degree@graduate
    \ctexset{%
      chapter/titleformat = \centering\heiti\xiaoer,
    }%
    \bnu@chapter*[]{\contentsname}%
    \ctexset{%
      chapter/titleformat = {},
    }%
  \else
    \bnu@chapter*[]{\contentsname}%
  \fi
  \@starttoc{toc}%
}
\bnu@define@key{
  toc-chapter-style = {
    name = toc@chapter@style,
    choices = {
      times,
      arial,
    },
    default = times,
  },
}
\newcommand\bnu@leaders{\titlerule*[4bp]{.}}
\newcommand\bnu@set@toc@format{%
  \contentsmargin{\z@}%
  \ifbnu@degree@bachelor
    \ifbnu@main@language@chinese
      \titlecontents{chapter}
        [\z@]{\addvspace{6bp}
          \ifbnu@toc@chapter@style@arial
            \sanhao\sffamily
          \else
            \sanhao\heiti
          \fi
        }
        {\contentspush{\thecontentslabel\quad}}{}
        {\rmfamily\bnu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{\xiaosan\heiti}
        {\contentspush{\thecontentslabel\quad}}{}
        {\bnu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [1.5em]{\sihao\heiti}
        {\contentspush{\thecontentslabel\quad}}{}
        {\bnu@leaders\thecontentspage}%
      \titlecontents{subsubsection}
        [2em]{\xiaosi\heiti}
        {\contentspush{\thecontentslabel\quad}}{}
        {\bnu@leaders\thecontentspage}%
    \else
      \ifbnu@main@language@english
        \titlecontents{chapter}
          [\z@]{\addvspace{6bp}\sffamily}
          {\contentspush{\thecontentslabel\quad}}{}
          {\rmfamily\bnu@leaders\thecontentspage}%
        \titlecontents{section}
          [0.5cm]{}
          {\contentspush{\thecontentslabel\quad}}{}
          {\bnu@leaders\thecontentspage}%
        \titlecontents{subsection}
          [1cm]{}
          {\contentspush{\thecontentslabel\quad}}{}
          {\bnu@leaders\thecontentspage}%
      \fi
    \fi
  \else
    \ifbnu@main@language@chinese
      \titlecontents{chapter}
        [\z@]{\addvspace{6bp}\bfseries\rmfamily}
        {\contentspush{\thecontentslabel\quad}}{}
        {\rmfamily\bnu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\thecontentslabel\quad}}{}
        {\bnu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [2em]{}
        {\contentspush{\thecontentslabel\quad}}{}
        {\bnu@leaders\thecontentspage}%
    \else
      \titlecontents{chapter}
        [\z@]{\addvspace{6bp}\heiti}
        {\contentspush{\MakeUppercase{\thecontentslabel}\space}\MakeUppercase}{\MakeUppercase}
        {\rmfamily\bnu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\thecontentslabel\space}}{}
        {\bnu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [2em]{}
        {\contentspush{\thecontentslabel\space}}{}
        {\bnu@leaders\thecontentspage}%
    \fi
  \fi
}
\bnu@set@toc@format
\bnu@option@hook{degree}{\bnu@set@toc@format}
\bnu@option@hook{main-language}{\bnu@set@toc@format}
\bnu@define@key{
  secret-level = {
    name = secret@level,
  },
  secret-year = {
    name = secret@year,
  },
  title = {
    default = {标题},
  },
  title* = {
    default = {Title},
    name    = title@en,
  },
  author = {
    default = {姓名},
  },
  author* = {
    default = {Name of author},
    name    = author@en,
  },
  student-id = {
    name = student@id,
    default = {201721130051}
  },
  supervisor = {
    default = {导师姓名},
  },
  supervisor* = {
    default = {Name of supervisor},
    name    = supervisor@en,
  },
  supervisor-department ={
  default = {指导教师单位},
  name = supervisor@department,
  },
  associate-supervisor = {
    name = associate@supervisor,
  },
  associate-supervisor* = {
    name = associate@supervisor@en,
  },
  co-supervisor = {
    name = co@supervisor,
  },
  co-supervisor* = {
    name = co@supervisor@en,
  },
  % Reserved for compatibility
  joint-supervisor = {
    name = co@supervisor,
  },
  joint-supervisor* = {
    name = co@supervisor@en,
  },
  degree-category = {
    default = {工学博士},
    name    = degree@category,
  },
  degree-category* = {
    default = {Doctor of Philosophy},
    name    = degree@category@en,
  },
  % 为了向后兼容
  degree-name = {
    name    = degree@category,
  },
  degree-name* = {
    name    = degree@category@en,
  },
}
\bnu@option@hook{degree-name}{%
  \bnu@warning{`degree-name' is deprecated. Use `degree-category' instead.}
}
\bnu@option@hook{degree-name*}{%
  \bnu@warning{`degree-name*' is deprecated. Use `degree-category*' instead.}
}
\bnu@define@key{
  department = {
    default = {数学科学学院},
  },
  discipline = {
    % default = {计算数学},
  },
  discipline* = {
    % default = {Computer Science and Technology},
    name = discipline@en,
  },
}
\bnu@option@hook{discipline}{%
  \ifbnu@degree@type@professional
    \bnu@warning{`discipline' for professional degree is deprecated. Use `professional-field' instead.}
    \let\bnu@professional@field\bnu@discipline
    \let\bnu@discipline\@empty
  \fi
}
\bnu@option@hook{discipline*}{%
  \ifbnu@degree@type@professional
    \bnu@warning{`discipline*' for professional degree is deprecated. Use `professional-field*' instead.}
    \let\bnu@professional@field@en\bnu@discipline@en
    \let\bnu@discipline@en\@empty
  \fi
}
\bnu@define@key{
  professional-field = {
    name    = professional@field,
  },
  professional-field* = {
    name    = professional@field@en,
  },
  engineering-field = {
    name    = engineering@field,
  },
  engineering-field* = {
    name    = engineering@field@en,
  },
  date = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  clc,
  udc,
  id,
  discipline-level-1 = {
    default = {一级学科名称},
    name    = discipline@level@i,
  },
  discipline-level-2 = {
    default = {二级学科名称},
    name    = discipline@level@ii,
  },
  start-date = {
    name    = start@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  end-date = {
    name    = end@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  include-spine = {
    name = include@spine,
    choices = {
      false,
      true,
    },
    default = false,
  },
  include-titlepage-en = {
    name = include@titlepage@en,
    choices = {
      false,
      true,
    },
    default = false,
  },
}
\newcommand\bnu@format@date[2]{%
  \edef\bnu@@date{#2}%
  \def\bnu@@process@date##1-##2-##3\@nil{%
    #1{##1}{##2}{##3}%
  }%
  \expandafter\bnu@@process@date\bnu@@date\@nil
}
\newcommand\bnu@date@zh@digit[3]{#1 年 \number#2 月 \number#3 日}
\newcommand\bnu@date@zh@digit@short[3]{#1 年 \number#2 月}
\newcommand\bnu@date@zh@short[3]{\zhdigits{#1}年\zhnumber{#2}月}
\newcommand\bnu@date@month[1]{%
  \ifcase\number#1\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December%
  \fi
}
\newcommand\bnu@date@en@short[3]{\bnu@date@month{#2}, #1}
\newcommand\bnu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\bnu@uline[2][6em]{\uline{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\bnu@fixed@box[2]{%
  \begingroup
    \ifLuaTeX
      \ltjsetparameter{kanjiskip = {0pt plus 2filll minus 1filll}}%
    \else
      \renewcommand\CJKglue{\hspace{0pt plus 2filll minus 1filll}}%
    \fi
    \makebox[#1][l]{#2}%
  \endgroup
}
\newbox\bnu@stretch@box
\newcommand\bnu@stretch[2]{%
  \sbox\bnu@stretch@box{#2}%
  \ifdim \wd\bnu@stretch@box < #1\relax
    \begingroup
      \ifLuaTeX
        \ltjsetparameter{kanjiskip = {0pt plus 2filll}}%
      \else
        \renewcommand\CJKglue{\hspace{0pt plus 2filll}}%
      \fi
      \makebox[#1][l]{#2}%
    \endgroup
  \else
    \box\bnu@stretch@box
  \fi
}
\newbox\bnu@pad@box
\newcommand\bnu@pad[2]{%
  \sbox\bnu@pad@box{#2}%
  \ifdim \wd\bnu@pad@box < #1\relax
    \makebox[#1][l]{\box\bnu@pad@box}%
  \else
    \box\bnu@pad@box
  \fi
}
\newcounter{bnu@csl@count}
\newcommand\bnu@name@title@process[1]{%
  \ifcase\c@bnu@csl@count  % == 0
    \gdef\bnu@@name{#1}%
  \or  % == 1
    \gdef\bnu@@title{#1}%
  \fi
  \stepcounter{bnu@csl@count}%
}
\newcommand\bnu@name@title@format[2]{%
  \bnu@pad{2.3cm}{\bnu@stretch{3.5em}{#1}}%
  \bnu@stretch{3em}{#2}%
}
\newcommand\bnu@name@title[1]{%
  \setcounter{bnu@csl@count}{0}%
  \gdef\bnu@@name{}%
  \gdef\bnu@@title{}%
  \expandafter\comma@parse\expandafter{#1}{\bnu@name@title@process}%
  \bnu@name@title@format{\bnu@@name}{\bnu@@title}%
}
\renewcommand\maketitle{%
  \cleardoublepage
  \pagenumbering{Alph}%
  \bnu@pdfbookmark{-1}{\bnu@title}%
  \bnu@titlepage
  \ifbnu@include@spine@true
    \spine
  \fi
  \ifbnu@degree@graduate
    \ifbnu@thesis@type@thesis
      \ifbnu@include@titlepage@en@true
        \cleardoublepage
        \bnu@titlepage@en
      \fi
    \fi
  \fi
  \clearpage
}
\newcommand\bnu@titlepage{%
  \bnusetup{language = chinese}%
  \ifbnu@degree@graduate
    % 研究生
    \ifbnu@thesis@type@thesis
      % 学位论文
      \bnu@titlepage@thesis
    \else
      \ifbnu@thesis@type@proposal
        % 选题报告
        \bnu@titlepage@proposal
      \fi
    \fi
  \else
    \ifbnu@degree@bachelor
      % 本科生
      \bnu@titlepage@bachelor
    \else
      \ifbnu@degree@postdoc
        % 博后
        \bnu@cover@postdoc
        \cleardoublepage
        \bnu@titlepage@postdoc
      \fi
    \fi
  \fi
  \bnu@reset@main@language
}

\newcommand\bnu@titlepage@thesis{%
  \newgeometry{
    top     = 1.4cm,
    bottom  = 3.4cm,
    hmargin = 3.15cm,
  }%
  \thispagestyle{empty}%
  \null\vskip 8.1pt%
  \begingroup
    \centering
    \parbox[t][2cm][t]{\textwidth}{%
      \hskip -21.5pt%
      \bnu@titlepage@secret
    }  \par
    % \includegraphics[width=0.6\textwidth]{BNU_name_blue.png}
    \includegraphics[width=0.6\textwidth]{xju.png}
    \vskip 3.85bp%
    \bnu@titlepage@degree
    \vskip 70.105bp%
    \begingroup
      \centering
      \bfseries\heiti\xiaoer\bnu@title \par
    \endgroup
    \ifbnu@main@language@english
      \vskip 5.4pt%
      \begingroup
        \sffamily\bfseries\fontsize{20bp}{31.2bp}\selectfont
        Thesis Title: \bnu@title@en\par
      \endgroup
      \vskip -9.2pt%
    \fi
    \vfill
    \parbox[t][9.776cm][t]{\textwidth}{%
      \centering\bfseries\songti\sihao
      \bnu@titlepage@info
    }
    \par
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\bnu@titlepage@secret{%
  \sffamily\sanhao
  \ifx\bnu@secret@level\@empty
    \phantom{秘密}%
  \else
    \bnu@secret@level\symbol{"2605}\makebox[3em][c]{\bnu@secret@year}年%
  \fi\par
}
\newcommand\bnu@title@page@degree@category{%
  \begingroup
    \fontsize{16bp}{22bp}\selectfont
    \ifLuaTeX
      \fontspec{\CJK@family}%
      \ltjsetparameter{kanjiskip = {1bp}}%
    \else
      \CJKfamily+{}%
      \renewcommand\CJKglue{\hspace{1bp}}%
    \fi
    \ifbnu@thesis@type@thesis
      (申请清华大学\bnu@degree@category
      \ifbnu@degree@type@professional
        专业%
      \fi
      学位论文)%
    \else
      \ifbnu@thesis@type@proposal
        (清华大学%
        \ifbnu@degree@doctor
          博士%
        \else
          \ifbnu@degree@master
            硕士%
          \fi
        \fi
        学位论文选题报告)%
      \fi
    \fi
    \par
  \endgroup
}
\newcommand\bnu@titlepage@degree{%
  \vskip 14bp
  \begingroup
    \CJKfamily+{}\bfseries\heiti\fontsize{42bp}{60.53bp}\selectfont%
    \def\CJKglue{\hskip 1bp}%
    \ifbnu@thesis@type@thesis
      \bnu@stretch{7.5550em}{%
        \ifbnu@degree@type@professional
          专业%
        \else
          学术%
        \fi
        \ifbnu@degree@doctor
          博士%
        \else
          \ifbnu@degree@master
            硕士%
          \fi
        \fi
        研究生%
      }\\
      \bnu@stretch{4.33em}{学位论文}%
    \else
      \ifbnu@thesis@type@proposal
        (北京师范大学%
        \ifbnu@degree@doctor
          博士%
        \else
          \ifbnu@degree@master
            硕士%
          \fi
        \fi
        学位论文选题报告)%
      \fi
    \fi
    \par
  \endgroup
}

\newcommand\bnu@titlepage@info{%
  \bnu@titlepage@info@tabular{1.3cm}{2.45cm}{2.35cm}{0.77cm}{%
  \bnu@info@item{作者}{}{\bnu@pad{2.3cm}{\bnu@stretch{3.5em}{\bnu@author}}}%
  \bnu@info@item{导师}{\bnu@name@title}{\bnu@supervisor}%
  \bnu@info@item{副导师}{\bnu@name@title}{\bnu@associate@supervisor}%
  \bnu@info@item{联合导师}{\bnu@name@title}{\bnu@co@supervisor}%
  \bnu@info@item{培养单位}{}{\bnu@department}%
  \bnu@info@item{学号}{}{\bnu@student@id}%
  \ifbnu@degree@type@academic
    \bnu@info@item{学科专业}{}{\bnu@discipline}%
  \else
    \bnu@info@item{学科领域}{}{\bnu@professional@field}%
  \fi
  \bnu@info@item{完成日期}{}{\bnu@titlepage@date}%
 }\par
}
\newcommand\bnu@titlepage@info@tabular[5]{%
  \def\bnu@info@item##1##2##3{%
    \ifx##3\@empty\else
      \bnu@pad{#2}{\bnu@fixed@box{#3}{##1}}%
      \bnu@pad{#4}{：}%
      & ##2{##3}\\
    \fi
  }%
  \begingroup
    \renewcommand\arraystretch{1.7477}%
    \setlength{\tabcolsep}{0pt}
    \begin{tabular}{lc}%
      #5%
    \end{tabular}%
  \endgroup
}
\newcommand\bnu@titlepage@date{%
  \begingroup
    \sanhao
    \ifLuaTeX
      \ltjsetparameter{kanjiskip = {1bp}}%
    \else
      \renewcommand\CJKglue{\hspace{1bp}}%
    \fi
    \bnu@format@date{\bnu@date@zh@short}{\bnu@date}\par
  \endgroup
}
\newcommand{\bnu@titlepage@en}{%
  \newgeometry{
    top     = 5.5cm,
    bottom  = 5cm,
    hmargin = 3.4cm,
  }%
  \thispagestyle{empty}%
  \bnusetup{language = english}%
  \ifbnu@degree@type@academic
    \bnu@titlepage@en@graduate@academic
  \else
    \bnu@titlepage@en@graduate@professional
  \fi
  \bnu@reset@main@language
  \clearpage
  \restoregeometry
}
\newcommand\bnu@titlepage@en@graduate@academic{%
  \begingroup
    \centering
    \null\vskip -0.31cm%
    \parbox[t][143bp][t]{\textwidth}{%
      \centering\bnu@titlepage@en@title
    }\par
    \sanhao[1.725]%
    \bnu@titlepage@en@degree
    \vskip 3bp%
    in\par
    \vskip 3.5bp%
    {\bfseries\sffamily\bnu@discipline@en\par}
    \vfill
    {\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\bnu@author@en\par}%
    \vskip 0.18cm%
    \parbox[t][3.0cm][t]{\textwidth}{%
      \centering
      \xiaosan[2.1]%
      \bnu@titlepage@en@supervisor
    }\par
    \bnu@titlepage@en@date
    \vskip 0.7cm%
  \endgroup
}
\newcommand\bnu@titlepage@en@graduate@professional{%
  \begingroup
    \centering
    \null\vskip -0.31cm%
    \parbox[t][143bp][t]{\textwidth}{%
      \centering\bnu@titlepage@en@title
    }\par
    \sanhao[1.725]%
    \bnu@titlepage@en@degree
    \vfill
    {\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\bnu@author@en\par}%
    \ifx\bnu@professional@field@en\empty
      \vskip 1.95cm%
    \else
      \vskip -0.1cm%
      {\sffamily\bfseries(\bnu@professional@field@en)\par}%
      \vskip 1.1cm%
    \fi
    \parbox[t][3.37cm][t]{\textwidth}{%
      \centering
      \xiaosan[1.82]%
      \bnu@titlepage@en@supervisor
    }\par
    \bnu@titlepage@en@date
    \vskip 0.3cm%
  \endgroup
}
\newcommand\bnu@titlepage@en@title{%
  \begingroup
    % 对齐到网格，每行 15.6bp
    \sffamily\bfseries\fontsize{20bp}{31.2bp}\selectfont
    \bnu@title@en\par
  \endgroup
}
\newcommand\bnu@thesis@name@en{%
  \ifbnu@degree@master
    Thesis%
  \else
    Dissertation%
  \fi
}
\newcommand\bnu@titlepage@en@degree{%
  \bnu@thesis@name@en{} submitted to\par
  {\bfseries Tsinghua University\par}%
  in partial fulfillment of the requirement\par
  for the
  \ifbnu@degree@type@professional
    professional
  \fi
  degree of\par
  {\sffamily\bfseries\bnu@degree@category@en\par}%
}
\newcommand\bnu@titlepage@en@supervisor{%
  \begin{tabular}{r@{\makebox[20.5bp][l]{\hspace{2bp}:}}l}%
    \renewcommand\arraystretch{1}%
    \bnu@thesis@name@en{} Supervisor & \bnu@supervisor@en \\
    \ifx\bnu@associate@supervisor@en\@empty\else
      Associate Supervisor           & \bnu@associate@supervisor@en \\
    \fi
    \ifx\bnu@co@supervisor@en\@empty\else
      Co-supervisor                  & \bnu@co@supervisor@en \\
    \fi
  \end{tabular}%
}
\newcommand\bnu@titlepage@en@date{%
  \begingroup
    \sffamily\bfseries\sanhao
    \bnu@format@date{\bnu@date@en@short}{\bnu@date}\par
  \endgroup
}
\newcommand\bnu@titlepage@bachelor{%
  \newgeometry{
    left = 2.5cm,
    top = 2.5cm,
    right = 2.0cm,
    bottom = 2.0cm,
  }%
  \thispagestyle{empty}%
  \begingroup
    \centering
    \parbox[t][0cm][t]{\textwidth}{%
      \hfill
      \xiaosi
      \ifx\bnu@secret@level\@empty\else
        \bnu@secret@level\space\bnu@secret@year 年\par
      \fi
    }%
  \endgroup
  \vfill
  \begingroup
    \centering
    \includegraphics[scale=1.13]{bnu-name-bachelor.pdf}%
    \vskip 0.4cm%
    {\bfseries\xiaochu\songti\ziju{0.13} 本科生毕业论文（设计）\par}%
  \endgroup
  \vskip 2.2cm%
  \begingroup
    \heiti
    \noindent\hspace{3em}\makebox[16em]{\sanhao[1.1]\textbf{毕业论文（设计）题目：}}\par
    \vskip 0.3cm%
    \parbox[t]{15cm}{%
      \ifbnu@main@language@chinese
        \sanhao[1.8]\songti%
      \else
        \fontsize{14bp}{21.84bp}\heiti\selectfont
      \fi
      \newlength{\titlelength}
      \settowidth{\titlelength}{\bnu@title}
      \ifdim\titlelength < 405pt
        \CJKunderline*[textformat=\bfseries, skip=false, thickness=0.05em, depth=0.12em]{\hfill\bnu@title\hfill}\par%
        \CJKunderline*[textformat=\bfseries, skip=false, thickness=0.05em, depth=0.12em]{\hfill}%
      \else
        \CJKunderline*[textformat=\bfseries, skip=false, thickness=0.05em, depth=0.12em]{\hfill\bnu@title\hfill}\par%
      \fi
      \ifbnu@main@language@english
        \bnusetup{language=english}%
        \expandafter\uline\expandafter{\bnu@title@en}\par
        \bnusetup{language=chinese}%
      \fi
    }\par
  \endgroup
  \vskip 1.9cm%
  \begingroup
    \ifx\bnu@co@supervisor\@empty
      \bfseries\songti\sihao[2.32]%
    \else
      \bfseries\songti\sihao[1.62]%
    \fi
    \leftskip=4.8cm%
    \parindent=\z@
    \def\bnu@info@item##1##2##3{%
      \ifx##3\@empty\else
        \bnu@fixed@box{%
          \ifx\bnu@co@supervisor\@empty
            6em%
          \else
            7.5em%
          \fi
        }{##1}：##2{##3}\par
      \fi
    }%
    \def\bnu@name@title@format##1##2{%
      \bnu@stretch{3em}{##1}\quad ##2%
    }%
    \bnu@info@item{部院系}{}{\bnu@department}%
    \bnu@info@item{专业}{}{\bnu@discipline}%
    \bnu@info@item{学号}{}{\bnu@student@id}%
    \bnu@info@item{学生姓名}{\bnu@name@title}{\bnu@author}%
    \def\bnu@name@title@format##1##2{%
      \bnu@stretch{3em}{##1}%
    }%
    \bnu@info@item{指导教师}{\bnu@name@title}{\bnu@supervisor}%
    \def\bnu@name@title@format##1##2{%
      \bnu@stretch{3em}{##2}%
    }%
    \bnu@info@item{指导教师职称}{\bnu@name@title}{\bnu@supervisor}%
    \def\bnu@name@title@format##1##2{%
      \bnu@stretch{3em}{##1}%
    }%
    \bnu@info@item{联合指导教师}{\bnu@name@title}{\bnu@co@supervisor}%
    \def\bnu@name@title@format##1##2{%
      \bnu@stretch{3em}{##2}%
    }%
    \bnu@info@item{联合指导教师职称}{\bnu@name@title}{\bnu@co@supervisor}%
    \bnu@info@item{指导教师单位}{}{\bnu@supervisor@department}%
  \endgroup
  \vskip 2.6cm%
  \begingroup
    \centering
    \ifLuaTeX
      \fontspec{\CJK@family}%
    \else
      \CJKfamily+{}%
    \fi
    \xiaosi\bnu@format@date{\bnu@date@zh@digit}{\bnu@date}\par
  \endgroup
  \vfill
  \clearpage
  \restoregeometry
}
\newcommand\bnu@cover@postdoc{%
  \thispagestyle{empty}%
  \begin{center}%
    \renewcommand\ULthickness{0.7pt}%
    \vspace*{0.35cm}%
    {\sihao[2.6]%
      \bnu@stretch{3.1em}{分类号}\bnu@underline[3.7cm]{\bnu@clc}\hfill
      密级\bnu@underline[3.7cm]{\bnu@secret@level}\par
      \bnu@stretch{3.1em}{U D C}\bnu@underline[3.7cm]{\bnu@udc}\hfill
      编号\bnu@underline[3.7cm]{\bnu@id}\par
    }%
    \vskip 3.15cm%
    {\sffamily\bfseries\xiaoer[2.6]%
      {\ziju{1.5}清华大学\par}%
      {\ziju{0.5}博士后研究工作报告\par}%
    }%
    \vskip 0.2cm%
    \parbox[t][4.0cm][c]{\textwidth}{%
      \centering\sihao[3.46]%
      \renewcommand\ULdepth{1em}%
      \expandafter\uline\expandafter{\bnu@title}\par
    }\par
    \vskip 0.4cm%
    {\xiaosi\bnu@author\par}%
    \vskip 1.4cm%
    {\xiaosi[1.58]%
      \renewcommand\ULdepth{0.9em}%
      工作完成日期\quad
      \bnu@uline[5.9cm]{%
        \bnu@format@date{\bnu@date@zh@digit@short}{\bnu@start@date}—%
        \bnu@format@date{\bnu@date@zh@digit@short}{\bnu@end@date}
      }\par
      \vskip 0.55cm%
      报告提交日期\quad
      \bnu@uline[5.9cm]{\bnu@format@date{\bnu@date@zh@digit@short}{\bnu@date}}\par
    }%
    \vskip 0.45cm%
    {\xiaosi[2]{\ziju{1}清华大学}\quad （北京）\par}%
    \vskip 0.25cm%
    {\xiaosi[2]\bnu@format@date{\bnu@date@zh@digit@short}{\bnu@date}\par}%
  \end{center}%
}
\newcommand\bnu@titlepage@postdoc{%
  \thispagestyle{empty}%
  \begin{center}%
    \vspace*{1.5cm}%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sanhao[1.95]\bnu@title\par
    }\par
    \vskip 0.15cm%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sihao[1.36]\bnu@title@en\par
    }\par
    \vskip 0.4cm%
    {\xiaosi[2.6]%
      \begin{tabular}{l@{\quad}l}%
        \renewcommand\arraystretch{1}%
        \bnu@stretch{11em}{博士后姓名}                  & \bnu@author           \\
        \bnu@stretch{11em}{流动站（一级学科）名称}      & \bnu@discipline@level@i  \\
        \bnu@stretch{11em}{专\quad{}业（二级学科）名称} & \bnu@discipline@level@ii \\
      \end{tabular}\par
    }%
    \vskip 2.7cm%
    {\xiaosi[2.6]%
      研究工作起始时间\quad\bnu@format@date{\bnu@date@zh@digit}{\bnu@start@date}\par
      \vskip 0.1cm%
      研究工作期满时间\quad\bnu@format@date{\bnu@date@zh@digit}{\bnu@end@date}\par
    }%
    \vskip 2.1cm%
    {\xiaosi[2.6]清华大学人事处（北京）\par}%
    \vskip 0.6cm%
    {\wuhao\bnu@format@date{\bnu@date@zh@digit@short}{\bnu@date}\par}%
  \end{center}%
}
\def\bnu@committee@name{学位论文指导小组、公开评阅人和答辩委员会名单}
\NewEnviron{committee}[1][]{%
  \ifbnu@degree@graduate
    \cleardoublepage
    \let\bnu@committee@file\@empty
    \kv@define@key{bnu@committee}{name}{\let\bnu@committee@name\kv@value}%
    \kv@define@key{bnu@committee}{file}{\let\bnu@committee@file\kv@value}%
    \kv@set@family@handler{bnu@committee}{%
      \ifx\kv@value\relax
        \let\bnu@committee@file\kv@key
      \else
        \kv@handled@false
      \fi
    }%
    \kvsetkeys{bnu@committee}{#1}%
    \ifx\bnu@committee@file\@empty
      \begingroup
        \ctexset{
          chapter = {
            format    = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
            afterskip = 49bp,
          },
          section = {
            beforeskip  =  26bp,
            afterskip   =  9.5bp,
            format      += \centering,
            numbering   =  false,
            afterindent =  false,
          },
        }%
        \bnu@chapter*[]{\bnu@committee@name}%
        \thispagestyle{empty}%
        \bnusetup{language=chinese}%
        \BODY\clearpage
        \bnu@reset@main@language
      \endgroup
    \else
      \bnu@pdfbookmark{0}{\bnu@committee@name}%
      \includepdf{\bnu@committee@file}%
    \fi
  \fi
}
\newcommand\copyrightpage[1][]{%
  \cleardoublepage
  \ifbnu@degree@postdoc\relax\else
    \def\bnu@@tmp{#1}
    \ifx\bnu@@tmp\@empty
      \bnusetup{language=chinese}%
      \ifbnu@degree@bachelor
        \bnu@copyright@page@bachelor
      \else
        \bnu@copyright@page@graduate
      \fi
      \bnu@reset@main@language
    \else
      \thispagestyle{empty}%
      \bnu@pdfbookmark{0}{关于学位论文使用授权的说明}%
      \bnu@phantomsection
      \kv@define@key{bnu@copyright}{file}{\includepdf{\kv@value}}%
      \kv@set@family@handler{bnu@copyright}{%
        \ifx\kv@value\relax
          \includepdf{\kv@key}%
        \else
          \kv@handled@false
        \fi
      }%
      \kvsetkeys{bnu@copyright}{#1}%
    \fi
  \fi
}
\newcommand{\bnu@authorization@frontdate}{%
  日\ifbnu@degree@bachelor\hspace{1em}\else\hspace{2em}\fi 期：}
\newcommand\bnu@copyright@page@graduate{%
  \begingroup
    \ctexset{
      chapter = {
        format     = {\centering\sffamily\erhao},
        beforeskip = 0bp,
        afterskip  = 0bp,
      },
    }%
    \bnu@chapter*[]{}%
    \thispagestyle{empty}%
  \endgroup
  \vskip 23bp%
  \begingroup
    \fontsize{16bp}{26bp}\selectfont
    \centering
    \textbf{北京师范大学学位论文原创性声明}\par
  \endgroup
  \vskip 16bp%
  \begingroup
    \fontsize{12bp}{23.4bp}\selectfont
    本人郑重声明： 所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。
    除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰写过的作品成果。
    对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。
    本人完全意识到本声明的法律结果由本人承担。 \par
  \endgroup
  \vskip 24bp%
  \vskip 24bp%
  \begingroup
    \fontsize{12bp}{23.4bp}\selectfont
    \parindent\z@
    \leftskip 24bp%
    学位论文作者签名：\hspace{7em}%
    日期：\hspace{4em}年\hspace{2em}月\hspace{2em}日%
    \vskip 6bp%
    \par
    \endgroup
    \vskip 100bp%
  \begingroup
    \centering
    \fontsize{16bp}{26bp}\selectfont
    \textbf{学位论文使用授权书}\par
  \endgroup
  \vskip 16bp%
  \begingroup
    \fontsize{12bp}{23.4bp}\selectfont
    学位论文作者完全了解北京师范大学有关保留和使用学位论文的规定，即：
    学校有权保留并向国家有关部门或机构送交论文的复印件和电子版，
    允许学位论文被查阅和借阅；
    学校可以公布学位论文的全部或部分内容，可以允许采用影印、缩印或其它复制手段保存、
    汇编学位论文。保密的学位论文在解密后适用于本授权书。 \par
  \endgroup
  \vskip 33bp%
  \begingroup
    \fontsize{12bp}{23.4bp}\selectfont
    \parindent\z@
    \leftskip 43bp%
    本人签字：\hspace{4bp}\bnu@underline[7em]{}\hspace{47bp}%
    日\hspace{2em}期：\hspace{4bp}\bnu@underline[7em]{}\hspace{47bp}\par%
    \vskip 8bp%
    导师签名：\hspace{4bp}\bnu@underline[7em]{}\hspace{47bp}%
    日\hspace{2em}期：\hspace{4bp}\bnu@underline[7em]{}\par
  \endgroup
}
\newcommand\bnu@copyright@page@bachelor{%
  \begingroup
    \ctexset{
      chapter = {
        format     = {\centering\sffamily\erhao[1]},
        beforeskip = 1bp,
        afterskip  = 1bp,
      },
    }%
    \bnu@chapter*[]{}%
    \thispagestyle{empty}%
  \endgroup
  \vskip 4bp%
  \begingroup
    \centering \xiaosi
    \textbf{北京师范大学本科毕业论文（设计）诚信承诺书}\par
  \endgroup
  \vskip 12bp%
  \begingroup
    \songti\xiaosi[1.5]
    本人郑重声明： 所呈交的毕业论文（设计），是本人在导师的指导下，独立进行研究工作所取得的成果。
    除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰写过的作品成果。
    对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。
    本人完全意识到本声明的法律结果由本人承担。\par
  \endgroup
  \vskip 48bp%
  \begingroup
    \fontsize{12bp}{23.4bp}\selectfont
    \parindent\z@
    \leftskip 24bp%
    本人签名：\hspace{10em}%
    \hspace{4em}年\hspace{2em}月\hspace{2em}日%
    \vskip 6bp%
    \par
  \endgroup
  \vskip 120bp%
  \begingroup
    \centering
    \xiaosi
    \textbf{北京师范大学本科毕业论文（设计）使用授权书}\par
  \endgroup
  \vskip 12bp%
  \begingroup
    \songti\xiaosi[1.5]
    本人完全了解北京师范大学有关收集、保留和使用毕业论文（设计）的规定，
    即：本科生毕业论文（设计）工作的知识产权单位属北京师范大学。
    学校有权保留并向国家有关部门或机构送交论文的复印件和电子版，
    允许毕业论文（设计）被查阅和借阅；学校可以公布毕业论文（设计）的全部或部分内容，
    可以采用影印、缩印或扫描等复制手段保存、汇编毕业论文（设计）。
    保密的毕业论文（设计）在解密后遵守此规定。\par
  \endgroup
  \vskip 24bp%
  \begingroup
    \songti\xiaosi
    本论文（是、否）保密论文。\par
    保密论文在\bnu@underline[4em]{}年\bnu@underline[2em]{}月解密后适用本授权书。\par
    \endgroup
    \vskip 36bp%
  \begingroup
    \fontsize{12bp}{23.4bp}\selectfont
    \parindent\z@
    \leftskip 24bp%
    本人签名：\hspace{10em}%
    \hspace{4em}年\hspace{2em}月\hspace{2em}日%
    \vskip 12bp%
    \par
  \endgroup
  \begingroup
    \fontsize{12bp}{23.4bp}\selectfont
    \parindent\z@
    \leftskip 24bp%
    导师签名：\hspace{10em}%
    \hspace{4em}年\hspace{2em}月\hspace{2em}日%
    \par
  \endgroup
}
\bnu@define@key{
  keywords,
  keywords* = {
    name = keywords@en,
  },
}
\newcommand\bnu@clist@use[2]{%
  \def\bnu@@tmp{}%
  \def\bnu@clist@processor##1{%
    \ifx\bnu@@tmp\@empty
      \def\bnu@@tmp{#2}%
    \else
      #2%
    \fi
    ##1%
  }%
  \expandafter\comma@parse\expandafter{#1}{\bnu@clist@processor}%
}
\newenvironment{abstract}{%
  \bnusetup{language = chinese}%
  \renewcommand\headrulewidth{0pt}%
  \fancyhead[C]{}%
  \ifbnu@degree@graduate
    \clearpage
    \begingroup
      \ctexset{%
        chapter = {
          break   = {},
          format  = {\centering\heiti\sanhao},
          afterskip  = 20bp,
        }
      }%
      \ifbnu@main@language@english
        \ctexset{%
          chapter/format = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
        }%
      \fi
      % \bnu@chapter*[]{\bnu@title}[\bnu@abstract@name]%    新大标准,摘要无标题
    \endgroup
    \begingroup
      \centering
      \xiaosan\heiti \bnu@abstract@name \par%
      \vskip 15bp
    \endgroup
    \xiaosi[1.667]
  \else
    \ifbnu@degree@bachelor
      \clearpage
      \begingroup
        \ctexset{%
          chapter = {
            break   = {},
            format  = {\centering\bfseries\heiti\sanhao},
            afterskip  = 35.6bp,
          }
        }%
        \bnu@chapter*[\bnu@abstract@name]{\bnu@title}[\bnu@abstract@name]%
      \endgroup
      \begingroup
        \centering
        \bfseries\xiaosan\heiti \bnu@abstract@name \par%
        \vskip 15bp
      \endgroup
      \sihao
    \else
      \bnu@chapter*[]{\bnu@abstract@name}%
    \fi
  \fi
}{%
  \par
  \null\par
  \ifbnu@degree@graduate
    \noindent
    \textsf{\sihao 关键词：}%
  \else
    \textbf{关键词：}%
  \fi
  \bnu@clist@use{\bnu@keywords}{，}%
  \gdef\bnu@keywords{}%
  \ifbnu@degree@bachelor
    \cleardoublepage
  \fi
  \bnu@reset@main@language % switch back to main language
}
\newenvironment{abstract*}{%
  \ifbnu@degree@bachelor
    \cleardoublepage
  \fi
  \bnusetup{language = english}%
  \ifbnu@degree@graduate
    \clearpage     % 新大,另起一页
    \begingroup
      \ctexset{%
          chapter = {
          break   = {},
          format  = {\centering\bfseries\sanhao},
          afterskip  = 54bp,
        }
      }%
      % \bnu@chapter*[]{\bnu@title@en}[\bnu@abstract@name@en]% 新大标准
    \endgroup
    \begingroup
      \centering
      \xiaosan\bfseries \bnu@abstract@name@en \par%
      \vskip 30bp
    \endgroup
  \else
    \begingroup
      \ctexset{%
          chapter = {
          break   = {},
          format  = {\centering\bfseries\sanhao},
          afterskip  = 35.6bp,
        }
      }%
      \bnu@chapter*[\bnu@abstract@name@en]{\MakeUppercase{\bnu@title@en}}[\bnu@abstract@name@en]%
    \endgroup
    \begingroup
      \centering
      \sihao\bfseries \bnu@abstract@name@en \par%
      \vskip 24bp
    \endgroup
  \fi
}{%
  \par
  \null\par
  \ifbnu@degree@graduate
    \vskip 24bp
    \noindent
    \textbf{KEY WORDS:}\space
    \bnu@clist@use{\bnu@keywords@en}{, }%
    \vspace*{\stretch{1}}%
  \fi
  \ifbnu@degree@bachelor
    \textbf{KEY WORDS:}\space
    \bnu@clist@use{\bnu@keywords@en}{, }%
    \cleardoublepage
  \fi
  \bnu@reset@main@language % switch back to main language
}
\newenvironment{denotation}[1][2.5cm]{%
  \ifbnu@degree@bachelor
    \cleardoublepage
  \fi
  \ifbnu@degree@graduate
    \bnu@chapter*{\bnu@denotation@name}%
  \else
    \bnu@chapter*[]{\bnu@denotation@name}%
  \fi
  \vskip-30bp\xiaosi[1.6]\begin{bnu@denotation}[labelwidth=#1]
}{%
  \end{bnu@denotation}
}
\newlist{bnu@denotation}{description}{1}
\setlist[bnu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\newcommand{\bnu@statement@text}{本人郑重声明：所呈交的学位论文，是本人在导师指导下
  ，独立进行研究工作所取得的成果。尽我所知，除文中已经注明引用的内容外，本学位论
  文的研究成果不包含任何他人享有著作权的内容。对本论文所涉及的研究工作做出贡献的
  其他个人和集体，均已在文中以明确方式标明。}
\newcommand{\bnu@signature}{签\hspace{1em}名：}
\newcommand{\bnu@backdate}{日\hspace{1em}期：}
\newenvironment{acknowledgements}{%
  \@mainmatterfalse
  \bnu@end@appendix@ref@section
  \ifbnu@degree@bachelor
    \cleardoublepage
  \fi
  \bnu@chapter*{\bnu@acknowledgements@name}%
}{%
  \ifbnu@degree@bachelor
    \par
    \hfill
    \begin{minipage}{8em}
      \centering
      \sanhao\sffamily
      \bnu@author\\
      \bnu@format@date{\bnu@date@zh@digit@short}{\bnu@date}
    \end{minipage}
    \clearpage
  \else
    \ifbnu@degree@graduate
      \par
      \hfill
      {%
        \sihao
        \begin{minipage}{5.17em}
          \centering
          \heiti\sihao
          \bnu@author\\
          \bnu@format@date{\bnu@date@zh@digit@short}{\bnu@date}%
        \end{minipage}
      }
      \clearpage
    \fi
  \fi
}
\bnu@define@key{
  statement-page-style = {
    name = statement@page@style,
    choices = {
      auto,
      empty,
      plain,
    },
    default = auto,
  },
  statement-page-number = {
    name = statement@page@number,
    choices = {
      false,
      true,
    },
    default = false,
  },
}
\bnu@option@hook{statement-page-number}{%
  \ifbnu@statement@page@number@false
    \bnusetup{statement-page-style=empty}%
  \else
    \bnusetup{statement-page-style=plain}%
  \fi
  \bnu@warning{%
    The "statement-page-number" option is deprecated.
    Use "page-style" option of \protect\statement command instead%
  }%
}
\newif\ifbnu@statement@exists
\newcommand\statement[1][]{%
  \@mainmatterfalse
  \bnu@end@appendix@ref@section
  \bnu@statement@existstrue
  \ifbnu@degree@bachelor
    \cleardoublepage
    \def\bnu@statement@name{声\hspace{2em}明}%
  \else
    \def\bnu@statement@name{声\hspace{1em}明}%
  \fi
  \let\bnu@statement@file\@empty
  \kv@define@key{bnu@statement}{page-style}{\bnusetup{statement-page-style=##1}}%
  \kv@define@key{bnu@statement}{file}{\let\bnu@statement@file\kv@value}%
  \kv@set@family@handler{bnu@statement}{%
    \ifx\kv@value\relax
      \let\bnu@statement@file\kv@key
    \else
      \kv@handled@false
    \fi
  }%
  \kvsetkeys{bnu@statement}{#1}%
  \ifbnu@statement@page@style@auto
    \ifx\bnu@statement@file\@empty
      \ifbnu@degree@bachelor
        \bnusetup{statement-page-style = empty}%
      \else
        \bnusetup{statement-page-style = plain}%
      \fi
    \else
      \ifbnu@degree@bachelor
        \bnusetup{statement-page-style = plain}%
      \else
        \bnusetup{statement-page-style = empty}%
      \fi
    \fi
  \fi
  \ifx\bnu@statement@file\@empty
    \bnusetup{language=chinese}%
    \begingroup
      \ifbnu@degree@graduate
        \ifbnu@main@language@english
          \ctexset{%
            chapter/format = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
          }%
        \fi
      \fi
      \bnu@chapter*{\bnu@statement@name}%
    \endgroup
    \thispagestyle{\bnu@statement@page@style}%
    \bnu@statement@text\par
    \ifbnu@degree@graduate
      \vskip 2cm%
    \else
      \null\par
    \fi
    {\hfill\bnu@signature\bnu@underline[2.5cm]\relax
      \bnu@backdate\bnu@underline[2.5cm]\relax}%
    \bnu@reset@main@language
  \else
    \includepdf[pagecommand={%
      \markboth{\bnu@statement@name}{}%
      \bnu@phantomsection
      \addcontentsline{toc}{chapter}{\bnu@statement@name}%
      \thispagestyle{\bnu@statement@page@style}%
    }]{\bnu@statement@file}%
  \fi
  \ifbnu@degree@bachelor
    \cleardoublepage
  \fi
}
\let\acknowledgement\acknowledgements
\let\endacknowledgement\endacknowledgements
\def\bnu@listof#1{% #1: float type
  \setcounter{tocdepth}{2} % restore tocdepth in case being modified
  \@ifstar
    {\bnu@chapter*[]{\csname list#1name\endcsname}\@starttoc{\csname ext@#1\endcsname}}
    {\bnu@chapter*{\csname list#1name\endcsname}\@starttoc{\csname ext@#1\endcsname}}%
}
\renewcommand\listoffigures{%
  \ifbnu@degree@bachelor
    \ifbnu@backmatter\else
      \bnu@warning{The list of figures should be placed in back matter}%
    \fi
  \fi
  \bnu@listof{figure}%
}
\titlecontents{figure}
  [\z@]{}
  {\contentspush{\figurename~\thecontentslabel\quad}}{}
  {\nobreak\bnu@leaders\nobreak\hfil\thecontentspage}
\renewcommand\listoftables{%
  \ifbnu@degree@bachelor
    \ifbnu@backmatter\else
      \bnu@warning{The list of tables should be placed in back matter}%
    \fi
  \fi
  \bnu@listof{table}%
}
\titlecontents{table}
  [\z@]{}
  {\contentspush{\tablename~\thecontentslabel\quad}}{}
  {\bnu@leaders\thecontentspage}
\newcommand\listoffiguresandtables{%
  \bnu@chapter*{\bnu@list@figure@table@name}%
  \@starttoc{lof}%
  \par
  \null\par
  \@starttoc{lot}%
}
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\bnu@listof{equation}}
\titlecontents{equation}
  [0pt]{\addvspace{6bp}}
  {\bnu@equation@name~\thecontentslabel}{}
  {\nobreak\bnu@leaders\nobreak\thecontentspage}
\contentsuse{equation}{loe}
\bnu@define@key{
  cite-style = {
    name = cite@style,
    choices = {
      super,
      inline,
      author-year,
    }
  }
}
\def\bibliographystyle#1{%
  \gdef\bu@bibstyle{#1}%
  \ifx\@begindocumenthook\@undefined\else
    \expandafter\AtBeginDocument
  \fi
    {\if@filesw
       \immediate\write\@auxout{\string\bibstyle{#1}}%
       \immediate\write\@auxout{\string\gdef\string\bu@bibstyle{#1}}%
     \fi}%
}
\def\bibliography#1{%
  \if@filesw
    \immediate\write\@auxout{\string\bibdata{\zap@space#1 \@empty}}%
    \immediate\write\@auxout{\string\gdef\string\bu@bibdata{#1}}%
  \fi
  \gdef\bu@bibdata{#1}%
  \@input@{\jobname.bbl}}
\PassOptionsToPackage{compress}{natbib}
\AtEndOfPackageFile*{natbib}{
  \DeclareRobustCommand\inlinecite{\@inlinecite}
  \def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
  \let\onlinecite\inlinecite
  \newcommand\bibstyle@super{%
    \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
  \newcommand\bibstyle@inline{%
    \bibpunct{[}{]}{,}{n}{,}{,}}
  \@namedef{bibstyle@author-year}{%
    \bibpunct{(}{)}{;}{a}{,}{,}}
  \bnu@option@hook{cite-style}{\@nameuse{bibstyle@\bnu@cite@style}}
  \@namedef{bibstyle@bnuthesis-numeric}{\citestyle{super}}
  \@namedef{bibstyle@bnuthesis-author-year}{\citestyle{author-year}}
  \@namedef{bibstyle@bnuthesis-bachelor}{\citestyle{super}}
  \renewcommand\NAT@citesuper[3]{%
    \ifNAT@swa
      \if*#2*\else
        #2\NAT@spacechar
      \fi
      % \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close}%
      %  \if*#3*\else\NAT@spacechar#3\fi\else #1\fi\endgroup}
      \unskip\kern\p@
      \textsuperscript{%
        \NAT@@open#1\NAT@@close
        \if*#3*\else#3\fi
      }%
      \kern\p@
    \else
      #1%
    \fi
    \endgroup
  }
  \renewcommand\NAT@citenum[3]{%
    \ifNAT@swa
      \NAT@@open
      \if*#2*\else
        #2\NAT@spacechar
      \fi
      % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close
      #1\NAT@@close
      \if*#3*\else
        \textsuperscript{#3}%
      \fi
    \else
      #1%
    \fi
    \endgroup
  }
  \def\NAT@citexnum[#1][#2]#3{%
    \NAT@reset@parser
    \NAT@sort@cites{#3}%
    \NAT@reset@citea
    \@cite{\def\NAT@num{-1}\let\NAT@last@yr\relax\let\NAT@nm\@empty
      \@for\@citeb:=\NAT@cite@list\do
      {\@safe@activestrue
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \@safe@activesfalse
      \@ifundefined{b@\@citeb\@extra@b@citeb}{%
        {\reset@font\bfseries?}
          \NAT@citeundefined\PackageWarning{natbib}%
        {Citation `\@citeb' on page \thepage \space undefined}}%
      {\let\NAT@last@num\NAT@num\let\NAT@last@nm\NAT@nm
        \NAT@parse{\@citeb}%
        \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
          \let\NAT@name=\NAT@all@names
          \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
        \fi
        \ifNAT@full\let\NAT@nm\NAT@all@names\else
          \let\NAT@nm\NAT@name\fi
        \ifNAT@swa
        \@ifnum{\NAT@ctype>\@ne}{%
          \@citea
          \NAT@hyper@{\@ifnum{\NAT@ctype=\tw@}{\NAT@test{\NAT@ctype}}{\NAT@alias}}%
        }{%
          \@ifnum{\NAT@cmprs>\z@}{%
          \NAT@ifcat@num\NAT@num
            {\let\NAT@nm=\NAT@num}%
            {\def\NAT@nm{-2}}%
          \NAT@ifcat@num\NAT@last@num
            {\@tempcnta=\NAT@last@num\relax}%
            {\@tempcnta\m@ne}%
          \@ifnum{\NAT@nm=\@tempcnta}{%
            \@ifnum{\NAT@merge>\@ne}{}{\NAT@last@yr@mbox}%
          }{%
            \advance\@tempcnta by\@ne
            \@ifnum{\NAT@nm=\@tempcnta}{%
              % \ifx\NAT@last@yr\relax
              %   \def@NAT@last@yr{\@citea}%
              % \else
              %   \def@NAT@last@yr{--\NAT@penalty}%
              % \fi
              \def@NAT@last@yr{-\NAT@penalty}%
            }{%
              \NAT@last@yr@mbox
            }%
          }%
          }{%
          \@tempswatrue
          \@ifnum{\NAT@merge>\@ne}{\@ifnum{\NAT@last@num=\NAT@num\relax}{\@tempswafalse}{}}{}%
          \if@tempswa\NAT@citea@mbox\fi
          }%
        }%
        \NAT@def@citea
        \else
          \ifcase\NAT@ctype
            \ifx\NAT@last@nm\NAT@nm \NAT@yrsep\NAT@penalty\NAT@space\else
              \@citea \NAT@test{\@ne}\NAT@spacechar\NAT@mbox{\NAT@super@kern\NAT@@open}%
            \fi
            \if*#1*\else#1\NAT@spacechar\fi
            \NAT@mbox{\NAT@hyper@{{\citenumfont{\NAT@num}}}}%
            \NAT@def@citea@box
          \or
            \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
          \or
            \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
          \or
            \NAT@hyper@citea@space\NAT@alias
          \fi
        \fi
      }%
      }%
        \@ifnum{\NAT@cmprs>\z@}{\NAT@last@yr}{}%
        \ifNAT@swa\else
          % \@ifnum{\NAT@ctype=\z@}{%
          %   \if*#2*\else\NAT@cmt#2\fi
          % }{}%
          \NAT@mbox{\NAT@@close}%
          \@ifnum{\NAT@ctype=\z@}{%
            \if*#2*\else
              \textsuperscript{#2}%
            \fi
          }{}%
          \NAT@super@kern
        \fi
    }{#1}{#2}%
  }%
  \renewcommand\NAT@cite%
      [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
          % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close\else#1\fi\endgroup}
          #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
  \def\NAT@citex%
    [#1][#2]#3{%
    \NAT@reset@parser
    \NAT@sort@cites{#3}%
    \NAT@reset@citea
    \@cite{\let\NAT@nm\@empty\let\NAT@year\@empty
      \@for\@citeb:=\NAT@cite@list\do
      {\@safe@activestrue
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \@safe@activesfalse
      \@ifundefined{b@\@citeb\@extra@b@citeb}{\@citea%
        {\reset@font\bfseries ?}\NAT@citeundefined
                  \PackageWarning{natbib}%
        {Citation `\@citeb' on page \thepage \space undefined}\def\NAT@date{}}%
      {\let\NAT@last@nm=\NAT@nm\let\NAT@last@yr=\NAT@year
        \NAT@parse{\@citeb}%
        \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
          \let\NAT@name=\NAT@all@names
          \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
        \fi
      \ifNAT@full\let\NAT@nm\NAT@all@names\else
        \let\NAT@nm\NAT@name\fi
      \ifNAT@swa\ifcase\NAT@ctype
        \if\relax\NAT@date\relax
          \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}\NAT@date}%
        \else
          \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
              \ifx\NAT@last@yr\NAT@year
                \def\NAT@temp{{?}}%
                \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
                {Multiple citation on page \thepage: same authors and
                year\MessageBreak without distinguishing extra
                letter,\MessageBreak appears as question mark}\fi
                \NAT@hyper@{\NAT@exlab}%
              \else\unskip\NAT@spacechar
                \NAT@hyper@{\NAT@date}%
              \fi
          \else
            \@citea\NAT@hyper@{%
              \NAT@nmfmt{\NAT@nm}%
              \hyper@natlinkbreak{%
                \NAT@aysep\NAT@spacechar}{\@citeb\@extra@b@citeb
              }%
              \NAT@date
            }%
          \fi
        \fi
      \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
      \or\@citea\NAT@hyper@{\NAT@date}%
      \or\@citea\NAT@hyper@{\NAT@alias}%
      \fi \NAT@def@citea
      \else
        \ifcase\NAT@ctype
          \if\relax\NAT@date\relax
            \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
          \else
          \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
              \ifx\NAT@last@yr\NAT@year
                \def\NAT@temp{{?}}%
                \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
                {Multiple citation on page \thepage: same authors and
                year\MessageBreak without distinguishing extra
                letter,\MessageBreak appears as question mark}\fi
                \NAT@hyper@{\NAT@exlab}%
              \else
                \unskip\NAT@spacechar
                \NAT@hyper@{\NAT@date}%
              \fi
          \else
            \@citea\NAT@hyper@{%
              \NAT@nmfmt{\NAT@nm}%
              \hyper@natlinkbreak{\NAT@spacechar\NAT@@open\if*#1*\else#1\NAT@spacechar\fi}%
                {\@citeb\@extra@b@citeb}%
              \NAT@date
            }%
          \fi
          \fi
        \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
        \or\@citea\NAT@hyper@{\NAT@date}%
        \or\@citea\NAT@hyper@{\NAT@alias}%
        \fi
        \if\relax\NAT@date\relax
          \NAT@def@citea
        \else
          \NAT@def@citea@close
        \fi
      \fi
      }}\ifNAT@swa\else
        % \if*#2*\else\NAT@cmt#2\fi
        \if\relax\NAT@date\relax\else\NAT@@close\fi
        \if*#2*\else\textsuperscript{#2}\fi
      \fi}{#1}{#2}}
  \renewcommand\bibsection{\bnu@chapter*{\bibname}}
  \newcommand\bnu@set@bibliography@format{%
    \ifbnu@degree@bachelor
      \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
      \setlength{\bibsep}{6bp \@plus 3bp \@minus 3bp}%
      \ifbnu@main@language@chinese
        \setlength{\bibhang}{21bp}%
      \else
        \setlength{\bibhang}{0.5in}%
      \fi
    \else
      \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
      \setlength{\bibsep}{3bp \@plus 3bp \@minus 3bp}%
      \setlength{\bibhang}{21bp}%
    \fi
  }
  \bnu@set@bibliography@format
  \bnu@option@hook{degree}{\bnu@set@bibliography@format}
  \bnu@option@hook{main-language}{\bnu@set@bibliography@format}
  \patchcmd\thebibliography{%
    \clubpenalty4000%
  }{%
    \interlinepenalty=5000\relax
    \clubpenalty=10000\relax
  }{}{\bnu@patch@error{\thebibliography}}
  \patchcmd\thebibliography{%
    \widowpenalty4000%
  }{%
    \widowpenalty=10000\relax
  }{}{\bnu@patch@error{\thebibliography}}
  \def\@biblabel#1{[#1]\hfill}
  \renewcommand\NAT@bibsetnum[1]{%
    % \settowidth\labelwidth{\@biblabel{#1}}%
    % \setlength{\leftmargin}{\labelwidth}%
    % \addtolength{\leftmargin}{\labelsep}%
    \setlength{\leftmargin}{1cm}%
    \setlength{\itemindent}{\z@}%
    \setlength{\labelsep}{0.1cm}%
    \setlength{\labelwidth}{0.9cm}%
    \setlength{\itemsep}{\bibsep}
    \setlength{\parsep}{\z@}%
    \ifNAT@openbib
      \addtolength{\leftmargin}{\bibindent}%
      \setlength{\itemindent}{-\bibindent}%
      \setlength{\listparindent}{\itemindent}%
      \setlength{\parsep}{0pt}%
    \fi
  }
}
\AtEndOfPackageFile*{biblatex}{
  \AtBeginDocument{
    \ifthenelse{\equal{\blx@bbxfile}{apa}}{\def\bibname{REFERENCES}}{}
    \ifthenelse{\equal{\blx@bbxfile}{apa6}}{\def\bibname{REFERENCES}}{}
    \ifthenelse{\equal{\blx@bbxfile}{mla}}{\def\bibname{WORKS CITED}}{}
    \ifthenelse{\equal{\blx@bbxfile}{mla-new}}{\def\bibname{WORKS CITED}}{}
  }
  \DeclareRobustCommand\inlinecite{\parencite}
  \defbibheading{bibliography}[\bibname]{\bnu@chapter*{\bibname}}
  \newcommand\bnu@set@bibliography@format{%
    \ifbnu@degree@bachelor
      \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
      \setlength{\bibitemsep}{6bp \@plus 3bp \@minus 3bp}%
      \ifbnu@main@language@chinese
        \setlength{\bibhang}{21bp}%
      \else
        \setlength{\bibhang}{0.5in}%
      \fi
    \else
      \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
      \setlength{\bibitemsep}{3bp \@plus 3bp \@minus 3bp}%
      \setlength{\biblabelsep}{0.1cm}%
      \setlength{\bibhang}{21bp}%
    \fi
  }
  \bnu@set@bibliography@format
  \bnu@option@hook{degree}{\bnu@set@bibliography@format}
  \bnu@option@hook{main-language}{\bnu@set@bibliography@format}
}
\AtEndOfPackageFile*{apacite}{
  \AtBeginDocument{
    \bnu@set@chapter@names
  }
  \renewcommand\bibliographytypesize{\fontsize{10.5bp}{17bp}\selectfont}
  \setlength{\bibitemsep}{6bp}
  \ifbnu@main@language@chinese
    \setlength{\bibleftmargin}{21bp}
    \setlength{\bibindent}{-\bibleftmargin}
  \else
    \setlength{\bibleftmargin}{0.5in}
    \setlength{\bibindent}{-\bibleftmargin}
  \fi
  \def\st@rtbibchapter{%
    \if@numberedbib%
      \chapter{\bibname}%   e.g.,   6. References
    \else%
      \bnu@chapter*{\bibname}%   e.g.,   References
    \fi%
  }%
}
\g@addto@macro\appendix{%
  \@mainmattertrue
  \ifbnu@degree@bachelor
    \ifbnu@statement@exists\else
      \bnu@warning{The appendices should be placed after statement}%
    \fi
  \fi
}
\bnu@define@key{
  toc-depth = {
    name = toc@depth,
  },
}
\bnu@option@hook{toc-depth}{%
  \ifx\@begindocumenthook\@undefined
    \protected@write\@auxout{}{%
      \string\ttl@writefile{toc}{%
        \protect\setcounter{tocdepth}{\bnu@toc@depth}%
      }%
    }%
  \else
    \setcounter{tocdepth}{\bnu@toc@depth}%
  \fi
}
\g@addto@macro\appendix{%
  \bnusetup{
    toc-depth = 0,
  }%
}
\bnu@define@key{
  appendix-figure-in-lof = {
    name = appendix@figure@in@lof,
    choices = {
      true,
      false,
    },
    default = false,
  },
}
\bnu@option@hook{appendix-figure-in-lof}{%
  \ifbnu@appendix@figure@in@lof@true
    \addtocontents{lof}{\string\let\string\contentsline\string\ttl@contentsline}%
    \addtocontents{lot}{\string\let\string\contentsline\string\ttl@contentsline}%
    \addtocontents{loe}{\string\let\string\contentsline\string\ttl@contentsline}%
  \else
    \addtocontents{lof}{\string\let\string\contentsline\string\ttl@gobblecontents}%
    \addtocontents{lot}{\string\let\string\contentsline\string\ttl@gobblecontents}%
    \addtocontents{loe}{\string\let\string\contentsline\string\ttl@gobblecontents}%
  \fi
}
\g@addto@macro\appendix{%
  \bnusetup{
    appendix-figure-in-lof = false,
  }%
}
\newcommand\bnu@end@appendix@ref@section{}
\AtBeginOfPackageFile*{bibunits}{
  \def\bibliography#1{%
    \if@filesw
      \immediate\write\@auxout{\string\bibdata{\zap@space#1 \@empty}}%
      \immediate\write\@auxout{\string\gdef\string\bu@bibdata{#1}}%
    \fi
    \@input@{\jobname.bbl}%
    \gdef\bu@bibdata{#1}%
  }
  \def\bibliographystyle#1{%
    \ifx\@begindocumenthook\@undefined\else
      \expandafter\AtBeginDocument
    \fi
      {\if@filesw
        \immediate\write\@auxout{\string\bibstyle{#1}}%
        \immediate\write\@auxout{\string\gdef\string\bu@bibstyle{#1}}%
      \fi}%
      \gdef\bu@bibstyle{#1}%
  }
}
\AtEndOfPackageFile*{bibunits}{
  \def\@startbibunit{%
    \global\let\@startbibunitorrelax\relax
    \global\let\@finishbibunit\@finishstartedbibunit
    \global\advance\@bibunitauxcnt 1
    \if@filesw
      {\endlinechar-1
      \makeatletter
      \@input{\@bibunitname.aux}}%
      \immediate\openout\@bibunitaux\@bibunitname.aux
      \immediate\write\@bibunitaux{\string\bibstyle{\@localbibstyle}}%
    \fi
  }
  \def\bu@bibliography#1{%
    \putbib[#1]%
  }
  \def\bu@bibliographystyle#1{%
    \if@filesw
      \immediate\write\@bibunitaux{\string\gdef\string\@localbibstyle{#1}}%
    \fi
    \gdef\@localbibstyle{#1}%
  }
  \providecommand\printbibliography{\putbib\relax}%
  \g@addto@macro\appendix{%
    \renewcommand\@bibunitname{\jobname-appendix-\@alph\c@chapter}%
    \bibliographyunit[\chapter]%
    \renewcommand\bibsection{%
      \ctexset{section/numbering = false}%
      \section{\bibname}%
      \ctexset{section/numbering = true}%
    }%
    \ifbnu@degree@graduate
      \renewcommand\citenumfont{\@Alph\c@chapter.}%
      \renewcommand\@extra@binfo{@-\@alph\c@chapter}%
      \renewcommand\@extra@b@citeb{@-\@alph\c@chapter}%
      \renewcommand\bibnumfmt[1]{[\@Alph\c@chapter.#1]\hfill}%
    \fi
  }
  \renewcommand\bnu@end@appendix@ref@section{%
    \bibliographyunit\relax
  }
  \AtEndDocument{\bnu@end@appendix@ref@section}
  \renewcommand\bnu@set@survey@bibheading{%
    \renewcommand\bibsection{%
      \par
      \vskip 20bp%
      \bnu@pdfbookmark{1}{\bibname}%
      \begingroup
        \centering
        \xiaosi[1.667]\bibname\par
      \endgroup
      \vskip 6bp%
    }%
  }%
  % \let\@xtestdef\@gobbletwo  % This doesn't work
  \def\bibunits@rerun@warning{\relax}
}
\PassOptionsToPackage{defernumbers = true}{biblatex}
\AtEndOfPackageFile*{biblatex}{
  \DeclareRefcontext{appendix}{}
  \g@addto@macro\appendix{%
    \pretocmd\chapter{%
      \newrefsection
      \ifbnu@degree@bachelor\else
        \@tempcnta=\c@chapter
        \advance\@tempcnta\@ne
        \newrefcontext[labelprefix = {\@Alph\@tempcnta.}]{appendix}%
      \fi
    }{}{\bnu@patch@error{\chapter}}%
    \defbibheading{bibliography}[\bibname]{%
      \ctexset{section/numbering = false}%
      \section{#1}%
      \ctexset{section/numbering = true}%
    }%
  }
  \renewcommand\bnu@set@survey@bibheading{%
    \defbibheading{bibliography}[\bibname]{%
      \par
      \vskip 20bp%
      \bnu@pdfbookmark{1}{\bibname}%
      \begingroup
        \centering
        \xiaosi[1.667]##1\par
      \endgroup
      \vskip 6bp%
    }%
  }%
  \def\bibliographystyle#1{%
    \bnu@warning{'bibliographystyle' invalid for 'biblatex'.}%
  }
}
\@ifpackagelater{titletoc}{2019/07/14}{
  \newcommand\bnu@print@contents[5]{%
    \printcontents[#1]{#2}{#3}[#4]{}%
  }
}{
  \newcommand\bnu@print@contents[5]{%
    \printcontents[#1]{#2}{#3}{\setcounter{tocdepth}{#4}#5}%
  }
}
\newenvironment{survey}{%
  \chapter{外文资料的调研阅读报告}%
  \bnusetup{language = english}%
  \let\title\bnu@appendix@title
  \let\maketitle\bnu@appendix@maketitle
  \bnu@set@partial@toc@format
  \renewcommand\tableofcontents{%
    \section*{Contents}%
    \bnu@pdfbookmark{1}{Contents}%
    \bnu@print@contents{survey}{l}{1}{2}{}%
    \vskip 20bp%
  }%
  \let\appendix\bnu@appendix@appendix
  \bnu@set@survey@bibheading
  \renewcommand\bibname{参考文献}%
  \startcontents[survey]%
}{%
  \stopcontents[survey]%
  \bnu@reset@main@language % restore language
}
\newcommand\bnu@set@appendix@bib@heading{}
\newenvironment{translation}{%
  \chapter{外文资料的书面翻译}%
  \bnusetup{language = chinese}%
  \let\title\bnu@appendix@title
  \let\maketitle\bnu@appendix@maketitle
  \renewenvironment{abstract}{%
    \ctexset{
      section = {
        format    += \centering,
        numbering  = false,
      },
    }%
    \section{摘要}%
  }{%
    \par
    \ifx\bnu@keywords\@empty\else
      \textbf{关键词：}\bnu@clist@use{\bnu@keywords}{；}\par
    \fi
  }%
  \bnu@set@partial@toc@format
  \renewcommand\tableofcontents{%
    \section*{目录}%
    \bnu@pdfbookmark{1}{目录}%
    \bnu@print@contents{translation}{l}{1}{2}{}%
    \vskip 20bp%
  }%
  \let\appendix\bnu@appendix@appendix
  \def\bibsection{%
    \begingroup
      \ctexset{section/numbering=false}%
      \section{\bibname}%
    \endgroup
  }%
  \startcontents[translation]%
}{%
  \stopcontents[translation]%
  \bnu@reset@main@language % restore language
}
\newenvironment{translation-index}{}{}
\AtEndOfPackageFile*{bibunits}{
  \renewenvironment{translation-index}{%
    \begin{bibunit}%
      \renewcommand\@bibunitname{\jobname-index}%
      \renewcommand\bibname{书面翻译对应的原文索引}%
      \bnu@set@survey@bibheading
  }{%
    \end{bibunit}%
  }
}
\AtEndOfPackageFile*{biblatex}{
  \renewenvironment{translation-index}{%
    \endrefsection
    \begin{refsection}%
      \renewcommand\bibname{书面翻译对应的原文索引}%
      \bnu@set@survey@bibheading
  }{%
    \end{refsection}%
  }
}
\DeclareRobustCommand\bnu@appendix@title[1]{\gdef\bnu@appendix@@title{#1}}
\newcommand\bnu@appendix@maketitle{%
  \par
  \begin{center}%
    \xiaosi[1.667]\bnu@appendix@@title
  \end{center}%
  \par
}
\newcommand\bnu@set@partial@toc@format{%
  \titlecontents{section}
    [\z@]{}
    {\contentspush{\thecontentslabel\quad}}{}
    {\bnu@leaders\thecontentspage}%
  \titlecontents{subsection}
    [1em]{}
    {\contentspush{\thecontentslabel\quad}}{}
    {\bnu@leaders\thecontentspage}%
  \titlecontents{subsubsection}
    [2em]{}
    {\contentspush{\thecontentslabel\quad}}{}
    {\bnu@leaders\thecontentspage}%
}
\newcommand\bnu@appendix@appendix{%
  \def\theHsection{\Hy@AlphNoErr{section}}%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\thechapter.\@Alph\c@section}%
}%
\newcommand\bnu@set@survey@bibheading{}
\newenvironment{resume}{%
  \@mainmatterfalse
  \bnu@end@appendix@ref@section
  \bnu@chapter*{\bnu@resume@name}%
  \ctexset{
    section = {
      format    += \centering,
      numbering = false,
    },
  }%
  \ifbnu@language@chinese
    \ctexset{
      subsection = {
        format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
        numbering  = false,
        aftertitle = ：,
      },
    }%
    \setlist[achievements]{
      topsep     = 6bp,
      itemsep    = 6bp,
      leftmargin = 1cm,
      labelwidth = 1cm,
      labelsep   = 0pt,
      first      = {
        \ifbnu@degree@graduate
          \fontsize{12bp}{16bp}\selectfont
        \fi
      },
      align      = left,
      label      = [\arabic*],
      resume     = achievements,
    }%
  \else
    \ctexset{
      subsection = {
        beforeskip = 0pt,
        afterskip  = 0pt,
        format     = \bfseries\normalsize,
        indent     = \parindent,
        numbering  = false,
      },
    }%
    \ifbnu@degree@bachelor
      % 内容部分用Arial字体，字号15pt，行距采用固定值20pt， 段前后 0pt。
      \sffamily\fontsize{15bp}{20bp}\selectfont
    \fi
    \setlist[achievements]{
      topsep     = 0bp,
      itemsep    = 0bp,
      leftmargin = 1.75cm,
      labelsep   = 0.5cm,
      align      = right,
      label      = [\arabic*],
      resume     = achievements,
    }%
  \fi
}{}
\newcommand\resumeitem[1]{%
  \bnu@error{The "\protect\resumeitem" is obsolete. Please update to the new format}%
}
\newcommand\researchitem[1]{%
  \bnu@error{The "\protect\researchitem" is obsolete. Please update to the new format}%
}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{
  topsep     = 6bp,
  partopsep  = 0bp,
  itemsep    = 6bp,
  parsep     = 0bp,
  leftmargin = 10mm,
  itemindent = 0pt,
  align      = left,
  label      = [\arabic*],
  resume     = achievements,
}
\newenvironment{publications}{%
  \bnu@deprecate{"publications" environment}{"achievements"}%
  \begin{achievements}%
}{%
  \end{achievements}%
}
\newcommand\publicationskip{%
  \bnu@error{The "\protect\publicationskip" is obsolete. Do not use it}%
}
\NewEnviron{comments}[1][]{%
  \bnu@end@appendix@ref@section
  \ifbnu@degree@graduate
    \@mainmatterfalse
    \kv@define@key{bnu@comments}{name}{\let\bnu@comments@name\kv@value}%
    \kv@set@family@handler{bnu@comments}{%
      \ifx\kv@value\relax
        \let\bnu@comments@name\kv@key
      \else
        \kv@handled@false
      \fi
    }%
    \kvsetkeys{bnu@comments}{#1}%
    \chapter{\bnu@comments@name}%
    \BODY\clearpage
  \fi
}
\NewEnviron{resolution}{%
  \bnu@end@appendix@ref@section
  \ifbnu@degree@graduate
    \@mainmatterfalse
    \chapter{\bnu@resolution@name}%
    \BODY\clearpage
  \fi
}
\newcommand{\record}[1]{%
  \let\bnu@record@file\@empty
  \kv@define@key{bnu@record}{file}{\let\bnu@record@file\kv@value}%
  \kv@set@family@handler{bnu@record}{%
    \ifx\kv@value\relax
      \let\bnu@record@file\kv@key
    \else
      \kv@handled@false
    \fi
  }%
  \kvsetkeys{bnu@record}{#1}%
  \ifx\bnu@record@file\@empty
    \bnu@error{File path of \protect\record\space is required}
  \fi
  \cleardoublepage
  \bnu@pdfbookmark{0}{综合论文训练记录表}%
  \includepdf[pages=-]{\bnu@record@file}%
}
\PassOptionsToPackage{
  linktoc            = all,
  bookmarksdepth     = 2,
  bookmarksnumbered  = true,
  bookmarksopen      = true,
  bookmarksopenlevel = 1,
  bookmarksdepth     = 3,
  unicode            = true,
  psdextra           = true,
  breaklinks         = true,
  plainpages         = false,
  pdfdisplaydoctitle = true,
  hidelinks,
}{hyperref}
\AtEndOfPackageFile*{hyperref}{
  \newcounter{bnu@bookmark}
  \renewcommand\bnu@pdfbookmark[2]{%
    \phantomsection
    \stepcounter{bnu@bookmark}%
    \pdfbookmark[#1]{#2}{bnuchapter.\thebnu@bookmark}%
  }
  \renewcommand\bnu@phantomsection{%
    \phantomsection
  }
  \pdfstringdefDisableCommands{
    \let\\\relax
    \let\quad\relax
    \let\qquad\relax
    \let\hspace\@gobble
  }%
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmu}
  }%
  \ifbnu@main@language@chinese
    \hypersetup{
      pdflang = zh-CN,
    }%
  \else
    \hypersetup{
      pdflang = en-US,
    }%
  \fi
  \AtBeginDocument{%
    \ifbnu@main@language@chinese
      \hypersetup{
        pdftitle    = \bnu@title,
        pdfauthor   = \bnu@author,
        pdfsubject  = \bnu@degree@category,
        pdfkeywords = \bnu@keywords,
      }%
    \else
      \hypersetup{
        pdftitle    = \bnu@title@en,
        pdfauthor   = \bnu@author@en,
        pdfsubject  = \bnu@degree@category@en,
        pdfkeywords = \bnu@keywords@en,
      }%
    \fi
    \hypersetup{
      pdfcreator={\bnuthesis-v\version}}
  }%
}
\AtEndOfPackageFile*{mathtools}{
  \@ifpackageloaded{unicode-math}{
    \let\underbrace\LaTeXunderbrace
    \let\overbrace\LaTeXoverbrace
  }{}
}
\AtEndOfPackageFile*{nomencl}{
  \let\nomname\bnu@denotation@name
  \def\thenomenclature{\begin{denotation}[\nom@tempdim]}
  \def\endthenomenclature{\end{denotation}}
}
\AtEndOfPackageFile*{siunitx}{%
  \newcommand\bnu@set@siunitx@language{%
    \ifbnu@language@chinese
      \sisetup{
        list-final-separator = { 和 },
        list-pair-separator  = { 和 },
        range-phrase         = {～},
      }%
    \else
      \ifbnu@language@english
        \sisetup{
          list-final-separator = {, and },
          list-pair-separator  = { and },
          range-phrase         = { to },
        }%
      \fi
    \fi
  }
  \bnu@set@siunitx@language
  \bnu@option@hook{language}{\bnu@set@siunitx@language}
}
\AtEndOfPackageFile*{amsthm}{%
  \newtheoremstyle{bnu}
    {\z@}{\z@}
    {\normalfont}{\z@}
    {\normalfont\heiti}{\bnu@theorem@separator}
    {0.5em}{}
  \theoremstyle{bnu}
  \newtheorem{assumption}{\bnu@assumption@name}[chapter]%
  \newtheorem{definition}{\bnu@definition@name}[chapter]%
  \newtheorem{proposition}{\bnu@proposition@name}[chapter]%
  \newtheorem{lemma}{\bnu@lemma@name}[chapter]%
  \newtheorem{theorem}{\bnu@theorem@name}[chapter]%
  \newtheorem{axiom}{\bnu@axiom@name}[chapter]%
  \newtheorem{corollary}{\bnu@corollary@name}[chapter]%
  \newtheorem{exercise}{\bnu@exercise@name}[chapter]%
  \newtheorem{example}{\bnu@example@name}[chapter]%
  \newtheorem{remark}{\bnu@remark@name}[chapter]%
  \newtheorem{problem}{\bnu@problem@name}[chapter]%
  \newtheorem{conjecture}{\bnu@conjecture@name}[chapter]%
  \renewenvironment{proof}[1][\bnu@proof@name]{\par
    \pushQED{\qed}%
    % \normalfont \topsep6\p@\@plus6\p@\relax
    \normalfont \topsep\z@\relax
    \trivlist
    \item[\hskip\labelsep
      %     \itshape
      % #1\@addpunct{.}]\ignorespaces
      \sffamily
      #1]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \renewcommand\qedsymbol{\bnu@qed}
}
\AtEndOfPackageFile*{ntheorem}{%
  \theorembodyfont{\normalfont}%
  \theoremheaderfont{\normalfont\sffamily}%
  \theoremsymbol{\bnu@qed}%
  \newtheorem*{proof}{\bnu@proof@name}%
  \theoremstyle{plain}%
  \theoremsymbol{}%
  \theoremseparator{\bnu@theorem@separator}%
  \newtheorem{assumption}{\bnu@assumption@name}[chapter]%
  \newtheorem{definition}{\bnu@definition@name}[chapter]%
  \newtheorem{proposition}{\bnu@proposition@name}[chapter]%
  \newtheorem{lemma}{\bnu@lemma@name}[chapter]%
  \newtheorem{theorem}{\bnu@theorem@name}[chapter]%
  \newtheorem{axiom}{\bnu@axiom@name}[chapter]%
  \newtheorem{corollary}{\bnu@corollary@name}[chapter]%
  \newtheorem{exercise}{\bnu@exercise@name}[chapter]%
  \newtheorem{example}{\bnu@example@name}[chapter]%
  \newtheorem{remark}{\bnu@remark@name}[chapter]%
  \newtheorem{problem}{\bnu@problem@name}[chapter]%
  \newtheorem{conjecture}{\bnu@conjecture@name}[chapter]%
}
\PassOptionsToPackage{chapter}{algorithm}
\AtEndOfPackageFile*{algorithm}{
  \floatname{algorithm}{\bnu@algorithm@name}
  \renewcommand\listofalgorithms{%
    \bnu@listof{algorithm}%
  }
  \renewcommand\listalgorithmname{\bnu@list@algorithm@name}
  \def\ext@algorithm{loa}
  \contentsuse{algorithm}{loa}
  \titlecontents{algorithm}
    [\z@]{}
    {\contentspush{\fname@algorithm~\thecontentslabel\quad}}{}
    {\bnu@leaders\thecontentspage}
}
\PassOptionsToPackage{algochapter}{algorithm2e}
\AtEndOfPackageFile*{algorithm2e}{
  \renewcommand\algorithmcfname{\bnu@algorithm@name}
  \SetAlgoCaptionLayout{bnu@caption@font}
  \SetAlCapSty{relax}
  \SetAlgoCaptionSeparator{\hspace*{1em}}
  \SetAlFnt{\fontsize{11bp}{14.3bp}\selectfont}
  \renewcommand\listofalgorithms{%
    \bnu@listof{algorithmcf}%
  }
  \renewcommand\listalgorithmcfname{\bnu@list@algorithm@name}
  \def\ext@algorithmcf{loa}
  \contentsuse{algocf}{loa}
  \titlecontents{algocf}
    [\z@]{}
    {\contentspush{\algorithmcfname~\thecontentslabel\quad}}{}
    {\bnu@leaders\thecontentspage}
}
\AtEndOfPackageFile*{minted}{
  \newcommand\bnu@set@listing@language{%
    \ifbnu@language@chinese
      \floatname{listing}{代码}%
    \else
      \floatname{listing}{Listing}%
    \fi
  }
  \bnu@set@listing@language
  \bnu@option@hook{language}{\bnu@set@listing@language}
}
\bnu@define@key{
  spine-font = {
    name = spine@font,
  },
  spine-title = {
    name = spine@title,
  },
  spine-author = {
    name = spine@author,
  },
}
\renewcommand\bnu@spine@font{%
  \ifbnu@degree@graduate
    \xiaosi
  \fi
}
\newcommand*\CJKmovesymbol[1]{\raise.3em\hbox{#1}}
\newcommand*\CJKmove{%
  \punctstyle{plain}%
  \let\CJKsymbol\CJKmovesymbol
  \let\CJKpunctsymbol\CJKsymbol
}
\NewDocumentCommand{\spine}{
    O{
      \ifx\bnu@spine@title\@empty
        \bnu@title
      \else
        \bnu@spine@title
      \fi
    }
    O{
      \ifx\bnu@spine@author\@empty
        \bnu@author
      \else
        \bnu@spine@author
      \fi
    }}{%
  \clearpage
  \ifbnu@degree@bachelor
    \newgeometry{
      vmargin = 3cm,
      hmargin = 1cm,
    }%
  \else
    \newgeometry{
      vmargin = 5.5cm,
      hmargin = 1cm,
    }%
  \fi
  \thispagestyle{empty}%
  \ifbnu@main@language@chinese
    \bnu@pdfbookmark{0}{书脊}%
  \else
    \bnu@pdfbookmark{0}{Spine}%
  \fi
  \begingroup
    \noindent\hfill
    \rotatebox[origin=lt]{-90}{%
      \makebox[\textheight]{%
        \heiti
        \addCJKfontfeatures*{RawFeature={vertical}}%
        \bnu@spine@font
        \CJKmove
        #1\hfill
        \bnu@stretch{4.5em}{#2}%
      }%
    }%
  \endgroup
  \clearpage
  \restoregeometry
}
\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\DeclareRobustCommand\file{\nolinkurl}
\DeclareRobustCommand\env{\textsf}
\DeclareRobustCommand\pkg{\textsf}
\DeclareRobustCommand\cls{\textsf}
\sloppy
\endinput
%%
%% End of file `bnuthesis.cls'.
