<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!--  modal style -->
<style>
   		 #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            
            background: rgba(70, 70, 70, 0.5);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(70, 70, 70, 0.5);
        }
   		#modal .modal-window {
            background: rgb(255, 255, 255);
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0);
            width: 270px;
            height: 350px;
            position: relative;
            top: -100px;
            padding: 10px;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: white;
            
        }
        #modal .title1 h2 {
            display: inline;
            text-align: left;
            padding-left:20px;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 2px 2px 2px gray;
            color: black;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 10px 10px;
            text-shadow: 1px 1px 2px gray;
            color: black;
            font-size: 10px;
        }
</style>

<script src='./fullcalender/lib/main.min.js'></script>
</head>

<body>
<% request.setCharacterEncoding("euc-kr"); %>
<form action="myCaleUpdate">
<div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title1">
                <h2>수정 / 삭제</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
                <table>
                    <tr>
                        <td align = "right">일정명 : </td>
                        <td align = "left"><input type = "text" name = 'title' id = 'title2'></td>
                    </tr>
                    
                    <tr>
                        <td align = "right">하루종일 : </td>
                        <td align = "left"><input type = "checkbox" name = 'allday' id = 'allday'></td>
                    </tr>
                    
                    <tr>
                        <td align = "right">카테고리 : </td>
                        <td align = "left">
                            <select name = 'cate'>
                                <option value = '공부'>공부</option>
                                <option value = '운동'>운동</option>
                                <option value = '취미'>취미</option>
                                <option value = '중요일자'>중요일자</option>
                                <option value = '기타'>기타</option>		
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                        <td align = "right">시작날짜 : </td>
                        <td align = "left"><input type = "date" name = 'sdate' id = 'sdate'></td>
                    </tr>	
                    
                    <tr>
                        <td align = "right">마감날짜 : </td>
                        <td align = "left"><input type = "date" name = 'edate' id = 'edate'></td>
                    </tr>	

                    <tr>
                        <td align="right" colspan="2">
                            <input type = 'submit' value = 수정>
                            <button id = "delSubmit" Click='delcal()'>삭제</button>
                        </td>
                    </tr>
                    
                </table>
                
            </div>
        </div>
    </div>
    
    </form>
    
     <!-- fullcalendar 테스트 관련 -->
     
    <script>
      //fullcalendar 이벤트 삭제.
		let delcal = funtion(){
    		confirm(info.event.title + "일정을 삭제하시겠습니까?");
				if (delcal == true) {
					info.event.remove();
				}  
      	}
	</script>
     
     
     <!-- checkbox 관련 -->

    <script>
	
		// 체크박스 체크 되어있도록 만들기
		
		$("input:checkbox[id='allday']").prop("checked",true);
	
		// value값 = 체크박스에 체크 되었을때 1 해제되었을때 0 넣어주기.
		
		if($("input:checkbox[id='allday']").is("checked") == true){
			$('#allday').val(1);
		} 
		if($("input:checkbox[id='allday']").is("checked") == false){
			$('#allday').val(0);
		}

	</script>
    
	<!-- modal 창 관련 -->    

    
    <script>
	    const modal = document.getElementById("modal")
	
	    function modalOff() {
	        modal.style.display = "none"
	    }
	
	    const closeBtn = modal.querySelector(".close-area")
	        closeBtn.addEventListener("click", e => {
	        modalOff()
	        // 원래 기능이 다시 작동하게 만드는 방법은?
	        top.window.location.reload(true);
	      	window.opener.parent.location.reload(); // 부모창 새로고침 
			window.self.close(); // 현재 팝업 닫기



	    })
	    modal.addEventListener("click", e => {
	        const evTarget = e.target
	        if(evTarget.classList.contains("modal-overlay")) {
	            modalOff()
			    top.window.location.reload(true);
			    window.opener.parent.location.reload(); // 부모창 새로고침 
				window.self.close(); // 현재 팝업 닫기

	    	}
		})
		  
    </script>
</body>
</html>