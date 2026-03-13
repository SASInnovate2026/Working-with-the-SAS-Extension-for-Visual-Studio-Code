# Working with the SAS Extension for Visual Studio Code

This hands on workshop demonstrates the **[SAS Extension for Microsoft Visual Studio Code](https://github.com/sassoftware/vscode-sas-extension/)** and its integration with the SAS Viya platform for efficient data science programming. We explain how to configure VS Code to work with the SAS Programming Runtime Environment, access and execute SAS program code, work with data, integrate source code management with Git, and more.

By enabling SAS programming development in VS Code, you will have a fully integrated development environment that supports your SAS analytic workflows.

- [Working with the SAS Extension for Visual Studio Code](#working-with-the-sas-extension-for-visual-studio-code)
    - [Open Visual Studio Code](#open-visual-studio-code)
    - [Working in Visual Studio Code](#working-in-visual-studio-code)
    - [Customizing VS Code](#customizing-vs-code)
    - [Getting started with Git in VS Code](#getting-started-with-git-in-vs-code)
        - [🚩 Status Check](#-status-check)
    - [Getting started with Git in SAS Programming](#getting-started-with-git-in-sas-programming)
        - [🚩 Status Check](#-status-check-1)
    - [Working with data](#working-with-data)
        - [Reading a SAS data set](#reading-a-sas-data-set)
        - [Reading a Parquet dataset](#reading-a-parquet-dataset)
        - [Reading a CSV file](#reading-a-csv-file)
        - [Reading a JSON file](#reading-a-json-file)
        - [🚩 Status Check](#-status-check-2)
        - [Save your SAS program code](#save-your-sas-program-code)
    - [Working with Source Control in VS Code](#working-with-source-control-in-vs-code)
        - [Bonus](#bonus)
        - [🚩 Status Check](#-status-check-3)
    - [Working with SAS Notebooks](#working-with-sas-notebooks)
        - [Save your SAS Notebook](#save-your-sas-notebook)
        - [🚩 Status Check](#-status-check-4)
- [Pick up here](#pick-up-here)
    - [Working with Python](#working-with-python)
    - [Closing Visual Studio Code](#closing-visual-studio-code)
    - [Adjusting computing resources](#adjusting-computing-resources)
    - [Going further](#going-further)
        - [Modern Data Science with SAS Viya Workbench and Python](#modern-data-science-with-sas-viya-workbench-and-python)
        - [SAS Extension for Visual Studio Code](#sas-extension-for-visual-studio-code)


## Open Visual Studio Code

In this hands-on environment, you should be logged into a virtual machine and see the Windows desktop. Find the Visual Studio Code icon on the left side of your screen:

![vscode](/img/vscode-logo.png)

Double-click to open it.

## Working in Visual Studio Code

**Visual Studio Code** (**VS Code**) is a free, open-source code editor developed by Microsoft that supports various programming languages and offers features like debugging, syntax highlighting, and version control.

If you are not familiar with VS Code, take the time to explore the user interface.

![vscode ui](img/vscode-ui-5p.png)

The **Working Area** is in the the center. This is where you work to edit edit code, view logs, and display results. Not much to see there right now. :)

The **Activity Bar** on the left provides access to major VS Code feature areas. Currently it contains several items we will use. These include:

*   The **Explorer** item where folders and files are shown

*   **Source Control** to handle the tasks associated with Git activity, including commits, branching, staging, pushing, pulling, stashing, etc.

*   **Extensions** where you can access and configure additional functionality for VS Code.

*   **SAS** is what we're here for. It's a great example of an extension that extends VS Code's capabilities - in this case, to integrate with your backend SAS environment

And finally, the **Command Palette** at the top is frequently used. Besides providing keyboard-based access to features, it's often the UI element that appears when called and to answer prompts when performing certain tasks.

## Customizing VS Code

Let's customize VS Code and choose a darker color scheme.

Open the VS Code Menu and select **File** > **Preferences** > **Theme** > **Color Theme**:

The **Command Palette** Start prompts you to "Select Color Theme". Type "sas" and choose the **SAS Dark** theme:

![](images/franir_2025-03-18-16-51-25.png)

The color scheme is just one of the many preferences you can modify... so now you know where to find them.

## Getting started with Git in VS Code

Working with Git repositories in VS Code is extremely easy.

VS Code has integrated source control management (SCM) and includes Git support out-of-the-box.

Let's clone a GitHub repository.

The easiest way to do this is to select the **Source Control** icon in the **Activity Bar** and click the button to **Clone Repository**:

![scm-clone](/img/2026-03-12_13-32-59.png)

But to showcase the power of the Command Palette, let's take a different approach. In the VS Code menubar, select **View** > **Command Palette...** (alternatively, if you prefer a keyboard shortcut, just type **Ctrl+Shift+P**):

![](/img/2026-03-12_13-51-56.png)

Start typing "Git C" and select **Git: Clone**:

![](img/2026-03-12_13-48-10.png)

Paste the following URL for this workshop's GitHub repository and press Enter to **Clone from URL**:

`https://github.com/SASInnovate2026/Working-with-the-SAS-Extension-for-Visual-Studio-Code.git`

> &#x26A0; *Attention: Do not select **Clone from GitHub** as that uses a different technique requiring a user's authentication credentials.*
>
> ![](img/2026-03-12_14-00-10.png)

You are then prompted to **Choose a folder to clone into** with a file explorer window.

Any place you prefer is suitable, but for this workshop we'll keep the current "student" home directory. Just click the **Select as Repository Location** button.

![](/img/2026-03-12_14-15-58.png)

When prompted about opening the cloned repository, click **Open**. And when asked if you Trust the Authors, click **Yes**.

![](/img/2026-03-12_14-20-19.png)

You should now see your cloned repository folder in the **Explorer** view:

![](/img/2026-03-12_14-28-50.png)

### &#x1F6A9; Status Check

We've cloned a project to work with in VS Code. By cloning the project, we have placed a copy of the repo on our own PC here. Because it's our own copy, then we can view files, make changes, or do anything else we want with it.

## Getting started with Git in SAS Programming

SAS provides programming language features to work with Git repositories, too.

So now let's clone the same GitHub repository on to the SAS server in our Kubernetes environment.

In the cloned repository, explore the **Programs** folder. It contains SAS programs we'll use for this workshop.

![](/img/2026-03-13_09-50-44.png)

Click on the "git_checkout.sas" program. That will open the file in the main work area. We don't need to edit it here - it's already set up for this workshop. We just want to run it.

Find the "running man" icon at the top-right of the editor pane...

![](/img/2026-03-13_09-52-52.png)

...and click it to submit the job to run in a SAS Compute Server on the Kubernetes cluster.

If this is the very first action attempting to communicate with the SAS Compute Server, then you should briefly see a "Connecting" panel appear at the bottom right of the window:

![](/img/2026-03-13_09-55-41.png)

Followed by a message about running the SAS program code. That should complete in just a few seconds. And then you're presented with the SAS Log Output in a new pane that appears at the bottom of the work area:

![](/img/2026-03-13_09-59-25.png)

You might want to scroll up to see the complete log, but as shown here we do see the message, "NOTE: Fetch succesful!".

Now let's confirm everything landed as expected. Look over at the Activity Bar and click the SAS icon to open the SAS Extension for VS Code:

![](/img/2026-03-13_10-21-38.png)

In the middle of the SAS pane, look at **SAS SERVER**. The folder structure is probably collapsed, so click to expand SAS Server > Home > Workshop and confirm **_VSCODE_DEMO** is there. That's where this workshop's repository from GitHub was cloned to.

Close the "git_checkout.sas" program editor - we don't need it anymore.

### &#x1F6A9; Status Check

We've cloned the project a second time, this time to place the files in a location that is directly accessible to the SAS Compute Server in Kubernetes.

## Working with data

​As a data scientist at an online personal styling service, you’ll use machine learning models to help us analyze customer churn. Customer “churn” simply means that our client has canceled their premium clothing subscription. And since it often is more difficult to find a new customer than keep an existing one, you will help us identify which clients are likely on the cusp of churning, so that we can find ways to retain them.​

In the cloned repository on the SAS server, explore the **Data** folder. It contains various data sets for our project in various formats:

![](/img/2026-03-13_10-29-52.png)

- **Customer churn** is a parquet table that provides metrics about customer activity over the last few months,
- **Customers** is a SAS data set that describes customers’ attributes, such as their estimated income, homeowner status and birth date,
- **Reviews** is a JSON file that lists customer reviews on recent purchases,
- **Subscriptions** is a comma-separated values text file that provides meaningful details about the customer’s subscriptions,
- And **technical support evaluations** is another SAS data set that gives the customers’ feedback on recent interactions with Technical Support.

In this hands-on, we will focus on the data preparation part of the project.

Even with our data spread across two SAS data sets, one CSV file, one JSON file, and one Parquet table, SAS makes it easy to bring them together.

> *Note: Storing data in a Git repository is generally not recommended. While Git excels at version control and collaboration on text-based files like source code, it is not optimized for handling large datasets or binary files. In this hands-on example, we provide sample data in Git for simplicity.*

### Reading a SAS data set

To read SAS data sets, we just need a SAS library. To create a SAS library, let's run some simple SAS code.

Start off by creating a new SAS program file: **File** > **New File...**. 

The Command Palette appears prompting you for the file's type and name. Select **SAS File**:

![](images/franir_2025-03-19-10-52-53.png)

In the new *Untitled* SAS program file, copy the following code:

```sas
/* Churn demo - SAS data */
libname churn "" ;
```

In the Explorer, select the **Data** folder, right-click and select **Copy Path**:

![](img/2026-03-13_10-34-57.png)

Paste the copied path between the double-quotes in your code.

This should look like the following:

```sas
/* Churn demo - SAS data */
libname churn "/workshop/_VSCODE_DEMO/Data" ;
```

You're ready to submit this code using the Run button:

![](img/2026-03-13_10-36-45.png)

Again, the SAS log from running the submitted code will appear in the Output pane at the bottom of the work area. Confirm it worked as expected by finding the message, "**NOTE: Libref CHURN was successfully assigned**".

Now, look at the bottom of the SAS pane for the **LIBRARIES** section.There you should now see the **CHURN** library has been added and you can click to open a preview of the **CUSTOMERS** table.

![](/img/2026-03-13_10-43-01.png)

### Reading a Parquet dataset

A SAS library reference consists of two primary elements: 1) the path to location on disk, and 2) the library engine.

We will access the Parquet dataset using a SAS library and specifying the "parquet" library engine. The Parquet file is at the exact same location as the SAS data sets. But we need a new library reference so that we can specify a different library engine that is able to work data in Parquet format.

> *Note: Parquet is a **columnar storage file format** optimized for efficient data storage and retrieval. It is commonly used in big data processing frameworks like Apache Spark and Hadoop due to its ability to handle large datasets with high performance and reduced storage requirements.*

Back in your SAS program file, add a new libname statement to access the Parquet dataset similar to:

```sas
/* Churn demo - Parquet data */
libname churn_pq parquet "/workshop/_VSCODE_DEMO/Data" ;
```

Submit the code to run on the SAS Compute Server.

> &#x1FA84; *Pro-tip: if you select/highlight the desired code in the SAS program, then when you hit the Submit (running man) button, only that selected code will run.*

Confirm the SAS log shows success:

```log
NOTE: Libref CHURN_PQ was successfully assigned as follows:
      Engine:        PARQUET
      Physical Name: /workshop/_VSCODE_DEMO/Data
```

And as before, look for **CHURN_PQ** in the **LIBRARIES** section of the SAS pane. Click on the **customer_churn** dataset to see a preview in the work area.

### Reading a CSV file

SAS doesn't offer a library engine to read simple CSV files. Instead, we can import the content of the file into a SAS data set.

In your SAS program file, add the following code:

```sas
/* Churn data - import CSV */
proc import file="/workshop/_VSCODE_DEMO/Data/subscriptions.csv" out=subscriptions dbms=csv replace ;
run ;
```

Submit this code to run. Notice that we did not provide a destination libref, so the resulting SAS data set will automatically write out to the **WORK** library.

Near the bottom of the SAS log, look for success similar to:

```log
NOTE: WORK.SUBSCRIPTIONS data set was successfully created.
NOTE: The data set WORK.SUBSCRIPTIONS has 3 observations and 2 variables.
NOTE: PROCEDURE IMPORT used (Total process time):
      real time           0.05 seconds
      cpu time            0.05 seconds
```

And as before, look for **WORK** in the **LIBRARIES** section of the SAS pane. Click on the **SUBSCRIPTIONS** data set to see a preview in VS Code's work area.

![](/img/2026-03-13_11-20-53.png)

### Reading a JSON file

A JSON (JavaScript Object Notation) file is a lightweight, text-based format used to store and transport data. Data is organized into a hierarchy of key-value pairs and arrays that is designed to be easy for humans to read and simple for machines to parse.

We will access the reviews.json file using a SAS library and specifying the "json" library engine.

In your SAS program file, add the following code:

```sas
/* Churn demo - JSON Data */
libname rev json "/workshop/_VSCODE_DEMO/Data/reviews.json" ;
proc datasets lib=rev ;
quit ;
```

> *Note that a JSON-type of SAS library specifies the path to the JSON file, not to the folder.*

Submit the code to run in the SAS Compute Server.

The DATASETS procedure generates ODS output with a report that lists the logical tables stored in the JSON file. This is presented in a new "Result" tab to the right of your SAS program code:

![](img/2026-03-13_11-41-23.png)

Also be sure to confirm success in the SAS log, look for:

```log
NOTE: JSON data is only read once.  To read the JSON again, reassign the JSON LIBNAME.
NOTE: Libref REV was successfully assigned as follows:
      Engine:        JSON
      Physical Name: /workshop/_VSCODE_DEMO/Data/reviews.json


19   proc datasets lib=rev ;
20   quit ;

NOTE: PROCEDURE DATASETS used (Total process time):
      real time           0.02 seconds
      cpu time            0.02 seconds
```

Finally, look in the **LIBRARIES** section of the SAS pane to find and open the resulting **REVIEWS** table in the new **REV** library.

> &#x1F4A1; *If you're an experienced SAS programmer acquainted with either SAS Display Manager or SAS Studio, then you should be in familiar territory here, recognizing the **SAS Program Editor**, **SAS Log**, and **SAS Output** windows now on display.*

### &#x1F6A9; Status Check

You have demonstrated several techniques to ingest data in different formats into the SAS Compute Server for analytics processing.

### Save your SAS program code

The **Explorer** icon in the Activity Bar should have a blue badge with the number 1 to indicate that the SAS program file you've been working with needs to be saved.

![](/img/2026-03-13_13-04-08.png)

Select your SAS program file's tab in VS Code's work area. Then click **File** > **Save As...** and you should see a file explorer window appear to specify where to save your program.

You can select anywhere on the PC, of course, but we have a location in mind. Name your program `data_access.sas` and save it to:

`C:\Users\student\Working-with-the-SAS-Extension-for-Visual-Studio-Code\Programs`.

After saving your SAS program file, the blue notification badge on the **Explorer** icon will disappear. But now a new one has appeared on the **Source Control** icon in the Activity Bar:

![](/img/2026-03-13_13-02-56.png)

Let's deal with that briefly next.

## Working with Source Control in VS Code

Source control (a.k.a., source code management, a.k.a., version control) is the practice of tracking and controlling changes to files over time. There are lots of variations and tools. Git in particular is very popular and commonly used.

When you saved your SAS program file to the Programs folder in the repo location we cloned from Github, the local Git service noticed the change - and placed that new blue badge on the **Source Control** icon in VS Code's Activity Bar. That's a prompt for you to take the next steps: stage, then commit the change.

Your file is safely saved to disk, but it's not yet being formally tracked by Git for version control. Open up the **Source Control** section:

![](img/2026-03-13_13-18-22.png)

It currently shows your new `data_access.sas` program file under the list of **Changes** it noticed. We can *stage* that change in preparation for *commit* by clicking that `+` icon to the right of the file's name.

A new section named **Staged Changes** with your file will appear there above the Changes section.

> *Staging simply allows us to group one or more files together in preparation for commit.*

Enter a descriptive commit message in the field provided - like, "my nifty SAS program" - and click the Commit button.

![](img/2026-03-13_13-28-06.png)

That updates the local Git repo so it can track this change - adding your new SAS program file to the project.

Or, it would - if we had initialized Git properly. &#x1F61C;

![](img/2026-03-13_13-32-30.png)

We'll stop here as we're just making the point about VS Code's support for Git as a source code management utility.

### Bonus

Assuming the commit above had worked, that just updates the *local* git repo on your PC. If you wanted to push that change up to the *remote* repo hosted in GitHub.com (or wherever), then VS Code can do that, too.

But...

That requires establishing authentication credentials with the remote repo (in GitHub). And since you're not one of the maintaining authors of this particular project, you don't have the means to authenticate and push updates there. Makes sense, right? If it was your repo, you wouldn't want unknown, random folks on the Internet modifying your hard work.

You can, however, create your own GitHub (or wherever) repo that you own and configure your local Git to use that as its "origin". Then, you could push the changes up to a location under your control where you are authenticated.

### &#x1F6A9; Status Check

As your SAS program code evolves over time, it can be really helpful to track what changes were made, who made them and when, along with commit messages to help find key updates.

## Working with SAS Notebooks

Python (and other languages) programmers have long enjoyed working with Jupyter Notebooks. A Jupyter Notebook is a page that can be authored with two main types of input:

-   **Code (or Execute) cells**: Where you write and execute live code. The output appears directly below the cell.

-   **Markdown Cells**: Where you write formatted text, insert images, or otherwise provide descriptive information about the code and process.

The SAS Extension for VS Code offers similar functionality known as **SAS Notebooks**.

In a SAS Notebook, we can mix:

- Markdown, a lightweight markup language that uses plain text formatting syntaxfor easy conversion to HTML or other formats,
- SAS code,
- SQL code,
- and Python.

Create a new file by selecting the VS Code Menu > **File** > **New File...** and in the Command Palette prompt, select **SAS Notebook**:

![](images/franir_2025-03-19-16-09-46.png)

By default, the new notebook has one empty cell that is for SAS code. Let's change that:

![](images/franir_2025-03-20-09-52-41.png)

On the far right bottom of that empty cell is its type - currently, that's "SAS". Click on the word **SAS** there and in the Command Palette prompt, select **Markdown** as the language mode for that cell.

Let's create some text headers for this new notebook - in the Markdown field, enter:

```markdown
# Discover data

## Customers
```

To see what's described by the Markdown so far, try clicking on the checkmark &check; icon at the top right of the field:

![](images/franir_2025-03-20-09-56-16.png)

You're shown a preview of the rendered output. Those hashtags # are how section headers are identified in markdown syntax.

![](images/franir_2025-03-20-09-56-55.png)

Add a code cell by clicking on **+ Code** at the top of the notebook:

![](images/franir_2025-03-20-09-58-18.png)

Confirm that it is a SAS cell:

![](images/franir_2025-03-20-09-59-05.png)

Paste the following code in the cell to list the columns of the SAS data set:

```sas
/* List columns */
proc contents data=churn.customers varnum ;
run ;
```

Run the cell:

![](images/franir_2025-03-20-10-03-06.png)

You should get your SAS output right below your code:

![](images/franir_2025-03-20-10-03-52.png)

Add a new Markdown cell at the bottom of your output:

![](images/franir_2025-03-20-10-12-04.png)

Add the following header text:

```markdown
## Churn
```

Validate the Markdown cell and add a new code cell:

![](images/franir_2025-03-20-10-15-09.png)

Paste the following code to list the columns of the Parquet data set:

```sas
/* List columns */
proc contents data=churn_pq.customer_churn varnum ;
run ;
```

Run the cell.

![](images/franir_2025-03-20-10-18-39.png)

Add a new Markdown cell with the following level-2 header (i.e., with two hashtags ##): "**Build some distribution reports**".

Validate/submit markdown.

Add a SAS code cell, paste and run the frequency report and plot code:

```sas
/* Frequency report */
proc freq data=churn_pq.customer_churn ;
   tables lostcustomer / plots=freqplot() ;
run ;
```

Check the results and the plot:

![](images/franir_2025-03-20-11-09-10.png)

You can observe that a SAS notebook shows SAS output when the SAS code generates it. You'll learn that it displays the SAS log otherwise.

What if you want to check the log when the code generates output?

Click on the ```...``` > **Change Presentation** between the code and the output:

![](images/franir_2025-03-20-12-04-42.png)

Then select **SAS Log Renderer**:

![](images/franir_2025-03-20-12-06-11.png)

You should see the SAS log now.

Add a new Markdown cell with the following level-1 header (i.e., one hashtag #): "**Join data**".

Add a SQL code cell (the label is mistakenly marked as '**MS SQL**' when it should actually be '**SAS SQL**').

![](images/franir_2025-03-20-11-06-44.png)

This SQL cell allows you to code directly a SAS SQL statement without having to specify `PROC SQL` and `quit;`.

Use the following code to join all five tables:

```sql
create table churn_wip (drop=custId customerSubscrCode reviewId ordinal_root ordinal_reviews) as
   select *
   from churn_pq.customer_churn as churn
      left join churn.customers as cust on churn.custId=cust.custId
      left join subscriptions as subs on cust.customerSubscrCode=subs.customerSubscrCode
      left join churn.techSupportEvals as evals on churn.ID=evals.ID
      left join rev.reviews as rev on churn.reviewId=rev.reviewId
```

Run the code and review the log output that's returned.

Select the **SAS** icon in the Activity Bar, look in the **LIBRARIES** section to find the **WORK** library. Check the contents of the **CHURN_WIP** data set.

> *If you don't see CHURN_WIP in the WORK library, mouse-over the **LIBRARIES** section and click the refresh &#x21BB; icon to update the list.*

![](images/franir_2025-03-20-13-53-39.png)

Finally, let's save the final table as a Parquet data set.

Add a new Markdown cell with the following level-1 header (i.e., one hashtag #): "**Save final table in Parquet format**".

Add a SAS code cell. Paste the following code that adds a computed variable "customerAge" and saves the dataset to a Parquet file named **churn_abt.parquet**:

```sas
/* Save data as Parquet dataset */
data churn_pq.churn_abt ;
   set churn_wip ;
   customerAge=intck('YEAR',birthDate,today(),'C') ;
run ;
```

Run the code, review the log output that's returned, and look for **churn_abt** in the **CHURN_PQ** library:

![](images/franir_2025-03-20-13-57-51.png)

View the table and confirm the new computed column "customerAge" exists (scroll all the way to the right).

### Save your SAS Notebook

Select your SAS Notebook's tab in VS Code's work area. Then click **File** > **Save As...** and you should see a file explorer window appear to specify where to save your program.

You can select anywhere on the PC, of course, but we have a location in mind. Name your program `my_sas_notebook.sasnb` and save it to:

`C:\Users\student\Working-with-the-SAS-Extension-for-Visual-Studio-Code\Programs`.

### &#x1F6A9; Status Check

You have brought together several components of the data science programming lifecycle using VS Code to author and submit SAS programs, create and examine data in different formats, and generated a SAS Notebook as a document that shows it all working together.

---
---
---

# Pick up here

Requested Adam place Python on the Win host in the next build. See 13-MAR email for steps to implement in the meantime.

---
---
---

## Working with Python

You're not limited to only run SAS code. Python is the *lingua fraca* for programmers, data scientists, and modelers.

Switch to the **Explorer** pane and navigate to ```SAS-Viya-Workbench-and-VS-Code/Programs``` to open ```python_sample_data_access.ipynb```:

![](images/franir_2025-03-20-15-08-34.png)

It's a simple Python notebook that demonstrates how to access the same data files as you would with SAS.

Run the notebook by selecting **Run All**:

![](images/franir_2025-03-20-15-12-50.png)

A **Select Kernel** dialog should pop up. Select **Python Environments...**:

![](images/franir_2025-03-20-15-24-17.png)

Select the recommended one:

![](images/franir_2025-03-20-15-25-08.png)

You should see some sample data:

![](images/franir_2025-03-20-15-26-34.png)

## Closing Visual Studio Code

Simply close your VS Code browser tab.

## Adjusting computing resources

If you need to experiment with different requirements and require more computing resources, you can adjust your workbench's settings.

On the SAS Viya Workbench welcome page, open the settings of your existing workbench:

![](images/franir_2025-03-20-16-59-34.png)

You will see the **Workbench settings** page, where you can change the allocated computing resources according to your site's administration policies.

![](images/franir_2025-03-20-17-05-49.png)

*Note: You might different values since we have limited the configurations available.*

We won't do that today.

This concludes our Hands-On Workshop!

Thanks for participating!

## Going further

### Modern Data Science with SAS Viya Workbench and Python

Curious about how an end-to-end data science project is managed in SAS Viya Workbench?

You can check this [free course](https://communities.sas.com/t5/SAS-Viya-Workbench-Getting/Modern-Data-Science-with-SAS-Viya-Workbench-and-Python/ta-p/947920) and its [materials](https://github.com/sassoftware/sas-education/tree/main/sas1).

### SAS Extension for Visual Studio Code

Good news! The SAS Extension for Visual Studio Code is not limited to SAS Viya Workbench. You can install it in your own VS Code instance and use it to connect to your SAS Viya or SAS 9 environment.

Check [here](https://developer.sas.com/programming/vs_code_extension) for more information.
