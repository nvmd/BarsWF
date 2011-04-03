#include "md5.h"
#include "../../global_c.h"
#include "../../global.h"

//int md5_const_host[64] = {0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee, 0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501, 0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be, 0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821, 0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa, 0xd62f105d, 0x2441453, 0xd8a1e681, 0xe7d3fbc8, 0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed, 0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a, 0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c, 0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70, 0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x4881d05, 0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665, 0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039, 0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1, 0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1, 0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391};

//__constant__ int md5_const[64];// = {0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee, 0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501, 0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be, 0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821, 0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa, 0xd62f105d, 0x2441453, 0xd8a1e681, 0xe7d3fbc8, 0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed, 0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a, 0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c, 0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70, 0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x4881d05, 0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665, 0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039, 0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1, 0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1, 0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391};

__constant__ int target[4];// = {0xb182b498, 0xf4d2ac41, 0x1f636569, 0xaf4caf00};
__constant__ int code_len[1];// = {0xb182b498, 0xf4d2ac41, 0x1f636569, 0xaf4caf00};
__constant__ char charset_c[128];// = {0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee, 0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501, 0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be, 0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821, 0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa, 0xd62f105d, 0x2441453, 0xd8a1e681, 0xe7d3fbc8, 0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed, 0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a, 0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c, 0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70, 0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x4881d05, 0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665, 0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039, 0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1, 0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1, 0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391};

__device__ unsigned int *result_d;  //h - host, d - device
__device__ unsigned int *data_d;  //h - host, d - device

