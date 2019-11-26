package com.test.dto;

public class ReviewDTO {
	
	private int review_Index;
	private int company_Index;
	private String review_Title;
	private String review_Content;
	private String review_Rating;
	private int review_ViewsNumber;
	private byte[] review_Image;
	private String review_Comment;
	private int ref;
	public int getReview_Index() {
		return review_Index;
	}
	public void setReview_Index(int review_Index) {
		this.review_Index = review_Index;
	}
	public int getCompany_Index() {
		return company_Index;
	}
	public void setCompany_Index(int company_Index) {
		this.company_Index = company_Index;
	}
	public String getReview_Title() {
		return review_Title;
	}
	public void setReview_Title(String review_Title) {
		this.review_Title = review_Title;
	}
	public String getReview_Content() {
		return review_Content;
	}
	public void setReview_Content(String review_Content) {
		this.review_Content = review_Content;
	}
	public String getReview_Rating() {
		return review_Rating;
	}
	public void setReview_Rating(String review_Rating) {
		this.review_Rating = review_Rating;
	}
	public int getReview_ViewsNumber() {
		return review_ViewsNumber;
	}
	public void setReview_ViewsNumber(int review_ViewsNumber) {
		this.review_ViewsNumber = review_ViewsNumber;
	}
	public byte[] getReview_Image() {
		return review_Image;
	}
	public void setReview_Image(byte[] review_Image) {
		this.review_Image = review_Image;
	}
	public String getReview_Comment() {
		return review_Comment;
	}
	public void setReview_Comment(String review_Comment) {
		this.review_Comment = review_Comment;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
}
