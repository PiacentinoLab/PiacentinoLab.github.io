---
layout: page
title: research
permalink: /research/
description: How do cells change their membranes to change their fate?
nav: true
nav_order: 2
---

<div class="research-page" markdown="1">

<div class="research-section" markdown="1">

## The neural crest: a stem cell population that breaks the rules

<div class="row align-items-center research-media-row" markdown="1">
<div class="col-sm-6" markdown="1">

Over the course of development, a single fertilized cell gives rise to trillions of cells organized into tissues, organs, and systems — a process that depends on progenitor populations that migrate, change identity, and build structures far from where they originated. Our lab focuses on one of the most important of these populations: the **neural crest**.

Neural crest cells are multipotent stem cells specific to vertebrate embryos, and they arise from the ectoderm but they don't play by the ectoderm's rules. Ectoderm classically gives rise to skin and the nervous system, while structures like bone, cartilage, and smooth muscle generally come from the mesoderm. Neural crest cells break that convention: after undergoing an epithelial-to-mesenchymal transition (EMT), delaminating, and migrating throughout the embryo, they go on to build much of our craniofacial skeleton and other typically-mesodermal tissues, alongside the peripheral nervous system, secretory cells of the adrenal gland, portions of the cardiovascular system, and even the melanocytes in our skin.

Because neural crest cells contribute to so many different structures, disruptions to their formation, migration, or differentiation are responsible for as many as **1 in 3 congenital anomalies** — including cleft lip/palate, Hirschsprung disease, Waardenburg syndrome, and cancers such as neuroblastoma. We study normal neural crest development because understanding the normal program is what allows us to recognize, prevent, and eventually treat what happens when it goes wrong.

</div>
<div class="col-sm-6">
{% include video.liquid path="assets/video/wm-timelapse.mp4" class="img-fluid rounded z-depth-1 lab-media research-media-narrow" autoplay=true controls=true loop=true muted=true poster="assets/img/research/wm-timelapse-poster.jpg" %}
<div class="caption">Whole-mount timelapse of neural crest (green) migrating away from the neural tube in a developing chicken embryo.</div>
</div>
</div>

</div>

<div class="research-section" markdown="1">

## EMT and migration: a developmental window into a broader cell biology

<div class="row align-items-center research-media-row" markdown="1">
<div class="col-sm-6">
{% include figure.liquid path="assets/img/research/mig-merge.jpg" title="Neural crest cells delaminating from the neural tube" class="img-fluid rounded z-depth-1" %}
<div class="caption">Cross-section of the neural tube: neural crest cells (magenta) delaminate from the surrounding neuroepithelium (cyan). Delamination and migration is proceeding normally on the left, but CRISPR/Cas9-mediated inhibition of nSMase2 expression blocks delamination on the right side.</div>
</div>
<div class="col-sm-6" markdown="1">

Neural crest cells undergo a classic EMT and make some of the longest cell migrations in the body, making them a powerful *in vivo* model for studying EMT and cell migration more generally. Many of the same EMT programs that neural crest cells use during normal development are redeployed by cancer cells during invasion and metastasis. We take advantage of this: our use of developmental and cancer cell model systems in parallel act as natural comparison points to better understand and treat normal development and disease states.

</div>
</div>

</div>

<div class="research-section" markdown="1">

## An emerging layer of regulation: lipid metabolism

<div class="row align-items-center research-media-row" markdown="1">
<div class="col-sm-6" markdown="1">

A growing body of work has linked dysregulated lipid metabolism to EMT and metastasis in cancer. We recently found that lipid metabolism is *developmentally* reprogrammed in neural crest cells as well — some of the same enzymes and lipid species implicated in cancer invasion turn out to be under precise developmental control during normal embryogenesis.

