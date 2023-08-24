{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "bb2a9d34",
   "metadata": {},
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'ggplot2' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpULPZj9\\downloaded_packages\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"ggplot2\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "b90d6b91",
   "metadata": {},
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'ggthemes' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpULPZj9\\downloaded_packages\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n",
      "also installing the dependencies 'generics', 'timechange'\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'generics' successfully unpacked and MD5 sums checked\n",
      "package 'timechange' successfully unpacked and MD5 sums checked\n",
      "package 'lubridate' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpULPZj9\\downloaded_packages\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n",
      "also installing the dependency 'tidyselect'\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'tidyselect' successfully unpacked and MD5 sums checked\n",
      "package 'dplyr' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpULPZj9\\downloaded_packages\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'tidyr' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpULPZj9\\downloaded_packages\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n",
      "also installing the dependencies 'bit', 'rematch', 'bit64', 'backports', 'blob', 'DBI', 'data.table', 'gargle', 'cellranger', 'ids', 'vroom', 'tzdb', 'progress', 'selectr', 'broom', 'conflicted', 'dbplyr', 'dtplyr', 'forcats', 'googledrive', 'googlesheets4', 'haven', 'hms', 'modelr', 'readr', 'readxl', 'reprex', 'rvest'\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'bit' successfully unpacked and MD5 sums checked\n",
      "package 'rematch' successfully unpacked and MD5 sums checked\n",
      "package 'bit64' successfully unpacked and MD5 sums checked\n",
      "package 'backports' successfully unpacked and MD5 sums checked\n",
      "package 'blob' successfully unpacked and MD5 sums checked\n",
      "package 'DBI' successfully unpacked and MD5 sums checked\n",
      "package 'data.table' successfully unpacked and MD5 sums checked\n",
      "package 'gargle' successfully unpacked and MD5 sums checked\n",
      "package 'cellranger' successfully unpacked and MD5 sums checked\n",
      "package 'ids' successfully unpacked and MD5 sums checked\n",
      "package 'vroom' successfully unpacked and MD5 sums checked\n",
      "package 'tzdb' successfully unpacked and MD5 sums checked\n",
      "package 'progress' successfully unpacked and MD5 sums checked\n",
      "package 'selectr' successfully unpacked and MD5 sums checked\n",
      "package 'broom' successfully unpacked and MD5 sums checked\n",
      "package 'conflicted' successfully unpacked and MD5 sums checked\n",
      "package 'dbplyr' successfully unpacked and MD5 sums checked\n",
      "package 'dtplyr' successfully unpacked and MD5 sums checked\n",
      "package 'forcats' successfully unpacked and MD5 sums checked\n",
      "package 'googledrive' successfully unpacked and MD5 sums checked\n",
      "package 'googlesheets4' successfully unpacked and MD5 sums checked\n",
      "package 'haven' successfully unpacked and MD5 sums checked\n",
      "package 'hms' successfully unpacked and MD5 sums checked\n",
      "package 'modelr' successfully unpacked and MD5 sums checked\n",
      "package 'readr' successfully unpacked and MD5 sums checked\n",
      "package 'readxl' successfully unpacked and MD5 sums checked\n",
      "package 'reprex' successfully unpacked and MD5 sums checked\n",
      "package 'rvest' successfully unpacked and MD5 sums checked\n",
      "package 'tidyverse' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpULPZj9\\downloaded_packages\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n",
      "also installing the dependencies 'lazyeval', 'crosstalk'\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'lazyeval' successfully unpacked and MD5 sums checked\n",
      "package 'crosstalk' successfully unpacked and MD5 sums checked\n",
      "package 'DT' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpULPZj9\\downloaded_packages\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'scales' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpULPZj9\\downloaded_packages\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"ggthemes\")\n",
    "install.packages(\"lubridate\")\n",
    "install.packages(\"dplyr\")\n",
    "install.packages(\"tidyr\")\n",
    "install.packages(\"tidyverse\") # metapackage of all tidyverse packages\n",
    "install.packages(\"DT\")\n",
    "install.packages(\"scales\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "946d1c9d",
   "metadata": {},
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: 'lubridate'\n",
      "\n",
      "\n",
      "The following objects are masked from 'package:base':\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n",
      "\n",
      "Attaching package: 'dplyr'\n",
      "\n",
      "\n",
      "The following objects are masked from 'package:stats':\n",
      "\n",
      "    filter, lag\n",
      "\n",
      "\n",
      "The following objects are masked from 'package:base':\n",
      "\n",
      "    intersect, setdiff, setequal, union\n",
      "\n",
      "\n",
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────────────────────────────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.5.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 1.0.1     \u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.4     \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n",
      "\n",
      "Attaching package: 'scales'\n",
      "\n",
      "\n",
      "The following object is masked from 'package:purrr':\n",
      "\n",
      "    discard\n",
      "\n",
      "\n",
      "The following object is masked from 'package:readr':\n",
      "\n",
      "    col_factor\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(ggplot2)\n",
    "library(ggthemes)\n",
    "library(lubridate)\n",
    "library(dplyr)\n",
    "library(tidyr)\n",
    "library(tidyverse) # metapackage of all tidyverse packages\n",
    "library(DT)\n",
    "library(scales)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "6318dc21",
   "metadata": {},
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into 'C:/Users/WAGDY 10/AppData/Local/R/win-library/4.3'\n",
      "(as 'lib' is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "package 'writexl' successfully unpacked and MD5 sums checked\n",
      "\n",
      "The downloaded binary packages are in\n",
      "\tC:\\Users\\WAGDY 10\\AppData\\Local\\Temp\\RtmpWGCrX4\\downloaded_packages\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"writexl\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "d4b27142",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.3.1"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
