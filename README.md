# Tableau Connector Testing Model

This repository contains a **semantic model designed specifically for
testing AtScale’s Tableau Connector**. It provides the assets necessary
to validate how AtScale models interact with Tableau through published
TDS files.

------------------------------------------------------------------------

## 📌 Overview

AtScale’s Tableau Connector enables Tableau to connect directly to
AtScale semantic models and query them as if they were native data
sources. Using this model and its associated assets, you can test and
verify connector behavior, performance, and compatibility with Tableau
Desktop and Server workflows.

This model is built in accordance with the **Semantic Modeling Language
(SML) specification**, as defined here:
https://github.com/semanticdatalayer/SML

SML is an open, YAML‑based semantic modeling language used to define
dimensions, metrics, relationships, and model metadata.

------------------------------------------------------------------------

## 📁 Repository Structure

. ├── data/ \# Data files and DDL scripts to load sample data  
├── tds/ \# Tableau Data Source (.tds) files  
├── models/ \# SML model definitions  
├── catalog.yml \# SML catalog configuration  
└── README.md \# This file

### 🔹 data/

Contains the **data files and DDL scripts** needed to load sample data
into your test database. Use these to prepare the data environment that
backs this model.

------------------------------------------------------------------------

### 🔹 tds/

Contains one or more **Tableau Data Source (.tds) files**. These files
define the Tableau connection to the deployed AtScale model and allow
Tableau Desktop or Server to consume the semantic model.

------------------------------------------------------------------------

## 📘 About the SML Specification

This model is written based on the **SML (Semantic Modeling Language)
specification** defined in the Semantic Data Layer repository:

https://github.com/semanticdatalayer/SML

SML provides a standardized way to define:

-   Metrics  
-   Dimensions  
-   Relationships  
-   Hierarchies  
-   Model metadata

------------------------------------------------------------------------

## 🚀 Getting Started

### 1️⃣ Clone the Repository

``` bash
git clone https://github.com/AtScale-Models/tableau_connector_testing.git
cd tableau_connector_testing
```

### 2️⃣ Load the Data

1.  Review the scripts in the `data/` directory.  
2.  Execute the DDL scripts to create and populate tables in your test
    database.

### 3️⃣ Deploy the Model

1.  Import the SML model files into your AtScale (or SML-compatible)
    environment.  
2.  Validate and deploy the model.

### 4️⃣ Connect with Tableau

Open the `.tds` file from the `tds/` directory in **Tableau Desktop** to
connect to the deployed AtScale model.

------------------------------------------------------------------------

## 🛠️ Purpose

This repository exists to:

-   Test AtScale’s Tableau Connector  
-   Validate semantic model compatibility  
-   Verify metric and dimension behavior in Tableau  
-   Support connector QA and regression testing

------------------------------------------------------------------------

## 🤝 Contributing

Contributions are welcome. Please submit issues or pull requests to
improve the model, test coverage, or documentation.

------------------------------------------------------------------------

## 📄 License

See the LICENSE file in the repository for licensing details.
