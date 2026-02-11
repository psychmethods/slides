# Excel ANOVA Lab - Answer Keys

This directory contains answer keys for the Excel ANOVA Lab exercises. These files show the complete solutions with all formulas filled in.

## Answer Key Files

### Task 1: One-Sample T-Test
**File**: `IrisData_Answers.xlsx`

Tests whether the mean Sepal.Length equals 5.5.

**Formulas included:**
- Mean: `=AVERAGE(A2:A151)`
- Standard Deviation: `=STDEV.S(A2:A151)`
- Sample Size: `=COUNT(A2:A151)`
- T-Statistic: `=(Mean - 5.5) / (SD / SQRT(n))`
- P-Value: `=T.DIST.2T(ABS(t), df)`
- Automated conclusion based on α=0.05

### Task 2: Two-Sample T-Test
**File**: `Iris_TwoSample_TTest_Answers.xlsx`

Compares Sepal.Length between Versicolor and Virginica species.

**Formulas included:**
- Means for both groups
- Standard deviations for both groups
- Sample sizes for both groups
- Two-sample t-statistic
- Welch-Satterthwaite degrees of freedom
- Two-tailed p-value
- Automated conclusion based on α=0.05

### Task 3: One-Way ANOVA
**File**: `Iris_ANOVA_Answers.xlsx`

Tests for differences in Sepal.Length across all three species (Setosa, Versicolor, Virginica).

**Contents:**
- Data reorganized by species in separate columns
- Group statistics (count, mean, variance) for each species
- Complete ANOVA table with:
  - Sum of Squares (Between and Within Groups)
  - Degrees of Freedom
  - Mean Squares
  - F-statistic
  - P-value
- Automated conclusion based on α=0.05

## Usage Notes

### For Students
These answer keys are provided to help you check your work. Try to complete the lab exercises on your own first, then compare your results with these answer keys.

**Learning Tips:**
1. Complete each task using the blank data files first
2. Check your formulas against the answer key
3. Verify your numerical results match
4. Understand the interpretation of the results

### For Instructors
These files can be used to:
- Quickly verify student submissions
- Demonstrate correct solutions in class
- Provide as references after students complete the lab

## Expected Results

### Task 1 (One-Sample T-Test)
- Null Hypothesis: μ = 5.5
- Expected outcome: Reject H₀ (p < 0.05)
- Conclusion: Mean Sepal.Length significantly differs from 5.5

### Task 2 (Two-Sample T-Test)
- Null Hypothesis: μ₁ = μ₂ (Versicolor = Virginica)
- Expected outcome: Reject H₀ (p < 0.05)
- Conclusion: Significant difference between species

### Task 3 (One-Way ANOVA)
- Null Hypothesis: μ₁ = μ₂ = μ₃ (all species equal)
- Expected outcome: Reject H₀ (p < 0.05)
- Conclusion: At least one species mean differs from the others

## Technical Notes

All formulas use standard Excel functions:
- `AVERAGE()` - Calculate mean
- `STDEV.S()` - Sample standard deviation
- `COUNT()` - Count non-empty cells
- `VAR.S()` - Sample variance
- `SQRT()` - Square root
- `ABS()` - Absolute value
- `T.DIST.2T()` - Two-tailed t-distribution
- `F.DIST.RT()` - Right-tailed F-distribution
- `IF()` - Conditional logic

The formulas implement the statistical tests exactly as taught in the course materials.
