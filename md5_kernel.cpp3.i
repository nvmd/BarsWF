#line 1 "md5_kernel.cudafe2.gpu"





#line 7 "md5_kernel.cudafe2.gpu"

#line 476 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
typedef unsigned long long size_t;
#line 478 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 1 "D:\\my\\work\\cuda\\64\\tk\\include\\crt/device_runtime.h"







































#line 41 "D:\\my\\work\\cuda\\64\\tk\\include\\crt/device_runtime.h"

#line 1 "D:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"










































#line 44 "D:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"



















































#line 96 "D:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"










#line 107 "D:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"










#line 119 "D:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"














#line 134 "D:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"
#line 43 "D:\\my\\work\\cuda\\64\\tk\\include\\crt/device_runtime.h"












typedef const void *__texture_type__;

typedef const void *__surface_type__;















































































































































































































#line 266 "D:\\my\\work\\cuda\\64\\tk\\include\\crt/device_runtime.h"











#line 278 "D:\\my\\work\\cuda\\64\\tk\\include\\crt/device_runtime.h"

#line 1 "D:\\my\\work\\cuda\\64\\tk\\include\\builtin_types.h"









































#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\device_types.h"













































enum cudaRoundMode
{
  cudaRoundNearest,
  cudaRoundZero,
  cudaRoundPosInf,
  cudaRoundMinInf
};

#line 55 "d:\\my\\work\\cuda\\64\\tk\\include\\device_types.h"
#line 43 "D:\\my\\work\\cuda\\64\\tk\\include\\builtin_types.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\driver_types.h"














































































#line 80 "d:\\my\\work\\cuda\\64\\tk\\include\\driver_types.h"











enum cudaError
{
  cudaSuccess                           =      0,   
  cudaErrorMissingConfiguration         =      1,   
  cudaErrorMemoryAllocation             =      2,   
  cudaErrorInitializationError          =      3,   
  cudaErrorLaunchFailure                =      4,   
  cudaErrorPriorLaunchFailure           =      5,   
  cudaErrorLaunchTimeout                =      6,   
  cudaErrorLaunchOutOfResources         =      7,   
  cudaErrorInvalidDeviceFunction        =      8,   
  cudaErrorInvalidConfiguration         =      9,   
  cudaErrorInvalidDevice                =     10,   
  cudaErrorInvalidValue                 =     11,   
  cudaErrorInvalidPitchValue            =     12,   
  cudaErrorInvalidSymbol                =     13,   
  cudaErrorMapBufferObjectFailed        =     14,   
  cudaErrorUnmapBufferObjectFailed      =     15,   
  cudaErrorInvalidHostPointer           =     16,   
  cudaErrorInvalidDevicePointer         =     17,   
  cudaErrorInvalidTexture               =     18,   
  cudaErrorInvalidTextureBinding        =     19,   
  cudaErrorInvalidChannelDescriptor     =     20,   
  cudaErrorInvalidMemcpyDirection       =     21,   
  cudaErrorAddressOfConstant            =     22,   
  cudaErrorTextureFetchFailed           =     23,   
  cudaErrorTextureNotBound              =     24,   
  cudaErrorSynchronizationError         =     25,   
  cudaErrorInvalidFilterSetting         =     26,   
  cudaErrorInvalidNormSetting           =     27,   
  cudaErrorMixedDeviceExecution         =     28,   
  cudaErrorCudartUnloading              =     29,   
  cudaErrorUnknown                      =     30,   
  cudaErrorNotYetImplemented            =     31,   
  cudaErrorMemoryValueTooLarge          =     32,   
  cudaErrorInvalidResourceHandle        =     33,   
  cudaErrorNotReady                     =     34,   
  cudaErrorInsufficientDriver           =     35,   
  cudaErrorSetOnActiveProcess           =     36,   
  cudaErrorNoDevice                     =     38,   
  cudaErrorStartupFailure               =   0x7f,   
  cudaErrorApiFailureBase               =  10000    
};





enum cudaChannelFormatKind
{
  cudaChannelFormatKindSigned           =   0,      
  cudaChannelFormatKindUnsigned         =   1,      
  cudaChannelFormatKindFloat            =   2,      
  cudaChannelFormatKindNone             =   3       
};





struct cudaChannelFormatDesc
{
  int                        x; 
  int                        y; 
  int                        z; 
  int                        w; 
  enum cudaChannelFormatKind f; 
};





struct cudaArray;





enum cudaMemcpyKind
{
  cudaMemcpyHostToHost          =   0,      
  cudaMemcpyHostToDevice        =   1,      
  cudaMemcpyDeviceToHost        =   2,      
  cudaMemcpyDeviceToDevice      =   3       
};





struct cudaPitchedPtr
{
  void   *ptr;      
  size_t  pitch;    
  size_t  xsize;    
  size_t  ysize;    
};





struct cudaExtent
{
  size_t width;     
  size_t height;    
  size_t depth;     
};





struct cudaPos
{
  size_t x;     
  size_t y;     
  size_t z;     
};





struct cudaMemcpy3DParms
{
  struct cudaArray      *srcArray;  
  struct cudaPos         srcPos;    
  struct cudaPitchedPtr  srcPtr;    

  struct cudaArray      *dstArray;  
  struct cudaPos         dstPos;    
  struct cudaPitchedPtr  dstPtr;    

  struct cudaExtent      extent;    
  enum cudaMemcpyKind    kind;      
};





struct cudaFuncAttributes
{
   size_t sharedSizeBytes;  
   size_t constSizeBytes;   
   size_t localSizeBytes;   
   int maxThreadsPerBlock;  
   int numRegs;             
   int __cudaReserved[8];
};





enum cudaComputeMode
{
  cudaComputeModeDefault    =   0,  
  cudaComputeModeExclusive  =   1,  
  cudaComputeModeProhibited =   2   
};






struct cudaDeviceProp
{
  char   name[256];                 
  size_t totalGlobalMem;            
  size_t sharedMemPerBlock;         
  int    regsPerBlock;              
  int    warpSize;                  
  size_t memPitch;                  
  int    maxThreadsPerBlock;        
  int    maxThreadsDim[3];          
  int    maxGridSize[3];            
  int    clockRate;                 
  size_t totalConstMem;             
  int    major;                     
  int    minor;                     
  size_t textureAlignment;          
  int    deviceOverlap;             
  int    multiProcessorCount;       
  int    kernelExecTimeoutEnabled;  
  int    integrated;                
  int    canMapHostMemory;          
  int    computeMode;               
  int    __cudaReserved[36];
};



































typedef enum cudaError cudaError_t;





typedef int cudaStream_t;





typedef int cudaEvent_t;


 

#line 337 "d:\\my\\work\\cuda\\64\\tk\\include\\driver_types.h"
#line 44 "D:\\my\\work\\cuda\\64\\tk\\include\\builtin_types.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_types.h"












































#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\driver_types.h"















































































































































































































































































































































#line 337 "d:\\my\\work\\cuda\\64\\tk\\include\\driver_types.h"
#line 46 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_types.h"








enum cudaTextureAddressMode
{
  cudaAddressModeWrap,
  cudaAddressModeClamp
};


enum cudaTextureFilterMode
{
  cudaFilterModePoint,
  cudaFilterModeLinear
};


enum cudaTextureReadMode
{
  cudaReadModeElementType,
  cudaReadModeNormalizedFloat
};


struct textureReference
{
  int                          normalized;
  enum cudaTextureFilterMode   filterMode;
  enum cudaTextureAddressMode  addressMode[3];
  struct cudaChannelFormatDesc channelDesc;
  int                          __cudaReserved[16];
};

#line 85 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_types.h"
#line 45 "D:\\my\\work\\cuda\\64\\tk\\include\\builtin_types.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"












































#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"




































































































































#line 134 "d:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"
#line 46 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"











#line 58 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"












#line 72 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"







#line 80 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"


struct char1
{
  signed char x;
  
};


struct uchar1 
{
  unsigned char x;
  
};


struct __attribute__((__aligned__(2))) char2
{
  signed char x, y;
  
};


struct __attribute__((__aligned__(2))) uchar2
{
  unsigned char x, y;
  
};


struct char3
{
  signed char x, y, z;
  
};


struct uchar3
{
  unsigned char x, y, z;
  
};


struct __attribute__((__aligned__(4))) char4
{
  signed char x, y, z, w;
  
};


struct __attribute__((__aligned__(4))) uchar4
{
  unsigned char x, y, z, w;
  
};


struct short1
{
  short x;
  
};


struct ushort1
{
  unsigned short x;
  
};


struct __attribute__((__aligned__(4))) short2
{
  short x, y;
  
};


struct __attribute__((__aligned__(4))) ushort2
{
  unsigned short x, y;
  
};


struct short3
{
  short x, y, z;
  
};


struct ushort3
{
  unsigned short x, y, z;
  
};


struct __attribute__((__aligned__(8))) short4 { short x, y, z, w;  };


struct __attribute__((__aligned__(8))) ushort4 { unsigned short x, y, z, w;  };


struct int1
{
  int x;
  
};


struct uint1
{
  unsigned int x;
  
};


struct __attribute__((__aligned__(8))) int2 { int x, y;  };


struct __attribute__((__aligned__(8))) uint2 { unsigned int x, y;  };


struct int3
{
  int x, y, z;
  
};


struct uint3
{
  unsigned int x, y, z;
  
};


struct __attribute__((__aligned__(16))) int4
{
  int x, y, z, w;
  
};


struct __attribute__((__aligned__(16))) uint4
{
  unsigned int x, y, z, w;
  
};


struct long1
{
  long int x;
  
};


struct ulong1
{
  unsigned long x;
  
};




struct __attribute__((__aligned__(8))) long2 { long int x, y;  };


struct __attribute__((__aligned__(8))) ulong2 { unsigned long int x, y;  };

















#line 272 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"




struct long3
{
  long int x, y, z;
  
};


struct ulong3
{
  unsigned long int x, y, z;
  
};


struct __attribute__((__aligned__(16))) long4
{
  long int x, y, z, w;
  
};


struct __attribute__((__aligned__(16))) ulong4
{
  unsigned long int x, y, z, w;
  
};

#line 304 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"


struct float1
{
  float x;
  
};


struct __attribute__((__aligned__(8))) float2 { float x, y;  };


struct float3
{
  float x, y, z;
  
};


struct __attribute__((__aligned__(16))) float4
{
  float x, y, z, w;
  
};


struct longlong1
{
  long long int x;
  
};


struct ulonglong1
{
  unsigned long long int x;
  
};


struct __attribute__((__aligned__(16))) longlong2
{
  long long int x, y;
  
};


struct __attribute__((__aligned__(16))) ulonglong2
{
  unsigned long long int x, y;
  
};


struct double1
{
  double x;
  
};


struct __attribute__((__aligned__(16))) double2
{
  double x, y;
  
};








typedef struct char1 char1;

typedef struct uchar1 uchar1;

typedef struct char2 char2;

typedef struct uchar2 uchar2;

typedef struct char3 char3;

typedef struct uchar3 uchar3;

typedef struct char4 char4;

typedef struct uchar4 uchar4;

typedef struct short1 short1;

typedef struct ushort1 ushort1;

typedef struct short2 short2;

typedef struct ushort2 ushort2;

typedef struct short3 short3;

typedef struct ushort3 ushort3;

typedef struct short4 short4;

typedef struct ushort4 ushort4;

typedef struct int1 int1;

typedef struct uint1 uint1;

typedef struct int2 int2;

typedef struct uint2 uint2;

typedef struct int3 int3;

typedef struct uint3 uint3;

typedef struct int4 int4;

typedef struct uint4 uint4;

typedef struct long1 long1;

typedef struct ulong1 ulong1;

typedef struct long2 long2;

typedef struct ulong2 ulong2;

typedef struct long3 long3;

typedef struct ulong3 ulong3;

typedef struct long4 long4;

typedef struct ulong4 ulong4;

typedef struct float1 float1;

typedef struct float2 float2;

typedef struct float3 float3;

typedef struct float4 float4;

typedef struct longlong1 longlong1;

typedef struct ulonglong1 ulonglong1;

typedef struct longlong2 longlong2;

typedef struct ulonglong2 ulonglong2;

typedef struct double1 double1;

typedef struct double2 double2;








struct dim3
{
    unsigned int x, y, z;




#line 477 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"
};


typedef struct dim3 dim3;




#line 486 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"
#line 46 "D:\\my\\work\\cuda\\64\\tk\\include\\builtin_types.h"
#line 280 "D:\\my\\work\\cuda\\64\\tk\\include\\crt/device_runtime.h"
#line 1 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"






































#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"




































































































































































































































































































































































































































































































#line 486 "d:\\my\\work\\cuda\\64\\tk\\include\\vector_types.h"
#line 40 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"






#line 47 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"



#line 51 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"


uint3 extern const threadIdx;

uint3 extern const blockIdx;

dim3 extern const blockDim;

dim3 extern const gridDim;

int extern const warpSize;





#line 68 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"






#line 75 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"






#line 82 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"






#line 89 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"






#line 96 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"






#line 103 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"

#line 105 "D:\\my\\work\\cuda\\64\\tk\\include\\device_launch_parameters.h"
#line 281 "D:\\my\\work\\cuda\\64\\tk\\include\\crt/device_runtime.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"










































#line 44 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"






#line 51 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 55 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 59 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 63 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 67 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 71 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 75 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 79 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 83 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 87 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 91 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 95 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 99 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 103 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 107 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 111 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 115 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 119 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 123 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 127 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 131 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 135 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 139 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 143 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"



#line 147 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"

#line 149 "d:\\my\\work\\cuda\\64\\tk\\include\\crt\\storage_class.h"
#line 282 "D:\\my\\work\\cuda\\64\\tk\\include\\crt/device_runtime.h"
#line 479 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 93 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"
typedef long clock_t;
#line 95 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 101 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 107 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 113 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 119 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 125 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 131 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 137 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 143 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 149 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 155 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 161 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 167 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 173 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 179 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 185 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 191 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 197 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 203 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 209 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 215 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 221 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 227 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 233 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 239 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 245 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 251 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 257 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 263 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 269 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 275 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 281 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 287 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 293 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 299 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 305 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 311 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 317 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 323 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 329 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 335 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 341 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 347 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 353 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 359 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 365 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 371 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 377 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 383 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 389 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 395 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 401 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 407 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 413 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 419 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 425 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 431 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 437 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 443 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 449 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 455 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 461 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 467 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 473 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 479 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 485 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 491 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 497 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 503 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 509 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 515 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 521 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 527 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 533 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 539 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 545 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 551 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 557 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 563 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 569 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 575 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 581 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 587 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 593 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 599 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 605 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 611 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 617 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 623 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 629 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 635 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 641 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 647 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 653 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 659 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 665 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 671 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 677 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 683 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 689 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 695 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 701 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 707 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 713 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 719 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 725 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 731 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 737 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 743 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 749 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 755 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 761 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 767 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 773 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 779 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 785 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 791 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 797 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 803 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 809 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 815 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 821 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 827 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 833 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 839 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 845 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 851 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 857 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 863 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 869 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 875 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 881 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 887 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 893 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 899 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 905 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 911 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 917 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 923 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 929 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 935 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 941 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 947 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 953 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 959 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 965 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 971 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 977 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 983 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 989 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 995 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1001 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1007 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1013 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1019 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1025 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1031 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1037 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1043 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1049 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1055 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1061 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1067 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1073 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1079 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1085 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1091 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1097 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1103 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1109 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1115 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1121 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1127 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1133 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1139 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1145 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1151 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1157 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1163 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1169 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1175 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1181 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1187 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1193 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1199 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1205 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1211 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1217 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1223 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1229 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1235 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1241 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1247 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1253 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1259 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1265 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1271 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1277 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1283 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1289 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1295 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1301 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1307 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1313 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1319 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1325 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1331 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1337 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1343 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1349 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1355 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1361 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1367 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1373 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1379 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1385 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1391 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1397 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1403 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1409 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1415 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1421 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1427 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1433 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1439 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1445 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1451 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1457 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1463 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1469 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1475 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1481 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1487 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1493 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1499 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1505 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1511 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1517 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1523 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1529 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"





#line 1535 "D:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\VC\\include\\time.h"

#line 88 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
__attribute__((__global__)) __attribute__((__used__)) extern void _Z25md5_gpu_bruteforce_threadPjS_ji(unsigned *const, unsigned *const, const unsigned, const int);
#line 90 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
#line 22 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
static __attribute__((__used__)) __attribute__((__constant__)) unsigned charset_c[256];
#line 23 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
static __attribute__((__used__)) __attribute__((__constant__)) unsigned target_hash[4];
#line 25 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
static __attribute__((__used__)) __attribute__((__device__)) unsigned *result_d;
#line 26 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
static __attribute__((__used__)) __attribute__((__device__)) unsigned *data_d;
#line 1 "D:\\my\\work\\cuda\\64\\tk\\include\\common_functions.h"

































































#line 67 "D:\\my\\work\\cuda\\64\\tk\\include\\common_functions.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"






























































































#line 96 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"

#line 98 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
#line 69 "D:\\my\\work\\cuda\\64\\tk\\include\\common_functions.h"

static clock_t __cuda_clock(void)
{
  return clock();
}

static void *__cuda_memset(void *s, int c, size_t n)
{
  return memset(s, c, n);
}

static void *__cuda_memcpy(void *d, const void *s, size_t n)
{
  return memcpy(d, s, n);
}

#line 86 "D:\\my\\work\\cuda\\64\\tk\\include\\common_functions.h"







#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"






































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 904 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
































































































#line 98 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
#line 906 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"






int __cuda_error_not_implememted(void);













#line 927 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"




#line 932 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 934 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"




































#line 971 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

static int __cuda_abs(int a)
{
  return abs(a);
}

static float __cuda_fabsf(float a)
{
  return fabsf(a);
}

