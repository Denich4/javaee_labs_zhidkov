package domain;

public class Currency {
    private Long id;
    private String currencyFull;
    private String currencyShort;

    public Currency() {
    }

    public Currency(String currencyFull, String currencyShort) {
        this.currencyFull = currencyFull;
        this.currencyShort = currencyShort;
    }

    public Currency(Long id, String currencyFull, String currencyShort) {
        this.id = id;
        this.currencyFull = currencyFull;
        this.currencyShort = currencyShort;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCurrencyFull() {
        return currencyFull;
    }

    public void setCurrencyFull(String currencyFull) {
        this.currencyFull = currencyFull;
    }

    public String getCurrencyShort() {
        return currencyShort;
    }

    public void setCurrencyShort(String currencyShort) {
        this.currencyShort = currencyShort;
    }

    @Override
    public String toString() {
        return "Currency{" +
                "id=" + id +
                ", currencyFull='" + currencyFull + '\'' +
                ", currencyShort='" + currencyShort + '\'' +
                '}';
    }
}
