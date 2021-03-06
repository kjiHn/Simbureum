package com.fdx.dto;

public class PageMaker2 {
	private int totalCount;
	 private int startPage;
	 private int endPage;
	 private boolean prev;
	 private boolean next;
	 private Criteria2 cri;
	 
	 
	 public PageMaker2(Criteria2 cri, int totalCount) {
		 this.cri = cri;
		 this.totalCount = totalCount;
		 this.endPage = (int)(Math.ceil(cri.getPageNum()/5.0))*5;
		 this.startPage = this.endPage-4;
		 int realEnd = (int)(Math.ceil((totalCount*1.0)/cri.getAmount()));
		 
		 if (realEnd <= this.endPage) {
			this.endPage = realEnd;
		}
		 this.prev = this.startPage >1;
		 this.next = this.endPage < realEnd;
	 }

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public Criteria2 getCri() {
		return cri;
	}

	public void setCri(Criteria2 cri) {
		this.cri = cri;
	}
	 
	 
	 
	 
	}