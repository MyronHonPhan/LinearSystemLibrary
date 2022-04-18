#ifndef MATRIXHEADERDEF
#define MATRIXHEADERDEF
#include "Vector.h"

class Matrix {
private:
    double** mData;
    int mNumRows, mNumCols;
public:
    Matrix(const Matrix& otherMatrix);
    Matrix(int numRows, int numCols);
    ~Matrix();
    int GetNumberOfRows() const;
    int GetNumberOfCols() const;
    double& operator()(int i, int j);
    
    Matrix& operator=(const Matrix& otherMatrix);
    Matrix operator+() const;
    Matrix operator-() const;
    Matrix operator+(const Matrix& m1) const;
    Matrix operator-(const Matrix& m1) const;
    Matrix operator*(double a) const;
    double CalculateDeterminant() const;
    friend Vector operator*(const Matrix& m, const Vector& v);
    friend Vector operator*(const Vector& v, const Matrix& m);
};

#endif