static long long int __cuda_llabs(long long int a)
{


#line 987 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return llabs(a);
#line 989 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_exp2f(float a)
{
  return exp2f(a);
}

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"




















































































































































































































































































































































































































































#line 438 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
































































































#line 98 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
#line 440 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"




































































































































#line 134 "d:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"
#line 442 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\math_constants.h"
















































































#line 82 "d:\\my\\work\\cuda\\64\\tk\\include\\math_constants.h"






#line 89 "d:\\my\\work\\cuda\\64\\tk\\include\\math_constants.h"



















































#line 141 "d:\\my\\work\\cuda\\64\\tk\\include\\math_constants.h"
#line 443 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"



static float __frcp_rn (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      
      f = __umul24(y, argi);
      
      if ((int)f > 0) { 
        t = __int_as_float(__float_as_int(t)-1);
        f -= y; 
      }
      
      expo = f + y;
      
      f = (unsigned)(-(int)f);
      if (expo < f) {
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}
 
static float __frcp_rz (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if ((int)f > 0) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static float __frcp_rd (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if (((int)f > 0) && (x > 0.0f)) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      if (((int)f < 0) && (x < 0.0f)) { 
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static float __frcp_ru (float x)
{
  unsigned int expo;
  unsigned f, y;
  unsigned int argi;
  float t;
    
  argi = __float_as_int(x);
  expo = (argi >> 23);
  expo = expo & 0xff;
  f = expo - 1;
  if (f <= 0xFD) {
    y = (argi & 0x00ffffff) | 0x00800000;
    expo = (2 * 127) - expo - 2;
    t = 1.0f / x;
    argi = __float_as_int(t);
    argi = (argi & 0x00ffffff) | 0x00800000;
    if ((int)expo >= 0) {
      f = __umul24(y, argi);
      if (((int)f > 0) && (x < 0.0f)) { 
        t = __int_as_float(__float_as_int(t)-1);
      }
      if (((int)f < 0) && (x > 0.0f)) { 
        t = __int_as_float(__float_as_int(t)+1);
      }
      return t;
    }
  }
  return 1.0f / x;
}

static float __fsqrt_rn (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0xff;
  f = expo - 1;

  if ((argi <= 0x80000000) && (f <= 0xFD)) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    argi = argi >> 3;
    x = (x << 16) - (argi * argi);
    
    f = x - (2 * argi + 1);
    if ((int)f < 0) f = (unsigned)(-(int)f);
    if ((int)x < 0) x = (unsigned)(-(int)x);
    if (f < x) argi ++;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static float __fsqrt_rz (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0xff;
  f = expo - 1;

  if ((argi <= 0x80000000) && (f <= 0xFD)) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x < 0) argi--;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static float __fsqrt_ru (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0xff;
  f = expo - 1;

  if ((argi <= 0x80000000) && (f <= 0xFD)) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x > 0) argi++;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static float __fsqrt_rd (float radicand)
{
  unsigned int expo, argi;
  unsigned int s, f, x;

  argi = __float_as_int(radicand);
  expo = argi >> 23;
  expo = expo & 0xff;
  f = expo - 1;

  if ((argi <= 0x80000000) && (f <= 0xFD)) {
    x = (argi << 8) | 0x80000000;
    x = x >> (expo & 1);
    argi = (((__float_as_int(rsqrtf(__int_as_float(
              __float_as_int(radicand)|1)))&0x00ffffff)|0x00800000)<<7);
    
    s = __umulhi(argi,argi);
    f = 0x30000000 - __umulhi(x,s);
    argi = __umulhi(f,argi);
    
    argi = __umulhi(x,argi);
    
    argi = (argi + 4) >> 3;
    x = (x << 16) - (argi * argi);
    if ((int)x < 0) argi--;
    argi = argi + (((expo + 125) & ~0x1) << 22);
    return __int_as_float(argi);
  }
  return sqrtf(radicand);
}

static float __fdiv_rn (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    
    if (expo_res <= 0xFD) {
      int rem0, rem1, inc;
      
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      rem0 = rem1 - y;
      inc = abs(rem0) < abs(rem1);
      
      resi = sign | ((expo_res << 23) + r + inc);
      return __int_as_float(resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign | 0x7f800000;
      return __int_as_float(resi);
    } else {
      
      int rem0, rem1, inc;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      rem0 = rem1 - y;
      inc = abs(rem0) < abs(rem1);
      resi = ((expo_res << 23) + r + inc);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (__cuda_fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static float __fdiv_rz (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if (rem1 < 0) r--;
      resi = (expo_res << 23) + r;
      if (resi == 0x7f800000) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = 0x7f7fffff;
      return __int_as_float(sign |resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if (rem1 < 0) r--;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (__cuda_fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static float __fdiv_ru (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) &&  (sign)) r--;
      if ((rem1 > 0) && (!sign)) r++;
      resi = (expo_res << 23) + r;
      if ((resi == 0x7f800000) && (sign)) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign ? 0x7f7fffff : 0x7f800000;
      return __int_as_float(sign | resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) &&  (sign)) r--;
      if ((rem1 > 0) && (!sign)) r++;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (__cuda_fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static float __fdiv_rd (float dividend, float divisor)
{
  unsigned long long prod;
  unsigned r, f, x, y, expox, expoy, sign;
  unsigned expo_res;
  unsigned resi, cvtxi, cvtyi;
  float t;

  cvtxi = __float_as_int(dividend);
  cvtyi = __float_as_int(divisor);
  expox = (cvtxi >> 23) & 0xff;
  expoy = (cvtyi >> 23) & 0xff;
  sign  = ((cvtxi ^ cvtyi) & 0x80000000);

  if (((expox - 1) <= 0xFD) && ((expoy - 1) <= 0xFD)) {
    expo_res = expox - expoy + 127 - 1;
    
    y = (cvtyi << 8) | 0x80000000;
    x = (cvtxi & 0x00ffffff) | 0x00800000;
    t =__int_as_float((cvtyi & 0x00ffffff) | 0x3f800001);
    r = ((__float_as_int(1.0f / t) & 0x00ffffff) | 0x00800000) << 7;
      
    f = (unsigned)-(int)__umulhi (y, r << 1);
    r = __umulhi (f, r << 1);
    
    prod = ((unsigned long long)x) * (r << 1);
    
    if (((int)((prod >> 32) << 8)) > 0) {
      expo_res--;
      prod = prod + prod;
    }
    
    prod += 0x0000000080000000ULL;
    r = (unsigned)(prod >> 32);
    y = y >> 8;
    if (expo_res <= 0xFD) {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) && (!sign)) r--;
      if ((rem1 > 0) &&  (sign)) r++;
      resi = (expo_res << 23) + r;
      if ((resi == 0x7f800000) && (!sign)) resi = 0x7f7fffff;
      return __int_as_float(sign | resi);
    } else if ((int)expo_res >= 254) {
      
      resi = sign ? 0x7f800000 : 0x7f7fffff;
      return __int_as_float(sign |resi);
    } else {
      
      int rem1;
      prod = ((unsigned long long)y) * r;
      x = x << (23 + ((prod >> 32) >> 15));
      rem1 = x - (unsigned)(prod & 0xffffffff);
      if ((rem1 < 0) && (!sign)) r--;
      if ((rem1 > 0) &&  (sign)) r++;
      resi = ((expo_res << 23) + r);
      if (resi != 0x00800000) resi = 0;
      return __int_as_float(sign | resi);
    }
  }
  if (__cuda_fabsf(divisor) > 8.507059173e37f) {
    divisor  *= 0.25f;
    dividend *= 0.25f;
  }
  return __fdividef (dividend, divisor);
}

static float __fadd_ru (float a, float b)
{
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi, temp;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  
  expo_y = yyi << 1;
  if (expo_y > (xxi << 1)) {
    expo_y = xxi;
    xxi    = yyi;
    yyi    = expo_y;
  }
    
  temp = 0xff;
  expo_x = temp & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
        
    expo_y = expo_x - expo_y;
    if (expo_y > 25) {
      expo_y = 31;
    }
    temp = xxi ^ yyi;
    xxi = xxi & ~0x7f000000;
    xxi = xxi |  0x00800000;
    yyi = yyi & ~0xff000000;
    yyi = yyi |  0x00800000;
        
    if ((int)temp < 0) {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      temp = (unsigned int)(-((int)temp));
      xxi = xxi - (yyi >> expo_y) - (temp ? 1 : 0);
      if (xxi & 0x00800000) {
        if (expo_x <= 0xFD) {
          xxi = (xxi + (expo_x << 23));
          xxi += (temp && !(xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        if ((temp | (xxi << 1)) == 0) {
          
          xxi = 0;
          return __int_as_float(xxi);
        }
        
        yyi = xxi & 0x80000000;
        do {
          xxi = (xxi << 1) | (temp >> 31);
          temp <<= 1;
          expo_x--;
        } while (!(xxi & 0x00800000));
        xxi = xxi | yyi;
      }
    } else {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      xxi = xxi + (yyi >> expo_y);
      if (!(xxi & 0x01000000)) {
        if (expo_x <= 0xFD) {
          xxi = xxi + (expo_x << 23);
          xxi += (temp && !(xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        
        temp = (xxi << 31) | (temp >> 1);
        xxi = ((xxi & 0x80000000) | (xxi >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
    if (expo_x <= 0xFD) {
      xxi += (temp && !(xxi & 0x80000000));
      xxi = xxi + (expo_x << 23);
      return __int_as_float(xxi);
    }
    if ((int)expo_x >= 254) {
      
      temp = xxi & 0x80000000;
      xxi = (temp ? 0xff7fffff : 0x7F800000);
      return __int_as_float(xxi);
    }
    
    yyi = xxi &  0x80000000;
    xxi = xxi & ~0xff000000;
    expo_x = (unsigned int)(-((int)expo_x));
    xxi = (xxi >> expo_x);
    if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
    return __int_as_float(yyi | xxi);
  } else {
    return a + b;
  }
}

static float __fadd_rd (float a, float b)
{
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi, temp;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  
  expo_y = yyi << 1;
  if (expo_y > (xxi << 1)) {
    expo_y = xxi;
    xxi    = yyi;
    yyi    = expo_y;
  }
    
  temp = 0xff;
  expo_x = temp & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
        
    expo_y = expo_x - expo_y;
    if (expo_y > 25) {
      expo_y = 31;
    }
    temp = xxi ^ yyi;
    xxi = xxi & ~0x7f000000;
    xxi = xxi |  0x00800000;
    yyi = yyi & ~0xff000000;
    yyi = yyi |  0x00800000;
        
    if ((int)temp < 0) {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      temp = (unsigned int)(-((int)temp));
      xxi = xxi - (yyi >> expo_y) - (temp ? 1 : 0);
      if (xxi & 0x00800000) {
        if (expo_x <= 0xFD) {
          xxi = xxi & ~0x00800000; 
          xxi = (xxi + (expo_x << 23)) + 0x00800000;
          xxi += (temp && (xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        if ((temp | (xxi << 1)) == 0) {
          
          xxi = 0x80000000;
          return __int_as_float(xxi);
        }
        
        yyi = xxi & 0x80000000;
        do {
          xxi = (xxi << 1) | (temp >> 31);
          temp <<= 1;
          expo_x--;
        } while (!(xxi & 0x00800000));
        xxi = xxi | yyi;
      }
    } else {
      
      temp = 32 - expo_y;
      temp = (expo_y) ? (yyi << temp) : 0;
      xxi = xxi + (yyi >> expo_y);
      if (!(xxi & 0x01000000)) {
        if (expo_x <= 0xFD) {
          expo_y = xxi & 1;
          xxi = xxi + (expo_x << 23);
          xxi += (temp && (xxi & 0x80000000));
          return __int_as_float(xxi);
        }
      } else {
        
        temp = (xxi << 31) | (temp >> 1);
        xxi = ((xxi & 0x80000000) | (xxi >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
    if (expo_x <= 0xFD) {
      xxi += (temp && (xxi & 0x80000000));
      xxi = xxi + (expo_x << 23);
      return __int_as_float(xxi);
    }
    if ((int)expo_x >= 254) {
      
      temp = xxi & 0x80000000;
      xxi = (temp ? 0xFF800000 : 0x7f7fffff);
      return __int_as_float(xxi);
    }
    
    yyi = xxi &  0x80000000;
    xxi = xxi & ~0xff000000;
    expo_x = (unsigned int)(-((int)expo_x));
    xxi = (xxi >> expo_x);
    if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
    return __int_as_float(yyi | xxi);
  } else {
    a = a + b;
    xxi = xxi ^ yyi;
    if ((a == 0.0f) && ((int)xxi < 0)) a = __int_as_float(0x80000000);
    return a;
  }
}

static float __fmul_ru (float a, float b)
{
  unsigned long long product;
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  expo_y = 0xFF;
  expo_x = expo_y & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = expo_y & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
    expo_x = expo_x + expo_y;
    expo_y = xxi ^ yyi;
    xxi = xxi & 0x00ffffff;
    yyi = yyi << 8;
    xxi = xxi | 0x00800000;
    yyi = yyi | 0x80000000;
    
    product = ((unsigned long long)xxi) * yyi;
    expo_x = expo_x - 127 + 2;
    expo_y = expo_y & 0x80000000;
    xxi = (unsigned int)(product >> 32);
    yyi = (unsigned int)(product & 0xffffffff);
    
    if (xxi < 0x00800000) {
      xxi = (xxi << 1) | (yyi >> 31);
      yyi = (yyi << 1);
      expo_x--;
    }
    if (expo_x <= 0xFD) {
      xxi = xxi | expo_y;          
      xxi = xxi + (expo_x << 23);  
      
      xxi += (yyi && !expo_y);
      return __int_as_float(xxi);
    } else if ((int)expo_x >= 254) {
      
      xxi = (expo_y ? 0xff7fffff : 0x7F800000);
      return __int_as_float(xxi);
    } else {
      
      expo_x = ((unsigned int)-((int)expo_x));
      xxi += (yyi && !expo_y);
      xxi = (xxi >> expo_x);
      if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
      return __int_as_float(expo_y | xxi);
    }
  } else {
    return a * b;
  }
}

static float __fmul_rd (float a, float b)
{
  unsigned long long product;
  unsigned int expo_x, expo_y;
  unsigned int xxi, yyi;
    
  xxi = __float_as_int(a);
  yyi = __float_as_int(b);

  expo_y = 0xFF;
  expo_x = expo_y & (xxi >> 23);
  expo_x = expo_x - 1;
  expo_y = expo_y & (yyi >> 23);
  expo_y = expo_y - 1;
    
  if ((expo_x <= 0xFD) && 
      (expo_y <= 0xFD)) {
    expo_x = expo_x + expo_y;
    expo_y = xxi ^ yyi;
    xxi = xxi & 0x00ffffff;
    yyi = yyi << 8;
    xxi = xxi | 0x00800000;
    yyi = yyi | 0x80000000;
    
    product = ((unsigned long long)xxi) * yyi;
    expo_x = expo_x - 127 + 2;
    expo_y = expo_y & 0x80000000;
    xxi = (unsigned int)(product >> 32);
    yyi = (unsigned int)(product & 0xffffffff);
    
    if (xxi < 0x00800000) {
      xxi = (xxi << 1) | (yyi >> 31);
      yyi = (yyi << 1);
      expo_x--;
    }
    if (expo_x <= 0xFD) {
      xxi = xxi | expo_y;          
      xxi = xxi + (expo_x << 23);  
      
      xxi += (yyi && expo_y);
      return __int_as_float(xxi);
    } else if ((int)expo_x >= 254) {
      
      xxi = expo_y | (expo_y ?0x7F800000 : 0x7f7fffff);
      return __int_as_float(xxi);
    } else {
      
      expo_x = ((unsigned int)-((int)expo_x));
      xxi += (yyi && expo_y);
      xxi = (xxi >> expo_x);
      if ((expo_x > 25) || (xxi != 0x00800000)) xxi = 0;
      return __int_as_float(expo_y | xxi);
    }
  } else {
    return a * b;
  }
}

static float __fmaf_rn (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    s = xx & 1; 
    xx += (temp == 0x80000000) ? s : (temp >> 31);
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | 0x7f800000;
    return __int_as_float(xx);
  }
  
  expo_x = (unsigned int)(-(int)expo_x);
  
  xx += (temp >= 0x80000000);
  if (xx >= 0x01000000) {
    xx = xx >> 1;
    expo_x--;
  }
  if (expo_x > 0) xx = 0;
  xx = expo_y | xx;
  return __int_as_float(xx);
}

static float __fmaf_rz (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | 0x7f7fffff;
    return __int_as_float(xx);
  }
  
  return __int_as_float(expo_y);
}

static float __fmaf_ru (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz &= 0x7fffffff;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(xx);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx += (temp && !expo_y); 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | (expo_y ? 0x7f7fffff : 0x7F800000);
    return __int_as_float(xx);
  }
  
  expo_x = ((unsigned int)-((int)expo_x));
  xx += (temp && !expo_y);
  xx = (xx >> expo_x);
  if ((expo_x > 25) || (xx != 0x00800000)) xx = 0;
  return __int_as_float(expo_y | xx);
}

static float __fmaf_rd (float a, float b, float c)
{
  unsigned long long product;
  unsigned int xx, yy, zz, ww;
  unsigned int temp, s, u;
  unsigned int expo_x, expo_y, expo_z;

  xx = __float_as_int(a);
  yy = __float_as_int(b);
  zz = __float_as_int(c);

  
  if ((xx << 1) < 0x01000000) xx &= 0x80000000;
  if ((yy << 1) < 0x01000000) yy &= 0x80000000;
  if ((zz << 1) < 0x01000000) zz &= 0x80000000;
   
  temp = 0xff;
  expo_x = temp & (xx >> 23);
  expo_x = expo_x - 1;
  expo_y = temp & (yy >> 23);
  expo_y = expo_y - 1;
  expo_z = temp & (zz >> 23);
  expo_z = expo_z - 1;

  if (!((expo_x <= 0xFD) && 
        (expo_y <= 0xFD) &&
        (expo_z <= 0xFD))) {
    



    if ((yy << 1) > 0xff000000) {
      return rsqrtf(b);
    }
    if ((zz << 1) > 0xff000000) {
      return rsqrtf(c);
    }
    if ((xx << 1) > 0xff000000) {
      return rsqrtf(a);
    }
    










    if ((((xx << 1) == 0) && ((yy << 1) == 0xff000000)) ||
        (((yy << 1) == 0) && ((xx << 1) == 0xff000000))) {
      return rsqrtf(__int_as_float(0xffc00000));
    }
    if ((zz << 1) == 0xff000000) {
      if (((yy << 1) == 0xff000000) || ((xx << 1) == 0xff000000)) {
        if ((int)(xx ^ yy ^ zz) < 0) {
          return rsqrtf(__int_as_float(0xffc00000));
        }
      }
    }
    



    if ((xx << 1) == 0xff000000) {
      xx = xx ^ (yy & 0x80000000);
      return __int_as_float(xx);
    }
    if ((yy << 1) == 0xff000000) {
      yy = yy ^ (xx & 0x80000000);
      return __int_as_float(yy);
    }
    if ((zz << 1) == 0xff000000) {
      return __int_as_float(zz);
    }
    




    if (zz == 0x80000000) {
      if (((xx << 1) == 0) || ((yy << 1) == 0)) {
        if ((int)(xx ^ yy) < 0) {
          return __int_as_float(zz);
        }
      }
    }
    


    if (((zz << 1) == 0) && 
        (((xx << 1) == 0) || ((yy << 1) == 0))) {
      zz = (xx ^ yy ^ zz) & 0x80000000;
      return __int_as_float(zz);
    }
    


    if (((xx << 1) == 0) || ((yy << 1) == 0)) {
      return __int_as_float(zz);
    }
    
    if (expo_x == (unsigned)-1) {
      temp = xx & 0x80000000;
      xx = xx << 8;
      while (!(xx & 0x80000000)) {
        xx <<= 1;
        expo_x--;
      }
      expo_x++;
      xx = (xx >> 8) | temp;
    }
    
    if (expo_y == (unsigned)-1) {
      temp = yy & 0x80000000;
      yy = yy << 8;
      while (!(yy & 0x80000000)) {
        yy <<= 1;
        expo_y--;
      }
      expo_y++;
      yy = (yy >> 8) | temp;
    }
    
    if ((expo_z == (unsigned)-1) && ((zz << 1) != 0)) {
      temp = zz & 0x80000000;
      zz = zz << 8;
      while (!(zz & 0x80000000)) {
        zz <<= 1;
        expo_z--;
      }
      expo_z++;
      zz = (zz >> 8) | temp;
    }
  }
    
  expo_x = expo_x + expo_y;
  expo_y = xx ^ yy;
  xx = xx & 0x00ffffff;
  yy = yy << 8;
  xx = xx | 0x00800000;
  yy = yy | 0x80000000;

  product = ((unsigned long long)xx) * yy;
  xx = (unsigned)(product >> 32);
  yy = (unsigned)(product & 0xffffffff);

  expo_x = expo_x - 127 + 2;
  expo_y = expo_y & 0x80000000;
  
  if (xx < 0x00800000) {
    xx = (xx << 1) | (yy >> 31);
    yy = (yy << 1);
    expo_x--;
  }
  temp = 0;

  if ((zz << 1) != 0) { 
    s = zz & 0x80000000;
    zz &= 0x00ffffff;
    zz |= 0x00800000;
    ww = 0;
    
    if ((int)expo_z > (int)expo_x) {
      temp = expo_z;
      expo_z = expo_x;
      expo_x = temp;
      temp = zz;
      zz = xx;
      xx = temp;
      temp = ww;
      ww = yy;
      yy = temp;
      temp = expo_y;
      expo_y = s;
      s = temp;
    }
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 49) {
      
      temp = 0;
      while (expo_z >= 32) {
        temp = ww | (temp != 0);
        ww = zz;
        zz = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        temp = ((temp >> expo_z) | (ww << (32 - expo_z)) | 
                ((temp << (32 - expo_z)) != 0));
        ww = (ww >> expo_z) | (zz << (32 - expo_z));
        zz = (zz >> expo_z);
      }
      
    } else {
      temp = 1;
      ww = 0;
      zz = 0;
    }            
    if ((int)u < 0) {
      
      temp = (unsigned)(-(int)temp);
      s = (temp != 0);
      u = yy - s;
      s = u > yy;
      yy = u - ww;
      s += yy > u;
      xx = (xx - zz) - s;
      if (!(xx | yy | temp)) {
        
        return __int_as_float(0x80000000);
      }
      if ((int)xx < 0) {
        

        temp = ~temp;
        yy = ~yy;
        xx = ~xx;
        if (++temp == 0) {
          if (++yy == 0) {
            ++xx;
          }
        }
        expo_y ^= 0x80000000;
      }
      
      while (!(xx & 0x00800000)) {
        xx = (xx << 1) | (yy >> 31);
        yy = (yy << 1);
        expo_x--;
      }
    } else {
      
      yy = yy + ww;
      s =  yy < ww;
      xx = xx + zz + s;
      if (xx & 0x01000000) {
        temp = temp | (yy << 31);
        yy = (yy >> 1) | (xx << 31);
        xx = ((xx & 0x80000000) | (xx >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  temp = yy | (temp != 0);
  if (expo_x <= 0xFD) {
    
    xx |= expo_y; 
    xx += (temp && expo_y); 
    xx = xx + (expo_x << 23); 
    return __int_as_float(xx);
  } else if ((int)expo_x >= 126) {
    
    xx = expo_y | (expo_y ? 0x7f800000 : 0x7F7FFFFF);
    return __int_as_float(xx);
  }
  
  expo_x = ((unsigned int)-((int)expo_x));
  xx += (temp && expo_y);
  xx = (xx >> expo_x);
  if ((expo_x > 25) || (xx != 0x00800000)) xx = 0;
  return __int_as_float(expo_y | xx);
}


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 4368 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"




























#line 4397 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"

static float __sinf(float a)
{




#line 4405 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return sinf(a);
}

static float __cosf(float a)
{




#line 4415 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return cosf(a);
}

static float __log2f(float a)
{
  return log2f(a);
}







static float __internal_accurate_fdividef(float a, float b)
{
  return a / b;
}

static float __tanf(float a)
{


#line 4439 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return __fdividef (__sinf(a), __cosf(a));
#line 4441 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
}

static void __sincosf(float a, float *sptr, float *cptr)
{


#line 4448 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  *sptr = __sinf(a);
  *cptr = __cosf(a);
#line 4451 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
}

static float __expf(float a)
{


#line 4458 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return __cuda_exp2f(a * 1.442695041f);
#line 4460 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
}

static float __exp10f(float a)
{


#line 4467 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return __cuda_exp2f(a * 3.321928094f);
#line 4469 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
}

static float __log10f(float a)
{


#line 4476 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return 0.301029996f * __log2f(a);
#line 4478 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
}

static float __logf(float a)
{


#line 4485 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return 0.693147181f * __log2f(a);
#line 4487 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
}

static float __powf(float a, float b)
{


#line 4494 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return __cuda_exp2f(b * __log2f(a));
#line 4496 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
}

static float fdividef(float a, float b)
{


#line 4503 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"

#line 4505 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
  return __internal_accurate_fdividef(a, b);
#line 4507 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
}

static int __clz(int a)
{
  return (a)?(158-(__float_as_int(__uint2float_rz((unsigned int)a))>>23)):32;
}

static int __clzll(long long int a)
{
  int ahi = ((int)((unsigned long long)a >> 32));
  int alo = ((int)((unsigned long long)a & 0xffffffffULL));
  int res;
  if (ahi) {
    res = 0;
  } else {
    res = 32;
    ahi = alo;
  }
  res = res + __clz(ahi);
  return res;
}

static int __popc(unsigned int a)
{
  a = a - ((a >> 1) & 0x55555555);
  a = (a & 0x33333333) + ((a >> 2) & 0x33333333);
  a = (a + (a >> 4)) & 0x0f0f0f0f;
  a = ((__umul24(a, 0x808080) << 1) + a) >> 24;
  return a;
}

static int __popcll(unsigned long long int a)
{
  unsigned int ahi = ((unsigned int)(a >> 32));
  unsigned int alo = ((unsigned int)(a & 0xffffffffULL));
  alo = alo - ((alo >> 1) & 0x55555555);
  alo = (alo & 0x33333333) + ((alo >> 2) & 0x33333333);
  ahi = ahi - ((ahi >> 1) & 0x55555555);
  ahi = (ahi & 0x33333333) + ((ahi >> 2) & 0x33333333);
  alo = alo + ahi;
  alo = (alo & 0x0f0f0f0f) + ((alo >> 4) & 0x0f0f0f0f);
  alo = ((__umul24(alo, 0x808080) << 1) + alo) >> 24;
  return alo;
}

static unsigned int __brev(unsigned int a)
{
  a = ((a >>  1) & 0x55555555) + ((a & 0x55555555) <<  1);
  a = ((a >>  2) & 0x33333333) + ((a & 0x33333333) <<  2);
  a = ((a >>  4) & 0x0F0F0F0F) + ((a & 0x0F0F0F0F) <<  4);
  a = ((a >>  8) & 0x00FF00FF) + ((a & 0x00FF00FF) <<  8);
  a = ( a >> 16              ) + ( a               << 16);
  return a;
}

static unsigned long long int __brevll(unsigned long long int a)
{
  unsigned int hi = (unsigned int)(a >> 32);
  unsigned int lo = (unsigned int)(a & 0xffffffffULL);
  unsigned int t;
  t  = __brev(lo);
  lo = __brev(hi);
  return ((unsigned long long int)t << 32) + (unsigned long long int)lo;
}

static int __ffs(int a)
{
  return 32 - __clz (a & -a);
}

static int __ffsll(long long int a)
{
  return 64 - __clzll (a & -a);
}





#line 4587 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"



static double fdivide(double a, double b)
{
  return (double)fdividef((float)a, (float)b);
}























#line 4618 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"

#line 4620 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"





































#line 4658 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"

#line 4660 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"







#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_11_atomic_functions.h"















































































































































































































#line 209 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_11_atomic_functions.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
































































































#line 98 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
#line 211 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_11_atomic_functions.h"




























































































































































































































































































#line 496 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_11_atomic_functions.h"

#line 498 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_11_atomic_functions.h"

#line 500 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_11_atomic_functions.h"
#line 4668 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_12_atomic_functions.h"




































































































#line 102 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_12_atomic_functions.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
































































































#line 98 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
#line 104 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_12_atomic_functions.h"




































































#line 173 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_12_atomic_functions.h"

#line 175 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_12_atomic_functions.h"

#line 177 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_12_atomic_functions.h"
#line 4669 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_13_double_functions.h"





























































































































































































































































#line 255 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_13_double_functions.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
































































































#line 98 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
#line 257 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_13_double_functions.h"



















































































































































































































































































































































#line 597 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_13_double_functions.h"



#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\common_types.h"




































union __cudart_FloatUintCvt {
    float f;
    unsigned int i;
};
 
union __cudart_FloatIntCvt {
    float f;
    int i;
};

union __cudart_DoubleUlonglongCvt {
    double d;
    unsigned long long int i;
};

union __cudart_DoubleLonglongCvt {
    double d;
    long long int i;
};

union __cudart_DoubleInthiloCvt {
    double     d;
    signed int i[2];
};

struct __cudart_UintUint {
    unsigned int lo;
    unsigned int hi;
};

#line 68 "d:\\my\\work\\cuda\\64\\tk\\include\\common_types.h"
#line 601 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_13_double_functions.h"

static double __internal_fma_kernel(double x, double y, double z, enum cudaRoundMode rndMode)
{



  struct __cudart_UintUint xx, yy, zz, ww;
  unsigned int s, t, u, prod0, prod1, prod2, prod3, expo_x, expo_y, expo_z;
  
  xx.hi = __double2hiint(x);
  xx.lo = __double2loint(x);
  yy.hi = __double2hiint(y);
  yy.lo = __double2loint(y);
  zz.hi = __double2hiint(z);
  zz.lo = __double2loint(z);

  expo_z = 0x7FF;
  t =  xx.hi >> 20;
  expo_x = expo_z & t;
  expo_x = expo_x - 1;    
  t =  yy.hi >> 20;
  expo_y = expo_z & t;
  expo_y = expo_y - 1;    
  t =  zz.hi >> 20;
  expo_z = expo_z & t;
  expo_z = expo_z - 1;    

  if (!((expo_x <= 0x7FD) &&
        (expo_y <= 0x7FD) &&
        (expo_z <= 0x7FD))) {
    
    



    if (((yy.hi << 1) | (yy.lo != 0)) > 0xffe00000) {
      yy.hi |= 0x00080000;
      return __hiloint2double(yy.hi, yy.lo);
    }
    if (((zz.hi << 1) | (zz.lo != 0)) > 0xffe00000) {
      zz.hi |= 0x00080000;
      return __hiloint2double(zz.hi, zz.lo);
    }
    if (((xx.hi << 1) | (xx.lo != 0)) > 0xffe00000) {
      xx.hi |= 0x00080000;
      return __hiloint2double(xx.hi, xx.lo);
    }
    
    










    if (((((xx.hi << 1) | xx.lo) == 0) && 
         (((yy.hi << 1) | (yy.lo != 0)) == 0xffe00000)) ||
        ((((yy.hi << 1) | yy.lo) == 0) && 
         (((xx.hi << 1) | (xx.lo != 0)) == 0xffe00000))) {
      xx.hi = 0xfff80000;
      xx.lo = 0x00000000;
      return __hiloint2double(xx.hi, xx.lo);
    }
    if (((zz.hi << 1) | (zz.lo != 0)) == 0xffe00000) {
      if ((((yy.hi << 1) | (yy.lo != 0)) == 0xffe00000) ||
          (((xx.hi << 1) | (xx.lo != 0)) == 0xffe00000)) {
        if ((int)(xx.hi ^ yy.hi ^ zz.hi) < 0) {
          xx.hi = 0xfff80000;
          xx.lo = 0x00000000;
          return __hiloint2double(xx.hi, xx.lo);
        }
      }
    }
    



    if (((xx.hi << 1) | (xx.lo != 0)) == 0xffe00000) {
      xx.hi = xx.hi ^ (yy.hi & 0x80000000);
      return __hiloint2double(xx.hi, xx.lo);
    }
    if (((yy.hi << 1) | (yy.lo != 0)) == 0xffe00000) {
      yy.hi = yy.hi ^ (xx.hi & 0x80000000);
      return __hiloint2double(yy.hi, yy.lo);
    }
    if (((zz.hi << 1) | (zz.lo != 0)) == 0xffe00000) {
      return __hiloint2double(zz.hi, zz.lo);
    }
    




    if ((zz.hi == 0x80000000) && (zz.lo == 0)) {
      if ((((xx.hi << 1) | xx.lo) == 0) ||
          (((yy.hi << 1) | yy.lo) == 0)) {
        if ((int)(xx.hi ^ yy.hi) < 0) {
          return __hiloint2double(zz.hi, zz.lo);
        }
      }
    }
    


    if ((((zz.hi << 1) | zz.lo) == 0) &&
        ((((xx.hi << 1) | xx.lo) == 0) ||
         (((yy.hi << 1) | yy.lo) == 0))) {
      if (rndMode == cudaRoundMinInf) {
        return __hiloint2double((xx.hi ^ yy.hi ^ zz.hi) & 0x80000000, zz.lo);
      } else {
        zz.hi &= 0x7fffffff;
        return __hiloint2double(zz.hi, zz.lo);
      }
    }
    
    


    if ((((xx.hi << 1) | xx.lo) == 0) ||
        (((yy.hi << 1) | yy.lo) == 0)) {
      return __hiloint2double(zz.hi, zz.lo);
    }
    
    if (expo_x == 0xffffffff) {
      expo_x++;
      t = xx.hi & 0x80000000;
      s = xx.lo >> 21;
      xx.lo = xx.lo << 11;
      xx.hi = xx.hi << 11;
      xx.hi = xx.hi | s;
      if (!xx.hi) {
        xx.hi = xx.lo;
        xx.lo = 0;
        expo_x -= 32;
      }
      while ((int)xx.hi > 0) {
        s = xx.lo >> 31;
        xx.lo = xx.lo + xx.lo;
        xx.hi = xx.hi + xx.hi;
        xx.hi = xx.hi | s;
        expo_x--;
      }
      xx.lo = (xx.lo >> 11);
      xx.lo |= (xx.hi << 21);
      xx.hi = (xx.hi >> 11) | t;
    }
    if (expo_y == 0xffffffff) {
      expo_y++;
      t = yy.hi & 0x80000000;
      s = yy.lo >> 21;
      yy.lo = yy.lo << 11;
      yy.hi = yy.hi << 11;
      yy.hi = yy.hi | s;
      if (!yy.hi) {
        yy.hi = yy.lo;
        yy.lo = 0;
        expo_y -= 32;
      }
      while ((int)yy.hi > 0) {
        s = yy.lo >> 31;
        yy.lo = yy.lo + yy.lo;
        yy.hi = yy.hi + yy.hi;
        yy.hi = yy.hi | s;
        expo_y--;
      }
      yy.lo = (yy.lo >> 11);
      yy.lo |= (yy.hi << 21);
      yy.hi = (yy.hi >> 11) | t;
    }
    if (expo_z == 0xffffffff) {
      expo_z++;
      t = zz.hi & 0x80000000;
      s = zz.lo >> 21;
      zz.lo = zz.lo << 11;
      zz.hi = zz.hi << 11;
      zz.hi = zz.hi | s;
      if (!zz.hi) {
        zz.hi = zz.lo;
        zz.lo = 0;
        expo_z -= 32;
      }
      while ((int)zz.hi > 0) {
        s = zz.lo >> 31;
        zz.lo = zz.lo + zz.lo;
        zz.hi = zz.hi + zz.hi;
        zz.hi = zz.hi | s;
        expo_z--;
      }
      zz.lo = (zz.lo >> 11);
      zz.lo |= (zz.hi << 21);
      zz.hi = (zz.hi >> 11) | t;
    }
  }
  
  expo_x = expo_x + expo_y;
  expo_y = xx.hi ^ yy.hi;
  t = xx.lo >> 21;
  xx.lo = xx.lo << 11;
  xx.hi = xx.hi << 11;
  xx.hi = xx.hi | t;
  yy.hi = yy.hi & 0x000fffff;
  xx.hi = xx.hi | 0x80000000; 
  yy.hi = yy.hi | 0x00100000; 

  prod0 = xx.lo * yy.lo;
  prod1 = __umulhi (xx.lo, yy.lo);
  prod2 = xx.hi * yy.lo;
  prod3 = xx.lo * yy.hi;
  prod1 += prod2;
  t = prod1 < prod2;
  prod1 += prod3;
  t += prod1 < prod3;
  prod2 = __umulhi (xx.hi, yy.lo);
  prod3 = __umulhi (xx.lo, yy.hi);
  prod2 += prod3;
  s = prod2 < prod3;
  prod3 = xx.hi * yy.hi;
  prod2 += prod3;
  s += prod2 < prod3;
  prod2 += t;
  s += prod2 < t;
  prod3 = __umulhi (xx.hi, yy.hi) + s;
  
  yy.lo = prod0;                 
  yy.hi = prod1;                 
  xx.lo = prod2;                 
  xx.hi = prod3;                 
  expo_x = expo_x - (1023 - 2);  
  expo_y = expo_y & 0x80000000;  

  if (xx.hi < 0x00100000) {
    s = xx.lo >> 31;
    s = (xx.hi << 1) + s;
    xx.hi = s;
    s = yy.hi >> 31;
    s = (xx.lo << 1) + s;
    xx.lo = s;
    s = yy.lo >> 31;
    s = (yy.hi << 1) + s;
    yy.hi = s;
    s = yy.lo << 1;
    yy.lo = s;
    expo_x--;
  }

  t = 0;
  if (((zz.hi << 1) | zz.lo) != 0) { 
    
    s = zz.hi & 0x80000000;
    
    zz.hi &= 0x000fffff;
    zz.hi |= 0x00100000;
    ww.hi = 0;
    ww.lo = 0;
    
    
    if ((int)expo_z > (int)expo_x) {
      t = expo_z;
      expo_z = expo_x;
      expo_x = t;
      t = zz.hi;
      zz.hi = xx.hi;
      xx.hi = t;
      t = zz.lo;
      zz.lo = xx.lo;
      xx.lo = t;
      t = ww.hi;
      ww.hi = yy.hi;
      yy.hi = t;
      t = ww.lo;
      ww.lo = yy.lo;
      yy.lo = t;
      t = expo_y;
      expo_y = s;
      s = t;
    }
    
    
    
    expo_z = expo_x - expo_z;
    u = expo_y ^ s;
    if (expo_z <= 107) {
      
      t = 0;
      while (expo_z >= 32) {
        t     = ww.lo | (t != 0);
        ww.lo = ww.hi;
        ww.hi = zz.lo;
        zz.lo = zz.hi;
        zz.hi = 0;
        expo_z -= 32;
      }
      if (expo_z) {
        t     = (t     >> expo_z) | (ww.lo << (32 - expo_z)) | 
                ((t << (32 - expo_z)) != 0);
        ww.lo = (ww.lo >> expo_z) | (ww.hi << (32 - expo_z));
        ww.hi = (ww.hi >> expo_z) | (zz.lo << (32 - expo_z));
        zz.lo = (zz.lo >> expo_z) | (zz.hi << (32 - expo_z));
        zz.hi = (zz.hi >> expo_z);
      }
    } else {
      t = 1;
      ww.lo = 0;
      ww.hi = 0;
      zz.lo = 0;
      zz.hi = 0;
    }
    if ((int)u < 0) {
      
      t = (unsigned)(-(int)t);
      s = (t != 0);
      u = yy.lo - s;
      s = u > yy.lo;
      yy.lo = u - ww.lo;
      s += yy.lo > u;
      u = yy.hi - s;
      s = u > yy.hi;
      yy.hi = u - ww.hi;
      s += yy.hi > u;
      u = xx.lo - s;
      s = u > xx.lo;
      xx.lo = u - zz.lo;
      s += xx.lo > u;
      xx.hi = (xx.hi - zz.hi) - s;
      if (!(xx.hi | xx.lo | yy.hi | yy.lo | t)) {
        
        if (rndMode == cudaRoundMinInf) {
          return __hiloint2double(0x80000000, xx.lo);
        } else {
          return __hiloint2double(xx.hi, xx.lo);
        }
      }
      if ((int)xx.hi < 0) {
        


        t = ~t;
        yy.lo = ~yy.lo;
        yy.hi = ~yy.hi;
        xx.lo = ~xx.lo;
        xx.hi = ~xx.hi;
        if (++t == 0) {
          if (++yy.lo == 0) {
            if (++yy.hi == 0) {
              if (++xx.lo == 0) {
              ++xx.hi;
              }
            }
          }
        }
        expo_y ^= 0x80000000;
      }
        
      
      while (!(xx.hi & 0x00100000)) {
        xx.hi = (xx.hi << 1) | (xx.lo >> 31);
        xx.lo = (xx.lo << 1) | (yy.hi >> 31);
        yy.hi = (yy.hi << 1) | (yy.lo >> 31);
        yy.lo = (yy.lo << 1);
        expo_x--;
      }
    } else {
      
      yy.lo = yy.lo + ww.lo;
      s = yy.lo < ww.lo;
      yy.hi = yy.hi + s;
      u = yy.hi < s;
      yy.hi = yy.hi + ww.hi;
      u += yy.hi < ww.hi;
      xx.lo = xx.lo + u;
      s = xx.lo < u;
      xx.lo = xx.lo + zz.lo;
      s += xx.lo < zz.lo;
      xx.hi = xx.hi + zz.hi + s;
      if (xx.hi & 0x00200000) {
        t = t | (yy.lo << 31);
        yy.lo = (yy.lo >> 1) | (yy.hi << 31);
        yy.hi = (yy.hi >> 1) | (xx.lo << 31);
        xx.lo = (xx.lo >> 1) | (xx.hi << 31);
        xx.hi = ((xx.hi & 0x80000000) | (xx.hi >> 1)) & ~0x40000000;
        expo_x++;
      }
    }
  }
  t = yy.lo | (t != 0);
  t = yy.hi | (t != 0);
        
  xx.hi |= expo_y; 
  if (expo_x <= 0x7FD) {
    
    xx.hi = xx.hi & ~0x00100000; 
    s = xx.lo & 1; 
    u = xx.lo;
    if (rndMode == cudaRoundNearest) {
      xx.lo += (t == 0x80000000) ? s : (t >> 31);
    } else if (((rndMode == cudaRoundPosInf) && t && (!expo_y)) ||
               ((rndMode == cudaRoundMinInf) && t && expo_y)) {
      xx.lo += 1;
    }
    xx.hi += (u > xx.lo);
    xx.hi += ((expo_x + 1) << 20);
    return __hiloint2double(xx.hi, xx.lo);
  } else if ((int)expo_x >= 2046) {      
    
    if ((rndMode == cudaRoundNearest) || 
        ((rndMode == cudaRoundPosInf) && (!expo_y)) ||
        ((rndMode == cudaRoundMinInf) && expo_y)) {
      xx.hi = (xx.hi & 0x80000000) | 0x7ff00000;
      xx.lo = 0;
    } else {
      xx.hi = (xx.hi & 0x80000000) | 0x7fefffff;
      xx.lo = 0xffffffff;
    }
    return __hiloint2double(xx.hi, xx.lo);
  }
  
  expo_x = (unsigned)(-(int)expo_x);
  if (expo_x > 54) {
    
    if (((rndMode == cudaRoundPosInf) && (!expo_y)) ||
        ((rndMode == cudaRoundMinInf) && expo_y)) {
      return __hiloint2double(xx.hi & 0x80000000, 1);
    } else {
      return __hiloint2double(xx.hi & 0x80000000, 0);
    }
  }  
  yy.hi = xx.hi &  0x80000000;   
  xx.hi = xx.hi & ~0xffe00000;
  if (expo_x >= 32) {
    t = xx.lo | (t != 0);
    xx.lo = xx.hi;
    xx.hi = 0;
    expo_x -= 32;
  }
  if (expo_x) {
    t     = (t     >> expo_x) | (xx.lo << (32 - expo_x)) | (t != 0);
    xx.lo = (xx.lo >> expo_x) | (xx.hi << (32 - expo_x));
    xx.hi = (xx.hi >> expo_x);
  }
  expo_x = xx.lo & 1; 
  u = xx.lo;
  if (rndMode == cudaRoundNearest) {
    xx.lo += (t == 0x80000000) ? expo_x : (t >> 31);
  } else if (((rndMode == cudaRoundPosInf) && t && (!expo_y)) ||
             ((rndMode == cudaRoundMinInf) && t && expo_y)) {
    xx.lo += 1;
  }
  xx.hi += (u > xx.lo);
  xx.hi |= yy.hi;
  return __hiloint2double(xx.hi, xx.lo);
}

static double __fma_rn(double x, double y, double z)
{
  return __internal_fma_kernel(x, y, z, cudaRoundNearest);
}

static double __fma_rd(double x, double y, double z)
{
  return __internal_fma_kernel(x, y, z, cudaRoundMinInf);
}

static double __fma_ru(double x, double y, double z)
{
  return __internal_fma_kernel(x, y, z, cudaRoundPosInf);
}

static double __fma_rz(double x, double y, double z)
{
  return __internal_fma_kernel(x, y, z, cudaRoundZero);
}

static double __dadd_rz(double a, double b)
{
  return __fma_rz(a, 1.0, b); 
}

static double __dadd_ru(double a, double b)
{
  return __fma_ru(a, 1.0, b); 
}

static double __dadd_rd(double a, double b)
{
  return __fma_rd(a, 1.0, b); 
}

static double __dmul_rz(double a, double b)
{
  return __fma_rz(a, b, __hiloint2double(0x80000000, 0x00000000)); 
}

static double __dmul_ru(double a, double b)
{
  return __fma_ru(a, b, __hiloint2double(0x80000000, 0x00000000)); 
}

static double __dmul_rd(double a, double b)
{
  return __fma_rd(a, b, 0.0); 
}

static double __dadd_rn(double a, double b)
{
  return __fma_rn(a, 1.0, b); 
}

static double __dmul_rn(double a, double b)
{
  return __fma_rn(a, b, __hiloint2double(0x80000000, 0x00000000)); 
}

#line 1118 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_13_double_functions.h"







#line 1126 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_13_double_functions.h"

#line 1128 "d:\\my\\work\\cuda\\64\\tk\\include\\sm_13_double_functions.h"

#line 4670 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_fetch_functions.h"


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1876 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_fetch_functions.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"




































































































































#line 134 "d:\\my\\work\\cuda\\64\\tk\\include\\host_defines.h"
#line 1878 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_fetch_functions.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
































































































#line 98 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
#line 1879 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_fetch_functions.h"



extern  uint4 __utexfetchi1D(const void*, int4);
extern   int4 __itexfetchi1D(const void*, int4);
extern float4 __ftexfetchi1D(const void*, int4);
extern  uint4 __utexfetch1D(const void*, float4);
extern   int4 __itexfetch1D(const void*, float4);
extern float4 __ftexfetch1D(const void*, float4);
extern  uint4 __utexfetch2D(const void*, float4);
extern   int4 __itexfetch2D(const void*, float4);
extern float4 __ftexfetch2D(const void*, float4);
extern  uint4 __utexfetch3D(const void*, float4);
extern   int4 __itexfetch3D(const void*, float4);
extern float4 __ftexfetch3D(const void*, float4);








































































#line 1967 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_fetch_functions.h"

#line 1969 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_fetch_functions.h"

#line 1971 "d:\\my\\work\\cuda\\64\\tk\\include\\texture_fetch_functions.h"

#line 4671 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"

#line 4673 "d:\\my\\work\\cuda\\64\\tk\\include\\device_functions.h"

#line 997 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\math_constants.h"











































































































































#line 141 "d:\\my\\work\\cuda\\64\\tk\\include\\math_constants.h"
#line 998 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

static int __cuda___signbitf(float a)
{
  return (int)((unsigned int)__float_as_int(a) >> 31);
}




static float __cuda_copysignf(float a, float b)
{
  return __int_as_float((__float_as_int(b) &  0x80000000) | 
                        (__float_as_int(a) & ~0x80000000));
}























































































































































































































#line 1228 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"







static long int __cuda_labs(long int a)
{
  return labs(a);
}

static float __cuda_ceilf(float a)
{
  return ceilf(a);
}

static float __cuda_floorf(float a)
{
  return floorf(a);
}

static float __cuda_sqrtf(float a)
{
  return sqrtf(a);
}

static float __cuda_rsqrtf(float a)
{
  return rsqrtf(a);
}

static float __cuda_truncf(float a)
{
  return truncf(a);
}

static int __cuda_max(int a, int b)
{
  return max(a, b);
}

static int __cuda_min(int a, int b)
{
  return min(a, b);
}

static unsigned int __cuda_umax(unsigned int a, unsigned int b)
{
  return umax(a, b);
}

static unsigned int __cuda_umin(unsigned int a, unsigned int b)
{
  return umin(a, b);
}

static long long int __cuda_llmax(long long int a, long long int b)
{
  return llmax(a, b);
}

static long long int __cuda_llmin(long long int a, long long int b)
{
  return llmin(a, b);
}

static unsigned long long int __cuda_ullmax(unsigned long long int a, unsigned long long int b)
{
  return ullmax(a, b);
}

static unsigned long long int __cuda_ullmin(unsigned long long int a, unsigned long long int b)
{
  return ullmin(a, b);
}

static long long int __cuda_llrintf(float a)
{


#line 1310 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return __float2ll_rn(a);
#line 1312 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static long int __cuda_lrintf(float a)
{


#line 1319 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"


#line 1322 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return (long int)__float2int_rn(a);
#line 1324 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
#line 1325 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_nearbyintf(float a)
{


#line 1332 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return roundf(a);


#line 1336 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_fmaxf(float a, float b)
{


#line 1343 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return fmaxf(a, b);


#line 1347 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_fminf(float a, float b)
{


#line 1354 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return fminf(a, b);


#line 1358 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}






static int __cuda___finitef(float a)
{
  return __cuda_fabsf(a) < __int_as_float(0x7f800000);
}








#line 1378 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

static int __cuda___isinff(float a)
{
  return __cuda_fabsf(a) == __int_as_float(0x7f800000);
}

static int __cuda___isnanf(float a)
{
  return !(__cuda_fabsf(a) <= __int_as_float(0x7f800000));
}

static float __cuda_nextafterf(float a, float b)
{
  unsigned int ia;
  unsigned int ib;
  ia = __float_as_int(a);
  ib = __float_as_int(b);

  if ((ia << 1) < 0x01000000) ia &= 0x80000000; 
  if ((ib << 1) < 0x01000000) ib &= 0x80000000; 
#line 1399 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  if (__cuda___isnanf(a) || __cuda___isnanf(b)) return a + b; 
  if (__int_as_float (ia | ib) == 0.0f) return __int_as_float(ib);

  if (__int_as_float(ia) == 0.0f) {
    return __cuda_copysignf(1.175494351e-38f, b); 
  }




#line 1410 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  if ((a < b) && (a < 0.0f)) ia--;
  if ((a < b) && (a > 0.0f)) ia++;
  if ((a > b) && (a < 0.0f)) ia++;
  if ((a > b) && (a > 0.0f)) ia--;
  a = __int_as_float(ia);

  if (__cuda_fabsf(a) < 1.175494351e-38f) {
    a = __int_as_float(ia & 0x80000000); 
  }
#line 1420 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return a;
}

static float __cuda_nanf(const char *tagp)
{
  
  return __int_as_float(0x7fffffff);
}

static float __internal_fmad(float a, float b, float c)
{


#line 1434 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return a * b + c;
#line 1436 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}


static float __internal_atanhf_kernel(float a_1, float a_2)
{
  float a, a2, t;

  a = a_1 + a_2;
  a2 = a * a;    
  t =                         1.566305595598990E-001f/64.0f;
  t = __internal_fmad (t, a2, 1.995081856004762E-001f/16.0f);
  t = __internal_fmad (t, a2, 3.333382699617026E-001f/4.0f);
  t = t * a2;
  t = __internal_fmad (t, a, a_2);
  t = t + a_1;
  return t;
}  




static float __internal_atanf_kernel(float a)
{
  float t4, t0, t1;

  t4 = a * a;
  t0 = -5.674867153f;
  t0 = __internal_fmad (t4, -0.823362947f, t0);
  t0 = __internal_fmad (t0, t4, -6.565555096f);
  t0 = t0 * t4;
  t0 = t0 * a;
  t1 = t4 + 11.33538818f;
  t1 = __internal_fmad (t1, t4, 28.84246826f);
  t1 = __internal_fmad (t1, t4, 19.69667053f);
  t1 = 1.0f / t1;
  a = __internal_fmad (t0, t1, a);
  return a;
}


static float __internal_tan_kernel(float a)
{
  float a2, s, t;

  a2 = a * a;
  t  = __internal_fmad (4.114678393115178E-003f, a2, -8.231194034909670E-001f);
  s  = a2 - 2.469348886157666E+000f;
  s  = 1.0f / s;
  t  = t * s;
  t  = t * a2;
  t  = __internal_fmad (t, a, a);
  return t;
}

static float __internal_accurate_logf(float a)
{
  float t;
  float z;
  float m;
  int ia;
  ia = __float_as_int(a);

  if ((a > 0.0f) && (a < __int_as_float(0x7f800000))) {
    int e = -127;







#line 1508 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    
    m = __int_as_float((ia & 0x807fffff) | 0x3f800000);
    e += ((unsigned)ia >> 23);
    if (m > 1.414213562f) {
      m = m * 0.5f;
      e = e + 1;
    }      
    t = m - 1.0f;
    z = m + 1.0f;
    z = __fdividef (t, z);
    z = -t * z;
    z = __internal_atanhf_kernel(t, z);
    z = __internal_fmad ((float)e, 0.693147181f, z);
    return z;
  } else {
    
    return __logf(a);
  }
}  

static float2 __internal_log_ep(float a)
{
  float2 res;
  int expo;
  float m;
  float log_hi, log_lo;
  float t_hi, t_lo;
  float f, g, u, v, q;


#line 1539 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float r, s, e;
#line 1541 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  expo = (__float_as_int(a) >> 23) & 0xff;







#line 1550 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  expo -= 127;
  m = __int_as_float((__float_as_int(a) & 0x807fffff) | 0x3f800000);
  if (m > 1.414213562f) {
    m = m * 0.5f;
    expo = expo + 1;
  }

  




  f = m - 1.0f;
  g = m + 1.0f;
  g = 1.0f / g;
  u = 2.0f * f * g;
  v = u * u;
  q = 1.49356810919559350E-001f/64.0f;
  q = __internal_fmad (q, v, 1.99887797540072460E-001f/16.0f);
  q = __internal_fmad (q, v, 3.33333880955515580E-001f/4.0f);
  q = q * v;
  q = q * u;
  log_hi = __int_as_float(__float_as_int(u) & 0xfffff000);
  v = __int_as_float(__float_as_int(f) & 0xfffff000);
  u = 2.0f * (f - log_hi);
  f = f - v;
  u = __internal_fmad (-log_hi, v, u);
  u = __internal_fmad (-log_hi, f, u);
  u = g * u;
  

  
  r = log_hi + u;
  s = u - (r - log_hi);
  log_hi = r;
  log_lo = s;
  
  r = log_hi + q;
  s = ((log_hi - r) + q) + log_lo;
  log_hi = e = r + s;
  log_lo = (r - e) + s;

  
  t_hi = expo * 0.6931457519f;    
  t_lo = expo * 1.4286067653e-6f;

  
  r = t_hi + log_hi;
  s = (((t_hi - r) + log_hi) + log_lo) + t_lo;
  res.y = e = r + s;
  res.x = (r - e) + s;
  return res;
}

static float __internal_accurate_log2f(float a)
{
  return 1.442695041f * __internal_accurate_logf(a);
}




static float2 __internal_dsmul (float2 x, float2 y)
{
    float2 z;


#line 1618 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    float up, vp, u1, u2, v1, v2, mh, ml;
#line 1620 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    up  = x.y * 4097.0f;
    u1  = (x.y - up) + up;
    u2  = x.y - u1;
    vp  = y.y * 4097.0f;
    v1  = (y.y - vp) + vp;
    v2  = y.y - v1;
    mh  = __fmul_rn(x.y,y.y);
    ml  = (((u1 * v1 - mh) + u1 * v2) + u2 * v1) + u2 * v2;
    ml  = (__fmul_rn(x.y,y.x) + __fmul_rn(x.x,y.y)) + ml;
    z.y = up = mh + ml;
    z.x = (mh - up) + ml;
    return z;
}


static __attribute__((__constant__)) unsigned int __cudart_i2opi_f [] = {
  0x3c439041,
  0xdb629599,
  0xf534ddc0,
  0xfc2757d1,
  0x4e441529,
  0xa2f9836e,
};


static float __internal_trig_reduction_kernel(float a, int *quadrant)
{
  float j;
  int q;
  if (__cuda_fabsf(a) > 48039.0f) {
    
    unsigned int ia = __float_as_int(a);
    unsigned int s = ia & 0x80000000;
    unsigned int result[7];
    unsigned int phi, plo;
    unsigned int hi, lo;
    unsigned int e;
    int idx;
    e = ((ia >> 23) & 0xff) - 128;
    ia = (ia << 8) | 0x80000000;
    
    idx = 4 - (e >> 5);
    hi = 0;

#pragma unroll 1
#line 1666 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    for (q = 0; q < 6; q++) {
      plo = __cudart_i2opi_f[q] * ia;
      phi = __umulhi (__cudart_i2opi_f[q], ia);
      lo = hi + plo;
      hi = phi + (lo < plo);
      result[q] = lo;
    }
    result[q] = hi;
    e = e & 31;
    


    hi = result[idx+2];
    lo = result[idx+1];
    if (e) {
      q = 32 - e;
      hi = (hi << e) + (lo >> q);
      lo = (lo << e) + (result[idx] >> q);
    }
    q = hi >> 30;
    
    hi = (hi << 2) + (lo >> 30);
    lo = (lo << 2);
    e = (hi + (lo > 0)) > 0x80000000; 
    q += e;
    if (s) q = -q;
    if (e) {
      unsigned int t;
      hi = ~hi;
      lo = -(int)lo;
      t = (lo == 0);
      hi += t;
      s = s ^ 0x80000000;
    }
    *quadrant = q;
    
    e = 0;
    while ((int)hi > 0) {
      hi = (hi << 1) + (lo >> 31);
      lo = (lo << 1);
      e--;
    }
    lo = hi * 0xc90fdaa2;
    hi = __umulhi(hi, 0xc90fdaa2);
    if ((int)hi > 0) {
      hi = (hi << 1) + (lo >> 31);
      lo = (lo << 1);
      e--;
    }
    hi = hi + (lo > 0);
    ia = s | (((e + 126) << 23) + (hi >> 8) + ((hi << 24) >= 0x80000000));
    return __int_as_float(ia);
  }
  q = __float2int_rn (a * 0.636619772f);
  j = (float)q;
  a = __internal_fmad (-j, 1.5703125000000000e+000f, a);



#line 1726 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  a = __internal_fmad (-j, 4.8351287841796875e-004f, a);
  a = __internal_fmad (-j, 3.1385570764541626e-007f, a);
#line 1729 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  a = __internal_fmad (-j, 6.0771005065061922e-011f, a);
  *quadrant = q;
  return a;
}










static float __internal_expf_kernel(float a, float scale)
{
  float j, z;

  j = __cuda_truncf(a * 1.442695041f);
  z = __internal_fmad (j, -0.6931457519f,    a);
  z = __internal_fmad (j, -1.4286067653e-6f, z);
  z = z * 1.442695041f;
  z = __cuda_exp2f(z) * __cuda_exp2f(j + scale);
  return z;
}

static float __internal_accurate_expf(float a)
{
  float z;

  z = __internal_expf_kernel(a, 0.0f);
  if (a < -105.0f) z = 0.0f;
  if (a >  105.0f) z = __int_as_float(0x7f800000);
  return z;
}

static float __internal_accurate_exp10f(float a)
{
  float j, z;

  j = __cuda_truncf(a * 3.321928094f);
  z = __internal_fmad (j, -3.0102920532226563e-001f, a);
  z = __internal_fmad (j, -7.9034171557301747e-007f, z);
  z = z * 3.321928094f;
  z = __cuda_exp2f(z) * __cuda_exp2f(j);
  if (a < -46.0f) z = 0.0f;
  if (a >  46.0f) z = __int_as_float(0x7f800000);
  return z;
}

static float __internal_lgammaf_pos(float a)
{
  float sum;
  float s, t;

  if (a == __int_as_float(0x7f800000)) {
    return a;
  }
  if (a >= 3.0f) {
    if (a >= 7.8f) {
      


      s = 1.0f / a;
      t = s * s;
      sum =                           0.77783067e-3f;
      sum = __internal_fmad (sum, t, -0.2777655457e-2f);
      sum = __internal_fmad (sum, t,  0.83333273853e-1f);
      sum = __internal_fmad (sum, s,  0.918938533204672f);
      s = 0.5f * __internal_accurate_logf(a);
      t = a - 0.5f;
      s = s * t;
      t = s - a;
      s = __fadd_rn(s, sum); 
      t = t + s;
      return t;
    } else {
      a = a - 3.0f;
      s =                        -7.488903254816711E+002f;
      s = __internal_fmad (s, a, -1.234974215949363E+004f);
      s = __internal_fmad (s, a, -4.106137688064877E+004f);
      s = __internal_fmad (s, a, -4.831066242492429E+004f);
      s = __internal_fmad (s, a, -1.430333998207429E+005f);
      t =                     a - 2.592509840117874E+002f;
      t = __internal_fmad (t, a, -1.077717972228532E+004f);
      t = __internal_fmad (t, a, -9.268505031444956E+004f);
      t = __internal_fmad (t, a, -2.063535768623558E+005f);
      t = __fdividef (s, t);
      t = t + a;
      return t;
    }
  } else if (a >= 1.5f) {
    a = a - 2.0f;
    t =                         4.959849168282574E-005f;
    t = __internal_fmad (t, a, -2.208948403848352E-004f);
    t = __internal_fmad (t, a,  5.413142447864599E-004f);
    t = __internal_fmad (t, a, -1.204516976842832E-003f);
    t = __internal_fmad (t, a,  2.884251838546602E-003f);
    t = __internal_fmad (t, a, -7.382757963931180E-003f);
    t = __internal_fmad (t, a,  2.058131963026755E-002f);
    t = __internal_fmad (t, a, -6.735248600734503E-002f);
    t = __internal_fmad (t, a,  3.224670187176319E-001f);
    t = __internal_fmad (t, a,  4.227843368636472E-001f);
    t = t * a;
    return t;
  } else if (a >= 0.7f) {
    a = 1.0f - a;
    t =                        4.588266515364258E-002f;
    t = __internal_fmad (t, a, 1.037396712740616E-001f);
    t = __internal_fmad (t, a, 1.228036339653591E-001f);
    t = __internal_fmad (t, a, 1.275242157462838E-001f);
    t = __internal_fmad (t, a, 1.432166835245778E-001f);
    t = __internal_fmad (t, a, 1.693435824224152E-001f);
    t = __internal_fmad (t, a, 2.074079329483975E-001f);
    t = __internal_fmad (t, a, 2.705875136435339E-001f);
    t = __internal_fmad (t, a, 4.006854436743395E-001f);
    t = __internal_fmad (t, a, 8.224669796332661E-001f);
    t = __internal_fmad (t, a, 5.772156651487230E-001f);
    t = t * a;
    return t;
  } else {
    t =                         3.587515669447039E-003f;
    t = __internal_fmad (t, a, -5.471285428060787E-003f);
    t = __internal_fmad (t, a, -4.462712795343244E-002f);
    t = __internal_fmad (t, a,  1.673177015593242E-001f);
    t = __internal_fmad (t, a, -4.213597883575600E-002f);
    t = __internal_fmad (t, a, -6.558672843439567E-001f);
    t = __internal_fmad (t, a,  5.772153712885004E-001f);
    t = t * a;
    t = __internal_fmad (t, a, a);
    return -__internal_accurate_logf(t);
  }
}


static float __internal_sin_kernel(float x)
{
  float x2, z;

  x2 = x * x;
  z  =                         -1.95152959e-4f;
  z  = __internal_fmad (z, x2,  8.33216087e-3f);
  z  = __internal_fmad (z, x2, -1.66666546e-1f);
  z  = z * x2;
  z  = __internal_fmad (z, x, x);
  return z;
}


static float __internal_cos_kernel(float x)
{
  float x2, z;

  x2 = x * x;
  z  =                          2.44331571e-5f;
  z  = __internal_fmad (z, x2, -1.38873163e-3f);
  z  = __internal_fmad (z, x2,  4.16666457e-2f);
  z  = __internal_fmad (z, x2, -5.00000000e-1f);
  z  = __internal_fmad (z, x2,  1.00000000e+0f);
  return z;
}

static float __internal_accurate_sinf(float a)
{
  float z;
  int   i;

  if ((__cuda___isinff(a)) || (a == 0.0f)) {
    return __fmul_rn (a, 0.0f);
  }
  z = __internal_trig_reduction_kernel(a, &i);
  
  if (i & 1) {
    z = __internal_cos_kernel(z);
  } else {
    z = __internal_sin_kernel(z);
  }
  if (i & 2) {
    z = -z;
  }
  return z;
}







static float __cuda_rintf(float a)
{


#line 1923 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return __cuda_nearbyintf(a);
#line 1925 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_sinf(float a)
{


#line 1932 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 1934 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return __internal_accurate_sinf(a);
#line 1936 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_cosf(float a)
{


#line 1943 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 1945 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float z;
  int i;

  if (__cuda___isinff(a)) {
    return __fadd_rn (a, -a); 
  }
  z = __internal_trig_reduction_kernel(a, &i);
  
  i++;
  if (i & 1) {
    z = __internal_cos_kernel(z);
  } else {
    z = __internal_sin_kernel(z);
  }
  if (i & 2) {
    z = -z;
  }
  return z;
#line 1964 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_tanf(float a)
{


#line 1971 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 1973 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float z;
  int   i;

  if (__cuda___isinff(a)) {
    return __fadd_rn (a, -a); 
  }
  z = __internal_trig_reduction_kernel(a, &i);
  
  z = __internal_tan_kernel(z);
  if (i & 1) {
    z = - (1.0f / z);
  }
  return z;
#line 1987 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_log2f(float a)
{


#line 1994 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 1996 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return __internal_accurate_log2f(a);
#line 1998 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_expf(float a)
{


#line 2005 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 2007 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return __internal_accurate_expf(a);
#line 2009 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_exp10f(float a)
{


#line 2016 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 2018 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return __internal_accurate_exp10f(a);
#line 2020 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_coshf(float a)
{
  float z;

  a = __cuda_fabsf(a);
  z = __internal_expf_kernel(a, -2.0f);
  z = __internal_fmad (2.0f, z,  __fdividef (0.125f, z));
  if (a >= 90.0f) {
    z = __int_as_float(0x7f800000);     
  }
  return z;
}

static float __cuda_sinhf(float a)
{
  float s, z;

  s = a;
  a = __cuda_fabsf(a);
  if (a < 1.0f) {         
    float a2 = a * a;
    
    z =                         2.816951222e-6f;
    z = __internal_fmad (z, a2, 1.983615978e-4f);
    z = __internal_fmad (z, a2, 8.333350058e-3f);
    z = __internal_fmad (z, a2, 1.666666650e-1f);
    z = z * a2;
    z = __internal_fmad (z, a, a);
  } else {
    z = __internal_expf_kernel(a, -2.0f);
    z = __internal_fmad (2.0f, z, -__fdividef (0.125f, z));
    if (a >= 90.0f) {
      z = __int_as_float(0x7f800000);     
    }
  }
  return __cuda_copysignf(z, s);
}

static float __cuda_tanhf(float a)
{
  float s, t;

  t = __cuda_fabsf(a);
  if (t < 0.55f) {
    float z, z2;
    z = t;
    z2 = z * z;
    t =                          1.643758066599993e-2f;
    t = __internal_fmad (t, z2, -5.267181327760551e-2f);
    t = __internal_fmad (t, z2,  1.332072505223051e-1f);
    t = __internal_fmad (t, z2, -3.333294663641083e-1f);
    t = t * z2;
    s = __internal_fmad (t, z, z);
  } else {
    s = 1.0f - __fdividef(2.0f,(__internal_expf_kernel(2.0f * t, 0.0f)+1.0f));
    if (t >= 88.0f) {
      s = 1.0f;
    }
  }
  return __cuda_copysignf(s, a);
}

static float __cuda_atan2f(float a, float b)
{


#line 2089 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float t0, t1, t3, fa, fb;

  
  
  fb = __cuda_fabsf(b);
  fa = __cuda_fabsf(a);

  if (fa == 0.0f && fb == 0.0f) {
    t3 = __cuda___signbitf(b) ? 3.141592654f : 0;
  } else if ((fa == __int_as_float(0x7f800000)) && (fb == __int_as_float(0x7f800000))) {
    t3 = __cuda___signbitf(b) ? 2.356194490f : 0.785398163f;
  } else {
    
    if (fb < fa) {
      t0 = fa;
      t1 = fb;
    } else {
      t0 = fb;
      t1 = fa;
    }
    t3 = __internal_accurate_fdividef(t1, t0);
    t3 = __internal_atanf_kernel(t3);
    
    if (fa > fb)  t3 = 1.570796327f - t3;
    if (b < 0.0f) t3 = 3.141592654f - t3;
  }
  t3 = __cuda_copysignf(t3, a);

  return t3;
#line 2119 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_atanf(float a)
{
  float t0, t1;

  
  t0 = __cuda_fabsf(a);
  t1 = t0;
  if (t0 > 1.0f) {
    t1 = 1.0f / t1;
  }
  
  t1 = __internal_atanf_kernel(t1);
  
  if (t0 > 1.0f) {
    t1 = 1.570796327f - t1;
  }
  return __cuda_copysignf(t1, a);
}


static float __internal_asinf_kernel(float a)
{
  float t2, t3, t4;

  t2 = a * a;
  t3 = -0.501162291f;
  t3 = __internal_fmad (t3, t2, 0.915201485f);
  t3 = t3 * t2;
  t3 = t3 * a;
  t4 = t2 - 5.478654385f;
  t4 = __internal_fmad (t4, t2, 5.491230488f);
  t4 = 1.0f / t4;
  a = __internal_fmad (t3, t4, a);
  return a;
}

static float __cuda_asinf(float a)
{
  float t0, t1, t2;

  t0 = __cuda_fabsf(a);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = __cuda_sqrtf(t2);
  t1 = t0 > 0.575f ? t2 : t0;
  t1 = __internal_asinf_kernel(t1);
  t2 = __internal_fmad (-2.0f, t1, 1.570796327f);
  if (t0 > 0.575f) {
    t1 = t2;
  }
  return __cuda_copysignf(t1, a);
}

static float __cuda_acosf(float a)
{
  float t0, t1, t2;

  t0 = __cuda_fabsf(a);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = __cuda_sqrtf(t2);
  t1 = t0 > 0.575f ? t2 : t0;
  t1 = __internal_asinf_kernel(t1);
  t1 = t0 > 0.575f ? 2.0f * t1 : 1.570796327f - t1;
  if (__cuda___signbitf(a)) {
    t1 = 3.141592654f - t1;
  }
  return t1;
}

static float __cuda_logf(float a)
{


#line 2196 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 2198 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return __internal_accurate_logf(a);
#line 2200 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_log10f(float a)
{


#line 2207 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 2209 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return 0.434294482f * __internal_accurate_logf(a);
#line 2211 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_log1pf(float a)
{


#line 2218 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float t;



#line 2223 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  if (a >= -0.394f && a <= 0.65f) {
    
    t = a + 2.0f;
    t = __fdividef (a, t);
    t = -a * t;
    t = __internal_atanhf_kernel (a, t);
  } else {
    t = __internal_accurate_logf (1.0f + a);
  }
  return t;
#line 2234 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_acoshf(float a)
{


#line 2241 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float t;

  t = a - 1.0f;
  if (__cuda_fabsf(t) > 8388608.0f) {
    
    return 0.693147181f + __internal_accurate_logf(a);
  } else {
    t = t + __cuda_sqrtf(__internal_fmad (a, t, t));
    return __cuda_log1pf(t);
  }
#line 2252 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_asinhf(float a)
{


#line 2259 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float fa, oofa, t;

  fa = __cuda_fabsf(a);
  if (fa > 8.507059173e37f) {   
    t = 0.693147181f + __logf(fa);  
  } else {
    oofa = 1.0f / fa;
    t =fa+__fdividef (fa,(oofa+__cuda_sqrtf(__internal_fmad(oofa,oofa,1.0f))));
    t = __cuda_log1pf(t);
  }
  return __cuda_copysignf(t, a);
#line 2271 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_atanhf(float a)
{


#line 2278 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float fa, t;

  fa = __cuda_fabsf(a);
  t = __fdividef ((2.0f * fa), (1.0f - fa));
  t = 0.5f * __cuda_log1pf(t);
  return __cuda_copysignf(t, a);
#line 2285 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_expm1f(float a)
{
  float t, z, j, u;
  
  t = __cuda_rintf (a * 1.442695041f);
  z = __internal_fmad (-t, 0.6931457519f, a);
  z = __internal_fmad (-t, 1.4286067653e-6f, z);
  
  if (__cuda_fabsf(a) < 0.41f) {
    z = a;
    t = 0.0f;
  }
  
  j = t;
  if (t == 128.0f) j = j - 1.0f; 
  
  u =                        1.38795078474044430E-003f;
  u = __internal_fmad (u, z, 8.38241261853264930E-003f);
  u = __internal_fmad (u, z, 4.16678317762833940E-002f);
  u = __internal_fmad (u, z, 1.66663978874356580E-001f);
  u = __internal_fmad (u, z, 4.99999940395997040E-001f);
  u = u * z;
  u = __internal_fmad (u, z, z);
  if (a == 0.0f) u = a; 
  
  z = __cuda_exp2f (j);
  a = z - 1.0f;
  if (a != 0.0f) u = __internal_fmad (u, z, a); 
  if (t == 128.0f) u = u + u; 
  
  if (j >  128.0f) u = __int_as_float(0x7f800000);
  if (j <  -25.0f) u = -1.0f;
  return u;
}

static float __cuda_hypotf(float a, float b)
{


#line 2327 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float v, w, t;

  a = __cuda_fabsf(a);
  b = __cuda_fabsf(b);
  
  if (a > b) {
    v = a;
    w = b; 
  } else {
    v = b;
    w = a;
  }
  t = __internal_accurate_fdividef(w, v);
  t = __internal_fmad (t, t, 1.0f);
  t = v * __cuda_sqrtf(t);
  if (v == 0.0f) {
    t = v + w;
  }
  if ((v == __int_as_float(0x7f800000)) || (w == __int_as_float(0x7f800000))) {
    t = __int_as_float(0x7f800000);
  }
  return t;
#line 2350 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_cbrtf(float a)
{


#line 2357 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float s, t;

  s = __cuda_fabsf(a);
  if ((a == 0.0f) || (s == __int_as_float(0x7f800000))) {
    return a + a;
  } 
  t = __cuda_exp2f(0.333333333f * __log2f(s));   
  t = t-(t-(__fdividef(s,(t*t))))*0.333333333f;  

  if (__cuda___signbitf(a)) {
    t = -t;
  }


#line 2372 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return t;
#line 2374 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_erff(float a)
{
  float t, r, q;

  t = __cuda_fabsf(a);
  if (t < 1.0f) {
    t = t * t;
    r =                        -5.58510127926029810E-004f;
    r = __internal_fmad (r, t,  4.90688891415893070E-003f);
    r = __internal_fmad (r, t, -2.67027980930150640E-002f);
    r = __internal_fmad (r, t,  1.12799056505903940E-001f);
    r = __internal_fmad (r, t, -3.76122956138427440E-001f);
    r = __internal_fmad (r, t,  1.12837911712623450E+000f);
    a = a * r;
  } else if (t <= __int_as_float(0x7f800000)) { 
    


    q = __internal_fmad (t, 0.3275911f, 1.0f);
    q = 1.0f / q;
    r =                         1.061405429f;
    r = __internal_fmad (r, q, -1.453152027f);
    r = __internal_fmad (r, q,  1.421413741f);
    r = __internal_fmad (r, q, -0.284496736f);
    r = __internal_fmad (r, q,  0.254829592f);
    r = r * q;
    q = __internal_expf_kernel(-a * a, 0.0f);
    r = __internal_fmad (-q, r, 1.0f);
    if (t >= 5.5f) {
      r = 1.0f;
    }
    a = __int_as_float (__float_as_int(r) | (__float_as_int(a) & 0x80000000));
  }
  return a;
}

static float __cuda_erfinvf (float a)
{
  float fa, t;
  
  fa = fabsf(a);
  if (fa >= 1.0f) {
    t = __cuda_rsqrtf (__int_as_float (0xffc00000));  
    if (fa == 1.0f) {
      t = a * __int_as_float(0x7f800000);   
    }
  } else if (fa > 0.9375f) {
    



    float p, q;

    t = __cuda_log1pf(-fa);
    t = __cuda_rsqrtf(-t);
    p =                        -1.64441567910e-1f;
    p = __internal_fmad (p, t,  6.80544246825e-1f);
    p = __internal_fmad (p, t, -1.12808139162e+0f);
    p = __internal_fmad (p, t,  6.90969348887e-1f);
    p = __internal_fmad (p, t,  1.38271964963e+0f);
    p = __internal_fmad (p, t,  1.55047000312e-1f);
    q =                     t + 1.38522814199e+0f;
    q = __internal_fmad (q, t,  1.55024849822e-1f);
    q = q * t;
    t = __fdividef (p, q);
    if (a < 0.0f) t = -t;
  } else if (fa > 0.75f) {
    



    float p, q;

    t = __internal_fmad (a, a, -0.87890625f);
    p =                        -7.1986748896e+0f;
    p = __internal_fmad (p, t, +1.3411974175e+1f);
    p = __internal_fmad (p, t, -5.1381573203e+0f);
    p = __internal_fmad (p, t,  4.9633374831e-1f);
    q =                     t  -1.1436535838e+1f;
    q = __internal_fmad (q, t,  1.3568885572e+1f);
    q = __internal_fmad (q, t, -4.1747509256e+0f);
    q = __internal_fmad (q, t,  3.5327242323e-1f);
    p = __fdividef (p, q);
    t = a * p;
  } else {  
    float a2;

    a2 = a * a;
    t =                          6.1046168794766742E-001f;
    t = __internal_fmad (t, a2, -8.9504882462753121E-001f);
    t = __internal_fmad (t, a2,  7.0224162369928511E-001f);
    t = __internal_fmad (t, a2, -1.9993784895823222E-001f);
    t = __internal_fmad (t, a2,  1.1920613463949599E-001f);
    t = __internal_fmad (t, a2,  8.0131492246997685E-002f);
    t = __internal_fmad (t, a2,  1.2793154958377403E-001f);
    t = __internal_fmad (t, a2,  2.3200529172828793E-001f);
    t = __internal_fmad (t, a2,  8.8622695604694379E-001f);
    t = t * a;
  }
  return t;
}

static float __cuda_erfcf(float a)
{


#line 2483 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  if (a <= 0.813f) {
    return 1.0f - __cuda_erff(a);
  } else if (a > 10.055f) {
    return 0.0f;
  } else {
    float p;
    float q;
    float h;
    float l;
    



    p =                        1.9997798317768276E-006f;
    p = __internal_fmad (p, a, 5.6410849770777538E-001f);
    p = __internal_fmad (p, a, 2.4579440583231387E+000f);
    p = __internal_fmad (p, a, 4.9763988947448308E+000f);
    p = __internal_fmad (p, a, 4.5767235962336885E+000f);
    q =                    a + 4.3540863476555538E+000f;
    q = __internal_fmad (q, a, 9.3453217404616584E+000f);
    q = __internal_fmad (q, a, 1.0132282183545772E+001f);
    q = __internal_fmad (q, a, 4.5781789912165518E+000f);   
    
    h = 1.0f / q;
    q = __internal_fmad (-q * h, h, 2.0f * h);
    p = p * q;
    
    h = __int_as_float(__float_as_int(a) & 0xfffff000);  
    l = __fadd_rn (a, -h);  
    q = __fmul_rn (-h, h);  
    q = __internal_expf_kernel(q, 0.0f);
    a = a + h;
    l = l * a;
    h = __internal_expf_kernel(-l, 0.0f);
    q = q * h;
    p = p * q;
    return p;
  }
}

static float __cuda_erfcinvf (float a)
{
  float t;
  if (a <= 0.0f) {
    t = __int_as_float(0x7fffffff);
    if (a == 0.0f) {
      t = (1.0f - a) * __int_as_float(0x7f800000);
    }
  } 
  else if (a >= 0.0625f) {
    t = __cuda_erfinvf (1.0f - a);
  }
  else {
    float p, q;
    t = __cuda_logf(a);
    t = __cuda_rsqrtf(-t);
    p =                        -1.64441567910e-1f;
    p = __internal_fmad (p, t,  6.80544246825e-1f);
    p = __internal_fmad (p, t, -1.12808139162e+0f);
    p = __internal_fmad (p, t,  6.90969348887e-1f);
    p = __internal_fmad (p, t,  1.38271964963e+0f);
    p = __internal_fmad (p, t,  1.55047000312e-1f);
    q =                     t + 1.38522814199e+0f;
    q = __internal_fmad (q, t,  1.55024849822e-1f);
    q = q * t;
    t = __fdividef (p, q);
  }
  return t;
}

static float __cuda_lgammaf(float a)
{
  float t;
  float i;
  int quot;
  t = __internal_lgammaf_pos(__cuda_fabsf(a));
  if (a >= 0.0f) return t;
  a = __cuda_fabsf(a);
  i = __cuda_floorf(a);                   
  if (a == i) return __int_as_float(0x7f800000); 
  if (a < 1e-19f) return -__internal_accurate_logf(a);
  i = __cuda_rintf (2.0f * a);
  quot = (int)i;
  i = __internal_fmad (-i, 0.5f, a);
  i = i * 3.141592654f;
  if (quot & 1) {
    i = __internal_cos_kernel(i);
  } else {
    i = __internal_sin_kernel(i);
  }
  i = __cuda_fabsf(i);
  t = 1.144729886f - __internal_accurate_logf(i * a) - t;
  return t;
}

static float __cuda_ldexpf(float a, int b)
{


#line 2583 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float fa = __cuda_fabsf(a);

  if ((fa == 0.0f) || (fa == __int_as_float(0x7f800000)) || (b == 0)) {
    if (!(fa > 0.0f)) a = a + a;
    return a;
  } else if (__cuda_abs(b) < 126) {
    return a * __cuda_exp2f((float)b);
  } else if (__cuda_abs(b) < 252) {
    int bhalf = b / 2;
    return a * __cuda_exp2f((float)bhalf) * __cuda_exp2f((float)(b - bhalf));
  } else {
    int bquarter = b / 4;
    float t = __cuda_exp2f((float)bquarter);
    return a * t * t * t * __cuda_exp2f((float)(b - 3 * bquarter));
  }
#line 2599 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_scalbnf(float a, int b)
{


#line 2606 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  
  return __cuda_ldexpf(a, b);
#line 2609 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_scalblnf(float a, long int b)
{


#line 2616 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  int t;
  if (b > 2147483647L) {
    t = 2147483647;
  } else if (b < (-2147483647 - 1)) {
    t = (-2147483647 - 1);
  } else {
    t = (int)b;
  }
  return __cuda_scalbnf(a, t);
#line 2626 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_frexpf(float a, int *b)
{
  float fa = __cuda_fabsf(a);
  unsigned int expo;
  unsigned int denorm;

  if (fa < 1.175494351e-38f) {
    a *= 16777216.0f;
    denorm = 24;
  } else {
    denorm = 0;
  }
  expo = ((__float_as_int(a) >> 23) & 0xff);
  if ((fa == 0.0f) || (expo == 0xff)) {
    expo = 0;
    a = a + a;
  } else {  
    expo = expo - denorm - 126;
    a = __int_as_float(((__float_as_int(a) & 0x807fffff) | 0x3f000000));
  }
  *b = expo;
  return a;
}

static float __cuda_modff(float a, float *b)
{


#line 2657 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float t;
  if (__cuda___finitef(a)) {
    t = __cuda_truncf(a);
    *b = t;
    t = a - t;
    return __cuda_copysignf(t, a);
  } else if (__cuda___isinff(a)) {
    t = 0.0f;
    *b = a;
    return __cuda_copysignf(t, a);
  } else {
    *b = a; 
    return a;
  }
#line 2672 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_fmodf(float a, float b)
{


#line 2679 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float orig_a = a;
  float orig_b = b;
  a = __cuda_fabsf(a);
  b = __cuda_fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    return __cuda_rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {











#line 2701 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
#line 2707 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    while (scaled_b >= b) {
      if (a >= scaled_b) {
        a -= scaled_b;
      }
      scaled_b *= 0.5f;
    }
    return __cuda_copysignf(a, orig_a);
  } else {
    if (!(a > 0.0f)) orig_a = orig_a + orig_a;
    return orig_a;
  }
#line 2719 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_remainderf(float a, float b)
{

  float twoa = 0.0f;
  unsigned int quot0 = 0;  
  float orig_a = a;
  float orig_b = b;

  a = __cuda_fabsf(a);
  b = __cuda_fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    return __cuda_rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {










#line 2748 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
    
    if (a == scaled_b) {
      return __int_as_float(__float_as_int(orig_a) & 0x80000000);
    }    
#line 2758 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    while (scaled_b >= b) {
      quot0 = 0;
      if (a >= scaled_b) {
        twoa = __internal_fmad (a, 2.0f, -scaled_b) - scaled_b;
        a = a - scaled_b;
        quot0 = 1;
      }
      scaled_b *= 0.5f;
    }
  }
  






#line 2776 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  if (a >= 1.175494351e-38f) {
    twoa = 2.0f * a;
    if ((twoa > b) || ((twoa == b) && quot0)) {
      a -= b;
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  } else {
    
    if ((twoa > b) || ((twoa == b) && quot0)) {
      a = 0.5f * __internal_fmad(b, -2.0f, twoa);
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  }
#line 2790 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  a = __int_as_float((__float_as_int(orig_a) & 0x80000000)^
                     __float_as_int(a));
  return a;
}

static float __cuda_remquof(float a, float b, int* quo)
{
  float twoa = 0.0f;
  unsigned int quot = 0;  
  unsigned int sign;
  float orig_a = a;
  float orig_b = b;

  
  sign = 0 - (__cuda___signbitf(a) != __cuda___signbitf(b));
  a = __cuda_fabsf(a);
  b = __cuda_fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    *quo = quot;
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    *quo = quot;
    return __cuda_rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {











#line 2827 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) | 
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }
    
    if (a == scaled_b) {
      if (__float_as_int(b) > 0x7e800000) {
          a *= 0.25f;
          b *= 0.25f;
      }
      a = __fdividef(a,b) + 0.5f;
      quot = (a < 8.0f) ? (int)a : 0;
      quot = quot ^ sign;
      quot = quot - sign;
      *quo = quot;
      return __int_as_float(__float_as_int(orig_a) & 0x80000000);
    }    
#line 2846 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    while (scaled_b >= b) {
      quot <<= 1;
      if (a >= scaled_b) {
        twoa = (2.0f * a - scaled_b) - scaled_b;
        a -= scaled_b;
        quot += 1;
      }
      scaled_b *= 0.5f;
    }
  }
  







#line 2865 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  if (a >= 1.175494351e-38f) {
    twoa = 2.0f * a;
    if ((twoa > b) || ((twoa == b) && (quot & 1))) {
      quot++;
      a -= b;
      a = __cuda_copysignf (a, -1.0f);
    }
  } else {
    
    if ((twoa > b) || ((twoa == b) && (quot & 1))) {
      quot++;
      a = 0.5f * (twoa - 2.0f * b);
      a = __cuda_copysignf (a, -1.0f);
    }
  }
#line 2881 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  a = __int_as_float((__float_as_int(orig_a) & 0x80000000)^
                     __float_as_int(a));
  quot = quot & (~((~0)<<3));
  quot = quot ^ sign;
  quot = quot - sign;
  *quo = quot;
  return a;
}

static float __cuda_fmaf(float a, float b, float c)
{
  return __fmaf_rn(a, b, c);
}

static float __internal_accurate_powf(float a, float b)
{
  float2 loga, prod;


#line 2901 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float t;
#line 2903 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

  
  loga = __internal_log_ep(a);

  
  if (__cuda_fabsf(b) > 1.0e34f) b *= 1.220703125e-4f;
  prod.y = b;
  prod.x = 0.0f;
  prod = __internal_dsmul (prod, loga);

  
  if (__float_as_int(prod.y) == 0x42b17218) {
    prod.y = __int_as_float(__float_as_int(prod.y) - 1);
    prod.x = prod.x + __int_as_float(0x37000000);
  }

  
  t = __cuda_expf(prod.y);
  
  if (t != __int_as_float(0x7f800000)) {
    


    t = __internal_fmad (t, prod.x, t);
  }
  return t;
}

static float __cuda_powif(float a, int b)
{
  unsigned int e = __cuda_abs(b);
  float        r = 1.0f;

  while (1) {
    if ((e & 1) != 0) {
      r = r * a;
    }
    e = e >> 1;
    if (e == 0) {
      return b < 0 ? 1.0f / r : r;
    }
    a = a * a;
  }
}

static double __cuda_powi(double a, int b)
{
  unsigned int e = __cuda_abs(b);
  double       r = 1.0;

  while (1) {
    if ((e & 1) != 0) {
      r = r * a;
    }
    e = e >> 1;
    if (e == 0) {
      return b < 0 ? 1.0 / r : r;
    }
    a = a * a;
  }
}

static float __cuda_powf(float a, float b)
{


#line 2970 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 2972 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  int bIsOddInteger;
  float t;
  if (a == 1.0f || b == 0.0f) {
    return 1.0f;
  } 
  if (__cuda___isnanf(a) || __cuda___isnanf(b)) {
    return a + b;
  }
  if (a == __int_as_float(0x7f800000)) {
    return __cuda___signbitf(b) ? 0.0f : __int_as_float(0x7f800000);
  }
  if (__cuda___isinff(b)) {
    if (a == -1.0f) {
      return 1.0f;
    }
    t = (__cuda_fabsf(a) > 1.0f) ? __int_as_float(0x7f800000) : 0.0f;
    if (b < 0.0f) {
      t = 1.0f / t;
    }
    return t;
  }
  bIsOddInteger = (b - (2.0f * floorf(0.5f * b))) == 1.0f;
  if (a == 0.0f) {
    t = bIsOddInteger ? a : 0.0f;
    if (b < 0.0f) {
      t = 1.0f / t;
    }
    return t;
  } 
  if (a == -__int_as_float(0x7f800000)) {
    t = - ((b < 0.0f) ? (1.0f / a) : a);
    if (bIsOddInteger) {
      t = __int_as_float(__float_as_int(t) ^ 0x80000000);
    }
    return t;
  } 
  if ((a < 0.0f) && (b != __cuda_truncf(b))) {
    return __cuda_rsqrtf(__int_as_float(0xffc00000));
  }
  t = __cuda_fabsf(a);
  t = __internal_accurate_powf(t, b);
  if ((a < 0.0f) && bIsOddInteger) {
    t = __int_as_float(__float_as_int(t) ^ 0x80000000);
  }
  return t;
#line 3018 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}


static float __internal_tgammaf_kernel(float a)
{
  float t;
  t =                        -1.05767296987211380E-003f;
  t = __internal_fmad (t, a,  7.09279059435508670E-003f);
  t = __internal_fmad (t, a, -9.65347121958557050E-003f);
  t = __internal_fmad (t, a, -4.21736613253687960E-002f);
  t = __internal_fmad (t, a,  1.66542401247154280E-001f);
  t = __internal_fmad (t, a, -4.20043267827838460E-002f);
  t = __internal_fmad (t, a, -6.55878234051332940E-001f);
  t = __internal_fmad (t, a,  5.77215696929794240E-001f);
  t = __internal_fmad (t, a,  1.00000000000000000E+000f);
  return t;
}





static float __cuda_tgammaf(float a)
{
  float s, xx, x=a;
  if (x >= 0.0f) {
    if (x > 36.0f) x = 36.0f; 
    s = 1.0f;
    xx = x;
    if (x > 34.03f) { 
      xx -= 1.0f;
    }
    while (xx > 1.5f) {
      xx = xx - 1.0f;
      s = s * xx;
    }
    if (x >= 0.5f) {
      xx = xx - 1.0f;
    }
    xx = __internal_tgammaf_kernel(xx);
    if (x < 0.5f) {
      xx = xx * x;
    }
    s = __fdividef(s, xx);
    if (x > 34.03f) {
      
      xx = x - 1.0f;
      s = s * xx;
    }
    return s;
  } else {
    if (x == __cuda_floorf(x)) {  
      x = __int_as_float(0x7fffffff);  


#line 3074 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
    } 
    if (x < -41.1f) x = -41.1f; 
    xx = x;
    if (x < -34.03f) {           
      xx += 6.0f;
    } 
    s = xx;
    while (xx < -0.5f) {
      xx = xx + 1.0f;
      s = s * xx;
    }
    xx = __internal_tgammaf_kernel(xx);
    s = s * xx;
    s = 1.0f / s;
    if (x < -34.03f) {
      xx = x;
      xx *= (x + 1.0f);
      xx *= (x + 2.0f);
      xx *= (x + 3.0f);
      xx *= (x + 4.0f);
      xx *= (x + 5.0f);
      xx = 1.0f / xx;
      s = s * xx;
      if ((a < -42.0f) && !(((int)a)&1)) {
        s = __int_as_float(0x80000000);
      }
    }    
    return s;
  }
}

static float __cuda_roundf(float a)
{


#line 3110 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float fa = __cuda_fabsf(a);
  float u = __cuda_copysignf (0.5f, a);
  u = __cuda_truncf (a + u);
  if (fa > 8388608.0f) u = a;
  if (fa < 0.5f) u = __cuda_truncf (a);
  return u;
#line 3117 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static long long int __internal_llroundf_kernel(float a)
{
  unsigned long long int res, t = 0LL;
  int shift;
  unsigned int ia = __float_as_int(a);
  
  if ((ia << 1) > 0xff000000) return 0x8000000000000000LL;
  if ((int)ia >= 0x5f000000) return 0x7fffffffffffffffLL;
  if (ia >= 0xdf000000) return 0x8000000000000000LL;
  shift = 189 - ((ia >> 23) & 0xff);
  res = ((long long int)(((ia << 8) | 0x80000000) >> 1)) << 32;
  if (shift >= 64) {
    t = res;
    res = 0;
  } else if (shift) {
    t = res << (64 - shift);
    res = res >> shift;
  }
  if (t >= 0x8000000000000000LL) {
    res++;
  }
  if ((int)ia < 0) res = (unsigned long long int)(-(long long int)res);
  return (long long int)res;
}

static long long int __cuda_llroundf(float a)
{


#line 3149 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return __internal_llroundf_kernel(a);
#line 3151 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static long int __cuda_lroundf(float a)
{


#line 3158 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"


#line 3161 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"




#line 3166 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  return (long int)(__cuda_roundf(a));
#line 3168 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
#line 3169 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static float __cuda_fdimf(float a, float b)
{
  float t;
  t = a - b;    
  if (a <= b) {
    t = 0.0f;
  }
  return t;
}

static int __cuda_ilogbf(float a)
{
  unsigned int i;
  int expo;
  a = __cuda_fabsf(a);
  if (a <= 1.175494351e-38f) {
    
    if (a == 0.0f) {
      expo = -((int)((unsigned int)-1 >> 1))-1;
    } else {
      expo = -126;
      i = __float_as_int(a);
      i = i << 8;
      while ((int)i >= 0) {
        expo--;
        i = i + i;
      }
    }
  } else {
    i = __float_as_int(a);
    expo = ((int)((i >> 23) & 0xff)) - 127;
    if ((i == 0x7f800000)) {
      expo = ((int)((unsigned int)-1 >> 1));
    }
    if ((i > 0x7f800000)) {
      expo = -((int)((unsigned int)-1 >> 1))-1;
    }
  } 
  return expo;
}

static float __cuda_logbf(float a)
{


#line 3217 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  unsigned int i;
  int expo;
  float res;


#line 3223 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  a = __cuda_fabsf(a);
  if (a <= 1.175494351e-38f) {
    
    if (a == 0.0f) {
      res = -__int_as_float(0x7f800000);
    } else {
      expo = -126;
      i = __float_as_int(a);
      i = i << 8;
      while ((int)i >= 0) {
        expo--;
        i = i + i;
      }
      res = (float)expo;
    }
  } else {
    i = __float_as_int(a);
    expo = ((int)((i >> 23) & 0xff)) - 127;
    res = (float)expo;
    if ((i >= 0x7f800000)) {  
      
      res = a + a;
    }
  } 
  return res;
#line 3249 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}

static void __cuda_sincosf(float a, float *sptr, float *cptr)
{


#line 3256 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 3258 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
  float t, u, s, c;
  int quadrant;
  t = __cuda_fabsf(a);
  if ((t == __int_as_float(0x7f800000)) || (t == 0.0f)) {
    s = __fmul_rn (a, 0.0f); 
    c = 1.0f + s;                     
    *sptr = s;
    *cptr = c;
    return;
  }
  t = __internal_trig_reduction_kernel(a, &quadrant);
  u = __internal_cos_kernel(t);
  t = __internal_sin_kernel(t);
  if (quadrant & 1) {
    s = u;
    c = t;
  } else {
    s = t;
    c = u;
  }
  if (quadrant & 2) {
    s = -s;
  }
  quadrant++;
  if (quadrant & 2) {
    c = -c;
  }
  *sptr = s;
  *cptr = c;
#line 3288 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"
}


















































































































































































































































































































































































































































































































































































#line 3852 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 3854 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"





#line 3860 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"



#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions_dbl_ptx1.h"








































#line 42 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions_dbl_ptx1.h"

#line 1 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
































































































#line 98 "d:\\my\\work\\cuda\\64\\tk\\include\\crt/func_macro.h"
#line 44 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions_dbl_ptx1.h"

static double __cuda_fabs(double a)
{
  return (float)__cuda_fabsf((float)a);
}

static double __cuda_fmax(double a, double b)
{
  return (float)__cuda_fmaxf((float)a, (float)b);
}

static double __cuda_fmin(double a, double b)
{
  return (float)__cuda_fminf((float)a, (float)b);
}

static int __cuda___finite(double a)
{
  return __cuda___finitef((float)a);
}

static int __cuda___isinf(double a)
{
  return __cuda___isinff((float)a);
}

static int __cuda___isnan(double a)
{
  return __cuda___isnanf((float)a);
}

static int __cuda___signbit(double a)
{
  return __cuda___signbitf((float)a);
}

static double __cuda_sqrt(double a)
{
  return (double)__cuda_sqrtf((float)a);
}

static double __cuda_rsqrt(double a)
{
  return (double)__cuda_rsqrtf((float)a);
}

static double __cuda_ceil(double a)
{
  return (double)__cuda_ceilf((float)a);
}

static double __cuda_trunc(double a)
{
  return (double)__cuda_truncf((float)a);
}

static double __cuda_floor(double a)
{
  return (double)__cuda_floorf((float)a);
}

static double __cuda_copysign(double a, double b)
{
  return (double)__cuda_copysignf((float)a, (float)b);
}

static double __cuda_sin(double a)
{
  return (double)__cuda_sinf((float)a);
}

static double __cuda_cos(double a)
{
  return (double)__cuda_cosf((float)a);
}

static void __cuda_sincos(double a, double *sptr, double *cptr)
{
  float fs, fc;

  __cuda_sincosf((float)a, &fs, &fc);

  *sptr = (double)fs;
  *cptr = (double)fc;
}

static double __cuda_tan(double a)
{
  return (double)__cuda_tanf((float)a);
}

static double __cuda_exp(double a)
{
  return (double)__cuda_expf((float)a);
}

static double __cuda_exp2(double a)
{
  return (double)__cuda_exp2f((float)a);
}

static double __cuda_exp10(double a)
{
  return (double)__cuda_exp10f((float)a);
}

static double __cuda_expm1(double a)
{
  return (double)__cuda_expm1f((float)a);
}

static double __cuda_cosh(double a)
{
  return (double)__cuda_coshf((float)a);
}

static double __cuda_sinh(double a)
{
  return (double)__cuda_sinhf((float)a);
}

static double __cuda_tanh(double a)
{
  return (double)__cuda_tanhf((float)a);
}

static double __cuda_asin(double a)
{
  return (double)__cuda_asinf((float)a);
}

static double __cuda_acos(double a)
{
  return (double)__cuda_acosf((float)a);
}

static double __cuda_atan(double a)
{
  return (double)__cuda_atanf((float)a);
}

static double __cuda_atan2(double a, double b)
{
  return (double)__cuda_atan2f((float)a, (float)b);
}

static double __cuda_log(double a)
{
  return (double)__cuda_logf((float)a);
}

static double __cuda_log2(double a)
{
  return (double)__cuda_log2f((float)a);
}

static double __cuda_log10(double a)
{
  return (double)__cuda_log10f((float)a);
}

static double __cuda_log1p(double a)
{
  return (double)__cuda_log1pf((float)a);
}

static double __cuda_acosh(double a)
{
  return (double)__cuda_acoshf((float)a);
}

static double __cuda_asinh(double a)
{
  return (double)__cuda_asinhf((float)a);
}

static double __cuda_atanh(double a)
{
  return (double)__cuda_atanhf((float)a);
}

static double __cuda_hypot(double a, double b)
{
  return (double)__cuda_hypotf((float)a, (float)b);
}

static double __cuda_cbrt(double a)
{
  return (double)__cuda_cbrtf((float)a);
}

static double __cuda_erf(double a)
{
  return (double)__cuda_erff((float)a);
}

static double __cuda_erfinv(double a)
{
  return (double)__cuda_erfinvf((float)a);
}

static double __cuda_erfc(double a)
{
  return (double)__cuda_erfcf((float)a);
}

static double __cuda_erfcinv(double a)
{
  return (double)__cuda_erfcinvf((float)a);
}

static double __cuda_lgamma(double a)
{
  return (double)__cuda_lgammaf((float)a);
}

static double __cuda_tgamma(double a)
{
  return (double)__cuda_tgammaf((float)a);
}

static double __cuda_ldexp(double a, int b)
{
  return (double)__cuda_ldexpf((float)a, b);
}

static double __cuda_scalbn(double a, int b)
{
  return (double)__cuda_scalbnf((float)a, b);
}

static double __cuda_scalbln(double a, long b)
{
  return (double)__cuda_scalblnf((float)a, b);
}

static double __cuda_frexp(double a, int *b)
{
  return (double)__cuda_frexpf((float)a, b);
}

static double __cuda_modf(double a, double *b)
{
  float fb;
  float fa = __cuda_modff((float)a, &fb);

  *b = (double)fb;

  return (double)fa;  
}

static double __cuda_fmod(double a, double b)
{
  return (double)__cuda_fmodf((float)a, (float)b);
}

static double __cuda_remainder(double a, double b)
{
  return (double)__cuda_remainderf((float)a, (float)b);
}

static double __cuda_remquo(double a, double b, int *c)
{
  return (double)__cuda_remquof((float)a, (float)b, c);
}

static double __cuda_nextafter(double a, double b)
{
  return (double)__cuda_nextafterf((float)a, (float)b);
}

static double __cuda_nan(const char *tagp)
{
  return (double)__cuda_nanf(tagp);
}

static double __cuda_pow(double a, double b)
{
  return (double)__cuda_powf((float)a, (float)b);
}

static double __cuda_round(double a)
{
  return (double)__cuda_roundf((float)a);
}

static long __cuda_lround(double a)
{
  return __cuda_lroundf((float)a);
}

static long long __cuda_llround(double a)
{
  return __cuda_llroundf((float)a);
}

static double __cuda_rint(double a)
{
  return (double)__cuda_rintf((float)a);
}

static long __cuda_lrint(double a)
{
  return __cuda_lrintf((float)a);
}

static long long __cuda_llrint(double a)
{
  return __cuda_llrintf((float)a);
}

static double __cuda_nearbyint(double a)
{
  return (double)__cuda_nearbyintf((float)a);
}

static double __cuda_fdim(double a, double b)
{
  return (double)__cuda_fdimf((float)a, (float)b);
}

static int __cuda_ilogb(double a)
{
  return __cuda_ilogbf((float)a);
}

static double __cuda_logb(double a)
{
  return (double)__cuda_logbf((float)a);
}

static double __cuda_fma(double a, double b, double c)
{
  return (double)__cuda_fmaf((float)a, (float)b, (float)c);
}











#line 391 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions_dbl_ptx1.h"

#line 393 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions_dbl_ptx1.h"

#line 395 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions_dbl_ptx1.h"
#line 3864 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 3866 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"





#line 3872 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 3874 "d:\\my\\work\\cuda\\64\\tk\\include\\math_functions.h"

#line 94 "D:\\my\\work\\cuda\\64\\tk\\include\\common_functions.h"

#line 96 "D:\\my\\work\\cuda\\64\\tk\\include\\common_functions.h"

#line 28 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 32 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 36 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 40 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 44 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 48 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 52 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 56 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 60 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 64 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 68 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 72 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 76 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 80 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 84 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 88 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 92 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 96 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 100 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 104 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 108 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 112 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 116 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 120 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 124 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 128 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 132 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 136 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 140 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 144 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 148 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 152 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 156 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 160 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 164 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 168 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 172 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 176 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 180 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 184 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 188 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 192 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 196 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 200 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 204 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 208 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 212 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 216 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 220 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 224 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 228 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 232 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 236 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 240 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 244 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 248 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 252 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 256 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 260 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 264 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 268 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 272 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 276 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 280 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 284 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 288 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 292 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 296 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 300 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 304 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 308 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 312 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 316 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 320 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 324 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 328 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 332 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 336 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 340 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 344 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 348 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 352 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 356 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 360 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 364 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 368 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 372 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 376 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 380 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 384 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 388 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 392 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 396 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 400 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 404 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 408 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 412 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 416 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 420 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 424 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 428 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 432 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 436 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 440 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 444 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 448 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 452 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 456 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 460 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 464 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 468 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 472 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 476 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 480 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 484 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 488 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 492 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 496 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 500 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 504 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 508 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 512 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 516 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 520 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 524 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 528 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 532 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 536 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 540 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 544 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 548 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 552 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 556 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 560 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 564 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 568 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 572 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 576 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 580 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 584 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 588 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 592 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 596 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 600 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 604 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 608 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 612 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 616 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 620 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 624 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 628 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 632 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 636 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 640 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 644 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 648 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 652 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 656 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 660 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 664 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 668 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 672 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 676 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 680 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 684 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 688 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 692 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 696 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 700 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 704 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 708 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 712 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 716 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 720 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 724 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 728 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 732 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 736 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 740 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 744 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 748 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 752 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 756 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 760 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 764 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 768 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 772 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 776 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 780 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 784 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 788 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 792 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 796 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 800 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 804 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 808 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 812 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 816 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 820 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 824 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 828 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 832 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 836 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 840 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 844 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 848 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 852 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 856 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 860 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 864 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 868 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 872 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 876 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 880 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 884 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 888 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 892 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 896 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 900 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 904 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 908 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 912 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 916 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 920 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 924 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 928 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 932 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 936 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 940 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 944 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 948 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 952 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 956 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 960 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 964 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 968 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 972 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 976 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 980 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 984 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"



#line 988 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"

#line 88 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
__attribute__((__global__)) __attribute__((__used__)) void _Z25md5_gpu_bruteforce_threadPjS_ji(
#line 88 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
__attribute__((__shared__)) unsigned *const data_d, 
#line 88 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
__attribute__((__shared__)) unsigned *const result_d, 
#line 88 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
__attribute__((__shared__)) const unsigned pwd_len, 
#line 88 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
__attribute__((__shared__)) const int charset_len){
#line 88 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 89 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 90 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int ix;
#line 91 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto unsigned data[4];
#line 92 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int a;
#line 92 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int b;
#line 92 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int c;
#line 92 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int d;
#line 93 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int len;
#line 94 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int ta;
#line 94 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int tb;
#line 94 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int tc;
#line 94 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int td;
#line 98 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int res;
#line 90 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ix = ((int)((((blockDim.x)) * ((blockIdx.x))) + ((threadIdx.x))));
#line 93 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
len = ((int)(pwd_len * 8U));
#line 93 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 96 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int i;
#line 96 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
i = 0;
#line 96 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
for (; (i < 4); i++)
#line 96 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 96 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
(((unsigned *)data)[i]) = (data_d[((ix * 4) + i)]);
#line 96 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 96 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 98 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
res = 479376260;
#line 99 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta = ((int)(target_hash[0]));
#line 100 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb = ((int)(target_hash[1]));
#line 101 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc = ((int)(target_hash[2]));
#line 102 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td = ((int)(target_hash[3]));
#line 103 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc -= td;
#line 103 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc = ((int)((((unsigned)tc) << 17U) | (((unsigned)tc) >> 15U)));
#line 103 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc -= ((((unsigned)(ta ^ (td | (~tb)))) + (((unsigned *)data)[2])) + 718787259U);
#line 104 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td -= ta;
#line 104 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td = ((int)((((unsigned)td) << 22U) | (((unsigned)td) >> 10U)));
#line 104 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td -= (((unsigned)((tb ^ (ta | (~tc))) + 0)) + 3174756917U);
#line 105 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta -= tb;
#line 105 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta = ((int)((((unsigned)ta) << 26U) | (((unsigned)ta) >> 6U)));
#line 105 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta -= (((unsigned)((tc ^ (tb | (~td))) + 0)) + 4149444226U);
#line 106 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb -= tc;
#line 106 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb = ((int)((((unsigned)tb) << 11U) | (((unsigned)tb) >> 21U)));
#line 106 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb -= (((td ^ (tc | (~ta))) + 0) + 1309151649);
#line 107 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc -= td;
#line 107 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc = ((int)((((unsigned)tc) << 17U) | (((unsigned)tc) >> 15U)));
#line 107 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc -= (((unsigned)((ta ^ (td | (~tb))) + 0)) + 2734768916U);
#line 108 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td -= ta;
#line 108 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td = ((int)((((unsigned)td) << 22U) | (((unsigned)td) >> 10U)));
#line 108 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td -= (((unsigned)((tb ^ (ta | (~tc))) + 0)) + 4264355552U);
#line 109 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta -= tb;
#line 109 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta = ((int)((((unsigned)ta) << 26U) | (((unsigned)ta) >> 6U)));
#line 109 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta -= (((tc ^ (tb | (~td))) + 0) + 1873313359);
#line 110 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb -= tc;
#line 110 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb = ((int)((((unsigned)tb) << 11U) | (((unsigned)tb) >> 21U)));
#line 110 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb -= ((((unsigned)(td ^ (tc | (~ta)))) + (((unsigned *)data)[1])) + 2240044497U);
#line 111 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc -= td;
#line 111 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc = ((int)((((unsigned)tc) << 17U) | (((unsigned)tc) >> 15U)));
#line 111 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc -= (((unsigned)((ta ^ (td | (~tb))) + 0)) + 4293915773U);
#line 112 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td -= ta;
#line 112 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td = ((int)((((unsigned)td) << 22U) | (((unsigned)td) >> 10U)));
#line 112 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td -= ((((unsigned)(tb ^ (ta | (~tc)))) + (((unsigned *)data)[3])) + 2399980690U);
#line 113 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta -= tb;
#line 113 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta = ((int)((((unsigned)ta) << 26U) | (((unsigned)ta) >> 6U)));
#line 113 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
ta -= (((tc ^ (tb | (~td))) + 0) + 1700485571);
#line 114 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb -= tc;
#line 114 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb = ((int)((((unsigned)tb) << 11U) | (((unsigned)tb) >> 21U)));
#line 114 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tb -= (((unsigned)((td ^ (tc | (~ta))) + 0)) + 4237533241U);
#line 115 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc -= td;
#line 115 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc = ((int)((((unsigned)tc) << 17U) | (((unsigned)tc) >> 15U)));
#line 115 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
tc -= (((unsigned)((ta ^ (td | (~tb))) + len)) + 2878612391U);
#line 116 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td -= ta;
#line 116 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td = ((int)((((unsigned)td) << 22U) | (((unsigned)td) >> 10U)));
#line 116 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
td -= (((tb ^ (ta | (~tc))) + 0) + 1126891415);
#line 116 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 119 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int s2;
#line 119 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
s2 = 0;
#line 119 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
for (; (s2 < charset_len); s2++)
#line 120 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 121 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
(((unsigned *)data)[0]) = (((((unsigned *)data)[0]) & 4294902015U) + ((charset_c[s2]) << 8));
#line 121 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 122 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
auto int s1;
#line 122 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
s1 = 0;
#line 122 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
for (; (s1 < charset_len); s1++)
#line 123 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 124 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
(((unsigned *)data)[0]) = (((((unsigned *)data)[0]) & 4294967040U) + (charset_c[s1]));
#line 126 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = 1732584193;
#line 126 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = (-271733879);
#line 126 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = (-1732584194);
#line 126 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = 271733878;
#line 129 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 129 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (((((unsigned *)data)[0]) + 3614090360U) + ((unsigned)((b & c) | ((~b) & d))));
#line 129 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 7U) | (((unsigned)a) >> 25U)) + ((unsigned)b)));
#line 129 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 130 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 130 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (((((unsigned *)data)[1]) + 3905402710U) + ((unsigned)((a & b) | ((~a) & c))));
#line 130 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 12U) | (((unsigned)d) >> 20U)) + ((unsigned)a)));
#line 130 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 131 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 131 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (((((unsigned *)data)[2]) + 606105819U) + ((unsigned)((d & a) | ((~d) & b))));
#line 131 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 17U) | (((unsigned)c) >> 15U)) + ((unsigned)d)));
#line 131 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 132 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 132 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (((((unsigned *)data)[3]) + 3250441966U) + ((unsigned)((c & d) | ((~c) & a))));
#line 132 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 22U) | (((unsigned)b) >> 10U)) + ((unsigned)c)));
#line 132 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 135 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 135 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (4118548399U + ((unsigned)((b & c) | ((~b) & d))));
#line 135 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 7U) | (((unsigned)a) >> 25U)) + ((unsigned)b)));
#line 135 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 136 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 136 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (1200080426 + ((a & b) | ((~a) & c)));
#line 136 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 12U) | (((unsigned)d) >> 20U)) + ((unsigned)a)));
#line 136 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 137 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 137 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (2821735955U + ((unsigned)((d & a) | ((~d) & b))));
#line 137 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 17U) | (((unsigned)c) >> 15U)) + ((unsigned)d)));
#line 137 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 138 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 138 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (4249261313U + ((unsigned)((c & d) | ((~c) & a))));
#line 138 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 22U) | (((unsigned)b) >> 10U)) + ((unsigned)c)));
#line 138 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 139 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 139 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (1770035416 + ((b & c) | ((~b) & d)));
#line 139 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 7U) | (((unsigned)a) >> 25U)) + ((unsigned)b)));
#line 139 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 140 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 140 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (2336552879U + ((unsigned)((a & b) | ((~a) & c))));
#line 140 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 12U) | (((unsigned)d) >> 20U)) + ((unsigned)a)));
#line 140 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 141 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 141 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (4294925233U + ((unsigned)((d & a) | ((~d) & b))));
#line 141 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 17U) | (((unsigned)c) >> 15U)) + ((unsigned)d)));
#line 141 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 142 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 142 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (2304563134U + ((unsigned)((c & d) | ((~c) & a))));
#line 142 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 22U) | (((unsigned)b) >> 10U)) + ((unsigned)c)));
#line 142 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 143 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 143 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (1804603682 + ((b & c) | ((~b) & d)));
#line 143 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 7U) | (((unsigned)a) >> 25U)) + ((unsigned)b)));
#line 143 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 144 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 144 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (4254626195U + ((unsigned)((a & b) | ((~a) & c))));
#line 144 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 12U) | (((unsigned)d) >> 20U)) + ((unsigned)a)));
#line 144 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 145 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 145 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += ((((unsigned)len) + 2792965006U) + ((unsigned)((d & a) | ((~d) & b))));
#line 145 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 17U) | (((unsigned)c) >> 15U)) + ((unsigned)d)));
#line 145 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 146 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 146 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (1236535329 + ((c & d) | ((~c) & a)));
#line 146 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 22U) | (((unsigned)b) >> 10U)) + ((unsigned)c)));
#line 146 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 149 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 149 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (((((unsigned *)data)[1]) + 4129170786U) + ((unsigned)((b & d) | (c & (~d)))));
#line 149 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 5U) | (((unsigned)a) >> 27U)) + ((unsigned)b)));
#line 149 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 150 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 150 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (3225465664U + ((unsigned)((a & c) | (b & (~c)))));
#line 150 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 9U) | (((unsigned)d) >> 23U)) + ((unsigned)a)));
#line 150 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 151 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 151 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (643717713 + ((d & b) | (a & (~b))));
#line 151 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 14U) | (((unsigned)c) >> 18U)) + ((unsigned)d)));
#line 151 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 152 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 152 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (((((unsigned *)data)[0]) + 3921069994U) + ((unsigned)((c & a) | (d & (~a)))));
#line 152 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 20U) | (((unsigned)b) >> 12U)) + ((unsigned)c)));
#line 152 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 153 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 153 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (3593408605U + ((unsigned)((b & d) | (c & (~d)))));
#line 153 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 5U) | (((unsigned)a) >> 27U)) + ((unsigned)b)));
#line 153 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 154 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 154 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (38016083 + ((a & c) | (b & (~c))));
#line 154 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 9U) | (((unsigned)d) >> 23U)) + ((unsigned)a)));
#line 154 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 155 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 155 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (3634488961U + ((unsigned)((d & b) | (a & (~b)))));
#line 155 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 14U) | (((unsigned)c) >> 18U)) + ((unsigned)d)));
#line 155 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 156 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 156 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (3889429448U + ((unsigned)((c & a) | (d & (~a)))));
#line 156 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 20U) | (((unsigned)b) >> 12U)) + ((unsigned)c)));
#line 156 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 157 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 157 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (568446438 + ((b & d) | (c & (~d))));
#line 157 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 5U) | (((unsigned)a) >> 27U)) + ((unsigned)b)));
#line 157 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 158 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 158 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += ((((unsigned)len) + 3275163606U) + ((unsigned)((a & c) | (b & (~c)))));
#line 158 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 9U) | (((unsigned)d) >> 23U)) + ((unsigned)a)));
#line 158 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 159 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 159 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (((((unsigned *)data)[3]) + 4107603335U) + ((unsigned)((d & b) | (a & (~b)))));
#line 159 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 14U) | (((unsigned)c) >> 18U)) + ((unsigned)d)));
#line 159 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 160 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 160 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (1163531501 + ((c & a) | (d & (~a))));
#line 160 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 20U) | (((unsigned)b) >> 12U)) + ((unsigned)c)));
#line 160 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 161 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 161 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (2850285829U + ((unsigned)((b & d) | (c & (~d)))));
#line 161 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 5U) | (((unsigned)a) >> 27U)) + ((unsigned)b)));
#line 161 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 162 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 162 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (((((unsigned *)data)[2]) + 4243563512U) + ((unsigned)((a & c) | (b & (~c)))));
#line 162 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 9U) | (((unsigned)d) >> 23U)) + ((unsigned)a)));
#line 162 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 163 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 163 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (1735328473 + ((d & b) | (a & (~b))));
#line 163 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 14U) | (((unsigned)c) >> 18U)) + ((unsigned)d)));
#line 163 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 164 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 164 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (2368359562U + ((unsigned)((c & a) | (d & (~a)))));
#line 164 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 20U) | (((unsigned)b) >> 12U)) + ((unsigned)c)));
#line 164 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 167 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 167 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (4294588738U + ((unsigned)((b ^ c) ^ d)));
#line 167 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 4U) | (((unsigned)a) >> 28U)) + ((unsigned)b)));
#line 167 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 168 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 168 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (2272392833U + ((unsigned)((a ^ b) ^ c)));
#line 168 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 11U) | (((unsigned)d) >> 21U)) + ((unsigned)a)));
#line 168 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 169 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 169 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (1839030562 + ((d ^ a) ^ b));
#line 169 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 16U) | (((unsigned)c) >> 16U)) + ((unsigned)d)));
#line 169 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 170 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 170 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += ((((unsigned)len) + 4259657740U) + ((unsigned)((c ^ d) ^ a)));
#line 170 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 23U) | (((unsigned)b) >> 9U)) + ((unsigned)c)));
#line 170 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 171 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 171 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (((((unsigned *)data)[1]) + 2763975236U) + ((unsigned)((b ^ c) ^ d)));
#line 171 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 4U) | (((unsigned)a) >> 28U)) + ((unsigned)b)));
#line 171 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 172 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 172 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (1272893353 + ((a ^ b) ^ c));
#line 172 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 11U) | (((unsigned)d) >> 21U)) + ((unsigned)a)));
#line 172 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 173 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 173 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (4139469664U + ((unsigned)((d ^ a) ^ b)));
#line 173 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 16U) | (((unsigned)c) >> 16U)) + ((unsigned)d)));
#line 173 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 174 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 174 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (3200236656U + ((unsigned)((c ^ d) ^ a)));
#line 174 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 23U) | (((unsigned)b) >> 9U)) + ((unsigned)c)));
#line 174 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 175 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 175 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (681279174 + ((b ^ c) ^ d));
#line 175 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 4U) | (((unsigned)a) >> 28U)) + ((unsigned)b)));
#line 175 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 176 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 176 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (((((unsigned *)data)[0]) + 3936430074U) + ((unsigned)((a ^ b) ^ c)));
#line 176 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 11U) | (((unsigned)d) >> 21U)) + ((unsigned)a)));
#line 176 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 177 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 177 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (((((unsigned *)data)[3]) + 3572445317U) + ((unsigned)((d ^ a) ^ b)));
#line 177 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 16U) | (((unsigned)c) >> 16U)) + ((unsigned)d)));
#line 177 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 178 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 178 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (76029189 + ((c ^ d) ^ a));
#line 178 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 23U) | (((unsigned)b) >> 9U)) + ((unsigned)c)));
#line 178 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 179 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 179 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (3654602809U + ((unsigned)((b ^ c) ^ d)));
#line 179 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 4U) | (((unsigned)a) >> 28U)) + ((unsigned)b)));
#line 179 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 180 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 180 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d += (3873151461U + ((unsigned)((a ^ b) ^ c)));
#line 180 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
d = ((int)(((((unsigned)d) << 11U) | (((unsigned)d) >> 21U)) + ((unsigned)a)));
#line 180 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 181 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
if (d != td)
#line 181 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 181 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
goto __T24;
#line 181 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 182 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 182 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c += (530742520 + ((d ^ a) ^ b));
#line 182 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
c = ((int)(((((unsigned)c) << 16U) | (((unsigned)c) >> 16U)) + ((unsigned)d)));
#line 182 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 183 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 183 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b += (((((unsigned *)data)[2]) + 3299628645U) + ((unsigned)((c ^ d) ^ a)));
#line 183 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
b = ((int)(((((unsigned)b) << 23U) | (((unsigned)b) >> 9U)) + ((unsigned)c)));
#line 183 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 186 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 186 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a += (((((unsigned *)data)[0]) + 4096336452U) + ((unsigned)(c ^ (b | (~d)))));
#line 186 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
a = ((int)(((((unsigned)a) << 6U) | (((unsigned)a) >> 26U)) + ((unsigned)b)));
#line 186 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 188 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
if (((a == ta) && (b == tb)) && (c == tc))
#line 189 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
{
#line 190 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
res = 1334931688;
#line 191 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 191 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
__T24:;
#line 192 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 192 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 193 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 193 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}
#line 195 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
(result_d[ix]) = ((unsigned)res);
#line 196 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
} 
#line 196 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"
}}
#line 198 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"





#line 204 "c:/my/work/BarsWF/algo/md5/md5_kernel.cu"

