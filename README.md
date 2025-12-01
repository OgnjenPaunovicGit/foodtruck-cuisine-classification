# foodtruck-cuisine-classification (BelgianFoodTruckFederation.org)
Standardized Open Data classification of the types of cuisine offered by Food Trucks in Belgium, managed by BelgianFoodTruckFederation.org
Whose official website is: [BelgianFoodTruckFederation.org](https://www.belgianfoodtruckfederation.org)

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-blue.svg)](https://creativecommons.org/licenses/by/4.0/)

### 📘 About the Dataset
This dataset is a **standardized reference** for the classification of cuisine types intended for food trucks. It is maintained by the Belgian Food Truck Federation (BFTFED).

#### Objectives
- To offer a **clear and multilingual nomenclature** (FR / NL / EN) for classifying food trucks.
- To facilitate uniform classification for **events, municipalities, platforms, directories, etc.**
- To allow for **reuse, adaptation, and extension** by other stakeholders (festivals, municipalities, developers, etc.).

### 🔧 Data Structure
| Field (Column) | Description |
|:---|:---|
| `type` | Main cuisine category (e.g., "Burger," "Asian," etc.) |
| `category` | Intermediate category if necessary (e.g., sub-type) |
| `subcategory` | Finer refinement (e.g., sub-sub-type) |
| `keywords` | Associated keywords for search / tagging |
| `dietary_tags` | Specific diets or mentions (vegan, halal, gluten-free, etc.) |
| `language_FR` | Label in French |
| `language_NL` | Label in Dutch |
| `language_EN` | Label in English |
| `version` | Internal version / version number |
| `date_updated` | Date of the last update |
| `notes` | Notes or context (optional) |

*Available Formats*: SQL, CSV, JSON, XML, YML (automatically generated).

### 📦 License
This dataset is distributed under the **CC BY 4.0** license — you are free to reuse, modify, and redistribute it, provided you credit BFTFED as the source.

**Consult the detailed terms and conditions here:**
[Dissemination License - English](LICENSE.md)

### 🛠️ Contributing / Proposing Modifications
We accept external contributions via:
- **Issues / Pull-requests** on GitHub,
- Any email contact via the Federation's address **support[at]bftfed.be**

When proposing an addition or correction, please indicate:
- the language concerned,
- the field(s) modified or added,
- the context / justification (e.g., new cuisine type, dietary requirement, etc.).

### 📁 Versioning
Every version of the table is archived. The version number and update date are indicated in the `version` or `date_updated` column.

### 📄 Available Formats
- `foodtruck-cuisine-classification-bftfed.sql` — SQL schema + data
- `foodtruck-cuisine-classification-bftfed.csv` — CSV export
- `foodtruck-cuisine-classification-bftfed.json` — JSON export
- `foodtruck-cuisine-classification-bftfed.yml` — YML export
- `foodtruck-cuisine-classification-bftfed.xml` — XML export

### 🌐 Recommended Use
- For event / festival / market organizers
- For municipalities / cities / provinces
- For directories or registration platforms for food trucks
- For mobile applications / websites / API referencing

---
