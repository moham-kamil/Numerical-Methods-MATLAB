# Numerical Methods MATLAB

This repository contains a collection of MATLAB scripts implementing fundamental algorithms in Numerical Analysis. These methods are essential for solving mathematical problems that cannot be easily solved using analytical techniques.

## Getting Started

To use these scripts, you need **MATLAB** installed on your system.

1. Clone or download this repo.
3.  Run any script directly from the MATLAB command window or by opening the file and clicking the "Run" button.

---

## Repository Structure

The scripts are organized into directories:

* **`01_Root_Finding`**: Methods for finding the roots of a function $f(x)=0$.
* **`02_System_of_Equations`**: Methods for solving systems of linear equations.
* **`03_Interpolation`**: Methods for constructing a continuous function through discrete data points.
* **`04_Numerical_Integration`**: Methods for approximating definite integrals.
* **`05_Power_series`**: Implementations of series expansion.

| Directory | File Name | Description |
| :--- | :--- | :--- |
| **`01_Root_Finding`** | `Secant_method_1.m` | Basic implementation of the Secant method. |
| | `Secant_method_2.m` | Modified Secant method with an interval search feature and detailed iteration table output. |
| **`02_System_of_Equations`** | `Gauss_method.m` | Implementation of **Gauss Elimination** for solving systems of linear equations, including pivoting and rank analysis. |
| | `LU_decomposition.m` | Implementation of **LU Decomposition** (Doolittle variant) for solving systems of equations. |
| **`03_Interpolation`** | `lagrange_interpolation.m` | Constructs the **Lagrange Interpolation Polynomial** and interpolates given data points. |
| | `newton_interpolation.m` | Calculates divided differences to construct the **Newton's Divided Difference Interpolation Polynomial**. |
| **`04_Numerical_Integration`** | `1_3_Simpson.m` | Implementation of the **Simpson's 1/3 Rule** for numerical integration. |
| | `3_8_Simpson_1.m` | Basic implementation of the **Simpson's 3/8 Rule** for a fixed number of points ($n=4$). |
| | `3_8_Simpson_2.m` | General implementation of the **Simpson's 3/8 Rule** for any number of points that is a multiple of three. |
| **`05_Power_series`** | `Maclaurin_series.m` | Calculates the **Maclaurin Series** expansion (a special case of Taylor series) for the function $\sin(x)$. |

---
