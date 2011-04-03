shader: md5_pp_hello_brook_check_addr
#define _stype1   sampler2D
#define _stype2   sampler2D
#define _stype3   sampler2D
#define _stype4   sampler2D
#define __sample1 tex1Dlod
#define __sample2 tex2Dlod
#define __sample3 tex3Dlod
#define __fetch1 tex1Dlod
#define __fetch2 tex2Dlod
#define __fetch3 tex3Dlod
#define __FRAGMENTKILL discard
#define __gather_float __fetch_float
#define __gather_float2 __fetch_float2
#define __gather_float3 __fetch_float3
#define __gather_float4 __fetch_float4
#define __gather_double __fetch_double
#define __gather_double2 __fetch_double2
#define __gather_int __fetch_int
#define __gather_int2 __fetch_int2
#define __gather_int3 __fetch_int3
#define __gather_int4 __fetch_int4
#define __gather_uint __fetch_int
#define __gather_uint2 __fetch_int2
#define __gather_uint3 __fetch_int3
#define __gather_uint4 __fetch_int4
#define __fetch_uint __fetch_int
#define __fetch_uint2 __fetch_int2
#define __fetch_uint3 __fetch_int3
#define __fetch_uint4 __fetch_int4
#define __fetch_char __fetch_int
#define __fetch_char2 __fetch_int2
#define __fetch_char3 __fetch_int3
#define __fetch_char4 __fetch_int4
#define __gather_char __fetch_char
#define __gather_char2 __fetch_char2
#define __gather_char3 __fetch_char3
#define __gather_char4 __fetch_char4
#define __gather_uchar __fetch_char
#define __gather_uchar2 __fetch_char2
#define __gather_uchar3 __fetch_char3
#define __gather_uchar4 __fetch_char4
#define __fetch_uchar __fetch_char
#define __fetch_uchar2 __fetch_char2
#define __fetch_uchar3 __fetch_char3
#define __fetch_uchar4 __fetch_char4
#define __fetch_short __fetch_int
#define __fetch_short2 __fetch_int2
#define __fetch_short3 __fetch_int3
#define __fetch_short4 __fetch_int4
#define __gather_short __fetch_short
#define __gather_short2 __fetch_short2
#define __gather_short3 __fetch_short3
#define __gather_short4 __fetch_short4
#define __gather_ushort __fetch_short
#define __gather_ushort2 __fetch_short2
#define __gather_ushort3 __fetch_short3
#define __gather_ushort4 __fetch_short4
#define __fetch_ushort __fetch_short
#define __fetch_ushort2 __fetch_short2
#define __fetch_ushort3 __fetch_short3
#define __fetch_ushort4 __fetch_short4
float __fetch_float( sampler2D s, float i ) { return __fetch1(s,i).x; }
float __fetch_float( sampler2D s, float2 i ) { return __fetch2(s,i).x; }
float __fetch_float( sampler2D s, float3 i ) { return __fetch3(s,i).x; }
float2 __fetch_float2( sampler2D s, float i ) { return __fetch1(s,i).xy; }
float2 __fetch_float2( sampler2D s, float2 i ) { return __fetch2(s,i).xy; }
float2 __fetch_float2( sampler2D s, float3 i ) { return __fetch3(s,i).xy; }
float3 __fetch_float3( sampler2D s, float i ) { return __fetch1(s,i).xyz; }
float3 __fetch_float3( sampler2D s, float2 i ) { return __fetch2(s,i).xyz; }
float3 __fetch_float3( sampler2D s, float3 i ) { return __fetch3(s,i).xyz; }
float4 __fetch_float4( sampler2D s, float i ) { return __fetch1(s,i).xyzw; }
float4 __fetch_float4( sampler2D s, float2 i ) { return __fetch2(s,i).xyzw; }
float4 __fetch_float4( sampler2D s, float3 i ) { return __fetch3(s,i).xyzw; }
double __fetch_double( sampler2D s, float i ){ return asdouble(__fetch1(s,i).xy);}
double __fetch_double( sampler2D s, float2 i ){ return asdouble(__fetch2(s,i).xy);}
double __fetch_double( sampler2D s, float3 i ){ return asdouble(__fetch1(s,i).xy);}
double2 __fetch_double2( sampler2D s, float i ){ float4 f = __fetch1(s,i).xyzw; double2 d; d.x=asdouble(f.xy); d.y=asdouble(f.zw); return d;}
double2 __fetch_double2( sampler2D s, float2 i ){ float4 f = __fetch2(s,i).xyzw; double2 d; d.x=asdouble(f.xy); d.y=asdouble(f.zw); return d;}
double2 __fetch_double2( sampler2D s, float3 i ){ float4 f = __fetch2(s,i).xyzw; double2 d; d.x=asdouble(f.xy); d.y=asdouble(f.zw); return d;}
int __fetch_int( sampler2D s, float i ){ return asint(__fetch1(s,i).x);}
int __fetch_int( sampler2D s, float2 i ){ return asint(__fetch2(s,i).x);}
int __fetch_int( sampler2D s, float3 i ){ return asint(__fetch3(s,i).x);}
int2 __fetch_int2( sampler2D s, float i ){ float2 f2 = __fetch1(s,i).xy; int2 i2; i2.x = asint(f2.x); i2.y = asint(f2.y); return i2;}
int2 __fetch_int2( sampler2D s, float2 i ){ float2 f2 = __fetch2(s,i).xy; int2 i2; i2.x = asint(f2.x); i2.y = asint(f2.y); return i2;}
int2 __fetch_int2( sampler2D s, float3 i ){ float2 f2 = __fetch3(s,i).xy; int2 i2; i2.x = asint(f2.x); i2.y = asint(f2.y); return i2;}
int3 __fetch_int3( sampler2D s, float i ){ float3 f3 = __fetch1(s,i).xyz; int3 i3; i3.x = asint(f3.x); i3.y = asint(f3.y); i3.z = asint(f3.z); return i3;}
int3 __fetch_int3( sampler2D s, float2 i ){ float3 f3 = __fetch1(s,i).xyz; int3 i3; i3.x = asint(f3.x); i3.y = asint(f3.y); i3.z = asint(f3.z); return i3;}
int3 __fetch_int3( sampler2D s, float3 i ){ float3 f3 = __fetch1(s,i).xyz; int3 i3; i3.x = asint(f3.x); i3.y = asint(f3.y); i3.z = asint(f3.z); return i3;}
int4 __fetch_int4( sampler2D s, float i ){ float4 f4 = __fetch1(s,i).xyzw; int4 i4; i4.x = asint(f4.x); i4.y = asint(f4.y); i4.z = asint(f4.z);  i4.w = asint(f4.w); return i4;}
int4 __fetch_int4( sampler2D s, float2 i ){ float4 f4 = __fetch2(s,i).xyzw; int4 i4; i4.x = asint(f4.x); i4.y = asint(f4.y); i4.z = asint(f4.z);  i4.w = asint(f4.w); return i4;}
int4 __fetch_int4( sampler2D s, float3 i ){ float4 f4 = __fetch3(s,i).xyzw; int4 i4; i4.x = asint(f4.x); i4.y = asint(f4.y); i4.z = asint(f4.z);  i4.w = asint(f4.w); return i4;}
float __get2DHeight(float2 array2D) {return array2D.y;}
float __get2DWidth(float2 array2D) {return array2D.x;}
float __get3DDepth(float3 array3D) {return array3D.z;}
float __get3DHeight(float3 array3D) {return array3D.y;}
float __get3DWidth(float3 array3D) {return array3D.x;}

int __getScatterIndex(int4 scatterIndex, int4 scatterStream)
{
    return scatterIndex.z * scatterStream.x * scatterStream.y + 
           scatterIndex.y * scatterStream.x + scatterIndex.x;
}

int4 __getOutputIndex(float2 pos, int4 outStream, int4 outBuffer)
{
    int4 outIndex = int4(0, 0, 0, 0);
    int2 intPos = int2(pos.xy);
    int index = intPos.y * outBuffer.x + intPos.x;
    int height = index / outStream.x;
    outIndex.x = index - height * outStream.x;
    outIndex.z = height / outStream.y;
    outIndex.y = height - outIndex.z * outStream.y;

    return outIndex;
}
int4 __getOutputIndex(int pos, int4 outStream, int4 outBuffer)
{
    int4 outIndex = int4(0, 0, 0, 0);
    int2 intPos = int2(pos, 1);
    int index = intPos.x;
    int height = index / outStream.x;
    outIndex.x = index - height * outStream.x;
    outIndex.z = height / outStream.y;
    outIndex.y = height - outIndex.z * outStream.y;

    return outIndex;
}
float2 __getGatherPosFrom1D(int4 gatherIndex, int4 gatherStream, int4 gatherBuffer)
{
    float2 gatherPos = float2(0.0f, 0.0f);
    int posY = 0;
    int index = 0;
    index = gatherIndex.x;
    posY = index / gatherBuffer.x;
    gatherPos.x = float(index - posY * gatherBuffer.x) + 0.5f;
    gatherPos.y = float(posY) + 0.5f;

    return gatherPos;
}
float2 __getGatherPosFrom3D(int4 gatherIndex, int4 gatherStream, int4 gatherBuffer)
{
    float2 gatherPos = float2(0.0f, 0.0f);
    int index = gatherIndex.z * gatherStream.x * gatherStream.y + 
		          gatherIndex.y * gatherStream.x + gatherIndex.x;
    int posY = index / gatherBuffer.x;
    gatherPos.x = float(index - posY * gatherBuffer.x) + 0.5f;
    gatherPos.y = float(posY) + 0.5f;

    return gatherPos;
}
cbuffer __cb0
{
	int k1;
	int3 __dummy_k1;
	int k2;
	int3 __dummy_k2;
	int k3;
	int3 __dummy_k3;
	int k4;
	int3 __dummy_k4;
	int len;
	int3 __dummy_len;
	int _ta;
	int3 __dummy__ta;
	int _tb;
	int3 __dummy__tb;
	int _tc;
	int3 __dummy__tc;
	int _td;
	int3 __dummy__td;
	int4 __gatherStreamShape_charset;
	int4 __gatherBufferShape_charset;
	int charset_len;
	int3 __dummy_charset_len;
	int4 __outputStreamShape;
	int4 __outputBufferShape;

};
struct __output 
{
	float4 __outputoutput;

};
void hello_brook_check (int  k1,
	int  k2,
	int  k3,
	int  k4,
	int  len,
	int  _ta,
	int  _tb,
	int  _tc,
	int  _td,
	sampler2D charset,
	int  charset_len,
	out int  output,
	const int4  __indexof_output,
	int4  __gatherStreamShape_charset,
	int4  __gatherBufferShape_charset)

