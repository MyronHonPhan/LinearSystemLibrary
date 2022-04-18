#include <cmath>
#include <cassert>
#include "Matrix.h"
#include "Vector.h"
#include <iostream>

Matrix::Matrix(const Matrix& otherMatrix) {
    mNumRows = otherMatrix.mNumRows;
    mNumCols = otherMatrix.mNumCols;
    mData = new double* [mNumRows];
    for (int i = 0; i < mNumRows;i++) {
        mData[i] = new double [mNumCols];
    }
    for (int i = 0; i < mNumRows; i++) {
        for (int j = 0; j < mNumCols; j++) {
            mData[i][j] = otherMatrix.mData[i][j];
        }
    }
}

Matrix::Matrix(int numRows, int numCols) {
    assert(numRows > 0);
    assert(numCols > 0);
    mNumRows = numRows;
    mNumCols = numCols;
    mData = new double* [mNumRows];
    
    for (int i = 0; i < mNumRows; i++) {
        mData[i] = new double [mNumCols];
    }

    for (int i = 0; i < mNumRows; i++) {
        for (int j = 0; j < mNumCols; j++) {
            mData[i][j] = 0.0;
        }
    }
}

Matrix::~Matrix() {
    for (int i = 0; i < mNumRows;i++) {
        delete[] mData[i];
    }
    delete[] mData;
}

int Matrix::GetNumberOfCols() const{
    return mNumCols;
}
int Matrix::GetNumberOfRows() const{
    return mNumRows;
}

double& Matrix::operator()(int i, int j) {
    assert(i > 0);
    assert(i < mNumRows - 1 );
    assert(j > 0);
    assert(j < mNumCols - 1);
    return mData[i-1][j-1];
}

Matrix& Matrix::operator=(const Matrix& otherMatrix) {
    assert(mNumCols == otherMatrix.mNumCols);
    assert(mNumRows == otherMatrix.mNumRows);
    
    for (int i = 0; i < mNumRows; i++ ) {
        for (int j = 0; j < mNumCols; j++) {
            mData[i][j] = otherMatrix.mData[i][j];
        }
    }
    return *this;
}

// Overloading the unary + operator
Matrix Matrix::operator+() const
{
   Matrix mat(mNumRows, mNumCols);
   for (int i=0; i<mNumRows; i++)
   {
      for (int j=0; j<mNumCols; j++)
      {
         mat(i+1,j+1) = mData[i][j];
      }
   }
   return mat;
}

// Overloading the unary - operator
Matrix Matrix::operator-() const
{
   Matrix mat(mNumRows, mNumCols);
   for (int i=0; i<mNumRows; i++)
   {
      for (int j=0; j<mNumCols; j++)
      {
         mat(i+1,j+1) = -mData[i][j];
      }
   }
   return mat;
}

// Overloading the binary + operator
Matrix Matrix::operator+(const Matrix& m1) const
{
   assert(mNumRows == m1.mNumRows);
   assert(mNumCols == m1.mNumCols);
   Matrix mat(mNumRows, mNumCols);
   for (int i=0; i<mNumRows; i++)
   {
      for (int j=0; j<mNumCols; j++)
      {
         mat(i+1,j+1) = mData[i][j] + m1.mData[i][j];
      }
   }
   return mat;
}

// Overloading the binary - operator
Matrix Matrix::operator-(const Matrix& m1) const
{
   assert(mNumRows == m1.mNumRows);
   assert(mNumCols == m1.mNumCols);
   Matrix mat(mNumRows, mNumCols);
   for (int i=0; i<mNumRows; i++)
   {
      for (int j=0; j<mNumCols; j++)
      {
         mat(i+1,j+1) = mData[i][j] - m1.mData[i][j];
      }
   }
   return mat;
}

// Overloading scalar multiplication
Matrix Matrix::operator*(double a) const
{
   Matrix mat(mNumRows, mNumCols);
   for (int i=0; i<mNumRows; i++)
   {
      for (int j=0; j<mNumCols; j++)
      {
         mat(i+1,j+1) = a*mData[i][j];
      }
   }
   return mat;
}

Vector operator*(const Matrix& m, const Vector& v) {
    int original_vector_size = v.GetSize();
    assert(m.GetNumberOfCols() == original_vector_size);
    int new_vector_length = m.GetNumberOfRows();
    Vector new_vector(new_vector_length);

    for (int i = 0; i < new_vector_length; i++) {
        for (int j = 0; j < original_vector_size; j++) {
            new_vector[i] += m.mData[i][j] * v.Read(j);
        }
    }
    return new_vector;
}

Vector operator*(const Vector& v, const Matrix& m)
{
   int original_vector_size = v.GetSize();
   assert(m.GetNumberOfRows() == original_vector_size);
   int new_vector_length = m.GetNumberOfCols();
   Vector new_vector(new_vector_length);

   for (int i=0; i<new_vector_length; i++)
   {
      for (int j=0; j<original_vector_size; j++)
      {
         new_vector[i] += v.Read(j)*m.mData[j][i];
      }
   }

   return new_vector;
}

int main(){
    int numRows = 10;
    int numCols = 3;
    Matrix m(numRows,numCols);


    return 0;
}