Our first two papers laid the foundation for this idea. We showed that **nSMase2** (encoded by *SMPD3*) is selectively upregulated in the neural crest right at the onset of EMT, where it generates ceramide at the plasma membrane. This local shift in membrane lipid composition drives receptor-mediated endocytosis of cadherins and Wnt/BMP signaling complexes, which in turn activates the pro-EMT transcriptional program (*SNAI2*, *SOX9*) and enables migration [(Piacentino et al., 2022)](https://doi.org/10.1073/pnas.2212879119). We then traced this back to the gene regulatory network controlling it: a *SMPD3* enhancer (Enh3) is directly bound by SOX10, with SOX9 acting upstream through SOX10, linking a core neural crest transcription factor circuit directly to a lipid-metabolizing effector gene [(Piacentino et al., 2024)](https://doi.org/10.1016/j.ydbio.2023.11.011).

</div>
<div class="col-sm-6">
{% include figure.liquid path="assets/img/research/lipid-heatmap.jpg" title="Lipid metabolizing gene expression heatmap" class="img-fluid rounded z-depth-1 research-media-narrow" %}
<div class="caption">Expression dynamics of lipid effector genes between premigratory and migratory avian neural crest cells.</div>
</div>
</div>

</div>

<div class="research-section" markdown="1">

## Open questions: what we're working on now

<div class="row align-items-center research-media-row" markdown="1">
<div class="col-sm-6">
{% include video.liquid path="assets/video/chick-nc-explant.mp4" class="img-fluid rounded z-depth-1 lab-media" autoplay=true controls=true loop=true muted=true poster="assets/img/research/chick-nc-explant-poster.jpg" %}
<div class="caption">Live imaging of a cultured chick neural crest explant, used to track membrane dynamics during cell migration outside the embryo.</div>
</div>
<div class="col-sm-6" markdown="1">

This finding shapes the questions that drive most of our current projects:

- How do developmental gene regulatory networks drive changes in lipid metabolism over time?
- What is the mechanistic role of specific, differentially regulated lipid species in development and disease?
- How does changing lipid content reshape membrane form and function — and how does that, in turn, feed back on cell behavior?

We're pursuing these questions on multiple fronts, from a project on how the lipid-binding protein ApoD regulates otic placode specification, to differential lipidomic profiling comparing developmental and cancer EMT models. By integrating membrane biochemistry and biophysics — asking how altered lipid composition changes physical membrane properties like fluidity and curvature — with classic cell signaling and migration studies, we take a unique approach toward understanding fundamental questions in neural crest development.

</div>
</div>

</div>

<div class="research-section" markdown="1">

## Our Approach

<div class="row align-items-center research-media-row" markdown="1">
<div class="col-sm-6" markdown="1">

We combine work in the **chick embryo** (*Gallus gallus*), our primary *in vivo* model system, with *in vitro* studies in cancer cell lines and human pluripotent stem cell-derived organoids and neural crest cells. Chick embryos are experimentally accessible and easily manipulated *in ovo*, letting us follow neural crest cells from neurulation through early migration with fine spatial and temporal control.

To ask these questions, we use a range of approaches:

- **Embryonic microsurgery and electroporation** to perturb gene regulatory network components and lipid-metabolizing enzymes directly in the embryo
- **Live imaging** of EMT and migration in whole mount and *ex vivo*, using fluorescent labels to track cell movements and biosensors to study molecular pathways of interest
- **Lipidomic profiling** to identify and track specific lipid species across development and disease
- **Membrane biophysical characterization** to link lipid composition to physical membrane properties
- **Single-cell and bulk sequencing and computational analysis** to define the transcriptional programs that regulate neural crest development
- **_In vitro_ modeling** to test whether mechanisms uncovered in the embryo hold in human cellular contexts

Together, these approaches let us move from gene regulatory network to metabolic enzyme to membrane biophysics to cell behavior — and back to the congenital anomalies and cancers that result when any part of this chain breaks down.

</div>
<div class="col-sm-6">
{% include figure.liquid path="assets/img/research/smpd3-soxe-preview.jpg" title="SOXE transcription factor expression in the neural tube" class="img-fluid rounded z-depth-1" %}
<div class="caption">Cross-section of the neural tube showing activity of two <i>SMPD3</i> enhancers, one active in the neural tube (magenta) and another active in the migrating neural crest (cyan), during embryonic development.</div>
</div>
</div>

</div>

<div class="research-section" markdown="1">

### Thank you to the folks funding our work!

1. National Institute of Dental and Craniofacial Research (NIDCR): R00 (MLP) and F31 (MPJ)
2. National Institute of General Medical Sciences (NIGMS): R35 (MLP)
3. Emerald Foundation, Inc. Young Investigator Award (MLP)
4. Vivian Thomas Scholars Initiative (SRP)

</div>

</div>
