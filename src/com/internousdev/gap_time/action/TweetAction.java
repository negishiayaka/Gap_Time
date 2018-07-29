package com.internousdev.gap_time.action;

import com.internousdev.gap_time.dao.TweetDAO;
import com.internousdev.gap_time.dto.UserDTO;
import com.internousdev.gap_time.util.InputChecker;
import com.internousdev.gap_time.util.TweetUtil;

public class TweetAction extends BaseAction {

	private String message;

	public String execute() throws Exception{

		clearError();

		UserDTO user = (UserDTO)session.get("user");

		TweetDAO dao = new TweetDAO();

		if (!InputChecker.length(message, 1, 200)){
			putError("tweet", "1文字から200文字で入力してください。");
		}

		message = htmlEscape(message);

		if (isError()){
			return "error";
		}else{
			if (dao.insert(user.getId(), message)){

				TweetUtil.select(user.getId(), session);

				return "success";
			}else{
				throw new Exception();
			}
		}
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public static String htmlEscape(String text) {
        StringBuffer sb=new StringBuffer();
        for(int i=0;i<text.length();i++){
            switch(text.charAt(i)){
                //HTMLタグの無効化（&"<>）
                case '&' :
                    sb.append("&amp;");
                    break;
                case '<' :
                    sb.append("&lt;");
                    break;
                case '>' :
                    sb.append("&gt;");
                    break;
                case '"' :
                    sb.append("&quot;");
                    break;
                case '\\' :
                    sb.append("&yen;");
                    break;
                //スペースの変換（半角スペース → &nbsp;）
                case ' ' :
                    sb.append("&nbsp;");
                    break;
                //タブの変換（\t → &nbsp;&nbsp;&nbsp;&nbsp;）
                case '\t' :
                    sb.append("&nbsp;&nbsp;&nbsp;&nbsp;");
                    break;
                default :
                    sb.append(text.charAt(i));
                break;
            }
        }
        //改行コードの変換（\r\n,\r,\n → <br>）
        return sb.toString().replaceAll("(\r\n|\r|\n)", "<br/>");
    }

}
