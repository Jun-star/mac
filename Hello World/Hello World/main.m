//
//  main.m
//  Hello World
//
//  Created by zmit on 2018/5/2.
//  Copyright © 2018年 zmit. All rights reserved.
//

#include<stdio.h>
#include<stdlib.h>//

void bubble_sort(int a[],int n){
    for(int i=0;i<n-1;i++){
        for(int j=0;j<n-i-1;j++){
            if(a[j]>a[j+1]){
                int temp=a[j];a[j]=a[j+1];a[j+1]=temp;
            }
        }
    }
}
int main(int argc,char *argv[]){
    int a[8]={16,8,4,6,19,25,36,21};
    bubble_sort(a, 8);
    for(int i=0;i<8;i++){
        printf("%d\n",a[i]);
    }
    return 0;
}
