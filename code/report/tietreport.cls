%% tietreport.cls
%% LaTeX document class for TIET university reports
%% Customized for the LedgerX UCS503 Software Engineering project.
%%
%% This class extends the standard 'report' class with
%% customizations for title page, headers, margins,
%% and chapter formatting specific to TIET requirements.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tietreport}[2026/09/14 TIET Report Class v1.0.4 - LedgerX]

%% Forward all options to report class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

%% Load base report class
\LoadClass[twoside,12pt,openright]{report}

%% ===================================================
%% Geometry: Page margins and asymmetric layout
%% ===================================================

\RequirePackage[
  inner=1.5in,
  outer=1in,
  top=1.8in,
  bottom=0.85in
]{geometry}

%% ===================================================
%% Fancyhdr: Alternating headers with page numbers
%% ===================================================

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

\fancyhead[LE]{\thepage \quad \@tpHeader}
\fancyhead[RO]{\@tpTitle \quad \thepage}

\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}

%% ===================================================
%% Titlesec: Custom chapter title formatting
%% ===================================================

\RequirePackage{titlesec}

\titleformat{\chapter}[display]
  {\raggedleft\bfseries\large}
  {Chapter \thechapter}
  {0.3em}
  {\huge}
  [\vspace{0.1em}\hrule]

\titlespacing*{\chapter}{0pt}{-50pt}{40pt}
\assignpagestyle{\chapter}{empty}

%% ===================================================
%% Required packages
%% ===================================================

\RequirePackage{hyperref}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}

%% ===================================================
%% Internal Variables: Title page content
%% ===================================================

\newcommand{\@tpHeader}{%
  UCS503 - Software Engineering%
}

\newcommand{\@tpTitle}{%
  LedgerX%
}

\newcommand{\@tpSubTitle}{%
  A Decentralized Web3 Security Protocol for
  Protected Digital Asset Management and
  Real-Time Transaction Anomaly Detection%
}

\newcommand{\@tpAuthors}{%
  \texttt{1024030433} [Ishan Rehan] \\
  \texttt{1024030812} [A S Danish] \\
  \texttt{1024030813} [Shreyansh Dua] \\
  \texttt{1024030483} [Shaurya Garg]%
}

\newcommand{\@tpSubText}{%
  Group: \texttt{[3C55]} BE Third Year, CSE%
}

\newcommand{\@tpAdvisor}{%
  Dr. [Nisha Thakur]%
}

\newcommand{\@tpFooter}{%
  \large Mid-Semester Evaluation \\[0.2cm]
  \bfseries Computer Science and Engineering
  \\ Department \\[0.15cm]
  Thapar Institute of Engineering and Technology,
  Patiala%
}

%% ===================================================
%% Public Commands: User-facing configuration
%% ===================================================

\newcommand{\TitlePageHeader}[1]{%
  \renewcommand{\@tpHeader}{#1}%
}

\newcommand{\ProjectTitle}[1]{%
  \renewcommand{\@tpTitle}{#1}%
}

\newcommand{\ProjectSubTitle}[1]{%
  \renewcommand{\@tpSubTitle}{#1}%
}

\renewcommand{\author}[1]{%
  \renewcommand{\@tpAuthors}{#1}%
}

\newcommand{\TitlePageSubText}[1]{%
  \renewcommand{\@tpSubText}{#1}%
}

\newcommand{\AdvisorName}[1]{%
  \renewcommand{\@tpAdvisor}{#1}%
}

\newcommand{\TitlePageFooterText}[1]{%
  \renewcommand{\@tpFooter}{#1}%
}

%% ===================================================
%% Maketitle: Render custom TIET title page
%% ===================================================

\renewcommand{\maketitle}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \centering
    \vspace*{0.5cm}

    {\large \textbf{\@tpHeader}}

    \vspace{2cm}
    {\LARGE \textbf{\@tpTitle}}

    \vspace{0.2cm}
    {\@tpSubTitle}

    \vspace{3.5cm}
    {\large \textbf{Submitted by:}}

    \vspace{0.2cm}
    {\large \@tpAuthors}

    \vspace{0.5cm}
    {\normalsize \@tpSubText}

    \vfill

    {\large \textbf{Submitted to:}}

    \vspace{0.2cm}
    {\normalsize \@tpAdvisor}

    \vspace{2cm}
    {\normalsize \@tpFooter}
  \end{titlepage}

  \newpage
  \thispagestyle{empty}%
}

\endinput
