# OperationsResearch-LogisticsAnalysis

## Description

The Pars company aims to optimize its after-sales service logistics for electronic device repairs. The service network includes:

- **Collection Centers** for product returns.
- **Repair Centers** for inspections and repairs.
- **Production Sites** for spare parts and replacements.

### Logistics Network

- **Collection Centers:** 20 local warehouses.
- **Repair Centers:** Selected from 8 distribution centers.
- **Production Sites:** 3 locations providing spare parts.

### Key Assumptions

- The company provides after-sales services for three types of products.
- There are three production sites in the network for supplying spare parts and replacement products.
- The maximum number of repair equipment that can be allocated within the network is 269.
- Each repair center can be allocated a maximum of 130 repair equipment.
- The repair times for each type of product by the repair equipment are 8, 10, and 12 time units, respectively.
- One out of every five defective products referred for repair needs to be replaced with a new product.
- Three out of every ten defective products referred to the repair centers require a component replacement with a spare part.
- Information related to the return demand for each type of product, transportation costs between collection centers and repair centers, transportation costs between production sites and repair centers, and installation costs of each unit of repair equipment at each repair center are provided in the attached Excel file named "OR1 Project Data." In this file, 
  - \( p1, p2, p3 \) indicate the types of products,
  - \( c1, c2, ... , c20 \) indicate the collection centers,
  - \( f1, f2, ... , f8 \) indicate the candidate locations for the repair centers, and 
  - \( m1, m2, m3 \) indicate the production sites.
- Each type of returned product from each collection center should only be sent to one repair center.

# Conclusion
In this project, we optimized the management of repairs and the movement of returned products using a mathematical model. The optimal value of the objective function was determined to be almost 180,000.

Sensitivity analysis revealed the impacts of parameter changes on the optimal results. Additionally, variations in installation costs for equipment and the maximum number of available equipment at repair centers significantly affected the overall cost. These findings can aid in improving decision-making in supply chain management and after-sales services.

