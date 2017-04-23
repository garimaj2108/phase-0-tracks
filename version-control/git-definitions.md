## Name " Garima Jain"
# Git Definitions

**Instructions: ** Define each of the following Git concepts.

1.**What is version control?  Why is it useful?**

* Version control is a software tool that allows us to manage changes to source code over time.
* It is useful because using version control one can track progress, review,revert to any version, create backups in the code.
For example: If a mistake is made, one can always time travel to the earlier version to figure out and fix the mistake.

2.**What is a branch and why would you use one?**

* Branch is a copy of the original project (default branch - master)
* Branching allows developers to experiment and tinker around without affecting the original
* Branching allows to discard feature or experiment that didn't turn out right
* Whenever the developer thinks the code is as per desirability, the developer can merge the copy (branch) with the source code(master) so that the master now points to the last commit made.

3.**What is a commit? What makes a good commit message?**

* Commit creates save points, which means once you commit you create a save point in file folder and can go back or refer to that save point.
* Every commit has a Unique id, message, author and time stamp details
* A good commit message should be meaningful and descriptive of the changes made through commit

4.**What is a merge conflict?**

* A merge conflict usually occurs when the current branch and the branch you want to merge into the current branch have diverged. That is you have commits in your current branch which are not in the other branch and vice versa.
* Typically, there is one branch point, which is the latest common commit. This is the base commit.
* Now, when Git merges the other branch into your current branch, it looks at the differences between the base commit and the current revision, and at the differences between the base commit and the other branch's latest commit.
* When there are unambiguous differences (i.e. only one side changed a certain piece of code), the changes are applied.
* The merge conflicts occur when there are disagreeing changes.

Ref: [Git Conflicts](https://imagej.net/Git_Conflicts)