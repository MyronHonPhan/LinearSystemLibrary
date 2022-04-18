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
};