__global__ void md5_gpu_bruteforce_thread(unsigned int *data_d, unsigned int *result_d, unsigned int pwd_len, unsigned int gpu_len, int charset_len)
{
	const int ix = blockDim.x * blockIdx.x + threadIdx.x;
	unsigned int data[4];
	int a,b,c,d;
	const int len = pwd_len*8;//code_len[0];//
	for(int i=0;i<4;i++)data[i]=data_d[ix*4+i];//
	result_d[ix] = KEY_NOT_FOUND;
	//		if(s3_limit==26)data[0]=(data[0]&0xff00ffff)+(('a'+s3)<<16);//only if 3 symbols to brute force
	int ta,tb,tc,td;
	ta = target[0];
	tb = target[1];
	tc = target[2];
	td = target[3];
	unrollII (tc, td, ta, tb, data[2], S43, 0x2ad7d2bb); /* 63 */
	unrollII (td, ta, tb, tc, 0, S42, 0xbd3af235); /* 62 */
	unrollII (ta, tb, tc, td, 0, S41, 0xf7537e82); /* 61 */
	unrollII (tb, tc, td, ta, 0, S44, 0x4e0811a1); /* 60 */
	unrollII (tc, td, ta, tb, 0, S43, 0xa3014314); /* 59 */
	unrollII (td, ta, tb, tc, 0, S42, 0xfe2ce6e0); /* 58 */
	unrollII (ta, tb, tc, td, 0, S41, 0x6fa87e4f); /* 57 */
	unrollII (tb, tc, td, ta, data[1], S44, 0x85845dd1); /* 56 */
	unrollII (tc, td, ta, tb, 0, S43, 0xffeff47d); /* 55 */
	unrollII (td, ta, tb, tc, data[3], S42, 0x8f0ccc92); /* 54 */
	unrollII (ta, tb, tc, td, 0, S41, 0x655b59c3); /* 53 */
	unrollII (tb, tc, td, ta, 0, S44, 0xfc93a039); /* 52 */
	unrollII (tc, td, ta, tb, len, S43, 0xab9423a7); /* 51 */
	unrollII (td, ta, tb, tc, 0, S42, 0x432aff97); /* 50 */


	for(int s2=0;s2<charset_len;s2++)
	{
		data[0]=(data[0]&0xffff00ff)+((charset_c[s2])<<8);
		for(int s1=0;s1<charset_len;s1++)
		{
			data[0]=(data[0]&0xffffff00)+(charset_c[s1]);

			a=0x67452301;b=0xefcdab89;c=0x98badcfe;d=0x10325476;

			/* Round 1 */
			FF2 (a, b, c, d, data[0], S11, 0xd76aa478,0,0); /* 1 */
			FF2 (d, a, b, c, data[1], S12, 0xe8c7b756,1,1); /* 2 */
			FF2 (c, d, a, b, data[2], S13, 0x242070db,2,2); /* 3 */
			FF2 (b, c, d, a, data[3], S14, 0xc1bdceee,3,3); /* 4 */


			FF2 (a, b, c, d, 0, S11, 0xf57c0faf,4,15); /* 5 */ //5th and so forth is 0
			FF2 (d, a, b, c, 0, S12, 0x4787c62a,5,15); /* 6 */
			FF2 (c, d, a, b, 0, S13, 0xa8304613,6,15); /* 7 */
			FF2 (b, c, d, a, 0, S14, 0xfd469501,7,15); /* 8 */
			FF2 (a, b, c, d, 0, S11, 0x698098d8,8,15); /* 9 */
			FF2 (d, a, b, c, 0, S12, 0x8b44f7af,9,15); /* 10 */
			FF2 (c, d, a, b, 0, S13, 0xffff5bb1,10,15); /* 11 */
			FF2 (b, c, d, a, 0, S14, 0x895cd7be,11,15); /* 12 */
			FF2 (a, b, c, d, 0, S11, 0x6b901122,12,15); /* 13 */
			FF2 (d, a, b, c, 0, S12, 0xfd987193,13,15); /* 14 */
			FF2 (c, d, a, b, len, S13, 0xa679438e,14,14); /* 15 */
			FF2 (b, c, d, a, 0, S14, 0x49b40821,15,15); /* 16 */

			/* Round 2 */
			GG2 (a, b, c, d, data[1], S21, 0xf61e2562,16,1); /* 17 */
			GG2 (d, a, b, c, 0, S22, 0xc040b340,17,15); /* 18 */
			GG2 (c, d, a, b, 0, S23, 0x265e5a51,18,15); /* 19 */
			GG2 (b, c, d, a, data[0], S24, 0xe9b6c7aa,19,0); /* 20 */
			GG2 (a, b, c, d, 0, S21, 0xd62f105d,20,15); /* 21 */
			GG2 (d, a, b, c, 0, S22,  0x2441453,21,15); /* 22 */
			GG2 (c, d, a, b, 0, S23, 0xd8a1e681,22,15); /* 23 */
			GG2 (b, c, d, a, 0, S24, 0xe7d3fbc8,23,15); /* 24 */
			GG2 (a, b, c, d, 0, S21, 0x21e1cde6,24,15); /* 25 */
			GG2 (d, a, b, c, len, S22, 0xc33707d6,25,14); /* 26 */
			GG2 (c, d, a, b, data[3], S23, 0xf4d50d87,26,3); /* 27 */
			GG2 (b, c, d, a, 0, S24, 0x455a14ed,27,15); /* 28 */
			GG2 (a, b, c, d, 0, S21, 0xa9e3e905,28,15); /* 29 */
			GG2 (d, a, b, c, data[2], S22, 0xfcefa3f8,29,2); /* 30 */
			GG2 (c, d, a, b, 0, S23, 0x676f02d9,30,15); /* 31 */
			GG2 (b, c, d, a, 0, S24, 0x8d2a4c8a,31,15); /* 32 */

			/* Round 3 */
			HH2 (a, b, c, d, 0, S31, 0xfffa3942,32,15); /* 33 */
			HH2 (d, a, b, c, 0, S32, 0x8771f681,33,15); /* 34 */
			HH2 (c, d, a, b, 0, S33, 0x6d9d6122,34,15); /* 35 */
			HH2 (b, c, d, a, len, S34, 0xfde5380c,35,14); /* 36 */
			HH2 (a, b, c, d, data[1], S31, 0xa4beea44,36,1); /* 37 */
			HH2 (d, a, b, c, 0, S32, 0x4bdecfa9,37,15); /* 38 */
			HH2 (c, d, a, b, 0, S33, 0xf6bb4b60,38,15); /* 39 */
			HH2 (b, c, d, a, 0, S34, 0xbebfbc70,39,15); /* 40 */
			HH2 (a, b, c, d, 0, S31, 0x289b7ec6,40,15); /* 41 */
			HH2 (d, a, b, c, data[0], S32, 0xeaa127fa,41,0); /* 42 */
			HH2 (c, d, a, b, data[3], S33, 0xd4ef3085,42,3); /* 43 */
			HH2 (b, c, d, a, 0, S34,  0x4881d05,43,15); /* 44 */
			HH2 (a, b, c, d, 0, S31, 0xd9d4d039,44,15); /* 45 */
			HH2 (d, a, b, c, 0, S32, 0xe6db99e5,45,15); /* 46 */
			if(d!=td)continue;
			HH2 (c, d, a, b, 0, S33, 0x1fa27cf8,46,15); /* 47 */
			HH2 (b, c, d, a, data[2], S34, 0xc4ac5665,47,2); /* 48 */

			/* Round 4 */
			II2 (a, b, c, d, data[0], S41, 0xf4292244,48,0); /* 49 */

			if(a==ta && b==tb && c==tc)
			{
				result_d[ix] = KEY_FOUND;
			};
		}
	}
}

