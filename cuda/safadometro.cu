#include <stdio.h>
#include <stdlib.h>
#include <iostream>

//função no device(VGA)
__global__ void safazeza(float *soma, float *dia, float *mes, float *ano, float *safadezaDevice){
		int tx = threadIdx.x;
		safadezaDevice[0] = soma[tx] + (ano[tx]/100)*(50-dia[tx]);
}

__global__ void anjo(float *safadezaTotal, float *anjoDevice){
	int tx = threadIdx.x;
	anjoDevice[0] = 100 - safadezaTotal[tx];
}

float somatorio(float mes){
	float soma = 0;

	while(mes > 0){
		soma += mes;
		mes--;
	}
	return soma;
}


//prepara as natrizes a serem enviadas para GPU
void preparaHost(float dia, float mes, float ano){
	int tam = 1;

	//host
	float soma = somatorio(mes);
	float *somaHost 			= 	(float *) malloc(tam * sizeof(float));
	float *diaHost  			= 	(float *) malloc(tam * sizeof(float));
	float *mesHost				=		(float *) malloc(tam * sizeof(float));
	float *anoHost				= 	(float *) malloc(tam * sizeof(float));
	float *safadezaHost 	=  	(float *) malloc(tam * sizeof(float));
	float *anjoHost				= 	(float *) malloc(tam * sizeof(float));

	somaHost[0] = soma;
	diaHost[0]	= dia;
	mesHost[0]	= mes;
	anoHost[0]	= ano;

	//Device
	float *somaDevice, *DiaDevice,*MesDevice,*anoDevice, *safadezaDevice;
	float *anjoDevice, *safadezaTotal;
	int size = tam * sizeof(int);


	cudaMalloc((void **)&DiaDevice,size);
	cudaMemcpy(DiaDevice,diaHost,size,cudaMemcpyHostToDevice);

	cudaMalloc((void **)&MesDevice,size);
	cudaMemcpy(MesDevice,mesHost,size,cudaMemcpyHostToDevice);

	cudaMalloc((void **)&anoDevice,size);
	cudaMemcpy(anoDevice,anoHost,size,cudaMemcpyHostToDevice);

	cudaMalloc((void **)&somaDevice,size);
	cudaMemcpy(somaDevice,somaHost,size,cudaMemcpyHostToDevice);

	cudaMalloc((void **)&safadezaDevice,size); //Resultado safadeza
	safazeza<<<tam,tam>>>(somaDevice, DiaDevice, MesDevice, anoDevice, safadezaDevice);

	cudaMemcpy(safadezaHost,safadezaDevice,size,cudaMemcpyDeviceToHost);

	std::cout<<"Nivel de safazeda"<<std::endl;
	std::cout<<safadezaHost[0]<<std::endl;

	
	cudaMalloc((void **)&anjoDevice,size); //Resultado anjo

	cudaMalloc((void **)&safadezaTotal,size);
	cudaMemcpy(safadezaTotal,safadezaHost,size,cudaMemcpyHostToDevice);

	anjo<<<tam,tam>>>(safadezaTotal,anjoDevice);
	cudaMemcpy(anjoHost,anjoDevice,size,cudaMemcpyDeviceToHost);
	std::cout<<"Nivel de anjo"<<std::endl;
	std::cout<<anjoHost[0]<<std::endl;

}


int main(){
		float mes, ano, dia;

		std::cout<<"Digite o dia"<<std::endl;
		std::cin>>dia;

		std::cout<<"Digite o mes:"<<std::endl;
		std::cin>>mes;

		std::cout<<"Digite o ano "<<std::endl;
		std::cin>>ano;


		preparaHost(dia,mes,ano);

}
