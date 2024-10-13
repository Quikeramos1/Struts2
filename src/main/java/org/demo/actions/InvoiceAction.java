package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.demo.actions.beans.InvoiceBean;

public class InvoiceAction extends ActionSupport  {

    InvoiceBean invoiceBean;

    @Override
    public String execute() throws Exception {
        System.out.println("execute!!");
        return SUCCESS;
    }

    public InvoiceBean getInvoiceBean() {
        return invoiceBean;
    }

    public void setInvoiceBean(InvoiceBean invoiceBean) {
        this.invoiceBean = invoiceBean;
    }
    @Override
    public void validate() {
        if (invoiceBean.getSubject().isEmpty()) {
            addFieldError("invoiceBean.subject", "El concepto es obligatorio.");
        }

        if (invoiceBean.getGrossAmount() <= 0) {
            addFieldError("invoiceBean.grossAmount", "El importe bruto debe ser mayor que cero.");
        }
    }

    public double totalWithIVA() {
        return invoiceBean.getGrossAmount() * 1.21; // Calcula el total con IVA del 21%
    }

}
