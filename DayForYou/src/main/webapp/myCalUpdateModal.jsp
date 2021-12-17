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
                <h2>���� / ����</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
                <table>
                    <tr>
                        <td align = "right">������ : </td>
                        <td align = "left"><input type = "text" name = 'title' id = 'title2'></td>
                    </tr>
                    
                    <tr>
                        <td align = "right">�Ϸ����� : </td>
                        <td align = "left"><input type = "checkbox" name = 'allday' id = 'allday'></td>
                    </tr>
                    
                    <tr>
                        <td align = "right">ī�װ� : </td>
                        <td align = "left">
                            <select name = 'cate'>
                                <option value = '����'>����</option>
                                <option value = '�'>�</option>
                                <option value = '���'>���</option>
                                <option value = '�߿�����'>�߿�����</option>
                                <option value = '��Ÿ'>��Ÿ</option>		
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                        <td align = "right">���۳�¥ : </td>
                        <td align = "left"><input type = "date" name = 'sdate' id = 'sdate'></td>
                    </tr>	
                    
                    <tr>
                        <td align = "right">������¥ : </td>
                        <td align = "left"><input type = "date" name = 'edate' id = 'edate'></td>
                    </tr>	

                    <tr>
                        <td align="right" colspan="2">
                            <input type = 'submit' value = ����>
                            <button id = "delSubmit" Click='delcal()'>����</button>
                        </td>
                    </tr>
                    
                </table>
                
            </div>
        </div>
    </div>
    
    </form>
    
     <!-- fullcalendar �׽�Ʈ ���� -->
     
    <script>
      //fullcalendar �̺�Ʈ ����.
		let delcal = funtion(){
    		confirm(info.event.title + "������ �����Ͻðڽ��ϱ�?");
				if (delcal == true) {
					info.event.remove();
				}  
      	}
	</script>
     
     
     <!-- checkbox ���� -->

    <script>
	
		// üũ�ڽ� üũ �Ǿ��ֵ��� �����
		
		$("input:checkbox[id='allday']").prop("checked",true);
	
		// value�� = üũ�ڽ��� üũ �Ǿ����� 1 �����Ǿ����� 0 �־��ֱ�.
		
		if($("input:checkbox[id='allday']").is("checked") == true){
			$('#allday').val(1);
		} 
		if($("input:checkbox[id='allday']").is("checked") == false){
			$('#allday').val(0);
		}

	</script>
    
	<!-- modal â ���� -->    

    
    <script>
	    const modal = document.getElementById("modal")
	
	    function modalOff() {
	        modal.style.display = "none"
	    }
	
	    const closeBtn = modal.querySelector(".close-area")
	        closeBtn.addEventListener("click", e => {
	        modalOff()
	        // ���� ����� �ٽ� �۵��ϰ� ����� �����?
	        top.window.location.reload(true);
	      	window.opener.parent.location.reload(); // �θ�â ���ΰ�ħ 
			window.self.close(); // ���� �˾� �ݱ�



	    })
	    modal.addEventListener("click", e => {
	        const evTarget = e.target
	        if(evTarget.classList.contains("modal-overlay")) {
	            modalOff()
			    top.window.location.reload(true);
			    window.opener.parent.location.reload(); // �θ�â ���ΰ�ħ 
				window.self.close(); // ���� �˾� �ݱ�

	    	}
		})
		  
    </script>
</body>
</html>