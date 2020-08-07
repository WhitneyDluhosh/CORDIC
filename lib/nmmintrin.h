#ifndef _NMMINTRIN_H_INCLUDED
#define _NMMINTRIN_H_INCLUDED

#ifndef __SSE4_2__
# error "SSE4.2 instruction set not enabled"
#else
/* We just include SSE4.1 header file.  */
#include <smmintrin.h>
#endif /* __SSE4_2__ */

#endif /* _NMMINTRIN_H_INCLUDED */