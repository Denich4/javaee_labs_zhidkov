package domain;

import java.util.Date;

public class Order {
    private Long id;
    private String orderType;
    private String orderVeriety;
    private Currency currency;
    private String tiker;
    private Long count;
    private Long number;
    private Date data;
    private Date duration;

    public Order() {
    }

    public Order(Long id, String orderType, String orderVeriety, Currency currency, String tiker, Long count, Long number, Date data, Date duration) {
        this.id = id;
        this.orderType = orderType;
        this.orderVeriety = orderVeriety;
        this.currency = currency;
        this.tiker = tiker;
        this.count = count;
        this.number = number;
        this.data = data;
        this.duration = duration;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public String getOrderVeriety() {
        return orderVeriety;
    }

    public void setOrderVeriety(String orderVeriety) {
        this.orderVeriety = orderVeriety;
    }

    public String getCurrency() {
        return currency.getCurrencyFull();
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }

    public String getTiker() {
        return tiker;
    }

    public void setTiker(String tiker) {
        this.tiker = tiker;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Date getDuration() {
        return duration;
    }

    public void setDuration(Date duration) {
        this.duration = duration;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", orderType='" + orderType + '\'' +
                ", orderVeriety='" + orderVeriety + '\'' +
                ", currency=" + getCurrency() +
                ", tiker='" + tiker + '\'' +
                ", count=" + count +
                ", number=" + number +
                ", data=" + data +
                ", duration=" + duration +
                '}';
    }
}
