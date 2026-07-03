% Identification of Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/06/15 Resume template based off of Harvard's Resume template.]

% Preliminary Declarations
%% Extend the extarticle class, passing in the font size value.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}

%% Use packages for graphics, hyperlinks, list environments, input file encoding to be UTF-8, font encoding to be T1, and generating filler text.
\usepackage{graphicx}
\usepackage[hidelinks]{hyperref}
\usepackage{enumitem}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[english,spanish]{babel}
\usepackage{lipsum}

% Options

% More Declarations
%% Set indentation length to be 0 mm.
\setlength{\parindent}{0mm}

%% Use package for setting the geometry of the page.
\usepackage[left=1.06cm,top=1.7cm,right=1.06cm,bottom=0.49cm]{geometry}

%% Set bulletpoint for itemized lists to be a cdot.
\renewcommand{\labelitemi}{$\cdot$}

%% New command to make the name on the page stand out. #1 is the first name, and #2 is the second name.
\newcommand{\name}[2]{
    \begin{center}
        \textbf{#1 #2}\\
        \hrulefill
    \end{center}
}

%% New command to put in address information and social media link. #1 is city, state, and zipcode. #2 is email. #3 is phone number. #4 is the social media link.
\newcommand{\address}[4]{
    \begin{center}
        #1 \(\cdot\)\ #2 \(\cdot\)\ #3 \(\cdot\)\ #4\\
    \end{center}
}

%% New command to put in information about work experience. #1 is the company name. #2 is the location. #3 is the role. #4 is the start date. #5 is the end date.
\newcommand{\experience}[5]{
    \textbf{#1} \hfill #2
    
    \textbf{#3} \hfill #4 – #5
}

%% New command to put in information about projects. #1 is the project name. #2 is the start date. #3 is the end date.
\newcommand{\project}[5]{
    \textbf{#1} \hfill #2 - #3

    #4 \hfill #5
}

%% New command to put in information about education. #1 is the institution name. #2 is location. #3 is the title earned. #4 is the major. #5 is GPA. #6 is the start date. #7 is the end date.
\newcommand{\education}[7]{
    \textbf{#1} \hfill #2

    #3: #4, GPA: #5 \hfill #6 - #7
}
