package madvirus.spring.chap07.controller;

public class Code {

	private String code;
	private String label;

	public Code() {
	}

	public Code(String code, String value) {
		super();
		this.code = code;
		this.label = value;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

}
