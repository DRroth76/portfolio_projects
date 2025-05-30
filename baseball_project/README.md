# Baseball Pitch Simulation and Analysis

This project simulates baseball at-bats and full games based on real-world pitch count data, pitch types, and outcomes. It uses statistical modeling, machine learning, and custom probability adjustments to analyze pitch effectiveness and simulate full 9-inning games across multiple seasons.

---

## Project Objectives

- Model pitch-type decisions based on count-specific probabilities.
- Analyze pitch outcomes (strike, ball, ball in play, etc.) by pitch type and count.
- Simulate realistic baseball games using dynamically adjusted probabilities.
- Evaluate pitch sequences, outcomes, and game-level statistics (ERA, WHIP, hits, walks).
- Visualize pitch trends and identify optimal pitch sequences for outs.

---

## Key Features

- **Probability Modeling:** Calculates outcome probabilities using historical pitch data by count and pitch type.
- **Granular Adjustments:** Modifies ball-in-play probabilities based on outs and base state (e.g., boosts double play chances with a runner on first).
- **Game Simulation Engine:** Simulates at-bats, innings, and full games with pitch-by-pitch tracking.
- **Multi-Season Analysis:** Simulates multiple seasons, collecting team metrics over time.
- **Pitch Sequence Analytics:** Evaluates which 2- and 3-pitch combinations most frequently result in outs or strikeouts.
- **ML Classification:** Uses logistic regression and random forest to predict pitch success based on features like count, pitch type, and previous pitch.

---

## Visualizations

- Heatmaps showing strike and out probabilities by pitch type and count
- Bar charts of game-by-game and season totals for runs, walks, hits, strikeouts
- 3D scatter plots of pitch sequences by success rate
- Success heatmaps of 2- and 3-pitch combinations

---

## Tools & Libraries

- Python (pandas, numpy, matplotlib, seaborn, plotly)
- Jupyter Notebook
- Scikit-learn (Logistic Regression, Random Forest)
- SciPy (Chi-Square Test)
- tqdm (progress tracking)

---

## Project Structure

baseball_project/
│
├── 0_0/, 0_1/, ..., 3_2/ # Individual count-based data folders
├── capstone_analysis.ipynb # Main notebook: cleaning, analysis, simulation
├── capstone_analysis.html/pdf # Rendered version of the notebook
├── all_pitches_combined.csv # Combined pitch dataset
├── capstone_steps_process.txt # Summary of modeling steps and logic
└── README.md # Project overview

## Results Summary

- **Simulated Seasons:** 15 seasons of 32 games
- **Tracked Metrics:** ERA, WHIP, Hits/9, Walks/9, Strikeouts/9
- **Optimal Pitch Combos:** Identified top-performing sequences for generating outs
- **ML Performance:** Classifiers achieved strong AUC-ROC and precision scores in predicting positive outcomes (outs)

---

## Use Cases

- **Scouting & Coaching:** Identify optimal pitch sequences by count to maximize outs.
- **Broadcast Analysis:** Enhance game commentary with data-driven pitch predictions.
- **Simulation Games:** Use pitch probabilities to simulate AI behavior in baseball video games.

---

## Future Improvements

- Include batter context (handedness, swing %)
- Add pitcher fatigue modeling
- Integrate more detailed batted-ball outcomes (e.g., groundball/flyball/launch angle)

