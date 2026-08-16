# Bandgap Reference (BGR) - Sky130

This repo holds all the design files, simulation results, layouts, and verification reports for my Bandgap Reference (BGR) circuit built using the Sky130 PDK.

## Project Structure
- [Schematic/](Schematic/) - Contains the pre-layout schematic netlist and testbench setups.
- [Layout/](Layout/) - Contains the Magic layout and extracted PEX netlist.
- [LVS/](LVS/) - Contains the LVS netlist and final comparison output report.
---

## 1. Schematic & Pre-Layout Simulations

### Reference Voltage & Breakdowns
* Combined Output Curves:
  ![VREF+PTAT+CTAT](https://github.com/user-attachments/assets/02180d22-94c9-4e9c-baf8-6b0e15d64400)
  
* Reference Voltage Curve (`VREF`):
  ![VREF](https://github.com/user-attachments/assets/5e47d185-63a7-4998-ad05-6405e7e66616)

### Temperature Behavior (CTAT & PTAT)
* CTAT Analysis: 
  ![CTAT Slope](https://github.com/user-attachments/assets/e07d911a-09b7-4e92-a7d2-e32190a8cf16)
  ![CTAT Curve](https://github.com/user-attachments/assets/7b96fc7f-da34-4858-8a2e-f0433aeed6df)

* PTAT Analysis: 
  ![PTAT Slope](https://github.com/user-attachments/assets/40628c78-2252-4c60-92bd-ff4f0062b2ca)

  ![PTAT Curve](https://github.com/user-attachments/assets/3e4349c0-4687-4249-ad2d-993d711f9cf3)

### Performance Metrics
* Line Regulation Curve: 
  ![Line Regulation](https://github.com/user-attachments/assets/7181771e-119b-430e-81d5-78a2a47254c6)
* Transient Response Curve: 
  ![TRAN](https://github.com/user-attachments/assets/1e940aa4-ba71-4953-b78f-640e33ad21cc)
* Current Probe Curve: 
  ![CURRENT PROBE](https://github.com/user-attachments/assets/1ae257cd-4e55-42ff-890c-2383b86c4eb7)
* VREF at 27°C: 
  ![VREF VALUE AT 27](https://github.com/user-attachments/assets/b1195c3e-d400-4cb5-ad55-3588d0588fa8)

---

## 2. Physical Layout & Verification

* DRC Results & Error Count:
  ![DRC CHECK](https://github.com/user-attachments/assets/e20ac016-0422-4c2d-b0aa-f6c39674a231)
  ![DRC COUNT](https://github.com/user-attachments/assets/f4827567-7d73-4ce6-8f1d-1d4c0a7e2432)

* LVS Setup & Final Match:
  ![LVS CODE](https://github.com/user-attachments/assets/a4a77ae7-5d5e-4f6e-8262-926f4824313c)
  ![LVS RESULT](https://github.com/user-attachments/assets/ffd4ecf3-b584-46b1-baae-a87c28f20fa2)

---

## 3. Post-Layout Extraction (PEX)

* Post-Layout VREF Output:
  ![POST SIMULATION VREF](https://github.com/user-attachments/assets/ac4e405d-bb64-4875-8ecf-da193d5db8c0)
