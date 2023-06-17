package video;

public class VideoDTO {
	private int num;
	private int video_num;
	private String vTitle;
	private String language;
	private int playNum;
	private String url;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getVideo_num() {
		return video_num;
	}
	public void setVideo_num(int video_num) {
		this.video_num = video_num;
	}
	public String getvTitle() {
		return vTitle;
	}
	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public int getPlayNum() {
		return playNum;
	}
	public void setPlayNum(int playNum) {
		this.playNum = playNum;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
