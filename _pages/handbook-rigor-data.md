---
layout: handbook
permalink: /resources/handbook/rigor-data/
title: Rigor, Reproducibility and Data Management
handbook_slug: rigor-data
nav: false
---

## Rigor {#rigor}

Rigor is the strict application of the scientific method to ensure robust and unbiased experimental design, execution, analysis, interpretation, and reporting. This is achieved by careful record keeping and clear reporting, as well as considering the results of our experiments from all angles, and making sure our conclusions stand up to criticism and replication.

Replicates are critical in this effort -- we don't want to draw conclusions from an observation that happened once, or on one day. Instead, we need to ensure it holds true over multiple biological and technical replicates. Our convention in the laboratory is that cell-based experiments are performed ≥ 3 independent biological replicates (on three independent days), and resulting datasets include ≥ 10-20 cells analyzed per biological replicate. For chick embryo-based experiments, we collect ≥ 6 independent biological replicates (embryos) generated from ≥ 3 independent days, with more replicates needed to observe subtle phenotypes.

Our standard is that an experiment is not considered completed until:

1. At least three independent biological replicates are performed and reported in your notebook
2. Supporting raw and analyzed data, as well as all code/analytical methods, are organized and saved to our shared server as well as your external hard drive
3. A final, publication-quality figure that can go straight into a manuscript is assembled and presented at lab meeting

## Data Reproducibility {#data-reproducibility}

Science rests on reproducibility. You should be able to take a paper, acquire all the reagents, follow their protocols, and achieve the same results. If you cannot, it suggests that either you or the original author made mistakes in conducting the experiment, or there is some uncontrolled variable that has not been accounted for. Extended from this, if given a raw dataset, you should be able to reproduce any analyses exactly and achieve identical results. If you can't reproduce the results, it suggests that either you or the original author made errors in the analysis, and the results can't be trusted. To ensure reproducible results, experimental and analysis protocols must be thoroughly documented!

When conducting an experiment, you should transcribe the full protocol into your notebook, or load the protocol (from our digital resources) into your electronic lab notebook, and annotate it as you go through the experiment with anything you may have changed (intentionally or accidentally). Note the exact volumes you used. Note any brands that may have changed. Note if you let an incubation run long. If you make substantial changes to a protocol, rewrite it and add it to the protocol notebook for others to use. Remember, if you change a protocol, make notes within it about *why* you changed it so that others can determine which protocol version is appropriate for their experiment.

When conducting analysis, the pipeline must be organized and well-documented. To meet these goals, you should take extensive notes on *each step* of your analysis pipeline. This means writing down how you did things every step of the way (and the *order* that you did things), from any pre-processing of the data, to running models, to statistical tests. Additionally, your code should also be commented, and commented clearly. We all know what it's like to sit down, quickly write a bunch of code to run an analysis without taking time to comment it, and then having no idea what we did a few months down the road. Comment your code so that every step is understandable by an outsider.

*Important: It is easy to get behind in updating and maintaining our lab records. This problem snowballs if you don't address it promptly. Make a habit of making sure your notes are up to date at least weekly. The longer it goes undocumented, the more likely you are to miss something and end with results that cannot be reproduced.*

## Data Management {#data-management}

Data management is critical to research. Below are a few of our main practices to maintain good experimental records and data management.

### Notebooks