void cuda_get_mem(int device_id)
{
	//get memory for data transfers
	cudaMalloc((void **) &data_d, sizeof(int)*4*gpu[device_id].thread_n*gpu[device_id].grid_n);
	cudaMalloc((void **) &common_d, sizeof(md5_data));   

	cudaMallocHost((void**)&gpu[device_id].data_h, sizeof(int)*4*gpu[device_id].thread_n*gpu[device_id].grid_n);
	cudaMallocHost((void**)&gpu[device_id].common_h, sizeof(md5_data));
}

void init_md5_cuda(int device_id)
{
	cudaMemcpyToSymbol(target, hash_i, sizeof(hash_i));
	gpu[device_id].common_h->res[0] = -1;//key not found

	cudaMemcpy(common_d, gpu[device_id].common_h, sizeof(md5_data), cudaMemcpyHostToDevice);
	cudaMemcpyToSymbol(charset_c, perm::charset, perm::charset_len+1);
	//	cudaMemcpyToSymbol(md5_const, md5_const_host, sizeof(md5_const));
}

void cuda_free_mem(int device_id)
{
	cudaFree(data_d);  
	cudaFree(common_d);  

	free(gpu[device_id].data_h); 
	free(gpu[device_id].common_h); 
}
// The host CPU Mandebrot thread spawner
void do_123(const int device_id)
{
	dim3 threads(gpu[device_id].thread_n);
	dim3 grid(gpu[device_id].grid_n);

	//copy combinations to device
	cudaEvent_t stop;
	__int64 tmp;
	getTimeDelta(tmp);

	CUDA_SAFE_CALL( cudaEventCreate(&stop)  );

	cudaMemcpyAsync(data_d, gpu[device_id].data_h, sizeof(int)*4*gpu[device_id].thread_n*gpu[device_id].grid_n, cudaMemcpyHostToDevice,0);  

	md5_gpu_bruteforce_thread<<<grid, threads>>>(data_d, common_d, perm::pwd_len, perm::gpu_len, perm::charset_len);

	cudaMemcpyAsync(gpu[device_id].common_h, common_d, sizeof(md5_data), cudaMemcpyDeviceToHost, NULL);  
	cudaError_t result = cudaGetLastError();
	if(result != cudaSuccess)
	{
		char msg[512];msg[0]=0;
		strcpy_s(msg, 512, "CUDA kernel error: ");
		strcat_s(msg, 512, cudaGetErrorString(result));
		print_status(msg);
		is_finished = true;
		is_error_detected = true;
	}

	cudaEventRecord(stop, 0);
	while( cudaEventQuery(stop) == cudaErrorNotReady )
	{
		Sleep(3);
	}
	CUDA_SAFE_CALL( cudaEventDestroy(stop));

	if(gpu[device_id].common_h->res[0]!=-1)
	{
		is_finished = true;
		is_key_found = true;
		final_len = perm::pwd_len*8;
		for(int i=0;i<4;i++)final_key[i]=gpu[device_id].common_h->res[i];
	}
}
