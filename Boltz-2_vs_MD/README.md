### This repository contains structural models and comparative analyses of nine second-shell mutants of MtbThyX generated using two different approaches:
1. Boltz-2 structure prediction  
2. Alchemical molecular dynamics (MD) simulations  

### The main goal of this study is to evaluate how well Boltz-2-predicted structures capture the structural changes induced by mutations, as observed in physically rigorous molecular dynamics (MD) simulations. Additionally, this study assesses the effectiveness of modern structure-prediction methods for analysing mutation-induced perturbations in enzyme active sites.
---

## Directory Structure

- `Boltz-2_Mutants/` — Contains structural models of all mutants predicted using Boltz-2, along with the wild-type crystal structure used as a reference. PyMOL session (`.pse`) files are also included to facilitate structural analyses and visualization.

  ### Subdirectories
  - `WT/`
  - `Y108F/`
  - `Y108S/`
  - `Y44A/`
  - `Y44F/`
  - `Q106A/`
  - `T181A/`
  - `T181S/`
  - `T181F/`
  - `T181L/`

 ### Additional Subdirectory
  - `Boltz-2_MD/` — Contains molecular dynamics (MD) simulation structures generated using Boltz-2-predicted mutant structures as starting models

 - `MD_Mutants/` — Contains representative mutant structures obtained from alchemical molecular dynamics (MD) simulations for comparison. PyMOL session (`.pse`) files are also included to facilitate structural analyses and visualization.

   ### Subdirectories
  - `Y108F/`
  - `Y108S/`
  - `Y44A/`
  - `Y44F/`
  - `Q106A/`
  - `T181A/`
  - `T181S/`
  - `T181F/`
  - `T181L/`
