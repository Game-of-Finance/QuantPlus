package util.enums;

public enum AttributeEnum {
	OPEN("open", "开盘价"), HIGH("high", "最高价"), LOW("low", "最低价"), CLOSE("close", "收盘价"), 
	ADJ_PRICE("adj_price","后复权价"), VOLUME("volume", "成交量"), TURNOVER("turnover", "换手率"),
	PE("pe_ttm", "市盈率"), PB("pb", "市净率");

	private String nameEN;
	private String nameCH;

	private AttributeEnum(String nameE, String nameC) {
		this.nameEN = nameE;
		this.nameCH = nameC;
	}
	
	public String getCH(){
		return this.nameCH;
	}
	
	public String getEN(){
		return this.nameEN;
	}
	
	public static String getCHbyEN(String nameinEN){
		for(AttributeEnum att: AttributeEnum.values()){
			if(att.getEN().equals(nameinEN)){
				return att.getCH();
			}
		}
		return "";
	}
	
	public static String getENbyCH(String nameinCH){
		for(AttributeEnum att: AttributeEnum.values()){
			if(att.getCH().equals(nameinCH)){
				return att.getEN();
			}
		}
		return "";
	}

}
