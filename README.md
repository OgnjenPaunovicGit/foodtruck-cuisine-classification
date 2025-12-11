# foodtruck-cuisine-classification (BelgianFoodTruckFederation.org)

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-blue.svg)](https://creativecommons.org/licenses/by/4.0/)
![Multilingual FR/NL/EN](https://img.shields.io/badge/Multilingual-FR%20%2F%20NL%20%2F%20EN-darkgreen)
![Open Data](https://img.shields.io/badge/Open%20Data-Yes-success)
![Dataset Version](https://img.shields.io/badge/Version-1.0.2-green)
![Format CSV](https://img.shields.io/badge/Format-CSV-orange)
![Format JSON](https://img.shields.io/badge/Format-JSON-lightgrey)
![Format SQL](https://img.shields.io/badge/Format-SQL-yellow)
![Format XML](https://img.shields.io/badge/Format-XML-blueviolet)

Standardized **open-data classification** of cuisine types used by food trucks in Belgium.  
Maintained by the **Belgian Food Truck Federation (BFTFed.)**.

Official website:  
➡️ https://www.belgianfoodtruckfederation.org

---

## 📘 About the Dataset
This dataset provides a **standardized, multilingual** (FR / NL / EN) nomenclature for classifying food trucks in Belgium.

### Objectives
- Provide a **clear taxonomy** of cuisine types.
- Facilitate classification for **events, municipalities, directories, and digital platforms**.
- Enable **reuse, adaptation, and extensions** by third parties.
- Improve harmonization across Belgium.

---

## 🔧 Data Structure

| Field          | Description |
|----------------|-------------|
| `type`         | Main cuisine category (e.g., “Burger”, “Asian”) |
| `category`     | Intermediate sub-category |
| `subcategory`  | Additional refinement |
| `keywords`     | Keywords used for search / tagging |
| `dietary_tags` | Diet-specific tags (vegan, halal, gluten-free…) |
| `language_FR`  | Label in French |
| `language_NL`  | Label in Dutch |
| `language_EN`  | Label in English |
| `version`      | Dataset version |
| `date_updated` | Last update date |
| `notes`        | Optional notes |

**Available Formats:** SQL, CSV, JSON, XML, YML  (Automatically generated.)

---

## 📦 License
This dataset is available under the **Creative Commons Attribution 4.0 International (CC BY 4.0)** license.

➡️ See the full text here:  
[LICENSE.md](LICENSE.md)

---

## 🛠️ Contributing
Contributions are welcome via:

- GitHub **Issues**
- GitHub **Pull Requests**
- Email: **support@bftfed.be**

When proposing changes, please specify:
- The **language(s)** concerned  
- The **modified or added fields**  
- The **motivation** (new cuisine, correction, etc.)

---

## 📄 Available Files
- `foodtruck-cuisine-classification-bftfed.sql`
- `foodtruck-cuisine-classification-bftfed.csv`
- `foodtruck-cuisine-classification-bftfed.json`
- `foodtruck-cuisine-classification-bftfed.yml`
- `foodtruck-cuisine-classification-bftfed.xml`
---

## 🌐 Recommended Usage
- Event / festival / market organizers  
- Municipalities, provinces  
- Food-truck registration platforms  
- Directories, apps, and websites  
- API and database integrations  

---

## 📁 Versioning
All versions are archived.  
Each entry includes:  
- `version` (e.g., `"1.0"`)  
- `date_updated` (ISO format)

---

**Maintained by:** Belgian Food Truck Federation (BFTFed.)  
**Contact:** support@bftfed.be
**Version:** 1.0.2
**Publication Date:** 2025-12-11