We use [Benchling](https://www.benchling.com) for our lab notebooks. This is a powerful and free online platform that allows project organization, note booking, and DNA analysis. Mike or your mentor will invite and orient you with the Piacentino Lab Benchling group.

Ask to see:

- Making an entry from scratch or from an experiment template
- Navigating DNA analysis
- Our lab's Plasmid and Primer Stock Databases

We also have paper notebooks and notepads available for pen-to-paper record keeping, but please translate into a more accessible digital format on Benchling. Just let Mike know if you have any concerns about using Benchling and keeping a digital notebook.

### File Naming

Most of our raw data collection will be microscopy images, which should use the file name structure described below. Importantly, separate metadata categories by an underscore (`_`), and separate information within a category with a semicolon (`;`). This structure and labeling order allows us to rapidly parse and filter data during analysis and visualization -- careful naming up front will save a lot of time for future you!

**Format:**

`Date_Treatment;Dose_Label/ChannelName1;2;3;etc_SampleNumber_Stage_Objective_OtherImageMetadata`

**Example:**

`20230828_pCIApoD;2.5ugul_BF;Pax7;H2B-RFP;Snai2;DAPI_Emb3_8ss_10x_stack`

**Key:**

- **Date:** Using YYYYMMDD format, enter the date the experiment started -- generally electroporation or transfection date, *not* imaging date. We should be able to search this date in your notebook to find more experiment details.
- **Treatment;Dose:** Describe the treatment -- generally the experimental construct name with a dose separated by a semicolon (`;`).
- **Label/ChannelName:** Describe what each channel shows, and in the order collected on the microscope. Brightfield (BF) and DIC are common transmitted light labels, and fluorescent channels for immunohistochemistry or HCR should indicate the protein/gene detected. Use the order of channel collection so that you can easily associate channels in ImageJ/FIJI with the appropriate label name.
- **SampleNumber:** Which sample is this in your experiment? Generally, this will be Embryo (Emb), Explant (Expl), or Field of View (FOV), immediately followed by a number. We start with #1 for the first sample of a given dose within an experiment.
- **SampleStage:** What stage is the sample? When possible, use somite staging (ss) as it is more specific and informative than Hamburger-Hamilton (HH) staging.
- **Objective:** What objective was used? Generally 5x, 10x, 20x, or 40x.
- **OtherImageMetadata:** Use this position if there is other identifying information -- e.g. when collecting a Z-stack through an embryo, you can append "_stack" in this position, and replace with "_MIP" if you produce a maximum intensity projection file.

### Organization

Within an experiment's data folder, there will be a few iterations of analysis and data formats to keep track of. Make sure you sync any analyses across your data management systems -- see the "3-2-1" system below. One general example is as follows:

- Folder describing the experiment (e.g. "Sox9KD_SMPD3Enh3Activity" -- everything pertaining to the effect of Sox9 knockdown on SMPD3Enh3 activity)
  - Experiment folder name: YYYYMMDD (experiment start date) and details as above
    - "czi" -- folder containing the raw microscopy data, often in .czi format from Zeiss microscopes
    - "jpgs" -- folder containing jpeg exports of raw data -- useful for quick flipping through what each image shows
    - "measurements" -- folder containing .csv files that include measured numbers from our images
    - "rois" -- folder containing saved ImageJ/FIJI ROI files and exported images showing ROI positions
  - FIJI Export Macro -- save the version of code used to produce the jpeg exports for this experiment
  - FIJI Analysis Macro -- save the version of code used to produce the ROIs and measurements for this experiment
  - Data Analysis Workbook -- R, Python, or Excel file where you analyzed the data
  - Final analyzed data table (.csv format)
  - "raw_source_data" -- folder compiling all the measurement files from the experiment; this allows a "one stop source" of numbers for analysis
  - Extras: graphs or representative images that encapsulate the results of the experiment

Example experiment data folder:

{% include figure.liquid path="assets/img/handbook/data-folder-example.png" title="Example experiment data folder structure" class="img-fluid rounded" alt="Annotated example folder structure showing an experiment folder broken into dated subfolders, each containing czi, jpgs, measurements, and rois folders, plus macros and analysis files at the top level." %}

### Storage

It is critical to store data in a format that is Findable, Accessible, Interoperable, and Reusable (FAIR). "Lost" data is as good as the experiment having never been performed, and this can result from a hard drive failure when the data is stored in one place, or data can be "lost" because the labeling is unclear and we can't trace back the experiment's details. Further, sustained good Data Management practices is a requirement for our federal funding.

*During the project:* We use a 3-2-1 storage plan: 3 copies, in at least 2 physical locations, over more than 1 type of device. This is achieved by storing your data on your individual computer, on lab-provided external hard drives, and on our lab's Network Attached Storage (NAS) server. Everyone is required to update and sync their data across these three platforms on a monthly basis, and more frequently is better. Never trust that data on a microscope computer will still be there after you walk away -- this is NOT a long term data storage solution, and these are prone to crash; take your data with you when you're done imaging and get it into your 3-2-1 system!

*After the project:* While we are publishing a project, we will deposit our data in a globally-accessible format. This takes two main shapes:

1. **GitHub:** we will publish all code used for analyzing images, processing and visualizing results, and the source data used in our [lab's GitHub repo](https://github.com/piacentinolab).
2. **JHU Research Data Repository:** we will compile all raw data (everything on GitHub AND all raw images, sequence data, etc included in the study analyses) and publish this in the Hopkins Research Data Repository. Here, professional staff will curate and keep this data Findable, Accessible, Interoperable, and Reusable (FAIR), make it available to the world, and assign a permanent DOI for the project.

*After your time in the lab:* When you leave the lab, we need to maintain your data in-house. Make sure you sync to the server and hard drives before you leave and turn in your hard drives to Mike during off-boarding.

## Authorship {#authorship}

We follow the APA guidelines for authorship credit:

> "Authorship credit should reflect the individual's contribution to the study. An author is considered anyone involved with initial research design, data collection and analysis, manuscript drafting, and final approval. However, the following do not necessarily qualify for authorship: providing funding or resources, mentorship, or contributing research but not helping with the publication itself. The primary author assumes responsibility for the publication, making sure that the data are accurate, that all deserving authors have been credited, that all authors have given their approval to the final draft; and handles responses to inquiries after the manuscript is published."

In general, the trainee leading a project will be first author on resulting publications, and Mike will be last author. Lab members who contribute meaningfully over the course of the project may be included as co-authors, with authorship order determined in consultation with all contributors. If a project is handed off to another person before completion, first authorship will likely transfer to the individual who brings the study through to publication.

If you leave the lab with unfinished work, discuss with Mike whether you plan to continue leading the project through writing and potential revisions, or whether those responsibilities should be reassigned. In that case, authorship may be revisited -- retaining first authorship will depend on how much remains to be done to bring the work to publication.

In collaborative projects with other labs, final author placement may vary. For example, an external PI may be listed last, with Mike second-to-last, and Piacentino Lab contributors in middle-author positions. Authorship expectations for collaborations will be discussed at the outset and re-evaluated as the project progresses.

Discussing authorship early is helpful, but research is dynamic -- roles and contributions can shift. Authorship should be revisited regularly and discussed openly. If you have questions or concerns about your authorship status on any project, talk to Mike -- transparency and fairness are essential.
