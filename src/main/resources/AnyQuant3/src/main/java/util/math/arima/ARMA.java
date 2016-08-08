package util.math.arima;

import java.util.*;

public class ARMA {
	
	double[] stdoriginalData={};
	int p;
	int q;
	ARMAMath armamath=new ARMAMath();
	
	/**
	 * ARMAģ��
	 * @param stdoriginalData
	 * @param p,q //p,qΪMAģ�ͽ���
	 */
	public ARMA(double [] stdoriginalData,int p,int q)
	{
		this.stdoriginalData=stdoriginalData;
		this.p=p;
		this.q=q;	
	}
	public Vector<double[]> ARMAmodel()
	{
	
		double[] arcoe=armamath.parcorrCompute(stdoriginalData, p, q);
		
		double[] autocorData=getautocorofMA(p, q, stdoriginalData, arcoe);
		
		double[] macoe=armamath.getMApara(autocorData, q);//�õ�MAģ������Ĳ���ֵ
//		for(int i=0;i<macoe.length;i++)
//			{
//				System.out.println(macoe[i]);
//			}
//		System.out.println();
		Vector<double[]> v=new Vector<double[]>();
		v.add(arcoe);
		v.add(macoe);
		return v;
	}
	
	/**
	 * �õ�MA�������ϵ��
	 * @param p
	 * @param q
	 * @param stdoriginalData
	 * @param autoCordata
	 * @return
	 */
	public double[] getautocorofMA(int p,int q,double[] stdoriginalData,double[] autoRegress)
	{
		int temp=0;
		double[] errArray=new double[stdoriginalData.length-p];
		int count=0;
		for(int i=p;i<stdoriginalData.length;i++)
		{
			temp=0;
			for(int j=1;j<=p;j++)
				temp+=stdoriginalData[i-j]*autoRegress[j-1];
			errArray[count++]=stdoriginalData[i]-temp;//������Ʋв�����
		}
		return armamath.autocorGrma(errArray, q);
	}
}
