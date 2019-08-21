package com.Xx1.phone.model;

/***
 * 用于返回业务操作结果
 *  1：失败
 *     - 11注册失败
 *  2：成功
 *     - 21注册成功
 */
public class ResultDict {
    private Integer codee;
    private String descc;

    public ResultDict() {
        super();
    }

    public ResultDict(Integer codee, String descc) {
        this.codee = codee;
        this.descc = descc;
    }

    @Override
    public String toString() {
        return "ResultDict{" +
                "codee=" + codee +
                ", descc='" + descc + '\'' +
                '}';
    }

    public Integer getCodee() {
        return codee;
    }

    public void setCodee(Integer codee) {
        this.codee = codee;
    }

    public String getDescc() {
        return descc;
    }

    public void setDescc(String descc) {
        this.descc = descc;
    }
}
