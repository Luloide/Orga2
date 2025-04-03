#include <stdio.h>
#include <stdint.h>

int main(){
    int8_t a = 35;
    int16_t b = 35;
    int32_t c = 35;
    int64_t d = 35;
    uint8_t e = 35;
    uint16_t f = 35;
    uint32_t g = 35;
    uint64_t h = 35;

    printf("int8_t(%lu): %d \n", sizeof(a),a);
    printf("int16_t(%lu): %d \n", sizeof(b),b);
    printf("int32_t(%lu): %d \n", sizeof(c),c);
    printf("int64_t(%lu): %ld \n", sizeof(d),d);
    printf("uint8_t(%lu): %d \n", sizeof(e),e);
    printf("uint16_t(%lu): %d \n", sizeof(f),f);
    printf("uint32_t(%lu): %d \n", sizeof(g),g);
    printf("uint64_t(%lu): %ld \n", sizeof(h),h);

    return 0;
}