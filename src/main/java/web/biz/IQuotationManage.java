package web.biz;

import web.tools.MyMessage;

/**
 * Created by linyufan on 16/8/17.
 *
 *
 */

public interface IQuotationManage {

    /**
     * 绑定实盘账户
     *
     * @param id
     * @param password
     * @return
     */
    public MyMessage bond(String id , String password);

    /**
     * 解除绑定
     * @return 返回推出绑定结果
     */
    public MyMessage exitbond();


    /**
     * 使用实盘交易
     * 可能需要考虑返回结果的问题
     * 可能改变一个用户状态
     */
    public void usequotation();

}
