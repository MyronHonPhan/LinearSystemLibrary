#include "Vector.h"
#include <iostream>
#include <cassert>
#include <cmath>

Vector::Vector(const Vector& otherVector) {
    mSize = otherVector.GetSize();
    mData = new double[mSize];
    for (int i = 0;i<mSize;i++) {
        mData[i] = otherVector.mData[i];
    }
}

Vector::Vector(int size) {
    assert(size >0);
    std::cout <<"Constructed this Vector!" <<std::endl;
    mSize = size;
    mData = new double [mSize];
    for (int i = 0; i < mSize;i++) {
        mData[i] = 0.0;
    }
}
Vector::~Vector() {
    std::cout <<"Deleted this Vector!" <<std::endl;
    delete[] mData;
}

int Vector::GetSize() const{
    return mSize;
}

double& Vector::operator[](int i) {
    assert(i > -1);
    assert(i <mSize);
    return mData[i];
}

double Vector::Read(int i) const {
    assert(i > -1);
    assert(i <mSize);
    return mData[i];
}

double& Vector::operator()(int i) {
    assert(i > -1);
    assert(i <mSize);
    return mData[i-1];
}

Vector& Vector::operator=(const Vector& otherVector) {
    assert(mSize == otherVector.mSize);
    for (int i = 0; i<mSize;i++) {
        mData[i] = otherVector.mData[i];
    }
    return *this;
}

Vector Vector::operator+() const {
    Vector v(mSize);
    for (int i = 0; i < mSize ; i++) {
        v[i] = mData[i];
    }
    return v;
}

Vector Vector::operator-() const {
    Vector v(mSize);
    for (int i = 0; i < mSize ; i++) {
        v[i] = -mData[i];
    }
    return v;
}

Vector Vector::operator+(const Vector& v1) const{
    assert(mSize == v1.mSize);
    Vector v(mSize);
    for (int i =0 ; i<mSize;i++) {
        v[i] = mData[i] + v1.mData[i];
    }
    return v;
}

Vector Vector::operator-(const Vector& v1) const{
    assert(mSize == v1.mSize);
    Vector v(mSize);
    for (int i=0; i<mSize;i++) {
        v[i] = mData[i] - v1.mData[i];
    }
    return v;
}

double Vector::CalculateNorm(int p) const {
    double norm_val, sum = 0.0;
    for (int i =0;i<mSize;i++) {
        sum += pow(fabs(mData[i]),p);
    }
    norm_val = pow(sum,1.0/(double)(p));
    return norm_val;
}

int length(const Vector& v) {
    return v.mSize;
}

void Print(int a) {
    std::cout<<a<<std::endl;
}

int main() {
    std::cout <<"Hello" <<std::endl;
    int a =10;
    Vector v(a);
    Vector v1(a);
    v[0] = 100;
    std::cout<<v[0]<<std::endl;
    Vector hello = v + v1;
    std::cout << length(hello) <<std::endl;
}