package util.math.arima;

import java.util.Vector;

public class MA {

	double[] stdoriginalData={};
	int q;
	ARMAMath armamath=new ARMAMath();
	
	/** MAģ��
	 * @param stdoriginalData //Ԥ������������
	 * @param q //qΪMAģ�ͽ���
	 */
	public MA(double [] stdoriginalData,int q)
	{
		this.stdoriginalData=stdoriginalData;
		this.q=q;
	}
/**
 * ����MAģ�Ͳ���
 * @return
 */
	public Vector<double[]> MAmodel()
	{
		Vector<double[]> v=new Vector<double[]>();
		v.add(armamath.getMApara(armamath.autocorGrma(stdoriginalData,q), q));
		return v;//�õ�MAģ������Ĳ���ֵ
	}
		
	
}