#line 19 "md5_pp.br"
{

#line 20 "md5_pp.br"
  int  mask2, mask1, val2, val1, s2, s1, res;

#line 22 "md5_pp.br"
  int  d1, c1, b1, a1;

#line 23 "md5_pp.br"
  int  d2, c2, b2, a2;

#line 24 "md5_pp.br"
  int  d3, c3, b3, a3;

#line 25 "md5_pp.br"
  int  d4, c4, b4, a4;

#line 26 "md5_pp.br"
  int  d5, c5, b5, a5;

#line 29 "md5_pp.br"
  int  td1, tc1, tb1, ta1;

#line 30 "md5_pp.br"
  int  td2, tc2, tb2, ta2;

#line 31 "md5_pp.br"
  int  td3, tc3, tb3, ta3;

#line 32 "md5_pp.br"
  int  td4, tc4, tb4, ta4;

#line 33 "md5_pp.br"
  int  td5, tc5, tb5, ta5;

#line 36 "md5_pp.br"
  int  k41, k31, k21, k11;

#line 37 "md5_pp.br"
  int  k42, k32, k22, k12;

#line 38 "md5_pp.br"
  int  k43, k33, k23, k13;

#line 39 "md5_pp.br"
  int  k44, k34, k24, k14;

#line 40 "md5_pp.br"
  int  k45, k35, k25, k15;

#line 43 "md5_pp.br"
  int  len5, len4, len3, len2, len1;

#line 45 "md5_pp.br"
  int  pnum;


#line 47 "md5_pp.br"
  pnum = (int ) ((__indexof_output).x) * 5;

#line 49 "md5_pp.br"
  k11 = k1 + pnum + 0;

#line 49 "md5_pp.br"
  k21 = k2 + pnum + 0 + 123;

#line 49 "md5_pp.br"
  k31 = k3 + pnum + 0 + 123;

#line 49 "md5_pp.br"
  k41 = k4 + pnum + 0 + 123;

#line 50 "md5_pp.br"
  k12 = k1 + pnum + 1;

#line 50 "md5_pp.br"
  k22 = k2 + pnum + 1 + 233;

#line 50 "md5_pp.br"
  k32 = k3 + pnum + 1 + 343;

#line 50 "md5_pp.br"
  k42 = k4 + pnum + 1 + 343;

#line 51 "md5_pp.br"
  k13 = k1 + pnum + 2;

#line 51 "md5_pp.br"
  k23 = k2 + pnum + 2 + 134;

#line 51 "md5_pp.br"
  k33 = k3 + pnum + 2 + 134;

#line 51 "md5_pp.br"
  k43 = k4 + pnum + 2 + 453;

#line 52 "md5_pp.br"
  k14 = k1 + pnum + 3;

#line 52 "md5_pp.br"
  k24 = k2 + pnum + 3 + 453;

#line 52 "md5_pp.br"
  k34 = k3 + pnum + 3 + 453;

#line 52 "md5_pp.br"
  k44 = k4 + pnum + 3 + 145;

#line 53 "md5_pp.br"
  k15 = k1 + pnum + 4;

#line 53 "md5_pp.br"
  k25 = k2 + pnum + 4 + 563;

#line 53 "md5_pp.br"
  k35 = k3 + pnum + 4 + 543;

#line 53 "md5_pp.br"
  k45 = k4 + pnum + 4 + 143;

#line 56 "md5_pp.br"
  len1 = len2 = len3 = len4 = len5 = len;

#line 57 "md5_pp.br"
  res = 0x1c92b384;

#line 58 "md5_pp.br"
  ta1 = ta2 = ta3 = ta4 = ta5 = _ta;

#line 59 "md5_pp.br"
  tb1 = tb2 = tb3 = tb4 = tb5 = _tb;

#line 60 "md5_pp.br"
  tc1 = tc2 = tc3 = tc4 = tc5 = _tc;

#line 61 "md5_pp.br"
  td1 = td2 = td3 = td4 = td5 = _td;

#line 66 "md5_pp.br"
  {

#line 66 "md5_pp.br"
    tc1 -= td1;

#line 66 "md5_pp.br"
    tc1 = ((uint ) (tc1)) << (uint ) (32 - 15) | ((uint ) (tc1)) >> (uint ) (32 - (32 - 15));

#line 66 "md5_pp.br"
    tc1 -= (ta1 ^ (td1 | ~tb1)) + k31 + 0x2ad7d2bb;

#line 66 "md5_pp.br"
    ;

#line 66 "md5_pp.br"
    tc2 -= td2;

#line 66 "md5_pp.br"
    tc2 = ((uint ) (tc2)) << (uint ) (32 - 15) | ((uint ) (tc2)) >> (uint ) (32 - (32 - 15));

#line 66 "md5_pp.br"
    tc2 -= (ta2 ^ (td2 | ~tb2)) + k32 + 0x2ad7d2bb;

#line 66 "md5_pp.br"
    ;

#line 66 "md5_pp.br"
    tc3 -= td3;

#line 66 "md5_pp.br"
    tc3 = ((uint ) (tc3)) << (uint ) (32 - 15) | ((uint ) (tc3)) >> (uint ) (32 - (32 - 15));

#line 66 "md5_pp.br"
    tc3 -= (ta3 ^ (td3 | ~tb3)) + k33 + 0x2ad7d2bb;

#line 66 "md5_pp.br"
    ;

#line 66 "md5_pp.br"
    tc4 -= td4;

#line 66 "md5_pp.br"
    tc4 = ((uint ) (tc4)) << (uint ) (32 - 15) | ((uint ) (tc4)) >> (uint ) (32 - (32 - 15));

#line 66 "md5_pp.br"
    tc4 -= (ta4 ^ (td4 | ~tb4)) + k34 + 0x2ad7d2bb;

#line 66 "md5_pp.br"
    ;

#line 66 "md5_pp.br"
    tc5 -= td5;

#line 66 "md5_pp.br"
    tc5 = ((uint ) (tc5)) << (uint ) (32 - 15) | ((uint ) (tc5)) >> (uint ) (32 - (32 - 15));

#line 66 "md5_pp.br"
    tc5 -= (ta5 ^ (td5 | ~tb5)) + k35 + 0x2ad7d2bb;

#line 66 "md5_pp.br"
    ;
  }


#line 66 "md5_pp.br"
  ;

#line 67 "md5_pp.br"
  {

#line 67 "md5_pp.br"
    td1 -= ta1;

#line 67 "md5_pp.br"
    td1 = ((uint ) (td1)) << (uint ) (32 - 10) | ((uint ) (td1)) >> (uint ) (32 - (32 - 10));

#line 67 "md5_pp.br"
    td1 -= (tb1 ^ (ta1 | ~tc1)) + 0 + 0xbd3af235;

#line 67 "md5_pp.br"
    ;

#line 67 "md5_pp.br"
    td2 -= ta2;

#line 67 "md5_pp.br"
    td2 = ((uint ) (td2)) << (uint ) (32 - 10) | ((uint ) (td2)) >> (uint ) (32 - (32 - 10));

#line 67 "md5_pp.br"
    td2 -= (tb2 ^ (ta2 | ~tc2)) + 0 + 0xbd3af235;

#line 67 "md5_pp.br"
    ;

#line 67 "md5_pp.br"
    td3 -= ta3;

#line 67 "md5_pp.br"
    td3 = ((uint ) (td3)) << (uint ) (32 - 10) | ((uint ) (td3)) >> (uint ) (32 - (32 - 10));

#line 67 "md5_pp.br"
    td3 -= (tb3 ^ (ta3 | ~tc3)) + 0 + 0xbd3af235;

#line 67 "md5_pp.br"
    ;

#line 67 "md5_pp.br"
    td4 -= ta4;

#line 67 "md5_pp.br"
    td4 = ((uint ) (td4)) << (uint ) (32 - 10) | ((uint ) (td4)) >> (uint ) (32 - (32 - 10));

#line 67 "md5_pp.br"
    td4 -= (tb4 ^ (ta4 | ~tc4)) + 0 + 0xbd3af235;

#line 67 "md5_pp.br"
    ;

#line 67 "md5_pp.br"
    td5 -= ta5;

#line 67 "md5_pp.br"
    td5 = ((uint ) (td5)) << (uint ) (32 - 10) | ((uint ) (td5)) >> (uint ) (32 - (32 - 10));

#line 67 "md5_pp.br"
    td5 -= (tb5 ^ (ta5 | ~tc5)) + 0 + 0xbd3af235;

#line 67 "md5_pp.br"
    ;
  }


#line 67 "md5_pp.br"
  ;

#line 68 "md5_pp.br"
  {

#line 68 "md5_pp.br"
    ta1 -= tb1;

#line 68 "md5_pp.br"
    ta1 = ((uint ) (ta1)) << (uint ) (32 - 6) | ((uint ) (ta1)) >> (uint ) (32 - (32 - 6));

#line 68 "md5_pp.br"
    ta1 -= (tc1 ^ (tb1 | ~td1)) + 0 + 0xf7537e82;

#line 68 "md5_pp.br"
    ;

#line 68 "md5_pp.br"
    ta2 -= tb2;

#line 68 "md5_pp.br"
    ta2 = ((uint ) (ta2)) << (uint ) (32 - 6) | ((uint ) (ta2)) >> (uint ) (32 - (32 - 6));

#line 68 "md5_pp.br"
    ta2 -= (tc2 ^ (tb2 | ~td2)) + 0 + 0xf7537e82;

#line 68 "md5_pp.br"
    ;

#line 68 "md5_pp.br"
    ta3 -= tb3;

#line 68 "md5_pp.br"
    ta3 = ((uint ) (ta3)) << (uint ) (32 - 6) | ((uint ) (ta3)) >> (uint ) (32 - (32 - 6));

#line 68 "md5_pp.br"
    ta3 -= (tc3 ^ (tb3 | ~td3)) + 0 + 0xf7537e82;

#line 68 "md5_pp.br"
    ;

#line 68 "md5_pp.br"
    ta4 -= tb4;

#line 68 "md5_pp.br"
    ta4 = ((uint ) (ta4)) << (uint ) (32 - 6) | ((uint ) (ta4)) >> (uint ) (32 - (32 - 6));

#line 68 "md5_pp.br"
    ta4 -= (tc4 ^ (tb4 | ~td4)) + 0 + 0xf7537e82;

#line 68 "md5_pp.br"
    ;

#line 68 "md5_pp.br"
    ta5 -= tb5;

#line 68 "md5_pp.br"
    ta5 = ((uint ) (ta5)) << (uint ) (32 - 6) | ((uint ) (ta5)) >> (uint ) (32 - (32 - 6));

#line 68 "md5_pp.br"
    ta5 -= (tc5 ^ (tb5 | ~td5)) + 0 + 0xf7537e82;

#line 68 "md5_pp.br"
    ;
  }


#line 68 "md5_pp.br"
  ;

#line 69 "md5_pp.br"
  {

#line 69 "md5_pp.br"
    tb1 -= tc1;

#line 69 "md5_pp.br"
    tb1 = ((uint ) (tb1)) << (uint ) (32 - 21) | ((uint ) (tb1)) >> (uint ) (32 - (32 - 21));

#line 69 "md5_pp.br"
    tb1 -= (td1 ^ (tc1 | ~ta1)) + 0 + 0x4e0811a1;

#line 69 "md5_pp.br"
    ;

#line 69 "md5_pp.br"
    tb2 -= tc2;

#line 69 "md5_pp.br"
    tb2 = ((uint ) (tb2)) << (uint ) (32 - 21) | ((uint ) (tb2)) >> (uint ) (32 - (32 - 21));

#line 69 "md5_pp.br"
    tb2 -= (td2 ^ (tc2 | ~ta2)) + 0 + 0x4e0811a1;

#line 69 "md5_pp.br"
    ;

#line 69 "md5_pp.br"
    tb3 -= tc3;

#line 69 "md5_pp.br"
    tb3 = ((uint ) (tb3)) << (uint ) (32 - 21) | ((uint ) (tb3)) >> (uint ) (32 - (32 - 21));

#line 69 "md5_pp.br"
    tb3 -= (td3 ^ (tc3 | ~ta3)) + 0 + 0x4e0811a1;

#line 69 "md5_pp.br"
    ;

#line 69 "md5_pp.br"
    tb4 -= tc4;

#line 69 "md5_pp.br"
    tb4 = ((uint ) (tb4)) << (uint ) (32 - 21) | ((uint ) (tb4)) >> (uint ) (32 - (32 - 21));

#line 69 "md5_pp.br"
    tb4 -= (td4 ^ (tc4 | ~ta4)) + 0 + 0x4e0811a1;

#line 69 "md5_pp.br"
    ;

#line 69 "md5_pp.br"
    tb5 -= tc5;

#line 69 "md5_pp.br"
    tb5 = ((uint ) (tb5)) << (uint ) (32 - 21) | ((uint ) (tb5)) >> (uint ) (32 - (32 - 21));

#line 69 "md5_pp.br"
    tb5 -= (td5 ^ (tc5 | ~ta5)) + 0 + 0x4e0811a1;

#line 69 "md5_pp.br"
    ;
  }


#line 69 "md5_pp.br"
  ;

#line 70 "md5_pp.br"
  {

#line 70 "md5_pp.br"
    tc1 -= td1;

#line 70 "md5_pp.br"
    tc1 = ((uint ) (tc1)) << (uint ) (32 - 15) | ((uint ) (tc1)) >> (uint ) (32 - (32 - 15));

#line 70 "md5_pp.br"
    tc1 -= (ta1 ^ (td1 | ~tb1)) + 0 + 0xa3014314;

#line 70 "md5_pp.br"
    ;

#line 70 "md5_pp.br"
    tc2 -= td2;

#line 70 "md5_pp.br"
    tc2 = ((uint ) (tc2)) << (uint ) (32 - 15) | ((uint ) (tc2)) >> (uint ) (32 - (32 - 15));

#line 70 "md5_pp.br"
    tc2 -= (ta2 ^ (td2 | ~tb2)) + 0 + 0xa3014314;

#line 70 "md5_pp.br"
    ;

#line 70 "md5_pp.br"
    tc3 -= td3;

#line 70 "md5_pp.br"
    tc3 = ((uint ) (tc3)) << (uint ) (32 - 15) | ((uint ) (tc3)) >> (uint ) (32 - (32 - 15));

#line 70 "md5_pp.br"
    tc3 -= (ta3 ^ (td3 | ~tb3)) + 0 + 0xa3014314;

#line 70 "md5_pp.br"
    ;

#line 70 "md5_pp.br"
    tc4 -= td4;

#line 70 "md5_pp.br"
    tc4 = ((uint ) (tc4)) << (uint ) (32 - 15) | ((uint ) (tc4)) >> (uint ) (32 - (32 - 15));

#line 70 "md5_pp.br"
    tc4 -= (ta4 ^ (td4 | ~tb4)) + 0 + 0xa3014314;

#line 70 "md5_pp.br"
    ;

#line 70 "md5_pp.br"
    tc5 -= td5;

#line 70 "md5_pp.br"
    tc5 = ((uint ) (tc5)) << (uint ) (32 - 15) | ((uint ) (tc5)) >> (uint ) (32 - (32 - 15));

#line 70 "md5_pp.br"
    tc5 -= (ta5 ^ (td5 | ~tb5)) + 0 + 0xa3014314;

#line 70 "md5_pp.br"
    ;
  }


#line 70 "md5_pp.br"
  ;

#line 71 "md5_pp.br"
  {

#line 71 "md5_pp.br"
    td1 -= ta1;

#line 71 "md5_pp.br"
    td1 = ((uint ) (td1)) << (uint ) (32 - 10) | ((uint ) (td1)) >> (uint ) (32 - (32 - 10));

#line 71 "md5_pp.br"
    td1 -= (tb1 ^ (ta1 | ~tc1)) + 0 + 0xfe2ce6e0;

#line 71 "md5_pp.br"
    ;

#line 71 "md5_pp.br"
    td2 -= ta2;

#line 71 "md5_pp.br"
    td2 = ((uint ) (td2)) << (uint ) (32 - 10) | ((uint ) (td2)) >> (uint ) (32 - (32 - 10));

#line 71 "md5_pp.br"
    td2 -= (tb2 ^ (ta2 | ~tc2)) + 0 + 0xfe2ce6e0;

#line 71 "md5_pp.br"
    ;

#line 71 "md5_pp.br"
    td3 -= ta3;

#line 71 "md5_pp.br"
    td3 = ((uint ) (td3)) << (uint ) (32 - 10) | ((uint ) (td3)) >> (uint ) (32 - (32 - 10));

#line 71 "md5_pp.br"
    td3 -= (tb3 ^ (ta3 | ~tc3)) + 0 + 0xfe2ce6e0;

#line 71 "md5_pp.br"
    ;

#line 71 "md5_pp.br"
    td4 -= ta4;

#line 71 "md5_pp.br"
    td4 = ((uint ) (td4)) << (uint ) (32 - 10) | ((uint ) (td4)) >> (uint ) (32 - (32 - 10));

#line 71 "md5_pp.br"
    td4 -= (tb4 ^ (ta4 | ~tc4)) + 0 + 0xfe2ce6e0;

#line 71 "md5_pp.br"
    ;

#line 71 "md5_pp.br"
    td5 -= ta5;

#line 71 "md5_pp.br"
    td5 = ((uint ) (td5)) << (uint ) (32 - 10) | ((uint ) (td5)) >> (uint ) (32 - (32 - 10));

#line 71 "md5_pp.br"
    td5 -= (tb5 ^ (ta5 | ~tc5)) + 0 + 0xfe2ce6e0;

#line 71 "md5_pp.br"
    ;
  }


#line 71 "md5_pp.br"
  ;

#line 72 "md5_pp.br"
  {

#line 72 "md5_pp.br"
    ta1 -= tb1;

#line 72 "md5_pp.br"
    ta1 = ((uint ) (ta1)) << (uint ) (32 - 6) | ((uint ) (ta1)) >> (uint ) (32 - (32 - 6));

#line 72 "md5_pp.br"
    ta1 -= (tc1 ^ (tb1 | ~td1)) + 0 + 0x6fa87e4f;

#line 72 "md5_pp.br"
    ;

#line 72 "md5_pp.br"
    ta2 -= tb2;

#line 72 "md5_pp.br"
    ta2 = ((uint ) (ta2)) << (uint ) (32 - 6) | ((uint ) (ta2)) >> (uint ) (32 - (32 - 6));

#line 72 "md5_pp.br"
    ta2 -= (tc2 ^ (tb2 | ~td2)) + 0 + 0x6fa87e4f;

#line 72 "md5_pp.br"
    ;

#line 72 "md5_pp.br"
    ta3 -= tb3;

#line 72 "md5_pp.br"
    ta3 = ((uint ) (ta3)) << (uint ) (32 - 6) | ((uint ) (ta3)) >> (uint ) (32 - (32 - 6));

#line 72 "md5_pp.br"
    ta3 -= (tc3 ^ (tb3 | ~td3)) + 0 + 0x6fa87e4f;

#line 72 "md5_pp.br"
    ;

#line 72 "md5_pp.br"
    ta4 -= tb4;

#line 72 "md5_pp.br"
    ta4 = ((uint ) (ta4)) << (uint ) (32 - 6) | ((uint ) (ta4)) >> (uint ) (32 - (32 - 6));

#line 72 "md5_pp.br"
    ta4 -= (tc4 ^ (tb4 | ~td4)) + 0 + 0x6fa87e4f;

#line 72 "md5_pp.br"
    ;

#line 72 "md5_pp.br"
    ta5 -= tb5;

#line 72 "md5_pp.br"
    ta5 = ((uint ) (ta5)) << (uint ) (32 - 6) | ((uint ) (ta5)) >> (uint ) (32 - (32 - 6));

#line 72 "md5_pp.br"
    ta5 -= (tc5 ^ (tb5 | ~td5)) + 0 + 0x6fa87e4f;

#line 72 "md5_pp.br"
    ;
  }


#line 72 "md5_pp.br"
  ;

#line 73 "md5_pp.br"
  {

#line 73 "md5_pp.br"
    tb1 -= tc1;

#line 73 "md5_pp.br"
    tb1 = ((uint ) (tb1)) << (uint ) (32 - 21) | ((uint ) (tb1)) >> (uint ) (32 - (32 - 21));

#line 73 "md5_pp.br"
    tb1 -= (td1 ^ (tc1 | ~ta1)) + k21 + 0x85845dd1;

#line 73 "md5_pp.br"
    ;

#line 73 "md5_pp.br"
    tb2 -= tc2;

#line 73 "md5_pp.br"
    tb2 = ((uint ) (tb2)) << (uint ) (32 - 21) | ((uint ) (tb2)) >> (uint ) (32 - (32 - 21));

#line 73 "md5_pp.br"
    tb2 -= (td2 ^ (tc2 | ~ta2)) + k22 + 0x85845dd1;

#line 73 "md5_pp.br"
    ;

#line 73 "md5_pp.br"
    tb3 -= tc3;

#line 73 "md5_pp.br"
    tb3 = ((uint ) (tb3)) << (uint ) (32 - 21) | ((uint ) (tb3)) >> (uint ) (32 - (32 - 21));

#line 73 "md5_pp.br"
    tb3 -= (td3 ^ (tc3 | ~ta3)) + k23 + 0x85845dd1;

#line 73 "md5_pp.br"
    ;

#line 73 "md5_pp.br"
    tb4 -= tc4;

#line 73 "md5_pp.br"
    tb4 = ((uint ) (tb4)) << (uint ) (32 - 21) | ((uint ) (tb4)) >> (uint ) (32 - (32 - 21));

#line 73 "md5_pp.br"
    tb4 -= (td4 ^ (tc4 | ~ta4)) + k24 + 0x85845dd1;

#line 73 "md5_pp.br"
    ;

#line 73 "md5_pp.br"
    tb5 -= tc5;

#line 73 "md5_pp.br"
    tb5 = ((uint ) (tb5)) << (uint ) (32 - 21) | ((uint ) (tb5)) >> (uint ) (32 - (32 - 21));

#line 73 "md5_pp.br"
    tb5 -= (td5 ^ (tc5 | ~ta5)) + k25 + 0x85845dd1;

#line 73 "md5_pp.br"
    ;
  }


#line 73 "md5_pp.br"
  ;

#line 74 "md5_pp.br"
  {

#line 74 "md5_pp.br"
    tc1 -= td1;

#line 74 "md5_pp.br"
    tc1 = ((uint ) (tc1)) << (uint ) (32 - 15) | ((uint ) (tc1)) >> (uint ) (32 - (32 - 15));

#line 74 "md5_pp.br"
    tc1 -= (ta1 ^ (td1 | ~tb1)) + 0 + 0xffeff47d;

#line 74 "md5_pp.br"
    ;

#line 74 "md5_pp.br"
    tc2 -= td2;

#line 74 "md5_pp.br"
    tc2 = ((uint ) (tc2)) << (uint ) (32 - 15) | ((uint ) (tc2)) >> (uint ) (32 - (32 - 15));

#line 74 "md5_pp.br"
    tc2 -= (ta2 ^ (td2 | ~tb2)) + 0 + 0xffeff47d;

#line 74 "md5_pp.br"
    ;

#line 74 "md5_pp.br"
    tc3 -= td3;

#line 74 "md5_pp.br"
    tc3 = ((uint ) (tc3)) << (uint ) (32 - 15) | ((uint ) (tc3)) >> (uint ) (32 - (32 - 15));

#line 74 "md5_pp.br"
    tc3 -= (ta3 ^ (td3 | ~tb3)) + 0 + 0xffeff47d;

#line 74 "md5_pp.br"
    ;

#line 74 "md5_pp.br"
    tc4 -= td4;

#line 74 "md5_pp.br"
    tc4 = ((uint ) (tc4)) << (uint ) (32 - 15) | ((uint ) (tc4)) >> (uint ) (32 - (32 - 15));

#line 74 "md5_pp.br"
    tc4 -= (ta4 ^ (td4 | ~tb4)) + 0 + 0xffeff47d;

#line 74 "md5_pp.br"
    ;

#line 74 "md5_pp.br"
    tc5 -= td5;

#line 74 "md5_pp.br"
    tc5 = ((uint ) (tc5)) << (uint ) (32 - 15) | ((uint ) (tc5)) >> (uint ) (32 - (32 - 15));

#line 74 "md5_pp.br"
    tc5 -= (ta5 ^ (td5 | ~tb5)) + 0 + 0xffeff47d;

#line 74 "md5_pp.br"
    ;
  }


#line 74 "md5_pp.br"
  ;

#line 75 "md5_pp.br"
  {

#line 75 "md5_pp.br"
    td1 -= ta1;

#line 75 "md5_pp.br"
    td1 = ((uint ) (td1)) << (uint ) (32 - 10) | ((uint ) (td1)) >> (uint ) (32 - (32 - 10));

#line 75 "md5_pp.br"
    td1 -= (tb1 ^ (ta1 | ~tc1)) + k41 + 0x8f0ccc92;

#line 75 "md5_pp.br"
    ;

#line 75 "md5_pp.br"
    td2 -= ta2;

#line 75 "md5_pp.br"
    td2 = ((uint ) (td2)) << (uint ) (32 - 10) | ((uint ) (td2)) >> (uint ) (32 - (32 - 10));

#line 75 "md5_pp.br"
    td2 -= (tb2 ^ (ta2 | ~tc2)) + k42 + 0x8f0ccc92;

#line 75 "md5_pp.br"
    ;

#line 75 "md5_pp.br"
    td3 -= ta3;

#line 75 "md5_pp.br"
    td3 = ((uint ) (td3)) << (uint ) (32 - 10) | ((uint ) (td3)) >> (uint ) (32 - (32 - 10));

#line 75 "md5_pp.br"
    td3 -= (tb3 ^ (ta3 | ~tc3)) + k43 + 0x8f0ccc92;

#line 75 "md5_pp.br"
    ;

#line 75 "md5_pp.br"
    td4 -= ta4;

#line 75 "md5_pp.br"
    td4 = ((uint ) (td4)) << (uint ) (32 - 10) | ((uint ) (td4)) >> (uint ) (32 - (32 - 10));

#line 75 "md5_pp.br"
    td4 -= (tb4 ^ (ta4 | ~tc4)) + k44 + 0x8f0ccc92;

#line 75 "md5_pp.br"
    ;

#line 75 "md5_pp.br"
    td5 -= ta5;

#line 75 "md5_pp.br"
    td5 = ((uint ) (td5)) << (uint ) (32 - 10) | ((uint ) (td5)) >> (uint ) (32 - (32 - 10));

#line 75 "md5_pp.br"
    td5 -= (tb5 ^ (ta5 | ~tc5)) + k45 + 0x8f0ccc92;

#line 75 "md5_pp.br"
    ;
  }


#line 75 "md5_pp.br"
  ;

#line 76 "md5_pp.br"
  {

#line 76 "md5_pp.br"
    ta1 -= tb1;

#line 76 "md5_pp.br"
    ta1 = ((uint ) (ta1)) << (uint ) (32 - 6) | ((uint ) (ta1)) >> (uint ) (32 - (32 - 6));

#line 76 "md5_pp.br"
    ta1 -= (tc1 ^ (tb1 | ~td1)) + 0 + 0x655b59c3;

#line 76 "md5_pp.br"
    ;

#line 76 "md5_pp.br"
    ta2 -= tb2;

#line 76 "md5_pp.br"
    ta2 = ((uint ) (ta2)) << (uint ) (32 - 6) | ((uint ) (ta2)) >> (uint ) (32 - (32 - 6));

#line 76 "md5_pp.br"
    ta2 -= (tc2 ^ (tb2 | ~td2)) + 0 + 0x655b59c3;

#line 76 "md5_pp.br"
    ;

#line 76 "md5_pp.br"
    ta3 -= tb3;

#line 76 "md5_pp.br"
    ta3 = ((uint ) (ta3)) << (uint ) (32 - 6) | ((uint ) (ta3)) >> (uint ) (32 - (32 - 6));

#line 76 "md5_pp.br"
    ta3 -= (tc3 ^ (tb3 | ~td3)) + 0 + 0x655b59c3;

#line 76 "md5_pp.br"
    ;

#line 76 "md5_pp.br"
    ta4 -= tb4;

#line 76 "md5_pp.br"
    ta4 = ((uint ) (ta4)) << (uint ) (32 - 6) | ((uint ) (ta4)) >> (uint ) (32 - (32 - 6));

#line 76 "md5_pp.br"
    ta4 -= (tc4 ^ (tb4 | ~td4)) + 0 + 0x655b59c3;

#line 76 "md5_pp.br"
    ;

#line 76 "md5_pp.br"
    ta5 -= tb5;

#line 76 "md5_pp.br"
    ta5 = ((uint ) (ta5)) << (uint ) (32 - 6) | ((uint ) (ta5)) >> (uint ) (32 - (32 - 6));

#line 76 "md5_pp.br"
    ta5 -= (tc5 ^ (tb5 | ~td5)) + 0 + 0x655b59c3;

#line 76 "md5_pp.br"
    ;
  }


#line 76 "md5_pp.br"
  ;

#line 77 "md5_pp.br"
  {

#line 77 "md5_pp.br"
    tb1 -= tc1;

#line 77 "md5_pp.br"
    tb1 = ((uint ) (tb1)) << (uint ) (32 - 21) | ((uint ) (tb1)) >> (uint ) (32 - (32 - 21));

#line 77 "md5_pp.br"
    tb1 -= (td1 ^ (tc1 | ~ta1)) + 0 + 0xfc93a039;

#line 77 "md5_pp.br"
    ;

#line 77 "md5_pp.br"
    tb2 -= tc2;

#line 77 "md5_pp.br"
    tb2 = ((uint ) (tb2)) << (uint ) (32 - 21) | ((uint ) (tb2)) >> (uint ) (32 - (32 - 21));

#line 77 "md5_pp.br"
    tb2 -= (td2 ^ (tc2 | ~ta2)) + 0 + 0xfc93a039;

#line 77 "md5_pp.br"
    ;

#line 77 "md5_pp.br"
    tb3 -= tc3;

#line 77 "md5_pp.br"
    tb3 = ((uint ) (tb3)) << (uint ) (32 - 21) | ((uint ) (tb3)) >> (uint ) (32 - (32 - 21));

#line 77 "md5_pp.br"
    tb3 -= (td3 ^ (tc3 | ~ta3)) + 0 + 0xfc93a039;

#line 77 "md5_pp.br"
    ;

#line 77 "md5_pp.br"
    tb4 -= tc4;

#line 77 "md5_pp.br"
    tb4 = ((uint ) (tb4)) << (uint ) (32 - 21) | ((uint ) (tb4)) >> (uint ) (32 - (32 - 21));

#line 77 "md5_pp.br"
    tb4 -= (td4 ^ (tc4 | ~ta4)) + 0 + 0xfc93a039;

#line 77 "md5_pp.br"
    ;

#line 77 "md5_pp.br"
    tb5 -= tc5;

#line 77 "md5_pp.br"
    tb5 = ((uint ) (tb5)) << (uint ) (32 - 21) | ((uint ) (tb5)) >> (uint ) (32 - (32 - 21));

#line 77 "md5_pp.br"
    tb5 -= (td5 ^ (tc5 | ~ta5)) + 0 + 0xfc93a039;

#line 77 "md5_pp.br"
    ;
  }


#line 77 "md5_pp.br"
  ;

#line 78 "md5_pp.br"
  {

#line 78 "md5_pp.br"
    tc1 -= td1;

#line 78 "md5_pp.br"
    tc1 = ((uint ) (tc1)) << (uint ) (32 - 15) | ((uint ) (tc1)) >> (uint ) (32 - (32 - 15));

#line 78 "md5_pp.br"
    tc1 -= (ta1 ^ (td1 | ~tb1)) + len1 + 0xab9423a7;

#line 78 "md5_pp.br"
    ;

#line 78 "md5_pp.br"
    tc2 -= td2;

#line 78 "md5_pp.br"
    tc2 = ((uint ) (tc2)) << (uint ) (32 - 15) | ((uint ) (tc2)) >> (uint ) (32 - (32 - 15));

#line 78 "md5_pp.br"
    tc2 -= (ta2 ^ (td2 | ~tb2)) + len2 + 0xab9423a7;

#line 78 "md5_pp.br"
    ;

#line 78 "md5_pp.br"
    tc3 -= td3;

#line 78 "md5_pp.br"
    tc3 = ((uint ) (tc3)) << (uint ) (32 - 15) | ((uint ) (tc3)) >> (uint ) (32 - (32 - 15));

#line 78 "md5_pp.br"
    tc3 -= (ta3 ^ (td3 | ~tb3)) + len3 + 0xab9423a7;

#line 78 "md5_pp.br"
    ;

#line 78 "md5_pp.br"
    tc4 -= td4;

#line 78 "md5_pp.br"
    tc4 = ((uint ) (tc4)) << (uint ) (32 - 15) | ((uint ) (tc4)) >> (uint ) (32 - (32 - 15));

#line 78 "md5_pp.br"
    tc4 -= (ta4 ^ (td4 | ~tb4)) + len4 + 0xab9423a7;

#line 78 "md5_pp.br"
    ;

#line 78 "md5_pp.br"
    tc5 -= td5;

#line 78 "md5_pp.br"
    tc5 = ((uint ) (tc5)) << (uint ) (32 - 15) | ((uint ) (tc5)) >> (uint ) (32 - (32 - 15));

#line 78 "md5_pp.br"
    tc5 -= (ta5 ^ (td5 | ~tb5)) + len5 + 0xab9423a7;

#line 78 "md5_pp.br"
    ;
  }


#line 78 "md5_pp.br"
  ;

#line 79 "md5_pp.br"
  {

#line 79 "md5_pp.br"
    td1 -= ta1;

#line 79 "md5_pp.br"
    td1 = ((uint ) (td1)) << (uint ) (32 - 10) | ((uint ) (td1)) >> (uint ) (32 - (32 - 10));

#line 79 "md5_pp.br"
    td1 -= (tb1 ^ (ta1 | ~tc1)) + 0 + 0x432aff97;

#line 79 "md5_pp.br"
    ;

#line 79 "md5_pp.br"
    td2 -= ta2;

#line 79 "md5_pp.br"
    td2 = ((uint ) (td2)) << (uint ) (32 - 10) | ((uint ) (td2)) >> (uint ) (32 - (32 - 10));

#line 79 "md5_pp.br"
    td2 -= (tb2 ^ (ta2 | ~tc2)) + 0 + 0x432aff97;

#line 79 "md5_pp.br"
    ;

#line 79 "md5_pp.br"
    td3 -= ta3;

#line 79 "md5_pp.br"
    td3 = ((uint ) (td3)) << (uint ) (32 - 10) | ((uint ) (td3)) >> (uint ) (32 - (32 - 10));

#line 79 "md5_pp.br"
    td3 -= (tb3 ^ (ta3 | ~tc3)) + 0 + 0x432aff97;

#line 79 "md5_pp.br"
    ;

#line 79 "md5_pp.br"
    td4 -= ta4;

#line 79 "md5_pp.br"
    td4 = ((uint ) (td4)) << (uint ) (32 - 10) | ((uint ) (td4)) >> (uint ) (32 - (32 - 10));

#line 79 "md5_pp.br"
    td4 -= (tb4 ^ (ta4 | ~tc4)) + 0 + 0x432aff97;

#line 79 "md5_pp.br"
    ;

#line 79 "md5_pp.br"
    td5 -= ta5;

#line 79 "md5_pp.br"
    td5 = ((uint ) (td5)) << (uint ) (32 - 10) | ((uint ) (td5)) >> (uint ) (32 - (32 - 10));

#line 79 "md5_pp.br"
    td5 -= (tb5 ^ (ta5 | ~tc5)) + 0 + 0x432aff97;

#line 79 "md5_pp.br"
    ;
  }


#line 79 "md5_pp.br"
  ;

#line 82 "md5_pp.br"
  for (s2 = 0; s2 < charset_len; s2++)

#line 83 "md5_pp.br"
  {

#line 84 "md5_pp.br"
    val1 = __gather_int (charset, __getGatherPosFrom1D(s2, __gatherStreamShape_charset, __gatherBufferShape_charset)) << 8;

#line 86 "md5_pp.br"
    k11 = k11 & 0xffff00ff | val1;

#line 87 "md5_pp.br"
    k12 = k12 & 0xffff00ff | val1;

#line 88 "md5_pp.br"
    k13 = k13 & 0xffff00ff | val1;

#line 89 "md5_pp.br"
    k14 = k14 & 0xffff00ff | val1;

#line 90 "md5_pp.br"
    k15 = k15 & 0xffff00ff | val1;

#line 92 "md5_pp.br"
    for (s1 = 0; s1 < charset_len; s1++)

#line 93 "md5_pp.br"
    {

#line 94 "md5_pp.br"
      val2 = __gather_int (charset, __getGatherPosFrom1D(s1, __gatherStreamShape_charset, __gatherBufferShape_charset));

#line 96 "md5_pp.br"
      k11 = k11 & 0xffffff00 | val2;

#line 97 "md5_pp.br"
      k12 = k12 & 0xffffff00 | val2;

#line 98 "md5_pp.br"
      k13 = k13 & 0xffffff00 | val2;

#line 99 "md5_pp.br"
      k14 = k14 & 0xffffff00 | val2;

#line 100 "md5_pp.br"
      k15 = k15 & 0xffffff00 | val2;

#line 102 "md5_pp.br"
      a1 = a2 = a3 = a4 = a5 = 0x67452301;

#line 103 "md5_pp.br"
      b1 = b2 = b3 = b4 = b5 = 0xefcdab89;

#line 104 "md5_pp.br"
      c1 = c2 = c3 = c4 = c5 = 0x98badcfe;

#line 105 "md5_pp.br"
      d1 = d2 = d3 = d4 = d5 = 0x10325476;

#line 108 "md5_pp.br"
      {

#line 108 "md5_pp.br"
        a1 += k11 + 0xd76aa478 + (b1 & c1 | ~b1 & d1);

#line 108 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (7) | ((uint ) (a1)) >> (uint ) (32 - 7)) + (uint ) (b1);

#line 108 "md5_pp.br"
        ;

#line 108 "md5_pp.br"
        a2 += k12 + 0xd76aa478 + (b2 & c2 | ~b2 & d2);

#line 108 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (7) | ((uint ) (a2)) >> (uint ) (32 - 7)) + (uint ) (b2);

#line 108 "md5_pp.br"
        ;

#line 108 "md5_pp.br"
        a3 += k13 + 0xd76aa478 + (b3 & c3 | ~b3 & d3);

#line 108 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (7) | ((uint ) (a3)) >> (uint ) (32 - 7)) + (uint ) (b3);

#line 108 "md5_pp.br"
        ;

#line 108 "md5_pp.br"
        a4 += k14 + 0xd76aa478 + (b4 & c4 | ~b4 & d4);

#line 108 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (7) | ((uint ) (a4)) >> (uint ) (32 - 7)) + (uint ) (b4);

#line 108 "md5_pp.br"
        ;

#line 108 "md5_pp.br"
        a5 += k15 + 0xd76aa478 + (b5 & c5 | ~b5 & d5);

#line 108 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (7) | ((uint ) (a5)) >> (uint ) (32 - 7)) + (uint ) (b5);

#line 108 "md5_pp.br"
        ;
      }


#line 108 "md5_pp.br"
      ;

#line 109 "md5_pp.br"
      {

#line 109 "md5_pp.br"
        d1 += k21 + 0xe8c7b756 + (a1 & b1 | ~a1 & c1);

#line 109 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (12) | ((uint ) (d1)) >> (uint ) (32 - 12)) + (uint ) (a1);

#line 109 "md5_pp.br"
        ;

#line 109 "md5_pp.br"
        d2 += k22 + 0xe8c7b756 + (a2 & b2 | ~a2 & c2);

#line 109 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (12) | ((uint ) (d2)) >> (uint ) (32 - 12)) + (uint ) (a2);

#line 109 "md5_pp.br"
        ;

#line 109 "md5_pp.br"
        d3 += k23 + 0xe8c7b756 + (a3 & b3 | ~a3 & c3);

#line 109 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (12) | ((uint ) (d3)) >> (uint ) (32 - 12)) + (uint ) (a3);

#line 109 "md5_pp.br"
        ;

#line 109 "md5_pp.br"
        d4 += k24 + 0xe8c7b756 + (a4 & b4 | ~a4 & c4);

#line 109 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (12) | ((uint ) (d4)) >> (uint ) (32 - 12)) + (uint ) (a4);

#line 109 "md5_pp.br"
        ;

#line 109 "md5_pp.br"
        d5 += k25 + 0xe8c7b756 + (a5 & b5 | ~a5 & c5);

#line 109 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (12) | ((uint ) (d5)) >> (uint ) (32 - 12)) + (uint ) (a5);

#line 109 "md5_pp.br"
        ;
      }


#line 109 "md5_pp.br"
      ;

#line 110 "md5_pp.br"
      {

#line 110 "md5_pp.br"
        c1 += k31 + 0x242070db + (d1 & a1 | ~d1 & b1);

#line 110 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (17) | ((uint ) (c1)) >> (uint ) (32 - 17)) + (uint ) (d1);

#line 110 "md5_pp.br"
        ;

#line 110 "md5_pp.br"
        c2 += k32 + 0x242070db + (d2 & a2 | ~d2 & b2);

#line 110 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (17) | ((uint ) (c2)) >> (uint ) (32 - 17)) + (uint ) (d2);

#line 110 "md5_pp.br"
        ;

#line 110 "md5_pp.br"
        c3 += k33 + 0x242070db + (d3 & a3 | ~d3 & b3);

#line 110 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (17) | ((uint ) (c3)) >> (uint ) (32 - 17)) + (uint ) (d3);

#line 110 "md5_pp.br"
        ;

#line 110 "md5_pp.br"
        c4 += k34 + 0x242070db + (d4 & a4 | ~d4 & b4);

#line 110 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (17) | ((uint ) (c4)) >> (uint ) (32 - 17)) + (uint ) (d4);

#line 110 "md5_pp.br"
        ;

#line 110 "md5_pp.br"
        c5 += k35 + 0x242070db + (d5 & a5 | ~d5 & b5);

#line 110 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (17) | ((uint ) (c5)) >> (uint ) (32 - 17)) + (uint ) (d5);

#line 110 "md5_pp.br"
        ;
      }


#line 110 "md5_pp.br"
      ;

#line 111 "md5_pp.br"
      {

#line 111 "md5_pp.br"
        b1 += k41 + 0xc1bdceee + (c1 & d1 | ~c1 & a1);

#line 111 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (22) | ((uint ) (b1)) >> (uint ) (32 - 22)) + (uint ) (c1);

#line 111 "md5_pp.br"
        ;

#line 111 "md5_pp.br"
        b2 += k42 + 0xc1bdceee + (c2 & d2 | ~c2 & a2);

#line 111 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (22) | ((uint ) (b2)) >> (uint ) (32 - 22)) + (uint ) (c2);

#line 111 "md5_pp.br"
        ;

#line 111 "md5_pp.br"
        b3 += k43 + 0xc1bdceee + (c3 & d3 | ~c3 & a3);

#line 111 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (22) | ((uint ) (b3)) >> (uint ) (32 - 22)) + (uint ) (c3);

#line 111 "md5_pp.br"
        ;

#line 111 "md5_pp.br"
        b4 += k44 + 0xc1bdceee + (c4 & d4 | ~c4 & a4);

#line 111 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (22) | ((uint ) (b4)) >> (uint ) (32 - 22)) + (uint ) (c4);

#line 111 "md5_pp.br"
        ;

#line 111 "md5_pp.br"
        b5 += k45 + 0xc1bdceee + (c5 & d5 | ~c5 & a5);

#line 111 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (22) | ((uint ) (b5)) >> (uint ) (32 - 22)) + (uint ) (c5);

#line 111 "md5_pp.br"
        ;
      }


#line 111 "md5_pp.br"
      ;

#line 114 "md5_pp.br"
      {

#line 114 "md5_pp.br"
        a1 += 0 + 0xf57c0faf + (b1 & c1 | ~b1 & d1);

#line 114 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (7) | ((uint ) (a1)) >> (uint ) (32 - 7)) + (uint ) (b1);

#line 114 "md5_pp.br"
        ;

#line 114 "md5_pp.br"
        a2 += 0 + 0xf57c0faf + (b2 & c2 | ~b2 & d2);

#line 114 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (7) | ((uint ) (a2)) >> (uint ) (32 - 7)) + (uint ) (b2);

#line 114 "md5_pp.br"
        ;

#line 114 "md5_pp.br"
        a3 += 0 + 0xf57c0faf + (b3 & c3 | ~b3 & d3);

#line 114 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (7) | ((uint ) (a3)) >> (uint ) (32 - 7)) + (uint ) (b3);

#line 114 "md5_pp.br"
        ;

#line 114 "md5_pp.br"
        a4 += 0 + 0xf57c0faf + (b4 & c4 | ~b4 & d4);

#line 114 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (7) | ((uint ) (a4)) >> (uint ) (32 - 7)) + (uint ) (b4);

#line 114 "md5_pp.br"
        ;

#line 114 "md5_pp.br"
        a5 += 0 + 0xf57c0faf + (b5 & c5 | ~b5 & d5);

#line 114 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (7) | ((uint ) (a5)) >> (uint ) (32 - 7)) + (uint ) (b5);

#line 114 "md5_pp.br"
        ;
      }


#line 114 "md5_pp.br"
      ;

#line 115 "md5_pp.br"
      {

#line 115 "md5_pp.br"
        d1 += 0 + 0x4787c62a + (a1 & b1 | ~a1 & c1);

#line 115 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (12) | ((uint ) (d1)) >> (uint ) (32 - 12)) + (uint ) (a1);

#line 115 "md5_pp.br"
        ;

#line 115 "md5_pp.br"
        d2 += 0 + 0x4787c62a + (a2 & b2 | ~a2 & c2);

#line 115 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (12) | ((uint ) (d2)) >> (uint ) (32 - 12)) + (uint ) (a2);

#line 115 "md5_pp.br"
        ;

#line 115 "md5_pp.br"
        d3 += 0 + 0x4787c62a + (a3 & b3 | ~a3 & c3);

#line 115 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (12) | ((uint ) (d3)) >> (uint ) (32 - 12)) + (uint ) (a3);

#line 115 "md5_pp.br"
        ;

#line 115 "md5_pp.br"
        d4 += 0 + 0x4787c62a + (a4 & b4 | ~a4 & c4);

#line 115 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (12) | ((uint ) (d4)) >> (uint ) (32 - 12)) + (uint ) (a4);

#line 115 "md5_pp.br"
        ;

#line 115 "md5_pp.br"
        d5 += 0 + 0x4787c62a + (a5 & b5 | ~a5 & c5);

#line 115 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (12) | ((uint ) (d5)) >> (uint ) (32 - 12)) + (uint ) (a5);

#line 115 "md5_pp.br"
        ;
      }


#line 115 "md5_pp.br"
      ;

#line 116 "md5_pp.br"
      {

#line 116 "md5_pp.br"
        c1 += 0 + 0xa8304613 + (d1 & a1 | ~d1 & b1);

#line 116 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (17) | ((uint ) (c1)) >> (uint ) (32 - 17)) + (uint ) (d1);

#line 116 "md5_pp.br"
        ;

#line 116 "md5_pp.br"
        c2 += 0 + 0xa8304613 + (d2 & a2 | ~d2 & b2);

#line 116 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (17) | ((uint ) (c2)) >> (uint ) (32 - 17)) + (uint ) (d2);

#line 116 "md5_pp.br"
        ;

#line 116 "md5_pp.br"
        c3 += 0 + 0xa8304613 + (d3 & a3 | ~d3 & b3);

#line 116 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (17) | ((uint ) (c3)) >> (uint ) (32 - 17)) + (uint ) (d3);

#line 116 "md5_pp.br"
        ;

#line 116 "md5_pp.br"
        c4 += 0 + 0xa8304613 + (d4 & a4 | ~d4 & b4);

#line 116 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (17) | ((uint ) (c4)) >> (uint ) (32 - 17)) + (uint ) (d4);

#line 116 "md5_pp.br"
        ;

#line 116 "md5_pp.br"
        c5 += 0 + 0xa8304613 + (d5 & a5 | ~d5 & b5);

#line 116 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (17) | ((uint ) (c5)) >> (uint ) (32 - 17)) + (uint ) (d5);

#line 116 "md5_pp.br"
        ;
      }


#line 116 "md5_pp.br"
      ;

#line 117 "md5_pp.br"
      {

#line 117 "md5_pp.br"
        b1 += 0 + 0xfd469501 + (c1 & d1 | ~c1 & a1);

#line 117 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (22) | ((uint ) (b1)) >> (uint ) (32 - 22)) + (uint ) (c1);

#line 117 "md5_pp.br"
        ;

#line 117 "md5_pp.br"
        b2 += 0 + 0xfd469501 + (c2 & d2 | ~c2 & a2);

#line 117 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (22) | ((uint ) (b2)) >> (uint ) (32 - 22)) + (uint ) (c2);

#line 117 "md5_pp.br"
        ;

#line 117 "md5_pp.br"
        b3 += 0 + 0xfd469501 + (c3 & d3 | ~c3 & a3);

#line 117 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (22) | ((uint ) (b3)) >> (uint ) (32 - 22)) + (uint ) (c3);

#line 117 "md5_pp.br"
        ;

#line 117 "md5_pp.br"
        b4 += 0 + 0xfd469501 + (c4 & d4 | ~c4 & a4);

#line 117 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (22) | ((uint ) (b4)) >> (uint ) (32 - 22)) + (uint ) (c4);

#line 117 "md5_pp.br"
        ;

#line 117 "md5_pp.br"
        b5 += 0 + 0xfd469501 + (c5 & d5 | ~c5 & a5);

#line 117 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (22) | ((uint ) (b5)) >> (uint ) (32 - 22)) + (uint ) (c5);

#line 117 "md5_pp.br"
        ;
      }


#line 117 "md5_pp.br"
      ;

#line 118 "md5_pp.br"
      {

#line 118 "md5_pp.br"
        a1 += 0 + 0x698098d8 + (b1 & c1 | ~b1 & d1);

#line 118 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (7) | ((uint ) (a1)) >> (uint ) (32 - 7)) + (uint ) (b1);

#line 118 "md5_pp.br"
        ;

#line 118 "md5_pp.br"
        a2 += 0 + 0x698098d8 + (b2 & c2 | ~b2 & d2);

#line 118 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (7) | ((uint ) (a2)) >> (uint ) (32 - 7)) + (uint ) (b2);

#line 118 "md5_pp.br"
        ;

#line 118 "md5_pp.br"
        a3 += 0 + 0x698098d8 + (b3 & c3 | ~b3 & d3);

#line 118 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (7) | ((uint ) (a3)) >> (uint ) (32 - 7)) + (uint ) (b3);

#line 118 "md5_pp.br"
        ;

#line 118 "md5_pp.br"
        a4 += 0 + 0x698098d8 + (b4 & c4 | ~b4 & d4);

#line 118 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (7) | ((uint ) (a4)) >> (uint ) (32 - 7)) + (uint ) (b4);

#line 118 "md5_pp.br"
        ;

#line 118 "md5_pp.br"
        a5 += 0 + 0x698098d8 + (b5 & c5 | ~b5 & d5);

#line 118 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (7) | ((uint ) (a5)) >> (uint ) (32 - 7)) + (uint ) (b5);

#line 118 "md5_pp.br"
        ;
      }


#line 118 "md5_pp.br"
      ;

#line 119 "md5_pp.br"
      {

#line 119 "md5_pp.br"
        d1 += 0 + 0x8b44f7af + (a1 & b1 | ~a1 & c1);

#line 119 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (12) | ((uint ) (d1)) >> (uint ) (32 - 12)) + (uint ) (a1);

#line 119 "md5_pp.br"
        ;

#line 119 "md5_pp.br"
        d2 += 0 + 0x8b44f7af + (a2 & b2 | ~a2 & c2);

#line 119 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (12) | ((uint ) (d2)) >> (uint ) (32 - 12)) + (uint ) (a2);

#line 119 "md5_pp.br"
        ;

#line 119 "md5_pp.br"
        d3 += 0 + 0x8b44f7af + (a3 & b3 | ~a3 & c3);

#line 119 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (12) | ((uint ) (d3)) >> (uint ) (32 - 12)) + (uint ) (a3);

#line 119 "md5_pp.br"
        ;

#line 119 "md5_pp.br"
        d4 += 0 + 0x8b44f7af + (a4 & b4 | ~a4 & c4);

#line 119 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (12) | ((uint ) (d4)) >> (uint ) (32 - 12)) + (uint ) (a4);

#line 119 "md5_pp.br"
        ;

#line 119 "md5_pp.br"
        d5 += 0 + 0x8b44f7af + (a5 & b5 | ~a5 & c5);

#line 119 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (12) | ((uint ) (d5)) >> (uint ) (32 - 12)) + (uint ) (a5);

#line 119 "md5_pp.br"
        ;
      }


#line 119 "md5_pp.br"
      ;

#line 120 "md5_pp.br"
      {

#line 120 "md5_pp.br"
        c1 += 0 + 0xffff5bb1 + (d1 & a1 | ~d1 & b1);

#line 120 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (17) | ((uint ) (c1)) >> (uint ) (32 - 17)) + (uint ) (d1);

#line 120 "md5_pp.br"
        ;

#line 120 "md5_pp.br"
        c2 += 0 + 0xffff5bb1 + (d2 & a2 | ~d2 & b2);

#line 120 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (17) | ((uint ) (c2)) >> (uint ) (32 - 17)) + (uint ) (d2);

#line 120 "md5_pp.br"
        ;

#line 120 "md5_pp.br"
        c3 += 0 + 0xffff5bb1 + (d3 & a3 | ~d3 & b3);

#line 120 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (17) | ((uint ) (c3)) >> (uint ) (32 - 17)) + (uint ) (d3);

#line 120 "md5_pp.br"
        ;

#line 120 "md5_pp.br"
        c4 += 0 + 0xffff5bb1 + (d4 & a4 | ~d4 & b4);

#line 120 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (17) | ((uint ) (c4)) >> (uint ) (32 - 17)) + (uint ) (d4);

#line 120 "md5_pp.br"
        ;

#line 120 "md5_pp.br"
        c5 += 0 + 0xffff5bb1 + (d5 & a5 | ~d5 & b5);

#line 120 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (17) | ((uint ) (c5)) >> (uint ) (32 - 17)) + (uint ) (d5);

#line 120 "md5_pp.br"
        ;
      }


#line 120 "md5_pp.br"
      ;

#line 121 "md5_pp.br"
      {

#line 121 "md5_pp.br"
        b1 += 0 + 0x895cd7be + (c1 & d1 | ~c1 & a1);

#line 121 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (22) | ((uint ) (b1)) >> (uint ) (32 - 22)) + (uint ) (c1);

#line 121 "md5_pp.br"
        ;

#line 121 "md5_pp.br"
        b2 += 0 + 0x895cd7be + (c2 & d2 | ~c2 & a2);

#line 121 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (22) | ((uint ) (b2)) >> (uint ) (32 - 22)) + (uint ) (c2);

#line 121 "md5_pp.br"
        ;

#line 121 "md5_pp.br"
        b3 += 0 + 0x895cd7be + (c3 & d3 | ~c3 & a3);

#line 121 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (22) | ((uint ) (b3)) >> (uint ) (32 - 22)) + (uint ) (c3);

#line 121 "md5_pp.br"
        ;

#line 121 "md5_pp.br"
        b4 += 0 + 0x895cd7be + (c4 & d4 | ~c4 & a4);

#line 121 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (22) | ((uint ) (b4)) >> (uint ) (32 - 22)) + (uint ) (c4);

#line 121 "md5_pp.br"
        ;

#line 121 "md5_pp.br"
        b5 += 0 + 0x895cd7be + (c5 & d5 | ~c5 & a5);

#line 121 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (22) | ((uint ) (b5)) >> (uint ) (32 - 22)) + (uint ) (c5);

#line 121 "md5_pp.br"
        ;
      }


#line 121 "md5_pp.br"
      ;

#line 122 "md5_pp.br"
      {

#line 122 "md5_pp.br"
        a1 += 0 + 0x6b901122 + (b1 & c1 | ~b1 & d1);

#line 122 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (7) | ((uint ) (a1)) >> (uint ) (32 - 7)) + (uint ) (b1);

#line 122 "md5_pp.br"
        ;

#line 122 "md5_pp.br"
        a2 += 0 + 0x6b901122 + (b2 & c2 | ~b2 & d2);

#line 122 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (7) | ((uint ) (a2)) >> (uint ) (32 - 7)) + (uint ) (b2);

#line 122 "md5_pp.br"
        ;

#line 122 "md5_pp.br"
        a3 += 0 + 0x6b901122 + (b3 & c3 | ~b3 & d3);

#line 122 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (7) | ((uint ) (a3)) >> (uint ) (32 - 7)) + (uint ) (b3);

#line 122 "md5_pp.br"
        ;

#line 122 "md5_pp.br"
        a4 += 0 + 0x6b901122 + (b4 & c4 | ~b4 & d4);

#line 122 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (7) | ((uint ) (a4)) >> (uint ) (32 - 7)) + (uint ) (b4);

#line 122 "md5_pp.br"
        ;

#line 122 "md5_pp.br"
        a5 += 0 + 0x6b901122 + (b5 & c5 | ~b5 & d5);

#line 122 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (7) | ((uint ) (a5)) >> (uint ) (32 - 7)) + (uint ) (b5);

#line 122 "md5_pp.br"
        ;
      }


#line 122 "md5_pp.br"
      ;

#line 123 "md5_pp.br"
      {

#line 123 "md5_pp.br"
        d1 += 0 + 0xfd987193 + (a1 & b1 | ~a1 & c1);

#line 123 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (12) | ((uint ) (d1)) >> (uint ) (32 - 12)) + (uint ) (a1);

#line 123 "md5_pp.br"
        ;

#line 123 "md5_pp.br"
        d2 += 0 + 0xfd987193 + (a2 & b2 | ~a2 & c2);

#line 123 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (12) | ((uint ) (d2)) >> (uint ) (32 - 12)) + (uint ) (a2);

#line 123 "md5_pp.br"
        ;

#line 123 "md5_pp.br"
        d3 += 0 + 0xfd987193 + (a3 & b3 | ~a3 & c3);

#line 123 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (12) | ((uint ) (d3)) >> (uint ) (32 - 12)) + (uint ) (a3);

#line 123 "md5_pp.br"
        ;

#line 123 "md5_pp.br"
        d4 += 0 + 0xfd987193 + (a4 & b4 | ~a4 & c4);

#line 123 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (12) | ((uint ) (d4)) >> (uint ) (32 - 12)) + (uint ) (a4);

#line 123 "md5_pp.br"
        ;

#line 123 "md5_pp.br"
        d5 += 0 + 0xfd987193 + (a5 & b5 | ~a5 & c5);

#line 123 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (12) | ((uint ) (d5)) >> (uint ) (32 - 12)) + (uint ) (a5);

#line 123 "md5_pp.br"
        ;
      }


#line 123 "md5_pp.br"
      ;

#line 124 "md5_pp.br"
      {

#line 124 "md5_pp.br"
        c1 += len1 + 0xa679438e + (d1 & a1 | ~d1 & b1);

#line 124 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (17) | ((uint ) (c1)) >> (uint ) (32 - 17)) + (uint ) (d1);

#line 124 "md5_pp.br"
        ;

#line 124 "md5_pp.br"
        c2 += len2 + 0xa679438e + (d2 & a2 | ~d2 & b2);

#line 124 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (17) | ((uint ) (c2)) >> (uint ) (32 - 17)) + (uint ) (d2);

#line 124 "md5_pp.br"
        ;

#line 124 "md5_pp.br"
        c3 += len3 + 0xa679438e + (d3 & a3 | ~d3 & b3);

#line 124 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (17) | ((uint ) (c3)) >> (uint ) (32 - 17)) + (uint ) (d3);

#line 124 "md5_pp.br"
        ;

#line 124 "md5_pp.br"
        c4 += len4 + 0xa679438e + (d4 & a4 | ~d4 & b4);

#line 124 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (17) | ((uint ) (c4)) >> (uint ) (32 - 17)) + (uint ) (d4);

#line 124 "md5_pp.br"
        ;

#line 124 "md5_pp.br"
        c5 += len5 + 0xa679438e + (d5 & a5 | ~d5 & b5);

#line 124 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (17) | ((uint ) (c5)) >> (uint ) (32 - 17)) + (uint ) (d5);

#line 124 "md5_pp.br"
        ;
      }


#line 124 "md5_pp.br"
      ;

#line 125 "md5_pp.br"
      {

#line 125 "md5_pp.br"
        b1 += 0 + 0x49b40821 + (c1 & d1 | ~c1 & a1);

#line 125 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (22) | ((uint ) (b1)) >> (uint ) (32 - 22)) + (uint ) (c1);

#line 125 "md5_pp.br"
        ;

#line 125 "md5_pp.br"
        b2 += 0 + 0x49b40821 + (c2 & d2 | ~c2 & a2);

#line 125 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (22) | ((uint ) (b2)) >> (uint ) (32 - 22)) + (uint ) (c2);

#line 125 "md5_pp.br"
        ;

#line 125 "md5_pp.br"
        b3 += 0 + 0x49b40821 + (c3 & d3 | ~c3 & a3);

#line 125 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (22) | ((uint ) (b3)) >> (uint ) (32 - 22)) + (uint ) (c3);

#line 125 "md5_pp.br"
        ;

#line 125 "md5_pp.br"
        b4 += 0 + 0x49b40821 + (c4 & d4 | ~c4 & a4);

#line 125 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (22) | ((uint ) (b4)) >> (uint ) (32 - 22)) + (uint ) (c4);

#line 125 "md5_pp.br"
        ;

#line 125 "md5_pp.br"
        b5 += 0 + 0x49b40821 + (c5 & d5 | ~c5 & a5);

#line 125 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (22) | ((uint ) (b5)) >> (uint ) (32 - 22)) + (uint ) (c5);

#line 125 "md5_pp.br"
        ;
      }


#line 125 "md5_pp.br"
      ;

#line 128 "md5_pp.br"
      {

#line 128 "md5_pp.br"
        a1 += k21 + 0xf61e2562 + (b1 & d1 | c1 & ~d1);

#line 128 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (5) | ((uint ) (a1)) >> (uint ) (32 - 5)) + (uint ) (b1);

#line 128 "md5_pp.br"
        ;

#line 128 "md5_pp.br"
        a2 += k22 + 0xf61e2562 + (b2 & d2 | c2 & ~d2);

#line 128 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (5) | ((uint ) (a2)) >> (uint ) (32 - 5)) + (uint ) (b2);

#line 128 "md5_pp.br"
        ;

#line 128 "md5_pp.br"
        a3 += k23 + 0xf61e2562 + (b3 & d3 | c3 & ~d3);

#line 128 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (5) | ((uint ) (a3)) >> (uint ) (32 - 5)) + (uint ) (b3);

#line 128 "md5_pp.br"
        ;

#line 128 "md5_pp.br"
        a4 += k24 + 0xf61e2562 + (b4 & d4 | c4 & ~d4);

#line 128 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (5) | ((uint ) (a4)) >> (uint ) (32 - 5)) + (uint ) (b4);

#line 128 "md5_pp.br"
        ;

#line 128 "md5_pp.br"
        a5 += k25 + 0xf61e2562 + (b5 & d5 | c5 & ~d5);

#line 128 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (5) | ((uint ) (a5)) >> (uint ) (32 - 5)) + (uint ) (b5);

#line 128 "md5_pp.br"
        ;
      }


#line 128 "md5_pp.br"
      ;

#line 129 "md5_pp.br"
      {

#line 129 "md5_pp.br"
        d1 += 0 + 0xc040b340 + (a1 & c1 | b1 & ~c1);

#line 129 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (9) | ((uint ) (d1)) >> (uint ) (32 - 9)) + (uint ) (a1);

#line 129 "md5_pp.br"
        ;

#line 129 "md5_pp.br"
        d2 += 0 + 0xc040b340 + (a2 & c2 | b2 & ~c2);

#line 129 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (9) | ((uint ) (d2)) >> (uint ) (32 - 9)) + (uint ) (a2);

#line 129 "md5_pp.br"
        ;

#line 129 "md5_pp.br"
        d3 += 0 + 0xc040b340 + (a3 & c3 | b3 & ~c3);

#line 129 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (9) | ((uint ) (d3)) >> (uint ) (32 - 9)) + (uint ) (a3);

#line 129 "md5_pp.br"
        ;

#line 129 "md5_pp.br"
        d4 += 0 + 0xc040b340 + (a4 & c4 | b4 & ~c4);

#line 129 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (9) | ((uint ) (d4)) >> (uint ) (32 - 9)) + (uint ) (a4);

#line 129 "md5_pp.br"
        ;

#line 129 "md5_pp.br"
        d5 += 0 + 0xc040b340 + (a5 & c5 | b5 & ~c5);

#line 129 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (9) | ((uint ) (d5)) >> (uint ) (32 - 9)) + (uint ) (a5);

#line 129 "md5_pp.br"
        ;
      }


#line 129 "md5_pp.br"
      ;

#line 130 "md5_pp.br"
      {

#line 130 "md5_pp.br"
        c1 += 0 + 0x265e5a51 + (d1 & b1 | a1 & ~b1);

#line 130 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (14) | ((uint ) (c1)) >> (uint ) (32 - 14)) + (uint ) (d1);

#line 130 "md5_pp.br"
        ;

#line 130 "md5_pp.br"
        c2 += 0 + 0x265e5a51 + (d2 & b2 | a2 & ~b2);

#line 130 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (14) | ((uint ) (c2)) >> (uint ) (32 - 14)) + (uint ) (d2);

#line 130 "md5_pp.br"
        ;

#line 130 "md5_pp.br"
        c3 += 0 + 0x265e5a51 + (d3 & b3 | a3 & ~b3);

#line 130 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (14) | ((uint ) (c3)) >> (uint ) (32 - 14)) + (uint ) (d3);

#line 130 "md5_pp.br"
        ;

#line 130 "md5_pp.br"
        c4 += 0 + 0x265e5a51 + (d4 & b4 | a4 & ~b4);

#line 130 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (14) | ((uint ) (c4)) >> (uint ) (32 - 14)) + (uint ) (d4);

#line 130 "md5_pp.br"
        ;

#line 130 "md5_pp.br"
        c5 += 0 + 0x265e5a51 + (d5 & b5 | a5 & ~b5);

#line 130 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (14) | ((uint ) (c5)) >> (uint ) (32 - 14)) + (uint ) (d5);

#line 130 "md5_pp.br"
        ;
      }


#line 130 "md5_pp.br"
      ;

#line 131 "md5_pp.br"
      {

#line 131 "md5_pp.br"
        b1 += k11 + 0xe9b6c7aa + (c1 & a1 | d1 & ~a1);

#line 131 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (20) | ((uint ) (b1)) >> (uint ) (32 - 20)) + (uint ) (c1);

#line 131 "md5_pp.br"
        ;

#line 131 "md5_pp.br"
        b2 += k12 + 0xe9b6c7aa + (c2 & a2 | d2 & ~a2);

#line 131 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (20) | ((uint ) (b2)) >> (uint ) (32 - 20)) + (uint ) (c2);

#line 131 "md5_pp.br"
        ;

#line 131 "md5_pp.br"
        b3 += k13 + 0xe9b6c7aa + (c3 & a3 | d3 & ~a3);

#line 131 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (20) | ((uint ) (b3)) >> (uint ) (32 - 20)) + (uint ) (c3);

#line 131 "md5_pp.br"
        ;

#line 131 "md5_pp.br"
        b4 += k14 + 0xe9b6c7aa + (c4 & a4 | d4 & ~a4);

#line 131 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (20) | ((uint ) (b4)) >> (uint ) (32 - 20)) + (uint ) (c4);

#line 131 "md5_pp.br"
        ;

#line 131 "md5_pp.br"
        b5 += k15 + 0xe9b6c7aa + (c5 & a5 | d5 & ~a5);

#line 131 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (20) | ((uint ) (b5)) >> (uint ) (32 - 20)) + (uint ) (c5);

#line 131 "md5_pp.br"
        ;
      }


#line 131 "md5_pp.br"
      ;

#line 132 "md5_pp.br"
      {

#line 132 "md5_pp.br"
        a1 += 0 + 0xd62f105d + (b1 & d1 | c1 & ~d1);

#line 132 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (5) | ((uint ) (a1)) >> (uint ) (32 - 5)) + (uint ) (b1);

#line 132 "md5_pp.br"
        ;

#line 132 "md5_pp.br"
        a2 += 0 + 0xd62f105d + (b2 & d2 | c2 & ~d2);

#line 132 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (5) | ((uint ) (a2)) >> (uint ) (32 - 5)) + (uint ) (b2);

#line 132 "md5_pp.br"
        ;

#line 132 "md5_pp.br"
        a3 += 0 + 0xd62f105d + (b3 & d3 | c3 & ~d3);

#line 132 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (5) | ((uint ) (a3)) >> (uint ) (32 - 5)) + (uint ) (b3);

#line 132 "md5_pp.br"
        ;

#line 132 "md5_pp.br"
        a4 += 0 + 0xd62f105d + (b4 & d4 | c4 & ~d4);

#line 132 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (5) | ((uint ) (a4)) >> (uint ) (32 - 5)) + (uint ) (b4);

#line 132 "md5_pp.br"
        ;

#line 132 "md5_pp.br"
        a5 += 0 + 0xd62f105d + (b5 & d5 | c5 & ~d5);

#line 132 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (5) | ((uint ) (a5)) >> (uint ) (32 - 5)) + (uint ) (b5);

#line 132 "md5_pp.br"
        ;
      }


#line 132 "md5_pp.br"
      ;

#line 133 "md5_pp.br"
      {

#line 133 "md5_pp.br"
        d1 += 0 + 0x2441453 + (a1 & c1 | b1 & ~c1);

#line 133 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (9) | ((uint ) (d1)) >> (uint ) (32 - 9)) + (uint ) (a1);

#line 133 "md5_pp.br"
        ;

#line 133 "md5_pp.br"
        d2 += 0 + 0x2441453 + (a2 & c2 | b2 & ~c2);

#line 133 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (9) | ((uint ) (d2)) >> (uint ) (32 - 9)) + (uint ) (a2);

#line 133 "md5_pp.br"
        ;

#line 133 "md5_pp.br"
        d3 += 0 + 0x2441453 + (a3 & c3 | b3 & ~c3);

#line 133 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (9) | ((uint ) (d3)) >> (uint ) (32 - 9)) + (uint ) (a3);

#line 133 "md5_pp.br"
        ;

#line 133 "md5_pp.br"
        d4 += 0 + 0x2441453 + (a4 & c4 | b4 & ~c4);

#line 133 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (9) | ((uint ) (d4)) >> (uint ) (32 - 9)) + (uint ) (a4);

#line 133 "md5_pp.br"
        ;

#line 133 "md5_pp.br"
        d5 += 0 + 0x2441453 + (a5 & c5 | b5 & ~c5);

#line 133 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (9) | ((uint ) (d5)) >> (uint ) (32 - 9)) + (uint ) (a5);

#line 133 "md5_pp.br"
        ;
      }


#line 133 "md5_pp.br"
      ;

#line 134 "md5_pp.br"
      {

#line 134 "md5_pp.br"
        c1 += 0 + 0xd8a1e681 + (d1 & b1 | a1 & ~b1);

#line 134 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (14) | ((uint ) (c1)) >> (uint ) (32 - 14)) + (uint ) (d1);

#line 134 "md5_pp.br"
        ;

#line 134 "md5_pp.br"
        c2 += 0 + 0xd8a1e681 + (d2 & b2 | a2 & ~b2);

#line 134 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (14) | ((uint ) (c2)) >> (uint ) (32 - 14)) + (uint ) (d2);

#line 134 "md5_pp.br"
        ;

#line 134 "md5_pp.br"
        c3 += 0 + 0xd8a1e681 + (d3 & b3 | a3 & ~b3);

#line 134 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (14) | ((uint ) (c3)) >> (uint ) (32 - 14)) + (uint ) (d3);

#line 134 "md5_pp.br"
        ;

#line 134 "md5_pp.br"
        c4 += 0 + 0xd8a1e681 + (d4 & b4 | a4 & ~b4);

#line 134 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (14) | ((uint ) (c4)) >> (uint ) (32 - 14)) + (uint ) (d4);

#line 134 "md5_pp.br"
        ;

#line 134 "md5_pp.br"
        c5 += 0 + 0xd8a1e681 + (d5 & b5 | a5 & ~b5);

#line 134 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (14) | ((uint ) (c5)) >> (uint ) (32 - 14)) + (uint ) (d5);

#line 134 "md5_pp.br"
        ;
      }


#line 134 "md5_pp.br"
      ;

#line 135 "md5_pp.br"
      {

#line 135 "md5_pp.br"
        b1 += 0 + 0xe7d3fbc8 + (c1 & a1 | d1 & ~a1);

#line 135 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (20) | ((uint ) (b1)) >> (uint ) (32 - 20)) + (uint ) (c1);

#line 135 "md5_pp.br"
        ;

#line 135 "md5_pp.br"
        b2 += 0 + 0xe7d3fbc8 + (c2 & a2 | d2 & ~a2);

#line 135 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (20) | ((uint ) (b2)) >> (uint ) (32 - 20)) + (uint ) (c2);

#line 135 "md5_pp.br"
        ;

#line 135 "md5_pp.br"
        b3 += 0 + 0xe7d3fbc8 + (c3 & a3 | d3 & ~a3);

#line 135 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (20) | ((uint ) (b3)) >> (uint ) (32 - 20)) + (uint ) (c3);

#line 135 "md5_pp.br"
        ;

#line 135 "md5_pp.br"
        b4 += 0 + 0xe7d3fbc8 + (c4 & a4 | d4 & ~a4);

#line 135 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (20) | ((uint ) (b4)) >> (uint ) (32 - 20)) + (uint ) (c4);

#line 135 "md5_pp.br"
        ;

#line 135 "md5_pp.br"
        b5 += 0 + 0xe7d3fbc8 + (c5 & a5 | d5 & ~a5);

#line 135 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (20) | ((uint ) (b5)) >> (uint ) (32 - 20)) + (uint ) (c5);

#line 135 "md5_pp.br"
        ;
      }


#line 135 "md5_pp.br"
      ;

#line 136 "md5_pp.br"
      {

#line 136 "md5_pp.br"
        a1 += 0 + 0x21e1cde6 + (b1 & d1 | c1 & ~d1);

#line 136 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (5) | ((uint ) (a1)) >> (uint ) (32 - 5)) + (uint ) (b1);

#line 136 "md5_pp.br"
        ;

#line 136 "md5_pp.br"
        a2 += 0 + 0x21e1cde6 + (b2 & d2 | c2 & ~d2);

#line 136 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (5) | ((uint ) (a2)) >> (uint ) (32 - 5)) + (uint ) (b2);

#line 136 "md5_pp.br"
        ;

#line 136 "md5_pp.br"
        a3 += 0 + 0x21e1cde6 + (b3 & d3 | c3 & ~d3);

#line 136 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (5) | ((uint ) (a3)) >> (uint ) (32 - 5)) + (uint ) (b3);

#line 136 "md5_pp.br"
        ;

#line 136 "md5_pp.br"
        a4 += 0 + 0x21e1cde6 + (b4 & d4 | c4 & ~d4);

#line 136 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (5) | ((uint ) (a4)) >> (uint ) (32 - 5)) + (uint ) (b4);

#line 136 "md5_pp.br"
        ;

#line 136 "md5_pp.br"
        a5 += 0 + 0x21e1cde6 + (b5 & d5 | c5 & ~d5);

#line 136 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (5) | ((uint ) (a5)) >> (uint ) (32 - 5)) + (uint ) (b5);

#line 136 "md5_pp.br"
        ;
      }


#line 136 "md5_pp.br"
      ;

#line 137 "md5_pp.br"
      {

#line 137 "md5_pp.br"
        d1 += len1 + 0xc33707d6 + (a1 & c1 | b1 & ~c1);

#line 137 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (9) | ((uint ) (d1)) >> (uint ) (32 - 9)) + (uint ) (a1);

#line 137 "md5_pp.br"
        ;

#line 137 "md5_pp.br"
        d2 += len2 + 0xc33707d6 + (a2 & c2 | b2 & ~c2);

#line 137 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (9) | ((uint ) (d2)) >> (uint ) (32 - 9)) + (uint ) (a2);

#line 137 "md5_pp.br"
        ;

#line 137 "md5_pp.br"
        d3 += len3 + 0xc33707d6 + (a3 & c3 | b3 & ~c3);

#line 137 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (9) | ((uint ) (d3)) >> (uint ) (32 - 9)) + (uint ) (a3);

#line 137 "md5_pp.br"
        ;

#line 137 "md5_pp.br"
        d4 += len4 + 0xc33707d6 + (a4 & c4 | b4 & ~c4);

#line 137 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (9) | ((uint ) (d4)) >> (uint ) (32 - 9)) + (uint ) (a4);

#line 137 "md5_pp.br"
        ;

#line 137 "md5_pp.br"
        d5 += len5 + 0xc33707d6 + (a5 & c5 | b5 & ~c5);

#line 137 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (9) | ((uint ) (d5)) >> (uint ) (32 - 9)) + (uint ) (a5);

#line 137 "md5_pp.br"
        ;
      }


#line 137 "md5_pp.br"
      ;

#line 138 "md5_pp.br"
      {

#line 138 "md5_pp.br"
        c1 += k41 + 0xf4d50d87 + (d1 & b1 | a1 & ~b1);

#line 138 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (14) | ((uint ) (c1)) >> (uint ) (32 - 14)) + (uint ) (d1);

#line 138 "md5_pp.br"
        ;

#line 138 "md5_pp.br"
        c2 += k42 + 0xf4d50d87 + (d2 & b2 | a2 & ~b2);

#line 138 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (14) | ((uint ) (c2)) >> (uint ) (32 - 14)) + (uint ) (d2);

#line 138 "md5_pp.br"
        ;

#line 138 "md5_pp.br"
        c3 += k43 + 0xf4d50d87 + (d3 & b3 | a3 & ~b3);

#line 138 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (14) | ((uint ) (c3)) >> (uint ) (32 - 14)) + (uint ) (d3);

#line 138 "md5_pp.br"
        ;

#line 138 "md5_pp.br"
        c4 += k44 + 0xf4d50d87 + (d4 & b4 | a4 & ~b4);

#line 138 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (14) | ((uint ) (c4)) >> (uint ) (32 - 14)) + (uint ) (d4);

#line 138 "md5_pp.br"
        ;

#line 138 "md5_pp.br"
        c5 += k45 + 0xf4d50d87 + (d5 & b5 | a5 & ~b5);

#line 138 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (14) | ((uint ) (c5)) >> (uint ) (32 - 14)) + (uint ) (d5);

#line 138 "md5_pp.br"
        ;
      }


#line 138 "md5_pp.br"
      ;

#line 139 "md5_pp.br"
      {

#line 139 "md5_pp.br"
        b1 += 0 + 0x455a14ed + (c1 & a1 | d1 & ~a1);

#line 139 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (20) | ((uint ) (b1)) >> (uint ) (32 - 20)) + (uint ) (c1);

#line 139 "md5_pp.br"
        ;

#line 139 "md5_pp.br"
        b2 += 0 + 0x455a14ed + (c2 & a2 | d2 & ~a2);

#line 139 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (20) | ((uint ) (b2)) >> (uint ) (32 - 20)) + (uint ) (c2);

#line 139 "md5_pp.br"
        ;

#line 139 "md5_pp.br"
        b3 += 0 + 0x455a14ed + (c3 & a3 | d3 & ~a3);

#line 139 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (20) | ((uint ) (b3)) >> (uint ) (32 - 20)) + (uint ) (c3);

#line 139 "md5_pp.br"
        ;

#line 139 "md5_pp.br"
        b4 += 0 + 0x455a14ed + (c4 & a4 | d4 & ~a4);

#line 139 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (20) | ((uint ) (b4)) >> (uint ) (32 - 20)) + (uint ) (c4);

#line 139 "md5_pp.br"
        ;

#line 139 "md5_pp.br"
        b5 += 0 + 0x455a14ed + (c5 & a5 | d5 & ~a5);

#line 139 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (20) | ((uint ) (b5)) >> (uint ) (32 - 20)) + (uint ) (c5);

#line 139 "md5_pp.br"
        ;
      }


#line 139 "md5_pp.br"
      ;

#line 140 "md5_pp.br"
      {

#line 140 "md5_pp.br"
        a1 += 0 + 0xa9e3e905 + (b1 & d1 | c1 & ~d1);

#line 140 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (5) | ((uint ) (a1)) >> (uint ) (32 - 5)) + (uint ) (b1);

#line 140 "md5_pp.br"
        ;

#line 140 "md5_pp.br"
        a2 += 0 + 0xa9e3e905 + (b2 & d2 | c2 & ~d2);

#line 140 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (5) | ((uint ) (a2)) >> (uint ) (32 - 5)) + (uint ) (b2);

#line 140 "md5_pp.br"
        ;

#line 140 "md5_pp.br"
        a3 += 0 + 0xa9e3e905 + (b3 & d3 | c3 & ~d3);

#line 140 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (5) | ((uint ) (a3)) >> (uint ) (32 - 5)) + (uint ) (b3);

#line 140 "md5_pp.br"
        ;

#line 140 "md5_pp.br"
        a4 += 0 + 0xa9e3e905 + (b4 & d4 | c4 & ~d4);

#line 140 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (5) | ((uint ) (a4)) >> (uint ) (32 - 5)) + (uint ) (b4);

#line 140 "md5_pp.br"
        ;

#line 140 "md5_pp.br"
        a5 += 0 + 0xa9e3e905 + (b5 & d5 | c5 & ~d5);

#line 140 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (5) | ((uint ) (a5)) >> (uint ) (32 - 5)) + (uint ) (b5);

#line 140 "md5_pp.br"
        ;
      }


#line 140 "md5_pp.br"
      ;

#line 141 "md5_pp.br"
      {

#line 141 "md5_pp.br"
        d1 += k31 + 0xfcefa3f8 + (a1 & c1 | b1 & ~c1);

#line 141 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (9) | ((uint ) (d1)) >> (uint ) (32 - 9)) + (uint ) (a1);

#line 141 "md5_pp.br"
        ;

#line 141 "md5_pp.br"
        d2 += k32 + 0xfcefa3f8 + (a2 & c2 | b2 & ~c2);

#line 141 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (9) | ((uint ) (d2)) >> (uint ) (32 - 9)) + (uint ) (a2);

#line 141 "md5_pp.br"
        ;

#line 141 "md5_pp.br"
        d3 += k33 + 0xfcefa3f8 + (a3 & c3 | b3 & ~c3);

#line 141 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (9) | ((uint ) (d3)) >> (uint ) (32 - 9)) + (uint ) (a3);

#line 141 "md5_pp.br"
        ;

#line 141 "md5_pp.br"
        d4 += k34 + 0xfcefa3f8 + (a4 & c4 | b4 & ~c4);

#line 141 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (9) | ((uint ) (d4)) >> (uint ) (32 - 9)) + (uint ) (a4);

#line 141 "md5_pp.br"
        ;

#line 141 "md5_pp.br"
        d5 += k35 + 0xfcefa3f8 + (a5 & c5 | b5 & ~c5);

#line 141 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (9) | ((uint ) (d5)) >> (uint ) (32 - 9)) + (uint ) (a5);

#line 141 "md5_pp.br"
        ;
      }


#line 141 "md5_pp.br"
      ;

#line 142 "md5_pp.br"
      {

#line 142 "md5_pp.br"
        c1 += 0 + 0x676f02d9 + (d1 & b1 | a1 & ~b1);

#line 142 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (14) | ((uint ) (c1)) >> (uint ) (32 - 14)) + (uint ) (d1);

#line 142 "md5_pp.br"
        ;

#line 142 "md5_pp.br"
        c2 += 0 + 0x676f02d9 + (d2 & b2 | a2 & ~b2);

#line 142 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (14) | ((uint ) (c2)) >> (uint ) (32 - 14)) + (uint ) (d2);

#line 142 "md5_pp.br"
        ;

#line 142 "md5_pp.br"
        c3 += 0 + 0x676f02d9 + (d3 & b3 | a3 & ~b3);

#line 142 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (14) | ((uint ) (c3)) >> (uint ) (32 - 14)) + (uint ) (d3);

#line 142 "md5_pp.br"
        ;

#line 142 "md5_pp.br"
        c4 += 0 + 0x676f02d9 + (d4 & b4 | a4 & ~b4);

#line 142 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (14) | ((uint ) (c4)) >> (uint ) (32 - 14)) + (uint ) (d4);

#line 142 "md5_pp.br"
        ;

#line 142 "md5_pp.br"
        c5 += 0 + 0x676f02d9 + (d5 & b5 | a5 & ~b5);

#line 142 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (14) | ((uint ) (c5)) >> (uint ) (32 - 14)) + (uint ) (d5);

#line 142 "md5_pp.br"
        ;
      }


#line 142 "md5_pp.br"
      ;

#line 143 "md5_pp.br"
      {

#line 143 "md5_pp.br"
        b1 += 0 + 0x8d2a4c8a + (c1 & a1 | d1 & ~a1);

#line 143 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (20) | ((uint ) (b1)) >> (uint ) (32 - 20)) + (uint ) (c1);

#line 143 "md5_pp.br"
        ;

#line 143 "md5_pp.br"
        b2 += 0 + 0x8d2a4c8a + (c2 & a2 | d2 & ~a2);

#line 143 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (20) | ((uint ) (b2)) >> (uint ) (32 - 20)) + (uint ) (c2);

#line 143 "md5_pp.br"
        ;

#line 143 "md5_pp.br"
        b3 += 0 + 0x8d2a4c8a + (c3 & a3 | d3 & ~a3);

#line 143 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (20) | ((uint ) (b3)) >> (uint ) (32 - 20)) + (uint ) (c3);

#line 143 "md5_pp.br"
        ;

#line 143 "md5_pp.br"
        b4 += 0 + 0x8d2a4c8a + (c4 & a4 | d4 & ~a4);

#line 143 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (20) | ((uint ) (b4)) >> (uint ) (32 - 20)) + (uint ) (c4);

#line 143 "md5_pp.br"
        ;

#line 143 "md5_pp.br"
        b5 += 0 + 0x8d2a4c8a + (c5 & a5 | d5 & ~a5);

#line 143 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (20) | ((uint ) (b5)) >> (uint ) (32 - 20)) + (uint ) (c5);

#line 143 "md5_pp.br"
        ;
      }


#line 143 "md5_pp.br"
      ;

#line 146 "md5_pp.br"
      {

#line 146 "md5_pp.br"
        a1 += 0 + 0xfffa3942 + (b1 ^ c1 ^ d1);

#line 146 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (4) | ((uint ) (a1)) >> (uint ) (32 - 4)) + (uint ) (b1);

#line 146 "md5_pp.br"
        ;

#line 146 "md5_pp.br"
        a2 += 0 + 0xfffa3942 + (b2 ^ c2 ^ d2);

#line 146 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (4) | ((uint ) (a2)) >> (uint ) (32 - 4)) + (uint ) (b2);

#line 146 "md5_pp.br"
        ;

#line 146 "md5_pp.br"
        a3 += 0 + 0xfffa3942 + (b3 ^ c3 ^ d3);

#line 146 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (4) | ((uint ) (a3)) >> (uint ) (32 - 4)) + (uint ) (b3);

#line 146 "md5_pp.br"
        ;

#line 146 "md5_pp.br"
        a4 += 0 + 0xfffa3942 + (b4 ^ c4 ^ d4);

#line 146 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (4) | ((uint ) (a4)) >> (uint ) (32 - 4)) + (uint ) (b4);

#line 146 "md5_pp.br"
        ;

#line 146 "md5_pp.br"
        a5 += 0 + 0xfffa3942 + (b5 ^ c5 ^ d5);

#line 146 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (4) | ((uint ) (a5)) >> (uint ) (32 - 4)) + (uint ) (b5);

#line 146 "md5_pp.br"
        ;
      }


#line 146 "md5_pp.br"
      ;

#line 147 "md5_pp.br"
      {

#line 147 "md5_pp.br"
        d1 += 0 + 0x8771f681 + (a1 ^ b1 ^ c1);

#line 147 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (11) | ((uint ) (d1)) >> (uint ) (32 - 11)) + (uint ) (a1);

#line 147 "md5_pp.br"
        ;

#line 147 "md5_pp.br"
        d2 += 0 + 0x8771f681 + (a2 ^ b2 ^ c2);

#line 147 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (11) | ((uint ) (d2)) >> (uint ) (32 - 11)) + (uint ) (a2);

#line 147 "md5_pp.br"
        ;

#line 147 "md5_pp.br"
        d3 += 0 + 0x8771f681 + (a3 ^ b3 ^ c3);

#line 147 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (11) | ((uint ) (d3)) >> (uint ) (32 - 11)) + (uint ) (a3);

#line 147 "md5_pp.br"
        ;

#line 147 "md5_pp.br"
        d4 += 0 + 0x8771f681 + (a4 ^ b4 ^ c4);

#line 147 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (11) | ((uint ) (d4)) >> (uint ) (32 - 11)) + (uint ) (a4);

#line 147 "md5_pp.br"
        ;

#line 147 "md5_pp.br"
        d5 += 0 + 0x8771f681 + (a5 ^ b5 ^ c5);

#line 147 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (11) | ((uint ) (d5)) >> (uint ) (32 - 11)) + (uint ) (a5);

#line 147 "md5_pp.br"
        ;
      }


#line 147 "md5_pp.br"
      ;

#line 148 "md5_pp.br"
      {

#line 148 "md5_pp.br"
        c1 += 0 + 0x6d9d6122 + (d1 ^ a1 ^ b1);

#line 148 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (16) | ((uint ) (c1)) >> (uint ) (32 - 16)) + (uint ) (d1);

#line 148 "md5_pp.br"
        ;

#line 148 "md5_pp.br"
        c2 += 0 + 0x6d9d6122 + (d2 ^ a2 ^ b2);

#line 148 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (16) | ((uint ) (c2)) >> (uint ) (32 - 16)) + (uint ) (d2);

#line 148 "md5_pp.br"
        ;

#line 148 "md5_pp.br"
        c3 += 0 + 0x6d9d6122 + (d3 ^ a3 ^ b3);

#line 148 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (16) | ((uint ) (c3)) >> (uint ) (32 - 16)) + (uint ) (d3);

#line 148 "md5_pp.br"
        ;

#line 148 "md5_pp.br"
        c4 += 0 + 0x6d9d6122 + (d4 ^ a4 ^ b4);

#line 148 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (16) | ((uint ) (c4)) >> (uint ) (32 - 16)) + (uint ) (d4);

#line 148 "md5_pp.br"
        ;

#line 148 "md5_pp.br"
        c5 += 0 + 0x6d9d6122 + (d5 ^ a5 ^ b5);

#line 148 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (16) | ((uint ) (c5)) >> (uint ) (32 - 16)) + (uint ) (d5);

#line 148 "md5_pp.br"
        ;
      }


#line 148 "md5_pp.br"
      ;

#line 149 "md5_pp.br"
      {

#line 149 "md5_pp.br"
        b1 += len1 + 0xfde5380c + (c1 ^ d1 ^ a1);

#line 149 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (23) | ((uint ) (b1)) >> (uint ) (32 - 23)) + (uint ) (c1);

#line 149 "md5_pp.br"
        ;

#line 149 "md5_pp.br"
        b2 += len2 + 0xfde5380c + (c2 ^ d2 ^ a2);

#line 149 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (23) | ((uint ) (b2)) >> (uint ) (32 - 23)) + (uint ) (c2);

#line 149 "md5_pp.br"
        ;

#line 149 "md5_pp.br"
        b3 += len3 + 0xfde5380c + (c3 ^ d3 ^ a3);

#line 149 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (23) | ((uint ) (b3)) >> (uint ) (32 - 23)) + (uint ) (c3);

#line 149 "md5_pp.br"
        ;

#line 149 "md5_pp.br"
        b4 += len4 + 0xfde5380c + (c4 ^ d4 ^ a4);

#line 149 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (23) | ((uint ) (b4)) >> (uint ) (32 - 23)) + (uint ) (c4);

#line 149 "md5_pp.br"
        ;

#line 149 "md5_pp.br"
        b5 += len5 + 0xfde5380c + (c5 ^ d5 ^ a5);

#line 149 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (23) | ((uint ) (b5)) >> (uint ) (32 - 23)) + (uint ) (c5);

#line 149 "md5_pp.br"
        ;
      }


#line 149 "md5_pp.br"
      ;

#line 150 "md5_pp.br"
      {

#line 150 "md5_pp.br"
        a1 += k21 + 0xa4beea44 + (b1 ^ c1 ^ d1);

#line 150 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (4) | ((uint ) (a1)) >> (uint ) (32 - 4)) + (uint ) (b1);

#line 150 "md5_pp.br"
        ;

#line 150 "md5_pp.br"
        a2 += k22 + 0xa4beea44 + (b2 ^ c2 ^ d2);

#line 150 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (4) | ((uint ) (a2)) >> (uint ) (32 - 4)) + (uint ) (b2);

#line 150 "md5_pp.br"
        ;

#line 150 "md5_pp.br"
        a3 += k23 + 0xa4beea44 + (b3 ^ c3 ^ d3);

#line 150 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (4) | ((uint ) (a3)) >> (uint ) (32 - 4)) + (uint ) (b3);

#line 150 "md5_pp.br"
        ;

#line 150 "md5_pp.br"
        a4 += k24 + 0xa4beea44 + (b4 ^ c4 ^ d4);

#line 150 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (4) | ((uint ) (a4)) >> (uint ) (32 - 4)) + (uint ) (b4);

#line 150 "md5_pp.br"
        ;

#line 150 "md5_pp.br"
        a5 += k25 + 0xa4beea44 + (b5 ^ c5 ^ d5);

#line 150 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (4) | ((uint ) (a5)) >> (uint ) (32 - 4)) + (uint ) (b5);

#line 150 "md5_pp.br"
        ;
      }


#line 150 "md5_pp.br"
      ;

#line 151 "md5_pp.br"
      {

#line 151 "md5_pp.br"
        d1 += 0 + 0x4bdecfa9 + (a1 ^ b1 ^ c1);

#line 151 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (11) | ((uint ) (d1)) >> (uint ) (32 - 11)) + (uint ) (a1);

#line 151 "md5_pp.br"
        ;

#line 151 "md5_pp.br"
        d2 += 0 + 0x4bdecfa9 + (a2 ^ b2 ^ c2);

#line 151 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (11) | ((uint ) (d2)) >> (uint ) (32 - 11)) + (uint ) (a2);

#line 151 "md5_pp.br"
        ;

#line 151 "md5_pp.br"
        d3 += 0 + 0x4bdecfa9 + (a3 ^ b3 ^ c3);

#line 151 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (11) | ((uint ) (d3)) >> (uint ) (32 - 11)) + (uint ) (a3);

#line 151 "md5_pp.br"
        ;

#line 151 "md5_pp.br"
        d4 += 0 + 0x4bdecfa9 + (a4 ^ b4 ^ c4);

#line 151 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (11) | ((uint ) (d4)) >> (uint ) (32 - 11)) + (uint ) (a4);

#line 151 "md5_pp.br"
        ;

#line 151 "md5_pp.br"
        d5 += 0 + 0x4bdecfa9 + (a5 ^ b5 ^ c5);

#line 151 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (11) | ((uint ) (d5)) >> (uint ) (32 - 11)) + (uint ) (a5);

#line 151 "md5_pp.br"
        ;
      }


#line 151 "md5_pp.br"
      ;

#line 152 "md5_pp.br"
      {

#line 152 "md5_pp.br"
        c1 += 0 + 0xf6bb4b60 + (d1 ^ a1 ^ b1);

#line 152 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (16) | ((uint ) (c1)) >> (uint ) (32 - 16)) + (uint ) (d1);

#line 152 "md5_pp.br"
        ;

#line 152 "md5_pp.br"
        c2 += 0 + 0xf6bb4b60 + (d2 ^ a2 ^ b2);

#line 152 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (16) | ((uint ) (c2)) >> (uint ) (32 - 16)) + (uint ) (d2);

#line 152 "md5_pp.br"
        ;

#line 152 "md5_pp.br"
        c3 += 0 + 0xf6bb4b60 + (d3 ^ a3 ^ b3);

#line 152 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (16) | ((uint ) (c3)) >> (uint ) (32 - 16)) + (uint ) (d3);

#line 152 "md5_pp.br"
        ;

#line 152 "md5_pp.br"
        c4 += 0 + 0xf6bb4b60 + (d4 ^ a4 ^ b4);

#line 152 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (16) | ((uint ) (c4)) >> (uint ) (32 - 16)) + (uint ) (d4);

#line 152 "md5_pp.br"
        ;

#line 152 "md5_pp.br"
        c5 += 0 + 0xf6bb4b60 + (d5 ^ a5 ^ b5);

#line 152 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (16) | ((uint ) (c5)) >> (uint ) (32 - 16)) + (uint ) (d5);

#line 152 "md5_pp.br"
        ;
      }


#line 152 "md5_pp.br"
      ;

#line 153 "md5_pp.br"
      {

#line 153 "md5_pp.br"
        b1 += 0 + 0xbebfbc70 + (c1 ^ d1 ^ a1);

#line 153 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (23) | ((uint ) (b1)) >> (uint ) (32 - 23)) + (uint ) (c1);

#line 153 "md5_pp.br"
        ;

#line 153 "md5_pp.br"
        b2 += 0 + 0xbebfbc70 + (c2 ^ d2 ^ a2);

#line 153 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (23) | ((uint ) (b2)) >> (uint ) (32 - 23)) + (uint ) (c2);

#line 153 "md5_pp.br"
        ;

#line 153 "md5_pp.br"
        b3 += 0 + 0xbebfbc70 + (c3 ^ d3 ^ a3);

#line 153 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (23) | ((uint ) (b3)) >> (uint ) (32 - 23)) + (uint ) (c3);

#line 153 "md5_pp.br"
        ;

#line 153 "md5_pp.br"
        b4 += 0 + 0xbebfbc70 + (c4 ^ d4 ^ a4);

#line 153 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (23) | ((uint ) (b4)) >> (uint ) (32 - 23)) + (uint ) (c4);

#line 153 "md5_pp.br"
        ;

#line 153 "md5_pp.br"
        b5 += 0 + 0xbebfbc70 + (c5 ^ d5 ^ a5);

#line 153 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (23) | ((uint ) (b5)) >> (uint ) (32 - 23)) + (uint ) (c5);

#line 153 "md5_pp.br"
        ;
      }


#line 153 "md5_pp.br"
      ;

#line 154 "md5_pp.br"
      {

#line 154 "md5_pp.br"
        a1 += 0 + 0x289b7ec6 + (b1 ^ c1 ^ d1);

#line 154 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (4) | ((uint ) (a1)) >> (uint ) (32 - 4)) + (uint ) (b1);

#line 154 "md5_pp.br"
        ;

#line 154 "md5_pp.br"
        a2 += 0 + 0x289b7ec6 + (b2 ^ c2 ^ d2);

#line 154 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (4) | ((uint ) (a2)) >> (uint ) (32 - 4)) + (uint ) (b2);

#line 154 "md5_pp.br"
        ;

#line 154 "md5_pp.br"
        a3 += 0 + 0x289b7ec6 + (b3 ^ c3 ^ d3);

#line 154 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (4) | ((uint ) (a3)) >> (uint ) (32 - 4)) + (uint ) (b3);

#line 154 "md5_pp.br"
        ;

#line 154 "md5_pp.br"
        a4 += 0 + 0x289b7ec6 + (b4 ^ c4 ^ d4);

#line 154 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (4) | ((uint ) (a4)) >> (uint ) (32 - 4)) + (uint ) (b4);

#line 154 "md5_pp.br"
        ;

#line 154 "md5_pp.br"
        a5 += 0 + 0x289b7ec6 + (b5 ^ c5 ^ d5);

#line 154 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (4) | ((uint ) (a5)) >> (uint ) (32 - 4)) + (uint ) (b5);

#line 154 "md5_pp.br"
        ;
      }


#line 154 "md5_pp.br"
      ;

#line 155 "md5_pp.br"
      {

#line 155 "md5_pp.br"
        d1 += k11 + 0xeaa127fa + (a1 ^ b1 ^ c1);

#line 155 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (11) | ((uint ) (d1)) >> (uint ) (32 - 11)) + (uint ) (a1);

#line 155 "md5_pp.br"
        ;

#line 155 "md5_pp.br"
        d2 += k12 + 0xeaa127fa + (a2 ^ b2 ^ c2);

#line 155 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (11) | ((uint ) (d2)) >> (uint ) (32 - 11)) + (uint ) (a2);

#line 155 "md5_pp.br"
        ;

#line 155 "md5_pp.br"
        d3 += k13 + 0xeaa127fa + (a3 ^ b3 ^ c3);

#line 155 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (11) | ((uint ) (d3)) >> (uint ) (32 - 11)) + (uint ) (a3);

#line 155 "md5_pp.br"
        ;

#line 155 "md5_pp.br"
        d4 += k14 + 0xeaa127fa + (a4 ^ b4 ^ c4);

#line 155 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (11) | ((uint ) (d4)) >> (uint ) (32 - 11)) + (uint ) (a4);

#line 155 "md5_pp.br"
        ;

#line 155 "md5_pp.br"
        d5 += k15 + 0xeaa127fa + (a5 ^ b5 ^ c5);

#line 155 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (11) | ((uint ) (d5)) >> (uint ) (32 - 11)) + (uint ) (a5);

#line 155 "md5_pp.br"
        ;
      }


#line 155 "md5_pp.br"
      ;

#line 156 "md5_pp.br"
      {

#line 156 "md5_pp.br"
        c1 += k41 + 0xd4ef3085 + (d1 ^ a1 ^ b1);

#line 156 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (16) | ((uint ) (c1)) >> (uint ) (32 - 16)) + (uint ) (d1);

#line 156 "md5_pp.br"
        ;

#line 156 "md5_pp.br"
        c2 += k42 + 0xd4ef3085 + (d2 ^ a2 ^ b2);

#line 156 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (16) | ((uint ) (c2)) >> (uint ) (32 - 16)) + (uint ) (d2);

#line 156 "md5_pp.br"
        ;

#line 156 "md5_pp.br"
        c3 += k43 + 0xd4ef3085 + (d3 ^ a3 ^ b3);

#line 156 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (16) | ((uint ) (c3)) >> (uint ) (32 - 16)) + (uint ) (d3);

#line 156 "md5_pp.br"
        ;

#line 156 "md5_pp.br"
        c4 += k44 + 0xd4ef3085 + (d4 ^ a4 ^ b4);

#line 156 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (16) | ((uint ) (c4)) >> (uint ) (32 - 16)) + (uint ) (d4);

#line 156 "md5_pp.br"
        ;

#line 156 "md5_pp.br"
        c5 += k45 + 0xd4ef3085 + (d5 ^ a5 ^ b5);

#line 156 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (16) | ((uint ) (c5)) >> (uint ) (32 - 16)) + (uint ) (d5);

#line 156 "md5_pp.br"
        ;
      }


#line 156 "md5_pp.br"
      ;

#line 157 "md5_pp.br"
      {

#line 157 "md5_pp.br"
        b1 += 0 + 0x4881d05 + (c1 ^ d1 ^ a1);

#line 157 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (23) | ((uint ) (b1)) >> (uint ) (32 - 23)) + (uint ) (c1);

#line 157 "md5_pp.br"
        ;

#line 157 "md5_pp.br"
        b2 += 0 + 0x4881d05 + (c2 ^ d2 ^ a2);

#line 157 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (23) | ((uint ) (b2)) >> (uint ) (32 - 23)) + (uint ) (c2);

#line 157 "md5_pp.br"
        ;

#line 157 "md5_pp.br"
        b3 += 0 + 0x4881d05 + (c3 ^ d3 ^ a3);

#line 157 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (23) | ((uint ) (b3)) >> (uint ) (32 - 23)) + (uint ) (c3);

#line 157 "md5_pp.br"
        ;

#line 157 "md5_pp.br"
        b4 += 0 + 0x4881d05 + (c4 ^ d4 ^ a4);

#line 157 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (23) | ((uint ) (b4)) >> (uint ) (32 - 23)) + (uint ) (c4);

#line 157 "md5_pp.br"
        ;

#line 157 "md5_pp.br"
        b5 += 0 + 0x4881d05 + (c5 ^ d5 ^ a5);

#line 157 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (23) | ((uint ) (b5)) >> (uint ) (32 - 23)) + (uint ) (c5);

#line 157 "md5_pp.br"
        ;
      }


#line 157 "md5_pp.br"
      ;

#line 158 "md5_pp.br"
      {

#line 158 "md5_pp.br"
        a1 += 0 + 0xd9d4d039 + (b1 ^ c1 ^ d1);

#line 158 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (4) | ((uint ) (a1)) >> (uint ) (32 - 4)) + (uint ) (b1);

#line 158 "md5_pp.br"
        ;

#line 158 "md5_pp.br"
        a2 += 0 + 0xd9d4d039 + (b2 ^ c2 ^ d2);

#line 158 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (4) | ((uint ) (a2)) >> (uint ) (32 - 4)) + (uint ) (b2);

#line 158 "md5_pp.br"
        ;

#line 158 "md5_pp.br"
        a3 += 0 + 0xd9d4d039 + (b3 ^ c3 ^ d3);

#line 158 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (4) | ((uint ) (a3)) >> (uint ) (32 - 4)) + (uint ) (b3);

#line 158 "md5_pp.br"
        ;

#line 158 "md5_pp.br"
        a4 += 0 + 0xd9d4d039 + (b4 ^ c4 ^ d4);

#line 158 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (4) | ((uint ) (a4)) >> (uint ) (32 - 4)) + (uint ) (b4);

#line 158 "md5_pp.br"
        ;

#line 158 "md5_pp.br"
        a5 += 0 + 0xd9d4d039 + (b5 ^ c5 ^ d5);

#line 158 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (4) | ((uint ) (a5)) >> (uint ) (32 - 4)) + (uint ) (b5);

#line 158 "md5_pp.br"
        ;
      }


#line 158 "md5_pp.br"
      ;

#line 159 "md5_pp.br"
      {

#line 159 "md5_pp.br"
        d1 += 0 + 0xe6db99e5 + (a1 ^ b1 ^ c1);

#line 159 "md5_pp.br"
        d1 = (((uint ) (d1)) << (uint ) (11) | ((uint ) (d1)) >> (uint ) (32 - 11)) + (uint ) (a1);

#line 159 "md5_pp.br"
        ;

#line 159 "md5_pp.br"
        d2 += 0 + 0xe6db99e5 + (a2 ^ b2 ^ c2);

#line 159 "md5_pp.br"
        d2 = (((uint ) (d2)) << (uint ) (11) | ((uint ) (d2)) >> (uint ) (32 - 11)) + (uint ) (a2);

#line 159 "md5_pp.br"
        ;

#line 159 "md5_pp.br"
        d3 += 0 + 0xe6db99e5 + (a3 ^ b3 ^ c3);

#line 159 "md5_pp.br"
        d3 = (((uint ) (d3)) << (uint ) (11) | ((uint ) (d3)) >> (uint ) (32 - 11)) + (uint ) (a3);

#line 159 "md5_pp.br"
        ;

#line 159 "md5_pp.br"
        d4 += 0 + 0xe6db99e5 + (a4 ^ b4 ^ c4);

#line 159 "md5_pp.br"
        d4 = (((uint ) (d4)) << (uint ) (11) | ((uint ) (d4)) >> (uint ) (32 - 11)) + (uint ) (a4);

#line 159 "md5_pp.br"
        ;

#line 159 "md5_pp.br"
        d5 += 0 + 0xe6db99e5 + (a5 ^ b5 ^ c5);

#line 159 "md5_pp.br"
        d5 = (((uint ) (d5)) << (uint ) (11) | ((uint ) (d5)) >> (uint ) (32 - 11)) + (uint ) (a5);

#line 159 "md5_pp.br"
        ;
      }


#line 159 "md5_pp.br"
      ;

#line 162 "md5_pp.br"
      {

#line 162 "md5_pp.br"
        c1 += 0 + 0x1fa27cf8 + (d1 ^ a1 ^ b1);

#line 162 "md5_pp.br"
        c1 = (((uint ) (c1)) << (uint ) (16) | ((uint ) (c1)) >> (uint ) (32 - 16)) + (uint ) (d1);

#line 162 "md5_pp.br"
        ;

#line 162 "md5_pp.br"
        c2 += 0 + 0x1fa27cf8 + (d2 ^ a2 ^ b2);

#line 162 "md5_pp.br"
        c2 = (((uint ) (c2)) << (uint ) (16) | ((uint ) (c2)) >> (uint ) (32 - 16)) + (uint ) (d2);

#line 162 "md5_pp.br"
        ;

#line 162 "md5_pp.br"
        c3 += 0 + 0x1fa27cf8 + (d3 ^ a3 ^ b3);

#line 162 "md5_pp.br"
        c3 = (((uint ) (c3)) << (uint ) (16) | ((uint ) (c3)) >> (uint ) (32 - 16)) + (uint ) (d3);

#line 162 "md5_pp.br"
        ;

#line 162 "md5_pp.br"
        c4 += 0 + 0x1fa27cf8 + (d4 ^ a4 ^ b4);

#line 162 "md5_pp.br"
        c4 = (((uint ) (c4)) << (uint ) (16) | ((uint ) (c4)) >> (uint ) (32 - 16)) + (uint ) (d4);

#line 162 "md5_pp.br"
        ;

#line 162 "md5_pp.br"
        c5 += 0 + 0x1fa27cf8 + (d5 ^ a5 ^ b5);

#line 162 "md5_pp.br"
        c5 = (((uint ) (c5)) << (uint ) (16) | ((uint ) (c5)) >> (uint ) (32 - 16)) + (uint ) (d5);

#line 162 "md5_pp.br"
        ;
      }


#line 162 "md5_pp.br"
      ;

#line 163 "md5_pp.br"
      {

#line 163 "md5_pp.br"
        b1 += k31 + 0xc4ac5665 + (c1 ^ d1 ^ a1);

#line 163 "md5_pp.br"
        b1 = (((uint ) (b1)) << (uint ) (23) | ((uint ) (b1)) >> (uint ) (32 - 23)) + (uint ) (c1);

#line 163 "md5_pp.br"
        ;

#line 163 "md5_pp.br"
        b2 += k32 + 0xc4ac5665 + (c2 ^ d2 ^ a2);

#line 163 "md5_pp.br"
        b2 = (((uint ) (b2)) << (uint ) (23) | ((uint ) (b2)) >> (uint ) (32 - 23)) + (uint ) (c2);

#line 163 "md5_pp.br"
        ;

#line 163 "md5_pp.br"
        b3 += k33 + 0xc4ac5665 + (c3 ^ d3 ^ a3);

#line 163 "md5_pp.br"
        b3 = (((uint ) (b3)) << (uint ) (23) | ((uint ) (b3)) >> (uint ) (32 - 23)) + (uint ) (c3);

#line 163 "md5_pp.br"
        ;

#line 163 "md5_pp.br"
        b4 += k34 + 0xc4ac5665 + (c4 ^ d4 ^ a4);

#line 163 "md5_pp.br"
        b4 = (((uint ) (b4)) << (uint ) (23) | ((uint ) (b4)) >> (uint ) (32 - 23)) + (uint ) (c4);

#line 163 "md5_pp.br"
        ;

#line 163 "md5_pp.br"
        b5 += k35 + 0xc4ac5665 + (c5 ^ d5 ^ a5);

#line 163 "md5_pp.br"
        b5 = (((uint ) (b5)) << (uint ) (23) | ((uint ) (b5)) >> (uint ) (32 - 23)) + (uint ) (c5);

#line 163 "md5_pp.br"
        ;
      }


#line 163 "md5_pp.br"
      ;

#line 164 "md5_pp.br"
      {

#line 164 "md5_pp.br"
        a1 += k11 + 0xf4292244 + (c1 ^ (b1 | ~d1));

#line 164 "md5_pp.br"
        a1 = (((uint ) (a1)) << (uint ) (6) | ((uint ) (a1)) >> (uint ) (32 - 6)) + (uint ) (b1);

#line 164 "md5_pp.br"
        ;

#line 164 "md5_pp.br"
        a2 += k12 + 0xf4292244 + (c2 ^ (b2 | ~d2));

#line 164 "md5_pp.br"
        a2 = (((uint ) (a2)) << (uint ) (6) | ((uint ) (a2)) >> (uint ) (32 - 6)) + (uint ) (b2);

#line 164 "md5_pp.br"
        ;

#line 164 "md5_pp.br"
        a3 += k13 + 0xf4292244 + (c3 ^ (b3 | ~d3));

#line 164 "md5_pp.br"
        a3 = (((uint ) (a3)) << (uint ) (6) | ((uint ) (a3)) >> (uint ) (32 - 6)) + (uint ) (b3);

#line 164 "md5_pp.br"
        ;

#line 164 "md5_pp.br"
        a4 += k14 + 0xf4292244 + (c4 ^ (b4 | ~d4));

#line 164 "md5_pp.br"
        a4 = (((uint ) (a4)) << (uint ) (6) | ((uint ) (a4)) >> (uint ) (32 - 6)) + (uint ) (b4);

#line 164 "md5_pp.br"
        ;

#line 164 "md5_pp.br"
        a5 += k15 + 0xf4292244 + (c5 ^ (b5 | ~d5));

#line 164 "md5_pp.br"
        a5 = (((uint ) (a5)) << (uint ) (6) | ((uint ) (a5)) >> (uint ) (32 - 6)) + (uint ) (b5);

#line 164 "md5_pp.br"
        ;
      }


#line 164 "md5_pp.br"
      ;

#line 167 "md5_pp.br"
      if (a1 == ta1 && b1 == tb1 && c1 == tc1 && d1 == td1 || a2 == ta2 && b2 == tb2 && c2 == tc2 && d2 == td2 || a3 == ta3 && b3 == tb3 && c3 == tc3 && d3 == td3 || a4 == ta4 && b4 == tb4 && c4 == tc4 && d4 == td4 || a5 == ta5 && b5 == tb5 && c5 == tc5 && d5 == td5)

#line 171 "md5_pp.br"
        res = 0x4f9170e8;
    }

  }


#line 174 "md5_pp.br"
  output = res;
}
__output 
main (	uniform sampler2D charset,
float2 __vPos: SV_POSITION) : SV_TARGET
{
	__output __o;
	int  output;
	int4 __indexof_output;
	int4 __indexofoutput;
	__indexofoutput = __getOutputIndex(__vPos, __outputStreamShape, __outputBufferShape);
	__indexof_output = __indexofoutput;
	hello_brook_check(
		k1,
		k2,
		k3,
		k4,
		len,
		_ta,
		_tb,
		_tc,
		_td,
		charset,
		charset_len,
		output,
		__indexof_output,
		__gatherStreamShape_charset,
		__gatherBufferShape_charset );
	__o.__outputoutput = float4(asfloat( output.x), 0.0f, 0.0f, 0.0f);
	return __o;

}

end
