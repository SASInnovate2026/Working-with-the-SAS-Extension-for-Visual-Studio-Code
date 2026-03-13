%macro git_checkout(repo=, path=, branch=main);

data _null_;
  length rc 8;

  /* 1. Clone if missing */
  if fileexist("&path")=0 then rc=git_clone("&repo","&path");

  /* 2. Fetch updates */
  rc = git_fetch("&path");

  /* 3. Checkout remote branch */
  rc = git_branch_chkout("&path","origin/&branch");
  put "Return code=" rc;
run;

%mend;

%git_checkout(
  repo=https://github.com/SASInnovate2026/Working-with-the-SAS-Extension-for-Visual-Studio-Code.git,
  path=/home/student/_VSCODE_DEMO,
  branch=rocoll-init
);