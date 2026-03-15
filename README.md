# About Repository:
This repository contains the PSIM simulation file used and MATLAB CODE for Figures 9(a)-9(c) in our paper titled "A High Step-up Single-switch based Cubic-gain DC–DC Converter for PV Applications".

# ABSTRACT: 
The growing use of renewable energy sources (RES’s), particularly photovoltaic(PV) systems, has increased the need for efficient high step-up DC–DC converters. This paper proposes a single switch cubic-gain (SSCG) converter capable of achieving a high voltage gain with minimal circuit complexity. The proposed converter achieves cubic voltage gain through the integration of a quadratic boost converter(QBC) combined with a voltage-lift technique, enabling substantial voltage boosting using only a single switch. Detailed steady-state analysis are carried out under both continuous and discontinuous conduction modes, along with an evaluation of the influence of non-ideal components on practical voltage gain and efficiency. The comparison results with the existing converter topologies highlight the distinctive advantages of the SSCG converter, including the simple structure, minimum total component count, continuous input current, common ground configuration, and high step-up capability. A 48/400 V, 50 kHz, 200 W hardware prototype is developed and experimentally verified, demonstrating close agreement with theoretical analysis. The results confirm that the proposed SSCG converter is a promising solution for high-gain photovoltaic energy conversion applications.

# Software Requirements: 
1. SSCG_Simulation_file requires PSIM Professional 2024.0.0.2471
2. MATLAB R2023b or later.

# Simulation file Design Specifications: 
Rating Simulation Details Input voltage 48 V PSIM Platform Time Step 10-7 sec Output Voltage 400 V Power 200 W Inductors L1=500 μH, L2=1.5 mH, L3=3 mH Capacitors C0=100 μF, C1=22 μF, C2=22 μF 
Diodes d1 (MBR10100), Diodes d2, d3, d4, d0 (MUR840G). Switch S (STW28N65M2).

# For Simulation Results Validation:
Open `SSCG_Simulation_file` in PSIM Professional 2024.0.0.2471 
- Simulate with the default config
- Output waveforms will be checked in `Run simview (Alt+F8)`
# For Matlab Code validation:
- Open "MATLAB R2023b or later" version
- Run the code
- Figures concerning the code will be opened in a new window.
- Figures from 9(a) to 9(c) can be generated using the given matlab codes. Figure 11 demonstrate the experimental work.
- EI_VS_Duty_ratio_SSCG- Effectiveness index versus Duty ratio
- Gain_Vs_Duty_ratio_SSCG - Gain versus Duty ratio
- TCVS_Vs_Duty_ratio_SSCG- Total Capacitor Voltage Stress versus Duty ratio

# Contact:
For questions or replication of results: 

bj23eer1r05@student.nitw.ac.in
