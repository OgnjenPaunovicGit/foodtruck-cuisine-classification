# Changelog – Foodruck Cuisine Classification (BFTFed.)
This file documents the major changes made to the reference database since its initial open-data release.

---

## [1.0.0] – 2025-12-01
### Added
- First official open-data release of the BFTFED reference database.
- Addition of output formats:
  - SQL (structure + data)
  - CSV (export)
  - JSON (export)
- Addition of the **bilingual README (FR / EN)**.
- Addition of the **CC BY 4.0 license**.
- Setup of the dedicated `contributions/` directory to receive external suggestions.

### Data
- Integration of **158 culinary concepts** validated as of 30/11/2025.
- Included columns (aligned with the CSV file structure):
  - `concept_id` (Unique ID for the culinary concept)
  - `type`, `category`, `subcategory`
  - `language_FR`, `language_EN` (Multilingual labels)
  - `keywords`
  - `dietary_tags`
  - `date_updated`, `version`
  - `notes` (for status and other remarks)

---

## Pre-Release History (Internal)
> Prior to Version 1.0, the federation used the reference database internally for over 10 years. 
> Previous internal versions did not have official documentation or public version tracking.

---

## Template for Future Versions

### [X.Y.Z] – YYYY-MM-DD
#### Added
- ...

#### Changed
- ...

#### Removed
- ...

#### Data
- ...

---

**Semantic Versioning Format Used:**
MAJOR.MINOR.PATCH (e.g., 2.1.4)
For more details: [SemVer 2.0.0](https://semver.org/lang/en/)
