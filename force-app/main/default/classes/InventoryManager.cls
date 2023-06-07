public class InventoryManager {
    private String productName;
    private String productCode;
    private Integer costPrice;
    private Integer sellingPrice;
    public static Integer productCount = 0;
    public InventoryManager() {
        productCount++;
    }
    public InventoryManager(String productName, String productCode) {
        this.productName = productName;
        this.productCode = productCode;
        productCount++;
    }
    public void setCostPrice(Integer costPrice) {
        this.costPrice = costPrice;
    }
    public void setSellingPrice(Integer sellingPrice) {
        this.sellingPrice = sellingPrice;
    }
    public Integer getCostPrice() {
        return costPrice;
    }
    public Integer getSellingPrice() {
        return sellingPrice;
    }
    public void productDisplay() {
        System.debug('Product Name: ' + productName);
        System.debug('Product Code: ' + productCode);
        System.debug('Cost Price: ' + costPrice);
        System.debug('Selling Price: ' + sellingPrice);
        
        Double profitPercent = (Double)(sellingPrice - costPrice) * 100 / costPrice;
        System.debug('Profit Percent: ' + profitPercent);
        
        if (profitPercent >= 20) {
            System.debug('Product Type: Star Product');
        } else {
            System.debug('Product Type: Average Product');
        }
    }
}



