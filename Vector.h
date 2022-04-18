#ifndef VECTORHEADERDEF
#define VECTORHEADERDEF

class Vector {
private: 
    double* mData;  // data stored in vector
    int mSize;      // size of vector
public:
    Vector(const Vector& otherVector);
    Vector(int size);
    ~Vector();
    int GetSize() const;
    double& operator[](int i);
    double Read(int i) const;
    double& operator()(int i);

    Vector& operator=(const Vector& otherVector);
    Vector operator+() const;
    Vector operator-() const;
    Vector operator+(const Vector& v1) const;
    Vector operator-(const Vector& v1) const;
    double CalculateNorm(int p) const;
    friend int length(const Vector& v);
};

#endif