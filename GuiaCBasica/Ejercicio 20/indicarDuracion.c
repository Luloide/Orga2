int b, c; // globales
void f(void)
{
    int b, d;// d dura solo en f, pero a es global
}

void g(int a){
    // tanto c como d duran solo en f pero a es global
    int c;
    {   
    int a, d; 
    }
    }